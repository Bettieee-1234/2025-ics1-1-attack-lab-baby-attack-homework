
problem4:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$0x8, %rsp
    1008: 48 8b 05 d9 2f 00 00         	movq	0x2fd9(%rip), %rax      # 0x3fe8 <_GLOBAL_OFFSET_TABLE_+0x60>
    100f: 48 85 c0                     	testq	%rax, %rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	callq	*%rax
    1016: 48 83 c4 08                  	addq	$0x8, %rsp
    101a: c3                           	retq

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 6a 2f 00 00            	pushq	0x2f6a(%rip)            # 0x3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: ff 25 6c 2f 00 00            	jmpq	*0x2f6c(%rip)           # 0x3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c: 0f 1f 40 00                  	nopl	(%rax)
    1030: f3 0f 1e fa                  	endbr64
    1034: 68 00 00 00 00               	pushq	$0x0
    1039: e9 e2 ff ff ff               	jmp	0x1020 <.plt>
    103e: 66 90                        	nop
    1040: f3 0f 1e fa                  	endbr64
    1044: 68 01 00 00 00               	pushq	$0x1
    1049: e9 d2 ff ff ff               	jmp	0x1020 <.plt>
    104e: 66 90                        	nop
    1050: f3 0f 1e fa                  	endbr64
    1054: 68 02 00 00 00               	pushq	$0x2
    1059: e9 c2 ff ff ff               	jmp	0x1020 <.plt>
    105e: 66 90                        	nop
    1060: f3 0f 1e fa                  	endbr64
    1064: 68 03 00 00 00               	pushq	$0x3
    1069: e9 b2 ff ff ff               	jmp	0x1020 <.plt>
    106e: 66 90                        	nop
    1070: f3 0f 1e fa                  	endbr64
    1074: 68 04 00 00 00               	pushq	$0x4
    1079: e9 a2 ff ff ff               	jmp	0x1020 <.plt>
    107e: 66 90                        	nop
    1080: f3 0f 1e fa                  	endbr64
    1084: 68 05 00 00 00               	pushq	$0x5
    1089: e9 92 ff ff ff               	jmp	0x1020 <.plt>
    108e: 66 90                        	nop
    1090: f3 0f 1e fa                  	endbr64
    1094: 68 06 00 00 00               	pushq	$0x6
    1099: e9 82 ff ff ff               	jmp	0x1020 <.plt>
    109e: 66 90                        	nop

Disassembly of section .plt.got:

00000000000010a0 <.plt.got>:
    10a0: f3 0f 1e fa                  	endbr64

00000000000010a4 <__cxa_finalize@plt>:
    10a4: ff 25 4e 2f 00 00            	jmpq	*0x2f4e(%rip)           # 0x3ff8 <_GLOBAL_OFFSET_TABLE_+0x70>
    10aa: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

Disassembly of section .plt.sec:

00000000000010b0 <.plt.sec>:
    10b0: f3 0f 1e fa                  	endbr64
    10b4: ff 25 e6 2e 00 00            	jmpq	*0x2ee6(%rip)           # 0x3fa0 <_GLOBAL_OFFSET_TABLE_+0x18>
    10ba: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    10c0: f3 0f 1e fa                  	endbr64
    10c4: ff 25 de 2e 00 00            	jmpq	*0x2ede(%rip)           # 0x3fa8 <_GLOBAL_OFFSET_TABLE_+0x20>
    10ca: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    10d0: f3 0f 1e fa                  	endbr64
    10d4: ff 25 d6 2e 00 00            	jmpq	*0x2ed6(%rip)           # 0x3fb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    10da: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    10e0: f3 0f 1e fa                  	endbr64
    10e4: ff 25 ce 2e 00 00            	jmpq	*0x2ece(%rip)           # 0x3fb8 <_GLOBAL_OFFSET_TABLE_+0x30>
    10ea: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    10f0: f3 0f 1e fa                  	endbr64
    10f4: ff 25 c6 2e 00 00            	jmpq	*0x2ec6(%rip)           # 0x3fc0 <_GLOBAL_OFFSET_TABLE_+0x38>
    10fa: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    1100: f3 0f 1e fa                  	endbr64
    1104: ff 25 be 2e 00 00            	jmpq	*0x2ebe(%rip)           # 0x3fc8 <_GLOBAL_OFFSET_TABLE_+0x40>
    110a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    1110: f3 0f 1e fa                  	endbr64
    1114: ff 25 b6 2e 00 00            	jmpq	*0x2eb6(%rip)           # 0x3fd0 <_GLOBAL_OFFSET_TABLE_+0x48>
    111a: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)

Disassembly of section .text:

0000000000001120 <_start>:
    1120: f3 0f 1e fa                  	endbr64
    1124: 31 ed                        	xorl	%ebp, %ebp
    1126: 49 89 d1                     	movq	%rdx, %r9
    1129: 5e                           	popq	%rsi
    112a: 48 89 e2                     	movq	%rsp, %rdx
    112d: 48 83 e4 f0                  	andq	$-0x10, %rsp
    1131: 50                           	pushq	%rax
    1132: 54                           	pushq	%rsp
    1133: 45 31 c0                     	xorl	%r8d, %r8d
    1136: 31 c9                        	xorl	%ecx, %ecx
    1138: 48 8d 3d e1 02 00 00         	leaq	0x2e1(%rip), %rdi       # 0x1420 <main>
    113f: ff 15 93 2e 00 00            	callq	*0x2e93(%rip)           # 0x3fd8 <_GLOBAL_OFFSET_TABLE_+0x50>
    1145: f4                           	hlt
    1146: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000001150 <deregister_tm_clones>:
    1150: 48 8d 3d b9 2e 00 00         	leaq	0x2eb9(%rip), %rdi      # 0x4010 <completed.0>
    1157: 48 8d 05 b2 2e 00 00         	leaq	0x2eb2(%rip), %rax      # 0x4010 <completed.0>
    115e: 48 39 f8                     	cmpq	%rdi, %rax
    1161: 74 15                        	je	0x1178 <deregister_tm_clones+0x28>
    1163: 48 8b 05 76 2e 00 00         	movq	0x2e76(%rip), %rax      # 0x3fe0 <_GLOBAL_OFFSET_TABLE_+0x58>
    116a: 48 85 c0                     	testq	%rax, %rax
    116d: 74 09                        	je	0x1178 <deregister_tm_clones+0x28>
    116f: ff e0                        	jmpq	*%rax
    1171: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1178: c3                           	retq
    1179: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001180 <register_tm_clones>:
    1180: 48 8d 3d 89 2e 00 00         	leaq	0x2e89(%rip), %rdi      # 0x4010 <completed.0>
    1187: 48 8d 35 82 2e 00 00         	leaq	0x2e82(%rip), %rsi      # 0x4010 <completed.0>
    118e: 48 29 fe                     	subq	%rdi, %rsi
    1191: 48 89 f0                     	movq	%rsi, %rax
    1194: 48 c1 ee 3f                  	shrq	$0x3f, %rsi
    1198: 48 c1 f8 03                  	sarq	$0x3, %rax
    119c: 48 01 c6                     	addq	%rax, %rsi
    119f: 48 d1 fe                     	sarq	%rsi
    11a2: 74 14                        	je	0x11b8 <register_tm_clones+0x38>
    11a4: 48 8b 05 45 2e 00 00         	movq	0x2e45(%rip), %rax      # 0x3ff0 <_GLOBAL_OFFSET_TABLE_+0x68>
    11ab: 48 85 c0                     	testq	%rax, %rax
    11ae: 74 08                        	je	0x11b8 <register_tm_clones+0x38>
    11b0: ff e0                        	jmpq	*%rax
    11b2: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    11b8: c3                           	retq
    11b9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0: f3 0f 1e fa                  	endbr64
    11c4: 80 3d 45 2e 00 00 00         	cmpb	$0x0, 0x2e45(%rip)      # 0x4010 <completed.0>
    11cb: 75 2b                        	jne	0x11f8 <__do_global_dtors_aux+0x38>
    11cd: 55                           	pushq	%rbp
    11ce: 48 83 3d 22 2e 00 00 00      	cmpq	$0x0, 0x2e22(%rip)      # 0x3ff8 <_GLOBAL_OFFSET_TABLE_+0x70>
    11d6: 48 89 e5                     	movq	%rsp, %rbp
    11d9: 74 0c                        	je	0x11e7 <__do_global_dtors_aux+0x27>
    11db: 48 8b 3d 26 2e 00 00         	movq	0x2e26(%rip), %rdi      # 0x4008 <__dso_handle>
    11e2: e8 b9 fe ff ff               	callq	0x10a0 <.plt.got>
    11e7: e8 64 ff ff ff               	callq	0x1150 <deregister_tm_clones>
    11ec: c6 05 1d 2e 00 00 01         	movb	$0x1, 0x2e1d(%rip)      # 0x4010 <completed.0>
    11f3: 5d                           	popq	%rbp
    11f4: c3                           	retq
    11f5: 0f 1f 00                     	nopl	(%rax)
    11f8: c3                           	retq
    11f9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001200 <frame_dummy>:
    1200: f3 0f 1e fa                  	endbr64
    1204: e9 77 ff ff ff               	jmp	0x1180 <register_tm_clones>

0000000000001209 <caesar_decrypt>:
    1209: f3 0f 1e fa                  	endbr64
    120d: 55                           	pushq	%rbp
    120e: 48 89 e5                     	movq	%rsp, %rbp
    1211: 48 83 ec 30                  	subq	$0x30, %rsp
    1215: 48 89 7d d8                  	movq	%rdi, -0x28(%rbp)
    1219: 89 75 d4                     	movl	%esi, -0x2c(%rbp)
    121c: 64 48 8b 04 25 28 00 00 00   	movq	%fs:0x28, %rax
    1225: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
    1229: 31 c0                        	xorl	%eax, %eax
    122b: 48 8b 45 d8                  	movq	-0x28(%rbp), %rax
    122f: 48 89 c7                     	movq	%rax, %rdi
    1232: e8 89 fe ff ff               	callq	0x10c0 <.plt.sec+0x10>
    1237: 89 45 f4                     	movl	%eax, -0xc(%rbp)
    123a: c7 45 f0 00 00 00 00         	movl	$0x0, -0x10(%rbp)
    1241: e9 b3 00 00 00               	jmp	0x12f9 <caesar_decrypt+0xf0>
    1246: 8b 45 f0                     	movl	-0x10(%rbp), %eax
    1249: 48 63 d0                     	movslq	%eax, %rdx
    124c: 48 8b 45 d8                  	movq	-0x28(%rbp), %rax
    1250: 48 01 d0                     	addq	%rdx, %rax
    1253: 0f b6 00                     	movzbl	(%rax), %eax
    1256: 88 45 ee                     	movb	%al, -0x12(%rbp)
    1259: e8 b2 fe ff ff               	callq	0x1110 <.plt.sec+0x60>
    125e: 48 8b 00                     	movq	(%rax), %rax
    1261: 48 0f be 55 ee               	movsbq	-0x12(%rbp), %rdx
    1266: 48 01 d2                     	addq	%rdx, %rdx
    1269: 48 01 d0                     	addq	%rdx, %rax
    126c: 0f b7 00                     	movzwl	(%rax), %eax
    126f: 0f b7 c0                     	movzwl	%ax, %eax
    1272: 25 00 04 00 00               	andl	$0x400, %eax            # imm = 0x400
    1277: 85 c0                        	testl	%eax, %eax
    1279: 74 7a                        	je	0x12f5 <caesar_decrypt+0xec>
    127b: e8 90 fe ff ff               	callq	0x1110 <.plt.sec+0x60>
    1280: 48 8b 00                     	movq	(%rax), %rax
    1283: 48 0f be 55 ee               	movsbq	-0x12(%rbp), %rdx
    1288: 48 01 d2                     	addq	%rdx, %rdx
    128b: 48 01 d0                     	addq	%rdx, %rax
    128e: 0f b7 00                     	movzwl	(%rax), %eax
    1291: 0f b7 c0                     	movzwl	%ax, %eax
    1294: 25 00 02 00 00               	andl	$0x200, %eax            # imm = 0x200
    1299: 85 c0                        	testl	%eax, %eax
    129b: 74 07                        	je	0x12a4 <caesar_decrypt+0x9b>
    129d: b8 61 00 00 00               	movl	$0x61, %eax
    12a2: eb 05                        	jmp	0x12a9 <caesar_decrypt+0xa0>
    12a4: b8 41 00 00 00               	movl	$0x41, %eax
    12a9: 88 45 ef                     	movb	%al, -0x11(%rbp)
    12ac: 0f be 55 ee                  	movsbl	-0x12(%rbp), %edx
    12b0: 0f be 45 ef                  	movsbl	-0x11(%rbp), %eax
    12b4: 29 c2                        	subl	%eax, %edx
    12b6: 89 d0                        	movl	%edx, %eax
    12b8: 2b 45 d4                     	subl	-0x2c(%rbp), %eax
    12bb: 83 c0 1a                     	addl	$0x1a, %eax
    12be: 48 63 d0                     	movslq	%eax, %rdx
    12c1: 48 69 d2 4f ec c4 4e         	imulq	$0x4ec4ec4f, %rdx, %rdx # imm = 0x4EC4EC4F
    12c8: 48 c1 ea 20                  	shrq	$0x20, %rdx
    12cc: c1 fa 03                     	sarl	$0x3, %edx
    12cf: 89 c1                        	movl	%eax, %ecx
    12d1: c1 f9 1f                     	sarl	$0x1f, %ecx
    12d4: 29 ca                        	subl	%ecx, %edx
    12d6: 6b ca 1a                     	imull	$0x1a, %edx, %ecx
    12d9: 29 c8                        	subl	%ecx, %eax
    12db: 89 c2                        	movl	%eax, %edx
    12dd: 0f b6 45 ef                  	movzbl	-0x11(%rbp), %eax
    12e1: 8d 0c 02                     	leal	(%rdx,%rax), %ecx
    12e4: 8b 45 f0                     	movl	-0x10(%rbp), %eax
    12e7: 48 63 d0                     	movslq	%eax, %rdx
    12ea: 48 8b 45 d8                  	movq	-0x28(%rbp), %rax
    12ee: 48 01 d0                     	addq	%rdx, %rax
    12f1: 89 ca                        	movl	%ecx, %edx
    12f3: 88 10                        	movb	%dl, (%rax)
    12f5: 83 45 f0 01                  	addl	$0x1, -0x10(%rbp)
    12f9: 8b 45 f0                     	movl	-0x10(%rbp), %eax
    12fc: 3b 45 f4                     	cmpl	-0xc(%rbp), %eax
    12ff: 0f 8c 41 ff ff ff            	jl	0x1246 <caesar_decrypt+0x3d>
    1305: 90                           	nop
    1306: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    130a: 64 48 2b 04 25 28 00 00 00   	subq	%fs:0x28, %rax
    1313: 74 05                        	je	0x131a <caesar_decrypt+0x111>
    1315: e8 b6 fd ff ff               	callq	0x10d0 <.plt.sec+0x20>
    131a: c9                           	leave
    131b: c3                           	retq

000000000000131c <func1>:
    131c: f3 0f 1e fa                  	endbr64
    1320: 55                           	pushq	%rbp
    1321: 48 89 e5                     	movq	%rsp, %rbp
    1324: 48 83 ec 10                  	subq	$0x10, %rsp
    1328: 64 48 8b 04 25 28 00 00 00   	movq	%fs:0x28, %rax
    1331: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
    1335: 31 c0                        	xorl	%eax, %eax
    1337: 48 8d 05 ca 0c 00 00         	leaq	0xcca(%rip), %rax       # 0x2008 <_IO_stdin_used+0x8>
    133e: 48 89 c7                     	movq	%rax, %rdi
    1341: e8 6a fd ff ff               	callq	0x10b0 <.plt.sec>
    1346: 90                           	nop
    1347: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    134b: 64 48 2b 04 25 28 00 00 00   	subq	%fs:0x28, %rax
    1354: 74 05                        	je	0x135b <func1+0x3f>
    1356: e8 75 fd ff ff               	callq	0x10d0 <.plt.sec+0x20>
    135b: c9                           	leave
    135c: c3                           	retq

000000000000135d <func>:
    135d: f3 0f 1e fa                  	endbr64
    1361: 55                           	pushq	%rbp
    1362: 48 89 e5                     	movq	%rsp, %rbp
    1365: 48 83 ec 30                  	subq	$0x30, %rsp
    1369: 89 7d dc                     	movl	%edi, -0x24(%rbp)
    136c: 64 48 8b 04 25 28 00 00 00   	movq	%fs:0x28, %rax
    1375: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
    1379: 31 c0                        	xorl	%eax, %eax
    137b: c7 45 f0 fe ff ff ff         	movl	$0xfffffffe, -0x10(%rbp) # imm = 0xFFFFFFFE
    1382: 8b 45 dc                     	movl	-0x24(%rbp), %eax
    1385: 89 45 e8                     	movl	%eax, -0x18(%rbp)
    1388: 8b 45 e8                     	movl	-0x18(%rbp), %eax
    138b: 89 45 f4                     	movl	%eax, -0xc(%rbp)
    138e: 8b 45 e8                     	movl	-0x18(%rbp), %eax
    1391: 89 c6                        	movl	%eax, %esi
    1393: 48 8d 05 91 0c 00 00         	leaq	0xc91(%rip), %rax       # 0x202b <_IO_stdin_used+0x2b>
    139a: 48 89 c7                     	movq	%rax, %rdi
    139d: b8 00 00 00 00               	movl	$0x0, %eax
    13a2: e8 39 fd ff ff               	callq	0x10e0 <.plt.sec+0x30>
    13a7: 8b 45 e8                     	movl	-0x18(%rbp), %eax
    13aa: 3b 45 f0                     	cmpl	-0x10(%rbp), %eax
    13ad: 73 11                        	jae	0x13c0 <func+0x63>
    13af: 48 8d 05 87 0c 00 00         	leaq	0xc87(%rip), %rax       # 0x203d <_IO_stdin_used+0x3d>
    13b6: 48 89 c7                     	movq	%rax, %rdi
    13b9: e8 f2 fc ff ff               	callq	0x10b0 <.plt.sec>
    13be: eb 4a                        	jmp	0x140a <func+0xad>
    13c0: c7 45 ec 00 00 00 00         	movl	$0x0, -0x14(%rbp)
    13c7: eb 08                        	jmp	0x13d1 <func+0x74>
    13c9: 83 6d e8 01                  	subl	$0x1, -0x18(%rbp)
    13cd: 83 45 ec 01                  	addl	$0x1, -0x14(%rbp)
    13d1: 8b 45 ec                     	movl	-0x14(%rbp), %eax
    13d4: 3b 45 f0                     	cmpl	-0x10(%rbp), %eax
    13d7: 72 f0                        	jb	0x13c9 <func+0x6c>
    13d9: 83 7d e8 01                  	cmpl	$0x1, -0x18(%rbp)
    13dd: 75 06                        	jne	0x13e5 <func+0x88>
    13df: 83 7d f4 ff                  	cmpl	$-0x1, -0xc(%rbp)
    13e3: 74 11                        	je	0x13f6 <func+0x99>
    13e5: 48 8d 05 6b 0c 00 00         	leaq	0xc6b(%rip), %rax       # 0x2057 <_IO_stdin_used+0x57>
    13ec: 48 89 c7                     	movq	%rax, %rdi
    13ef: e8 bc fc ff ff               	callq	0x10b0 <.plt.sec>
    13f4: eb 14                        	jmp	0x140a <func+0xad>
    13f6: b8 00 00 00 00               	movl	$0x0, %eax
    13fb: e8 1c ff ff ff               	callq	0x131c <func1>
    1400: bf 00 00 00 00               	movl	$0x0, %edi
    1405: e8 f6 fc ff ff               	callq	0x1100 <.plt.sec+0x50>
    140a: 48 8b 45 f8                  	movq	-0x8(%rbp), %rax
    140e: 64 48 2b 04 25 28 00 00 00   	subq	%fs:0x28, %rax
    1417: 74 05                        	je	0x141e <func+0xc1>
    1419: e8 b2 fc ff ff               	callq	0x10d0 <.plt.sec+0x20>
    141e: c9                           	leave
    141f: c3                           	retq

0000000000001420 <main>:
    1420: f3 0f 1e fa                  	endbr64
    1424: 55                           	pushq	%rbp
    1425: 48 89 e5                     	movq	%rsp, %rbp
    1428: 48 81 ec a0 00 00 00         	subq	$0xa0, %rsp
    142f: 64 48 8b 04 25 28 00 00 00   	movq	%fs:0x28, %rax
    1438: 48 89 45 f8                  	movq	%rax, -0x8(%rbp)
    143c: 31 c0                        	xorl	%eax, %eax
    143e: c7 85 64 ff ff ff ff ff ff ff	movl	$0xffffffff, -0x9c(%rbp) # imm = 0xFFFFFFFF
    1448: 8b 85 64 ff ff ff            	movl	-0x9c(%rbp), %eax
    144e: 89 85 68 ff ff ff            	movl	%eax, -0x98(%rbp)
    1454: c7 85 6c ff ff ff a0 3d 14 f4	movl	$0xf4143da0, -0x94(%rbp) # imm = 0xF4143DA0
    145e: 48 8d 05 0b 0c 00 00         	leaq	0xc0b(%rip), %rax       # 0x2070 <_IO_stdin_used+0x70>
    1465: 48 89 c7                     	movq	%rax, %rdi
    1468: e8 43 fc ff ff               	callq	0x10b0 <.plt.sec>
    146d: 48 8d 45 80                  	leaq	-0x80(%rbp), %rax
    1471: 48 89 c6                     	movq	%rax, %rsi
    1474: 48 8d 05 1a 0c 00 00         	leaq	0xc1a(%rip), %rax       # 0x2095 <_IO_stdin_used+0x95>
    147b: 48 89 c7                     	movq	%rax, %rdi
    147e: b8 00 00 00 00               	movl	$0x0, %eax
    1483: e8 68 fc ff ff               	callq	0x10f0 <.plt.sec+0x40>
    1488: 48 b8 70 61 6b 61 67 78 75 77	movabsq	$0x77757867616b6170, %rax # imm = 0x77757867616B6170
    1492: 48 89 85 73 ff ff ff         	movq	%rax, -0x8d(%rbp)
    1499: 48 b8 78 75 77 71 75 6f 65 00	movabsq	$0x656f7571777578, %rax # imm = 0x656F7571777578
    14a3: 48 89 85 78 ff ff ff         	movq	%rax, -0x88(%rbp)
    14aa: 48 8d 85 73 ff ff ff         	leaq	-0x8d(%rbp), %rax
    14b1: be 0c 00 00 00               	movl	$0xc, %esi
    14b6: 48 89 c7                     	movq	%rax, %rdi
    14b9: e8 4b fd ff ff               	callq	0x1209 <caesar_decrypt>
    14be: 48 8d 05 d3 0b 00 00         	leaq	0xbd3(%rip), %rax       # 0x2098 <_IO_stdin_used+0x98>
    14c5: 48 89 c7                     	movq	%rax, %rdi
    14c8: e8 e3 fb ff ff               	callq	0x10b0 <.plt.sec>
    14cd: 48 8d 45 a0                  	leaq	-0x60(%rbp), %rax
    14d1: 48 89 c6                     	movq	%rax, %rsi
    14d4: 48 8d 05 ba 0b 00 00         	leaq	0xbba(%rip), %rax       # 0x2095 <_IO_stdin_used+0x95>
    14db: 48 89 c7                     	movq	%rax, %rdi
    14de: b8 00 00 00 00               	movl	$0x0, %eax
    14e3: e8 08 fc ff ff               	callq	0x10f0 <.plt.sec+0x40>
    14e8: 48 b8 75 72 6b 61 67 73 75 68	movabsq	$0x68757367616b7275, %rax # imm = 0x68757367616B7275
    14f2: 48 ba 71 79 71 6b 67 6d 7a 65	movabsq	$0x657a6d676b717971, %rdx # imm = 0x657A6D676B717971
    14fc: 48 89 45 c0                  	movq	%rax, -0x40(%rbp)
    1500: 48 89 55 c8                  	movq	%rdx, -0x38(%rbp)
    1504: 48 b8 74 75 75 69 75 78 78 73	movabsq	$0x7378787569757574, %rax # imm = 0x7378787569757574
    150e: 48 ba 75 68 71 6b 61 67 73 61	movabsq	$0x617367616b716875, %rdx # imm = 0x617367616B716875
    1518: 48 89 45 d0                  	movq	%rax, -0x30(%rbp)
    151c: 48 89 55 d8                  	movq	%rdx, -0x28(%rbp)
    1520: 48 b8 68 71 6b 61 67 73 61 61	movabsq	$0x61617367616b7168, %rax # imm = 0x61617367616B7168
    152a: 48 ba 70 65 6f 61 64 71 65 00	movabsq	$0x657164616f6570, %rdx # imm = 0x657164616F6570
    1534: 48 89 45 d9                  	movq	%rax, -0x27(%rbp)
    1538: 48 89 55 e1                  	movq	%rdx, -0x1f(%rbp)
    153c: 48 8d 45 c0                  	leaq	-0x40(%rbp), %rax
    1540: be 0c 00 00 00               	movl	$0xc, %esi
    1545: 48 89 c7                     	movq	%rax, %rdi
    1548: e8 bc fc ff ff               	callq	0x1209 <caesar_decrypt>
    154d: 48 8d 05 5c 0b 00 00         	leaq	0xb5c(%rip), %rax       # 0x20b0 <_IO_stdin_used+0xb0>
    1554: 48 89 c7                     	movq	%rax, %rdi
    1557: e8 54 fb ff ff               	callq	0x10b0 <.plt.sec>
    155c: c7 85 60 ff ff ff 00 00 00 00	movl	$0x0, -0xa0(%rbp)
    1566: 48 8d 85 60 ff ff ff         	leaq	-0xa0(%rbp), %rax
    156d: 48 89 c6                     	movq	%rax, %rsi
    1570: 48 8d 05 6c 0b 00 00         	leaq	0xb6c(%rip), %rax       # 0x20e3 <_IO_stdin_used+0xe3>
    1577: 48 89 c7                     	movq	%rax, %rdi
    157a: b8 00 00 00 00               	movl	$0x0, %eax
    157f: e8 6c fb ff ff               	callq	0x10f0 <.plt.sec+0x40>
    1584: 8b 85 60 ff ff ff            	movl	-0xa0(%rbp), %eax
    158a: 89 c7                        	movl	%eax, %edi
    158c: e8 cc fd ff ff               	callq	0x135d <func>
    1591: 90                           	nop
    1592: eb d2                        	jmp	0x1566 <main+0x146>

Disassembly of section .fini:

0000000000001594 <_fini>:
    1594: f3 0f 1e fa                  	endbr64
    1598: 48 83 ec 08                  	subq	$0x8, %rsp
    159c: 48 83 c4 08                  	addq	$0x8, %rsp
    15a0: c3                           	retq
