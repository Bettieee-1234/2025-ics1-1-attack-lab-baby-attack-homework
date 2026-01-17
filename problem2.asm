
problem2:	file format elf64-x86-64

Disassembly of section .init:

0000000000401000 <_init>:
  401000: f3 0f 1e fa                  	endbr64
  401004: 48 83 ec 08                  	subq	$0x8, %rsp
  401008: 48 8b 05 d1 2f 00 00         	movq	0x2fd1(%rip), %rax      # 0x403fe0 <printf@GLIBC_2.2.5+0x403fe0>
  40100f: 48 85 c0                     	testq	%rax, %rax
  401012: 74 02                        	je	0x401016 <_init+0x16>
  401014: ff d0                        	callq	*%rax
  401016: 48 83 c4 08                  	addq	$0x8, %rsp
  40101a: c3                           	retq

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020: ff 35 ca 2f 00 00            	pushq	0x2fca(%rip)            # 0x403ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026: ff 25 cc 2f 00 00            	jmpq	*0x2fcc(%rip)           # 0x403ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c: 0f 1f 40 00                  	nopl	(%rax)
  401030: f3 0f 1e fa                  	endbr64
  401034: 68 00 00 00 00               	pushq	$0x0
  401039: e9 e2 ff ff ff               	jmp	0x401020 <.plt>
  40103e: 66 90                        	nop
  401040: f3 0f 1e fa                  	endbr64
  401044: 68 01 00 00 00               	pushq	$0x1
  401049: e9 d2 ff ff ff               	jmp	0x401020 <.plt>
  40104e: 66 90                        	nop
  401050: f3 0f 1e fa                  	endbr64
  401054: 68 02 00 00 00               	pushq	$0x2
  401059: e9 c2 ff ff ff               	jmp	0x401020 <.plt>
  40105e: 66 90                        	nop
  401060: f3 0f 1e fa                  	endbr64
  401064: 68 03 00 00 00               	pushq	$0x3
  401069: e9 b2 ff ff ff               	jmp	0x401020 <.plt>
  40106e: 66 90                        	nop
  401070: f3 0f 1e fa                  	endbr64
  401074: 68 04 00 00 00               	pushq	$0x4
  401079: e9 a2 ff ff ff               	jmp	0x401020 <.plt>
  40107e: 66 90                        	nop
  401080: f3 0f 1e fa                  	endbr64
  401084: 68 05 00 00 00               	pushq	$0x5
  401089: e9 92 ff ff ff               	jmp	0x401020 <.plt>
  40108e: 66 90                        	nop
  401090: f3 0f 1e fa                  	endbr64
  401094: 68 06 00 00 00               	pushq	$0x6
  401099: e9 82 ff ff ff               	jmp	0x401020 <.plt>
  40109e: 66 90                        	nop
  4010a0: f3 0f 1e fa                  	endbr64
  4010a4: 68 07 00 00 00               	pushq	$0x7
  4010a9: e9 72 ff ff ff               	jmp	0x401020 <.plt>
  4010ae: 66 90                        	nop

Disassembly of section .plt.sec:

00000000004010b0 <.plt.sec>:
  4010b0: f3 0f 1e fa                  	endbr64
  4010b4: ff 25 46 2f 00 00            	jmpq	*0x2f46(%rip)           # 0x404000 <_GLOBAL_OFFSET_TABLE_+0x18>
  4010ba: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  4010c0: f3 0f 1e fa                  	endbr64
  4010c4: ff 25 3e 2f 00 00            	jmpq	*0x2f3e(%rip)           # 0x404008 <_GLOBAL_OFFSET_TABLE_+0x20>
  4010ca: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  4010d0: f3 0f 1e fa                  	endbr64
  4010d4: ff 25 36 2f 00 00            	jmpq	*0x2f36(%rip)           # 0x404010 <_GLOBAL_OFFSET_TABLE_+0x28>
  4010da: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  4010e0: f3 0f 1e fa                  	endbr64
  4010e4: ff 25 2e 2f 00 00            	jmpq	*0x2f2e(%rip)           # 0x404018 <_GLOBAL_OFFSET_TABLE_+0x30>
  4010ea: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  4010f0: f3 0f 1e fa                  	endbr64
  4010f4: ff 25 26 2f 00 00            	jmpq	*0x2f26(%rip)           # 0x404020 <_GLOBAL_OFFSET_TABLE_+0x38>
  4010fa: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  401100: f3 0f 1e fa                  	endbr64
  401104: ff 25 1e 2f 00 00            	jmpq	*0x2f1e(%rip)           # 0x404028 <_GLOBAL_OFFSET_TABLE_+0x40>
  40110a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  401110: f3 0f 1e fa                  	endbr64
  401114: ff 25 16 2f 00 00            	jmpq	*0x2f16(%rip)           # 0x404030 <_GLOBAL_OFFSET_TABLE_+0x48>
  40111a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
  401120: f3 0f 1e fa                  	endbr64
  401124: ff 25 0e 2f 00 00            	jmpq	*0x2f0e(%rip)           # 0x404038 <_GLOBAL_OFFSET_TABLE_+0x50>
  40112a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

Disassembly of section .text:

0000000000401130 <_start>:
  401130: f3 0f 1e fa                  	endbr64
  401134: 31 ed                        	xorl	%ebp, %ebp
  401136: 49 89 d1                     	movq	%rdx, %r9
  401139: 5e                           	popq	%rsi
  40113a: 48 89 e2                     	movq	%rsp, %rdx
  40113d: 48 83 e4 f0                  	andq	$-0x10, %rsp
  401141: 50                           	pushq	%rax
  401142: 54                           	pushq	%rsp
  401143: 45 31 c0                     	xorl	%r8d, %r8d
  401146: 31 c9                        	xorl	%ecx, %ecx
  401148: 48 c7 c7 cc 12 40 00         	movq	$0x4012cc, %rdi         # imm = 0x4012CC
  40114f: ff 15 83 2e 00 00            	callq	*0x2e83(%rip)           # 0x403fd8 <printf@GLIBC_2.2.5+0x403fd8>
  401155: f4                           	hlt
  401156: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000401160 <_dl_relocate_static_pie>:
  401160: f3 0f 1e fa                  	endbr64
  401164: c3                           	retq
  401165: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
  40116f: 90                           	nop

0000000000401170 <deregister_tm_clones>:
  401170: b8 50 40 40 00               	movl	$0x404050, %eax         # imm = 0x404050
  401175: 48 3d 50 40 40 00            	cmpq	$0x404050, %rax         # imm = 0x404050
  40117b: 74 13                        	je	0x401190 <deregister_tm_clones+0x20>
  40117d: b8 00 00 00 00               	movl	$0x0, %eax
  401182: 48 85 c0                     	testq	%rax, %rax
  401185: 74 09                        	je	0x401190 <deregister_tm_clones+0x20>
  401187: bf 50 40 40 00               	movl	$0x404050, %edi         # imm = 0x404050
  40118c: ff e0                        	jmpq	*%rax
  40118e: 66 90                        	nop
  401190: c3                           	retq
  401191: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  40119c: 0f 1f 40 00                  	nopl	(%rax)

00000000004011a0 <register_tm_clones>:
  4011a0: be 50 40 40 00               	movl	$0x404050, %esi         # imm = 0x404050
  4011a5: 48 81 ee 50 40 40 00         	subq	$0x404050, %rsi         # imm = 0x404050
  4011ac: 48 89 f0                     	movq	%rsi, %rax
  4011af: 48 c1 ee 3f                  	shrq	$0x3f, %rsi
  4011b3: 48 c1 f8 03                  	sarq	$0x3, %rax
  4011b7: 48 01 c6                     	addq	%rax, %rsi
  4011ba: 48 d1 fe                     	sarq	%rsi
  4011bd: 74 11                        	je	0x4011d0 <register_tm_clones+0x30>
  4011bf: b8 00 00 00 00               	movl	$0x0, %eax
  4011c4: 48 85 c0                     	testq	%rax, %rax
  4011c7: 74 07                        	je	0x4011d0 <register_tm_clones+0x30>
  4011c9: bf 50 40 40 00               	movl	$0x404050, %edi         # imm = 0x404050
  4011ce: ff e0                        	jmpq	*%rax
  4011d0: c3                           	retq
  4011d1: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  4011dc: 0f 1f 40 00                  	nopl	(%rax)

00000000004011e0 <__do_global_dtors_aux>:
  4011e0: f3 0f 1e fa                  	endbr64
  4011e4: 80 3d 7d 2e 00 00 00         	cmpb	$0x0, 0x2e7d(%rip)      # 0x404068 <completed.0>
  4011eb: 75 13                        	jne	0x401200 <__do_global_dtors_aux+0x20>
  4011ed: 55                           	pushq	%rbp
  4011ee: 48 89 e5                     	movq	%rsp, %rbp
  4011f1: e8 7a ff ff ff               	callq	0x401170 <deregister_tm_clones>
  4011f6: c6 05 6b 2e 00 00 01         	movb	$0x1, 0x2e6b(%rip)      # 0x404068 <completed.0>
  4011fd: 5d                           	popq	%rbp
  4011fe: c3                           	retq
  4011ff: 90                           	nop
  401200: c3                           	retq
  401201: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  40120c: 0f 1f 40 00                  	nopl	(%rax)

0000000000401210 <frame_dummy>:
  401210: f3 0f 1e fa                  	endbr64
  401214: eb 8a                        	jmp	0x4011a0 <register_tm_clones>

0000000000401216 <func2>:
  401216: f3 0f 1e fa                  	endbr64
  40121a: 55                           	pushq	%rbp
  40121b: 48 89 e5                     	movq	%rsp, %rbp
  40121e: 48 83 ec 10                  	subq	$0x10, %rsp
  401222: 89 7d fc                     	movl	%edi, -0x4(%rbp)
  401225: 81 7d fc f8 03 00 00         	cmpl	$0x3f8, -0x4(%rbp)      # imm = 0x3F8
  40122c: 74 1e                        	je	0x40124c <func2+0x36>
  40122e: 48 8d 05 d3 0d 00 00         	leaq	0xdd3(%rip), %rax       # 0x402008 <_IO_stdin_used+0x8>
  401235: 48 89 c7                     	movq	%rax, %rdi
  401238: b8 00 00 00 00               	movl	$0x0, %eax
  40123d: e8 8e fe ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  401242: bf 00 00 00 00               	movl	$0x0, %edi
  401247: e8 d4 fe ff ff               	callq	0x401120 <.plt.sec+0x70>
  40124c: 48 8d 05 e8 0d 00 00         	leaq	0xde8(%rip), %rax       # 0x40203b <_IO_stdin_used+0x3b>
  401253: 48 89 c7                     	movq	%rax, %rdi
  401256: b8 00 00 00 00               	movl	$0x0, %eax
  40125b: e8 70 fe ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  401260: bf 00 00 00 00               	movl	$0x0, %edi
  401265: e8 b6 fe ff ff               	callq	0x401120 <.plt.sec+0x70>

000000000040126a <fucc>:
  40126a: f3 0f 1e fa                  	endbr64
  40126e: 55                           	pushq	%rbp
  40126f: 48 89 e5                     	movq	%rsp, %rbp
  401272: 48 83 ec 10                  	subq	$0x10, %rsp
  401276: 89 7d fc                     	movl	%edi, -0x4(%rbp)
  401279: 48 8d 05 cc 0d 00 00         	leaq	0xdcc(%rip), %rax       # 0x40204c <_IO_stdin_used+0x4c>
  401280: 48 89 c7                     	movq	%rax, %rdi
  401283: b8 00 00 00 00               	movl	$0x0, %eax
  401288: e8 43 fe ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  40128d: 90                           	nop
  40128e: c9                           	leave
  40128f: c3                           	retq

0000000000401290 <func>:
  401290: f3 0f 1e fa                  	endbr64
  401294: 55                           	pushq	%rbp
  401295: 48 89 e5                     	movq	%rsp, %rbp
  401298: 48 83 ec 20                  	subq	$0x20, %rsp
  40129c: 48 89 7d e8                  	movq	%rdi, -0x18(%rbp)
  4012a0: 48 8b 4d e8                  	movq	-0x18(%rbp), %rcx
  4012a4: 48 8d 45 f8                  	leaq	-0x8(%rbp), %rax
  4012a8: ba 38 00 00 00               	movl	$0x38, %edx
  4012ad: 48 89 ce                     	movq	%rcx, %rsi
  4012b0: 48 89 c7                     	movq	%rax, %rdi
  4012b3: e8 38 fe ff ff               	callq	0x4010f0 <.plt.sec+0x40>
  4012b8: 90                           	nop
  4012b9: c9                           	leave
  4012ba: c3                           	retq

00000000004012bb <pop_rdi>:
  4012bb: f3 0f 1e fa                  	endbr64
  4012bf: 55                           	pushq	%rbp
  4012c0: 48 89 e5                     	movq	%rsp, %rbp
  4012c3: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
  4012c7: 5f                           	popq	%rdi
  4012c8: c3                           	retq
  4012c9: 90                           	nop
  4012ca: 5d                           	popq	%rbp
  4012cb: c3                           	retq

00000000004012cc <main>:
  4012cc: f3 0f 1e fa                  	endbr64
  4012d0: 55                           	pushq	%rbp
  4012d1: 48 89 e5                     	movq	%rsp, %rbp
  4012d4: 48 81 ec 30 01 00 00         	subq	$0x130, %rsp            # imm = 0x130
  4012db: 89 bd dc fe ff ff            	movl	%edi, -0x124(%rbp)
  4012e1: 48 89 b5 d0 fe ff ff         	movq	%rsi, -0x130(%rbp)
  4012e8: 48 8d 05 7b 0d 00 00         	leaq	0xd7b(%rip), %rax       # 0x40206a <_IO_stdin_used+0x6a>
  4012ef: 48 89 c7                     	movq	%rax, %rdi
  4012f2: b8 00 00 00 00               	movl	$0x0, %eax
  4012f7: e8 d4 fd ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  4012fc: 83 bd dc fe ff ff 02         	cmpl	$0x2, -0x124(%rbp)
  401303: 74 32                        	je	0x401337 <main+0x6b>
  401305: 48 8b 85 d0 fe ff ff         	movq	-0x130(%rbp), %rax
  40130c: 48 8b 10                     	movq	(%rax), %rdx
  40130f: 48 8b 05 4a 2d 00 00         	movq	0x2d4a(%rip), %rax      # 0x404060 <stderr@GLIBC_2.2.5>
  401316: 48 8d 0d 5f 0d 00 00         	leaq	0xd5f(%rip), %rcx       # 0x40207c <_IO_stdin_used+0x7c>
  40131d: 48 89 ce                     	movq	%rcx, %rsi
  401320: 48 89 c7                     	movq	%rax, %rdi
  401323: b8 00 00 00 00               	movl	$0x0, %eax
  401328: e8 b3 fd ff ff               	callq	0x4010e0 <.plt.sec+0x30>
  40132d: b8 01 00 00 00               	movl	$0x1, %eax
  401332: e9 e7 00 00 00               	jmp	0x40141e <main+0x152>
  401337: 48 8b 85 d0 fe ff ff         	movq	-0x130(%rbp), %rax
  40133e: 48 83 c0 08                  	addq	$0x8, %rax
  401342: 48 8b 00                     	movq	(%rax), %rax
  401345: 48 8d 15 42 0d 00 00         	leaq	0xd42(%rip), %rdx       # 0x40208e <_IO_stdin_used+0x8e>
  40134c: 48 89 d6                     	movq	%rdx, %rsi
  40134f: 48 89 c7                     	movq	%rax, %rdi
  401352: e8 a9 fd ff ff               	callq	0x401100 <.plt.sec+0x50>
  401357: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
  40135b: 48 83 7d f8 00               	cmpq	$0x0, -0x8(%rbp)
  401360: 75 19                        	jne	0x40137b <main+0xaf>
  401362: 48 8d 05 27 0d 00 00         	leaq	0xd27(%rip), %rax       # 0x402090 <_IO_stdin_used+0x90>
  401369: 48 89 c7                     	movq	%rax, %rdi
  40136c: e8 9f fd ff ff               	callq	0x401110 <.plt.sec+0x60>
  401371: b8 01 00 00 00               	movl	$0x1, %eax
  401376: e9 a3 00 00 00               	jmp	0x40141e <main+0x152>
  40137b: 48 8b 55 f8                  	movq	-0x8(%rbp), %rdx
  40137f: 48 8d 85 e0 fe ff ff         	leaq	-0x120(%rbp), %rax
  401386: 48 89 d1                     	movq	%rdx, %rcx
  401389: ba 00 01 00 00               	movl	$0x100, %edx            # imm = 0x100
  40138e: be 01 00 00 00               	movl	$0x1, %esi
  401393: 48 89 c7                     	movq	%rax, %rdi
  401396: e8 15 fd ff ff               	callq	0x4010b0 <.plt.sec>
  40139b: 48 89 45 f0                  	movq	%rax, -0x10(%rbp)
  40139f: 48 83 7d f0 00               	cmpq	$0x0, -0x10(%rbp)
  4013a4: 75 22                        	jne	0x4013c8 <main+0xfc>
  4013a6: 48 8d 05 e9 0c 00 00         	leaq	0xce9(%rip), %rax       # 0x402096 <_IO_stdin_used+0x96>
  4013ad: 48 89 c7                     	movq	%rax, %rdi
  4013b0: e8 5b fd ff ff               	callq	0x401110 <.plt.sec+0x60>
  4013b5: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  4013b9: 48 89 c7                     	movq	%rax, %rdi
  4013bc: e8 ff fc ff ff               	callq	0x4010c0 <.plt.sec+0x10>
  4013c1: b8 01 00 00 00               	movl	$0x1, %eax
  4013c6: eb 56                        	jmp	0x40141e <main+0x152>
  4013c8: 48 8d 95 e0 fe ff ff         	leaq	-0x120(%rbp), %rdx
  4013cf: 48 8b 45 f0                  	movq	-0x10(%rbp), %rax
  4013d3: 48 01 d0                     	addq	%rdx, %rax
  4013d6: c6 00 00                     	movb	$0x0, (%rax)
  4013d9: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  4013dd: 48 89 c7                     	movq	%rax, %rdi
  4013e0: e8 db fc ff ff               	callq	0x4010c0 <.plt.sec+0x10>
  4013e5: c7 45 ec 01 00 00 00         	movl	$0x1, -0x14(%rbp)
  4013ec: 8b 45 ec                     	movl	-0x14(%rbp), %eax
  4013ef: 89 c7                        	movl	%eax, %edi
  4013f1: e8 74 fe ff ff               	callq	0x40126a <fucc>
  4013f6: 48 8d 85 e0 fe ff ff         	leaq	-0x120(%rbp), %rax
  4013fd: 48 89 c7                     	movq	%rax, %rdi
  401400: e8 8b fe ff ff               	callq	0x401290 <func>
  401405: 48 8d 05 90 0c 00 00         	leaq	0xc90(%rip), %rax       # 0x40209c <_IO_stdin_used+0x9c>
  40140c: 48 89 c7                     	movq	%rax, %rdi
  40140f: b8 00 00 00 00               	movl	$0x0, %eax
  401414: e8 b7 fc ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  401419: b8 00 00 00 00               	movl	$0x0, %eax
  40141e: c9                           	leave
  40141f: c3                           	retq

Disassembly of section .fini:

0000000000401420 <_fini>:
  401420: f3 0f 1e fa                  	endbr64
  401424: 48 83 ec 08                  	subq	$0x8, %rsp
  401428: 48 83 c4 08                  	addq	$0x8, %rsp
  40142c: c3                           	retq
