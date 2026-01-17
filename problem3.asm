
problem3:	file format elf64-x86-64

Disassembly of section .init:

0000000000401000 <_init>:
  401000: f3 0f 1e fa                  	endbr64
  401004: 48 83 ec 08                  	subq	$0x8, %rsp
  401008: 48 8b 05 71 24 00 00         	movq	0x2471(%rip), %rax      # 0x403480 <puts@GLIBC_2.2.5+0x403480>
  40100f: 48 85 c0                     	testq	%rax, %rax
  401012: 74 02                        	je	0x401016 <_init+0x16>
  401014: ff d0                        	callq	*%rax
  401016: 48 83 c4 08                  	addq	$0x8, %rsp
  40101a: c3                           	retq

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020: ff 35 6a 24 00 00            	pushq	0x246a(%rip)            # 0x403490 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026: f2 ff 25 6b 24 00 00         	repne		jmpq	*0x246b(%rip)   # 0x403498 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d: 0f 1f 00                     	nopl	(%rax)
  401030: f3 0f 1e fa                  	endbr64
  401034: 68 00 00 00 00               	pushq	$0x0
  401039: f2 e9 e1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40103f: 90                           	nop
  401040: f3 0f 1e fa                  	endbr64
  401044: 68 01 00 00 00               	pushq	$0x1
  401049: f2 e9 d1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40104f: 90                           	nop
  401050: f3 0f 1e fa                  	endbr64
  401054: 68 02 00 00 00               	pushq	$0x2
  401059: f2 e9 c1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40105f: 90                           	nop
  401060: f3 0f 1e fa                  	endbr64
  401064: 68 03 00 00 00               	pushq	$0x3
  401069: f2 e9 b1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40106f: 90                           	nop
  401070: f3 0f 1e fa                  	endbr64
  401074: 68 04 00 00 00               	pushq	$0x4
  401079: f2 e9 a1 ff ff ff            	repne		jmp	0x401020 <.plt>
  40107f: 90                           	nop
  401080: f3 0f 1e fa                  	endbr64
  401084: 68 05 00 00 00               	pushq	$0x5
  401089: f2 e9 91 ff ff ff            	repne		jmp	0x401020 <.plt>
  40108f: 90                           	nop
  401090: f3 0f 1e fa                  	endbr64
  401094: 68 06 00 00 00               	pushq	$0x6
  401099: f2 e9 81 ff ff ff            	repne		jmp	0x401020 <.plt>
  40109f: 90                           	nop
  4010a0: f3 0f 1e fa                  	endbr64
  4010a4: 68 07 00 00 00               	pushq	$0x7
  4010a9: f2 e9 71 ff ff ff            	repne		jmp	0x401020 <.plt>
  4010af: 90                           	nop

Disassembly of section .plt.sec:

00000000004010b0 <.plt.sec>:
  4010b0: f3 0f 1e fa                  	endbr64
  4010b4: f2 ff 25 e5 23 00 00         	repne		jmpq	*0x23e5(%rip)   # 0x4034a0 <_GLOBAL_OFFSET_TABLE_+0x18>
  4010bb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  4010c0: f3 0f 1e fa                  	endbr64
  4010c4: f2 ff 25 dd 23 00 00         	repne		jmpq	*0x23dd(%rip)   # 0x4034a8 <_GLOBAL_OFFSET_TABLE_+0x20>
  4010cb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  4010d0: f3 0f 1e fa                  	endbr64
  4010d4: f2 ff 25 d5 23 00 00         	repne		jmpq	*0x23d5(%rip)   # 0x4034b0 <_GLOBAL_OFFSET_TABLE_+0x28>
  4010db: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  4010e0: f3 0f 1e fa                  	endbr64
  4010e4: f2 ff 25 cd 23 00 00         	repne		jmpq	*0x23cd(%rip)   # 0x4034b8 <_GLOBAL_OFFSET_TABLE_+0x30>
  4010eb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  4010f0: f3 0f 1e fa                  	endbr64
  4010f4: f2 ff 25 c5 23 00 00         	repne		jmpq	*0x23c5(%rip)   # 0x4034c0 <_GLOBAL_OFFSET_TABLE_+0x38>
  4010fb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  401100: f3 0f 1e fa                  	endbr64
  401104: f2 ff 25 bd 23 00 00         	repne		jmpq	*0x23bd(%rip)   # 0x4034c8 <_GLOBAL_OFFSET_TABLE_+0x40>
  40110b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  401110: f3 0f 1e fa                  	endbr64
  401114: f2 ff 25 b5 23 00 00         	repne		jmpq	*0x23b5(%rip)   # 0x4034d0 <_GLOBAL_OFFSET_TABLE_+0x48>
  40111b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
  401120: f3 0f 1e fa                  	endbr64
  401124: f2 ff 25 ad 23 00 00         	repne		jmpq	*0x23ad(%rip)   # 0x4034d8 <_GLOBAL_OFFSET_TABLE_+0x50>
  40112b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

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
  401148: 48 c7 c7 a8 13 40 00         	movq	$0x4013a8, %rdi         # imm = 0x4013A8
  40114f: ff 15 23 23 00 00            	callq	*0x2323(%rip)           # 0x403478 <puts@GLIBC_2.2.5+0x403478>
  401155: f4                           	hlt
  401156: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000401160 <_dl_relocate_static_pie>:
  401160: f3 0f 1e fa                  	endbr64
  401164: c3                           	retq
  401165: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
  40116f: 90                           	nop

0000000000401170 <deregister_tm_clones>:
  401170: b8 f0 34 40 00               	movl	$0x4034f0, %eax         # imm = 0x4034F0
  401175: 48 3d f0 34 40 00            	cmpq	$0x4034f0, %rax         # imm = 0x4034F0
  40117b: 74 13                        	je	0x401190 <deregister_tm_clones+0x20>
  40117d: b8 00 00 00 00               	movl	$0x0, %eax
  401182: 48 85 c0                     	testq	%rax, %rax
  401185: 74 09                        	je	0x401190 <deregister_tm_clones+0x20>
  401187: bf f0 34 40 00               	movl	$0x4034f0, %edi         # imm = 0x4034F0
  40118c: ff e0                        	jmpq	*%rax
  40118e: 66 90                        	nop
  401190: c3                           	retq
  401191: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  40119c: 0f 1f 40 00                  	nopl	(%rax)

00000000004011a0 <register_tm_clones>:
  4011a0: be f0 34 40 00               	movl	$0x4034f0, %esi         # imm = 0x4034F0
  4011a5: 48 81 ee f0 34 40 00         	subq	$0x4034f0, %rsi         # imm = 0x4034F0
  4011ac: 48 89 f0                     	movq	%rsi, %rax
  4011af: 48 c1 ee 3f                  	shrq	$0x3f, %rsi
  4011b3: 48 c1 f8 03                  	sarq	$0x3, %rax
  4011b7: 48 01 c6                     	addq	%rax, %rsi
  4011ba: 48 d1 fe                     	sarq	%rsi
  4011bd: 74 11                        	je	0x4011d0 <register_tm_clones+0x30>
  4011bf: b8 00 00 00 00               	movl	$0x0, %eax
  4011c4: 48 85 c0                     	testq	%rax, %rax
  4011c7: 74 07                        	je	0x4011d0 <register_tm_clones+0x30>
  4011c9: bf f0 34 40 00               	movl	$0x4034f0, %edi         # imm = 0x4034F0
  4011ce: ff e0                        	jmpq	*%rax
  4011d0: c3                           	retq
  4011d1: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  4011dc: 0f 1f 40 00                  	nopl	(%rax)

00000000004011e0 <__do_global_dtors_aux>:
  4011e0: f3 0f 1e fa                  	endbr64
  4011e4: 80 3d 1d 23 00 00 00         	cmpb	$0x0, 0x231d(%rip)      # 0x403508 <completed.0>
  4011eb: 75 13                        	jne	0x401200 <__do_global_dtors_aux+0x20>
  4011ed: 55                           	pushq	%rbp
  4011ee: 48 89 e5                     	movq	%rsp, %rbp
  4011f1: e8 7a ff ff ff               	callq	0x401170 <deregister_tm_clones>
  4011f6: c6 05 0b 23 00 00 01         	movb	$0x1, 0x230b(%rip)      # 0x403508 <completed.0>
  4011fd: 5d                           	popq	%rbp
  4011fe: c3                           	retq
  4011ff: 90                           	nop
  401200: c3                           	retq
  401201: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)
  40120c: 0f 1f 40 00                  	nopl	(%rax)

0000000000401210 <frame_dummy>:
  401210: f3 0f 1e fa                  	endbr64
  401214: eb 8a                        	jmp	0x4011a0 <register_tm_clones>

0000000000401216 <func1>:
  401216: f3 0f 1e fa                  	endbr64
  40121a: 55                           	pushq	%rbp
  40121b: 48 89 e5                     	movq	%rsp, %rbp
  40121e: 48 83 ec 50                  	subq	$0x50, %rsp
  401222: 89 7d bc                     	movl	%edi, -0x44(%rbp)
  401225: 83 7d bc 72                  	cmpl	$0x72, -0x44(%rbp)
  401229: 75 57                        	jne	0x401282 <func1+0x6c>
  40122b: 48 b8 59 6f 75 72 20 6c 75 63	movabsq	$0x63756c2072756f59, %rax # imm = 0x63756C2072756F59
  401235: 48 ba 6b 79 20 6e 75 6d 62 65	movabsq	$0x65626d756e20796b, %rdx # imm = 0x65626D756E20796B
  40123f: 48 89 45 c0                  	movq	%rax, -0x40(%rbp)
  401243: 48 89 55 c8                  	movq	%rdx, -0x38(%rbp)
  401247: 48 b8 72 20 69 73 20 31 31 34	movabsq	$0x3431312073692072, %rax # imm = 0x3431312073692072
  401251: ba 00 00 00 00               	movl	$0x0, %edx
  401256: 48 89 45 d0                  	movq	%rax, -0x30(%rbp)
  40125a: 48 89 55 d8                  	movq	%rdx, -0x28(%rbp)
  40125e: 48 c7 45 e0 00 00 00 00      	movq	$0x0, -0x20(%rbp)
  401266: 48 c7 45 e8 00 00 00 00      	movq	$0x0, -0x18(%rbp)
  40126e: 66 c7 45 f0 00 00            	movw	$0x0, -0x10(%rbp)
  401274: 48 8d 45 c0                  	leaq	-0x40(%rbp), %rax
  401278: 48 89 c7                     	movq	%rax, %rdi
  40127b: e8 30 fe ff ff               	callq	0x4010b0 <.plt.sec>
  401280: eb 4e                        	jmp	0x4012d0 <func1+0xba>
  401282: 48 b8 45 72 72 6f 72 20 61 6e	movabsq	$0x6e6120726f727245, %rax # imm = 0x6E6120726F727245
  40128c: 48 ba 73 77 65 72 21 00 00 00	movabsq	$0x2172657773, %rdx     # imm = 0x2172657773
  401296: 48 89 45 c0                  	movq	%rax, -0x40(%rbp)
  40129a: 48 89 55 c8                  	movq	%rdx, -0x38(%rbp)
  40129e: 48 c7 45 d0 00 00 00 00      	movq	$0x0, -0x30(%rbp)
  4012a6: 48 c7 45 d8 00 00 00 00      	movq	$0x0, -0x28(%rbp)
  4012ae: 48 c7 45 e0 00 00 00 00      	movq	$0x0, -0x20(%rbp)
  4012b6: 48 c7 45 e8 00 00 00 00      	movq	$0x0, -0x18(%rbp)
  4012be: 66 c7 45 f0 00 00            	movw	$0x0, -0x10(%rbp)
  4012c4: 48 8d 45 c0                  	leaq	-0x40(%rbp), %rax
  4012c8: 48 89 c7                     	movq	%rax, %rdi
  4012cb: e8 e0 fd ff ff               	callq	0x4010b0 <.plt.sec>
  4012d0: bf 00 00 00 00               	movl	$0x0, %edi
  4012d5: e8 46 fe ff ff               	callq	0x401120 <.plt.sec+0x70>

00000000004012da <mov_rdi>:
  4012da: f3 0f 1e fa                  	endbr64
  4012de: 55                           	pushq	%rbp
  4012df: 48 89 e5                     	movq	%rsp, %rbp
  4012e2: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
  4012e6: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  4012ea: 48 89 c7                     	movq	%rax, %rdi
  4012ed: c3                           	retq
  4012ee: 90                           	nop
  4012ef: 5d                           	popq	%rbp
  4012f0: c3                           	retq

00000000004012f1 <mov_rax>:
  4012f1: f3 0f 1e fa                  	endbr64
  4012f5: 55                           	pushq	%rbp
  4012f6: 48 89 e5                     	movq	%rsp, %rbp
  4012f9: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
  4012fd: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  401301: 48 89 c0                     	movq	%rax, %rax
  401304: c3                           	retq
  401305: 90                           	nop
  401306: 5d                           	popq	%rbp
  401307: c3                           	retq

0000000000401308 <call_rax>:
  401308: f3 0f 1e fa                  	endbr64
  40130c: 55                           	pushq	%rbp
  40130d: 48 89 e5                     	movq	%rsp, %rbp
  401310: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
  401314: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  401318: ff d0                        	callq	*%rax
  40131a: c3                           	retq
  40131b: 90                           	nop
  40131c: 5d                           	popq	%rbp
  40131d: c3                           	retq

000000000040131e <jmp_x>:
  40131e: f3 0f 1e fa                  	endbr64
  401322: 55                           	pushq	%rbp
  401323: 48 89 e5                     	movq	%rsp, %rbp
  401326: 48 89 7d f8                  	movq	%rdi, -0x8(%rbp)
  40132a: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  40132e: ff e0                        	jmpq	*%rax
  401330: c3                           	retq
  401331: 90                           	nop
  401332: 5d                           	popq	%rbp
  401333: c3                           	retq

0000000000401334 <jmp_xs>:
  401334: f3 0f 1e fa                  	endbr64
  401338: 55                           	pushq	%rbp
  401339: 48 89 e5                     	movq	%rsp, %rbp
  40133c: 48 8b 05 cd 21 00 00         	movq	0x21cd(%rip), %rax      # 0x403510 <saved_rsp>
  401343: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
  401347: 48 83 45 f8 10               	addq	$0x10, -0x8(%rbp)
  40134c: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  401350: ff e0                        	jmpq	*%rax
  401352: 90                           	nop
  401353: 5d                           	popq	%rbp
  401354: c3                           	retq

0000000000401355 <func>:
  401355: f3 0f 1e fa                  	endbr64
  401359: 55                           	pushq	%rbp
  40135a: 48 89 e5                     	movq	%rsp, %rbp
  40135d: 48 83 ec 30                  	subq	$0x30, %rsp
  401361: 48 89 7d d8                  	movq	%rdi, -0x28(%rbp)
  401365: 48 89 e0                     	movq	%rsp, %rax
  401368: 48 89 05 a1 21 00 00         	movq	%rax, 0x21a1(%rip)      # 0x403510 <saved_rsp>
  40136f: 48 8b 4d d8                  	movq	-0x28(%rbp), %rcx
  401373: 48 8d 45 e0                  	leaq	-0x20(%rbp), %rax
  401377: ba 40 00 00 00               	movl	$0x40, %edx
  40137c: 48 89 ce                     	movq	%rcx, %rsi
  40137f: 48 89 c7                     	movq	%rax, %rdi
  401382: e8 69 fd ff ff               	callq	0x4010f0 <.plt.sec+0x40>
  401387: 48 8d 05 7a 0c 00 00         	leaq	0xc7a(%rip), %rax       # 0x402008 <_IO_stdin_used+0x8>
  40138e: 48 89 c7                     	movq	%rax, %rdi
  401391: e8 1a fd ff ff               	callq	0x4010b0 <.plt.sec>
  401396: 48 8d 05 93 0c 00 00         	leaq	0xc93(%rip), %rax       # 0x402030 <_IO_stdin_used+0x30>
  40139d: 48 89 c7                     	movq	%rax, %rdi
  4013a0: e8 0b fd ff ff               	callq	0x4010b0 <.plt.sec>
  4013a5: 90                           	nop
  4013a6: c9                           	leave
  4013a7: c3                           	retq

00000000004013a8 <main>:
  4013a8: f3 0f 1e fa                  	endbr64
  4013ac: 55                           	pushq	%rbp
  4013ad: 48 89 e5                     	movq	%rsp, %rbp
  4013b0: 48 81 ec 20 01 00 00         	subq	$0x120, %rsp            # imm = 0x120
  4013b7: 89 bd ec fe ff ff            	movl	%edi, -0x114(%rbp)
  4013bd: 48 89 b5 e0 fe ff ff         	movq	%rsi, -0x120(%rbp)
  4013c4: 48 8d 05 93 0c 00 00         	leaq	0xc93(%rip), %rax       # 0x40205e <_IO_stdin_used+0x5e>
  4013cb: 48 89 c7                     	movq	%rax, %rdi
  4013ce: e8 dd fc ff ff               	callq	0x4010b0 <.plt.sec>
  4013d3: 83 bd ec fe ff ff 02         	cmpl	$0x2, -0x114(%rbp)
  4013da: 74 32                        	je	0x40140e <main+0x66>
  4013dc: 48 8b 85 e0 fe ff ff         	movq	-0x120(%rbp), %rax
  4013e3: 48 8b 10                     	movq	(%rax), %rdx
  4013e6: 48 8b 05 13 21 00 00         	movq	0x2113(%rip), %rax      # 0x403500 <stderr@GLIBC_2.2.5>
  4013ed: 48 8d 0d 7b 0c 00 00         	leaq	0xc7b(%rip), %rcx       # 0x40206f <_IO_stdin_used+0x6f>
  4013f4: 48 89 ce                     	movq	%rcx, %rsi
  4013f7: 48 89 c7                     	movq	%rax, %rdi
  4013fa: b8 00 00 00 00               	movl	$0x0, %eax
  4013ff: e8 dc fc ff ff               	callq	0x4010e0 <.plt.sec+0x30>
  401404: b8 01 00 00 00               	movl	$0x1, %eax
  401409: e9 d1 00 00 00               	jmp	0x4014df <main+0x137>
  40140e: 48 8b 85 e0 fe ff ff         	movq	-0x120(%rbp), %rax
  401415: 48 83 c0 08                  	addq	$0x8, %rax
  401419: 48 8b 00                     	movq	(%rax), %rax
  40141c: 48 8d 15 5e 0c 00 00         	leaq	0xc5e(%rip), %rdx       # 0x402081 <_IO_stdin_used+0x81>
  401423: 48 89 d6                     	movq	%rdx, %rsi
  401426: 48 89 c7                     	movq	%rax, %rdi
  401429: e8 d2 fc ff ff               	callq	0x401100 <.plt.sec+0x50>
  40142e: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
  401432: 48 83 7d f8 00               	cmpq	$0x0, -0x8(%rbp)
  401437: 75 19                        	jne	0x401452 <main+0xaa>
  401439: 48 8d 05 43 0c 00 00         	leaq	0xc43(%rip), %rax       # 0x402083 <_IO_stdin_used+0x83>
  401440: 48 89 c7                     	movq	%rax, %rdi
  401443: e8 c8 fc ff ff               	callq	0x401110 <.plt.sec+0x60>
  401448: b8 01 00 00 00               	movl	$0x1, %eax
  40144d: e9 8d 00 00 00               	jmp	0x4014df <main+0x137>
  401452: 48 8b 55 f8                  	movq	-0x8(%rbp), %rdx
  401456: 48 8d 85 f0 fe ff ff         	leaq	-0x110(%rbp), %rax
  40145d: 48 89 d1                     	movq	%rdx, %rcx
  401460: ba 00 01 00 00               	movl	$0x100, %edx            # imm = 0x100
  401465: be 01 00 00 00               	movl	$0x1, %esi
  40146a: 48 89 c7                     	movq	%rax, %rdi
  40146d: e8 4e fc ff ff               	callq	0x4010c0 <.plt.sec+0x10>
  401472: 48 89 45 f0                  	movq	%rax, -0x10(%rbp)
  401476: 48 83 7d f0 00               	cmpq	$0x0, -0x10(%rbp)
  40147b: 75 22                        	jne	0x40149f <main+0xf7>
  40147d: 48 8d 05 05 0c 00 00         	leaq	0xc05(%rip), %rax       # 0x402089 <_IO_stdin_used+0x89>
  401484: 48 89 c7                     	movq	%rax, %rdi
  401487: e8 84 fc ff ff               	callq	0x401110 <.plt.sec+0x60>
  40148c: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  401490: 48 89 c7                     	movq	%rax, %rdi
  401493: e8 38 fc ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  401498: b8 01 00 00 00               	movl	$0x1, %eax
  40149d: eb 40                        	jmp	0x4014df <main+0x137>
  40149f: 48 8d 95 f0 fe ff ff         	leaq	-0x110(%rbp), %rdx
  4014a6: 48 8b 45 f0                  	movq	-0x10(%rbp), %rax
  4014aa: 48 01 d0                     	addq	%rdx, %rax
  4014ad: c6 00 00                     	movb	$0x0, (%rax)
  4014b0: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
  4014b4: 48 89 c7                     	movq	%rax, %rdi
  4014b7: e8 14 fc ff ff               	callq	0x4010d0 <.plt.sec+0x20>
  4014bc: 48 8d 85 f0 fe ff ff         	leaq	-0x110(%rbp), %rax
  4014c3: 48 89 c7                     	movq	%rax, %rdi
  4014c6: e8 8a fe ff ff               	callq	0x401355 <func>
  4014cb: 48 8d 05 bd 0b 00 00         	leaq	0xbbd(%rip), %rax       # 0x40208f <_IO_stdin_used+0x8f>
  4014d2: 48 89 c7                     	movq	%rax, %rdi
  4014d5: e8 d6 fb ff ff               	callq	0x4010b0 <.plt.sec>
  4014da: b8 00 00 00 00               	movl	$0x0, %eax
  4014df: c9                           	leave
  4014e0: c3                           	retq

Disassembly of section .fini:

00000000004014e4 <_fini>:
  4014e4: f3 0f 1e fa                  	endbr64
  4014e8: 48 83 ec 08                  	subq	$0x8, %rsp
  4014ec: 48 83 c4 08                  	addq	$0x8, %rsp
  4014f0: c3                           	retq
