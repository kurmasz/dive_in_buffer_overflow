# Compiled on a mac with an Intel processor
# gcc -Wall -g -S edit_employee.c
#
# gcc --version
# Apple clang version 14.0.3 (clang-1403.0.22.14.1)
# Target: x86_64-apple-darwin22.6.0
# Thread model: posix
# InstalledDir: /Library/Developer/CommandLineTools/usr/bin

	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.file	1 "/Users/kurmasz/Documents/DiveIntoSystems/dis_buffer/problem_2" "edit_employee.c"
	.globl	_next_int                       ## -- Begin function next_int
	.p2align	4, 0x90
_next_int:                              ## @next_int
Lfunc_begin0:
	.loc	1 14 0                          ## edit_employee.c:14:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
Ltmp0:
	.loc	1 16 5 prologue_end             ## edit_employee.c:16:5
	leaq	L_.str(%rip), %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	.loc	1 17 12                         ## edit_employee.c:17:12
	callq	_getchar
	.loc	1 17 22 is_stmt 0               ## edit_employee.c:17:22
	cmpl	$10, %eax
	.loc	1 17 5                          ## edit_employee.c:17:5
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_3:
	.loc	1 19 12 is_stmt 1               ## edit_employee.c:19:12
	movl	-4(%rbp), %eax
	.loc	1 19 5 is_stmt 0                ## edit_employee.c:19:5
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_my_strncpy                     ## -- Begin function my_strncpy
	.p2align	4, 0x90
_my_strncpy:                            ## @my_strncpy
Lfunc_begin1:
	.loc	1 22 0 is_stmt 1                ## edit_employee.c:22:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
Ltmp2:
	.loc	1 24 14 prologue_end            ## edit_employee.c:24:14
	movl	$0, -24(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp3:
	.loc	1 24 21 is_stmt 0               ## edit_employee.c:24:21
	movl	-24(%rbp), %eax
	.loc	1 24 23                         ## edit_employee.c:24:23
	cmpl	-20(%rbp), %eax
Ltmp4:
	.loc	1 24 5                          ## edit_employee.c:24:5
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
Ltmp5:
	.loc	1 25 19 is_stmt 1               ## edit_employee.c:25:19
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 25 9 is_stmt 0                ## edit_employee.c:25:9
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	1 25 17                         ## edit_employee.c:25:17
	movb	%dl, (%rax,%rcx)
Ltmp6:
	.loc	1 26 13 is_stmt 1               ## edit_employee.c:26:13
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 26 20 is_stmt 0               ## edit_employee.c:26:20
	cmpl	$0, %eax
Ltmp7:
	.loc	1 26 13                         ## edit_employee.c:26:13
	jne	LBB1_4
## %bb.3:
Ltmp8:
	.loc	1 27 13 is_stmt 1               ## edit_employee.c:27:13
	jmp	LBB1_6
Ltmp9:
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	.loc	1 29 5                          ## edit_employee.c:29:5
	jmp	LBB1_5
Ltmp10:
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	.loc	1 24 28                         ## edit_employee.c:24:28
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 24 5 is_stmt 0                ## edit_employee.c:24:5
	jmp	LBB1_1
Ltmp11:
LBB1_6:
	.loc	1 30 1 is_stmt 1                ## edit_employee.c:30:1
	popq	%rbp
	retq
Ltmp12:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_next_line                      ## -- Begin function next_line
	.p2align	4, 0x90
_next_line:                             ## @next_line
Lfunc_begin2:
	.loc	1 35 0                          ## edit_employee.c:35:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
Ltmp13:
	.loc	1 37 25 prologue_end            ## edit_employee.c:37:25
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	.loc	1 37 5 is_stmt 0                ## edit_employee.c:37:5
	leaq	_next_line.buffer(%rip), %rdi
	movl	$1024, %esi                     ## imm = 0x400
	callq	_fgets
	.loc	1 38 16 is_stmt 1               ## edit_employee.c:38:16
	leaq	_next_line.buffer(%rip), %rdi
	callq	_strlen
	.loc	1 38 31 is_stmt 0               ## edit_employee.c:38:31
	subq	$1, %rax
                                        ## kill: def $eax killed $eax killed $rax
	.loc	1 38 9                          ## edit_employee.c:38:9
	movl	%eax, -16(%rbp)
Ltmp14:
	.loc	1 39 9 is_stmt 1                ## edit_employee.c:39:9
	movslq	-16(%rbp), %rcx
	leaq	_next_line.buffer(%rip), %rax
	movsbl	(%rax,%rcx), %eax
	.loc	1 39 22 is_stmt 0               ## edit_employee.c:39:22
	cmpl	$10, %eax
Ltmp15:
	.loc	1 39 9                          ## edit_employee.c:39:9
	jne	LBB2_2
## %bb.1:
Ltmp16:
	.loc	1 41 9 is_stmt 1                ## edit_employee.c:41:9
	movslq	-16(%rbp), %rcx
	.loc	1 41 22 is_stmt 0               ## edit_employee.c:41:22
	leaq	_next_line.buffer(%rip), %rax
	movb	$0, (%rax,%rcx)
Ltmp17:
LBB2_2:
	.loc	1 43 16 is_stmt 1               ## edit_employee.c:43:16
	movq	-8(%rbp), %rdi
	.loc	1 43 32 is_stmt 0               ## edit_employee.c:43:32
	movl	-12(%rbp), %edx
	.loc	1 43 5                          ## edit_employee.c:43:5
	leaq	_next_line.buffer(%rip), %rsi
	callq	_my_strncpy
	.loc	1 44 1 is_stmt 1                ## edit_employee.c:44:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp18:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_name                      ## -- Begin function edit_name
	.p2align	4, 0x90
_edit_name:                             ## @edit_name
Lfunc_begin3:
	.loc	1 47 0                          ## edit_employee.c:47:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
Ltmp19:
	.loc	1 48 5 prologue_end             ## edit_employee.c:48:5
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 49 15                         ## edit_employee.c:49:15
	movq	-8(%rbp), %rdi
	.loc	1 49 5 is_stmt 0                ## edit_employee.c:49:5
	movl	$32, %esi
	callq	_next_line
	.loc	1 50 1 is_stmt 1                ## edit_employee.c:50:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp20:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_title                     ## -- Begin function edit_title
	.p2align	4, 0x90
_edit_title:                            ## @edit_title
Lfunc_begin4:
	.loc	1 53 0                          ## edit_employee.c:53:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
Ltmp21:
	.loc	1 54 5 prologue_end             ## edit_employee.c:54:5
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 55 15                         ## edit_employee.c:55:15
	movq	-8(%rbp), %rdi
	.loc	1 55 20 is_stmt 0               ## edit_employee.c:55:20
	addq	$36, %rdi
	.loc	1 55 5                          ## edit_employee.c:55:5
	movl	$32, %esi
	callq	_next_line
	.loc	1 56 1 is_stmt 1                ## edit_employee.c:56:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp22:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_salary                    ## -- Begin function edit_salary
	.p2align	4, 0x90
_edit_salary:                           ## @edit_salary
Lfunc_begin5:
	.loc	1 59 0                          ## edit_employee.c:59:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
Ltmp23:
	.loc	1 60 5 prologue_end             ## edit_employee.c:60:5
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 61 18                         ## edit_employee.c:61:18
	movq	-8(%rbp), %rsi
	.loc	1 61 23 is_stmt 0               ## edit_employee.c:61:23
	addq	$32, %rsi
	.loc	1 61 5                          ## edit_employee.c:61:5
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	.loc	1 62 1 is_stmt 1                ## edit_employee.c:62:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp24:
Lfunc_end5:
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_employees                 ## -- Begin function edit_employees
	.p2align	4, 0x90
_edit_employees:                        ## @edit_employees
Lfunc_begin6:
	.loc	1 65 0                          ## edit_employee.c:65:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
Ltmp25:
	.loc	1 66 10 prologue_end            ## edit_employee.c:66:10
	movq	L___const.edit_employees.message1(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc	1 67 9                          ## edit_employee.c:67:9
	movl	$0, -40(%rbp)
	.loc	1 68 15                         ## edit_employee.c:68:15
	movq	$0, -48(%rbp)
	.loc	1 69 9                          ## edit_employee.c:69:9
	movl	$-1, -52(%rbp)
	.loc	1 70 10                         ## edit_employee.c:70:10
	movq	L___const.edit_employees.message2(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc	1 72 5                          ## edit_employee.c:72:5
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 73 15                         ## edit_employee.c:73:15
	callq	_next_int
	.loc	1 73 13 is_stmt 0               ## edit_employee.c:73:13
	movl	%eax, -40(%rbp)
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	.loc	1 74 20 is_stmt 1               ## edit_employee.c:74:20
	cmpl	$999, -40(%rbp)                 ## imm = 0x3E7
	.loc	1 74 5 is_stmt 0                ## edit_employee.c:74:5
	je	LBB6_9
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
Ltmp26:
	.loc	1 76 16 is_stmt 1               ## edit_employee.c:76:16
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	imulq	$68, %rcx, %rcx
	addq	%rcx, %rax
	.loc	1 76 13 is_stmt 0               ## edit_employee.c:76:13
	movq	%rax, -48(%rbp)
	.loc	1 78 9 is_stmt 1                ## edit_employee.c:78:9
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 79 35                         ## edit_employee.c:79:35
	movq	-48(%rbp), %rsi
	.loc	1 79 9 is_stmt 0                ## edit_employee.c:79:9
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 80 35 is_stmt 1               ## edit_employee.c:80:35
	movq	-48(%rbp), %rsi
	.loc	1 80 40 is_stmt 0               ## edit_employee.c:80:40
	addq	$36, %rsi
	.loc	1 80 9                          ## edit_employee.c:80:9
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 81 35 is_stmt 1               ## edit_employee.c:81:35
	movq	-48(%rbp), %rax
	.loc	1 81 40 is_stmt 0               ## edit_employee.c:81:40
	movl	32(%rax), %esi
	.loc	1 81 9                          ## edit_employee.c:81:9
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 83 9 is_stmt 1                ## edit_employee.c:83:9
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 84 9                          ## edit_employee.c:84:9
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 85 9                          ## edit_employee.c:85:9
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
Ltmp27:
	.loc	1 86 29                         ## edit_employee.c:86:29
	cmpl	$1, -36(%rbp)
Ltmp28:
	.loc	1 86 13 is_stmt 0               ## edit_employee.c:86:13
	jl	LBB6_4
## %bb.3:                               ##   in Loop: Header=BB6_1 Depth=1
Ltmp29:
	.loc	1 88 13 is_stmt 1               ## edit_employee.c:88:13
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
Ltmp30:
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	.loc	1 90 18                         ## edit_employee.c:90:18
	callq	_next_int
	.loc	1 90 16 is_stmt 0               ## edit_employee.c:90:16
	movl	%eax, -52(%rbp)
	.loc	1 92 17 is_stmt 1               ## edit_employee.c:92:17
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
	.loc	1 92 9 is_stmt 0                ## edit_employee.c:92:9
	subl	$1, %eax
	je	LBB6_5
	jmp	LBB6_12
LBB6_12:                                ##   in Loop: Header=BB6_1 Depth=1
	.loc	1 0 9                           ## edit_employee.c:0:9
	movl	-56(%rbp), %eax                 ## 4-byte Reload
	.loc	1 92 9                          ## edit_employee.c:92:9
	subl	$2, %eax
	je	LBB6_6
	jmp	LBB6_13
LBB6_13:                                ##   in Loop: Header=BB6_1 Depth=1
	.loc	1 0 9                           ## edit_employee.c:0:9
	movl	-56(%rbp), %eax                 ## 4-byte Reload
	.loc	1 92 9                          ## edit_employee.c:92:9
	subl	$3, %eax
	je	LBB6_7
	jmp	LBB6_8
LBB6_5:                                 ##   in Loop: Header=BB6_1 Depth=1
Ltmp31:
	.loc	1 95 23 is_stmt 1               ## edit_employee.c:95:23
	movq	-48(%rbp), %rdi
	.loc	1 95 13 is_stmt 0               ## edit_employee.c:95:13
	callq	_edit_name
	.loc	1 96 13 is_stmt 1               ## edit_employee.c:96:13
	jmp	LBB6_8
LBB6_6:                                 ##   in Loop: Header=BB6_1 Depth=1
	.loc	1 98 24                         ## edit_employee.c:98:24
	movq	-48(%rbp), %rdi
	.loc	1 98 13 is_stmt 0               ## edit_employee.c:98:13
	callq	_edit_title
	.loc	1 99 13 is_stmt 1               ## edit_employee.c:99:13
	jmp	LBB6_8
LBB6_7:                                 ##   in Loop: Header=BB6_1 Depth=1
	.loc	1 101 25                        ## edit_employee.c:101:25
	movq	-48(%rbp), %rdi
	.loc	1 101 13 is_stmt 0              ## edit_employee.c:101:13
	callq	_edit_salary
Ltmp32:
LBB6_8:                                 ##   in Loop: Header=BB6_1 Depth=1
	.loc	1 105 9 is_stmt 1               ## edit_employee.c:105:9
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 106 35                        ## edit_employee.c:106:35
	movq	-48(%rbp), %rsi
	.loc	1 106 9 is_stmt 0               ## edit_employee.c:106:9
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 107 35 is_stmt 1              ## edit_employee.c:107:35
	movq	-48(%rbp), %rsi
	.loc	1 107 40 is_stmt 0              ## edit_employee.c:107:40
	addq	$36, %rsi
	.loc	1 107 9                         ## edit_employee.c:107:9
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 108 35 is_stmt 1              ## edit_employee.c:108:35
	movq	-48(%rbp), %rax
	.loc	1 108 40 is_stmt 0              ## edit_employee.c:108:40
	movl	32(%rax), %esi
	.loc	1 108 9                         ## edit_employee.c:108:9
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 110 39 is_stmt 1              ## edit_employee.c:110:39
	leaq	-16(%rbp), %rsi
	.loc	1 110 9 is_stmt 0               ## edit_employee.c:110:9
	leaq	L_.str.14(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 111 41 is_stmt 1              ## edit_employee.c:111:41
	movl	-36(%rbp), %esi
	.loc	1 111 9 is_stmt 0               ## edit_employee.c:111:9
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 112 39 is_stmt 1              ## edit_employee.c:112:39
	leaq	-24(%rbp), %rsi
	.loc	1 112 9 is_stmt 0               ## edit_employee.c:112:9
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 114 9 is_stmt 1               ## edit_employee.c:114:9
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 115 19                        ## edit_employee.c:115:19
	callq	_next_int
	.loc	1 115 17 is_stmt 0              ## edit_employee.c:115:17
	movl	%eax, -40(%rbp)
Ltmp33:
	.loc	1 74 5 is_stmt 1                ## edit_employee.c:74:5
	jmp	LBB6_1
LBB6_9:
	.loc	1 0 5 is_stmt 0                 ## edit_employee.c:0:5
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB6_11
## %bb.10:
	.loc	1 117 1 is_stmt 1               ## edit_employee.c:117:1
	addq	$64, %rsp
	popq	%rbp
	retq
LBB6_11:
	.loc	1 0 0 is_stmt 0                 ## edit_employee.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp34:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin7:
	.loc	1 120 0 is_stmt 1               ## edit_employee.c:120:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -228(%rbp)
	movl	%edi, -232(%rbp)
	movq	%rsi, -240(%rbp)
Ltmp35:
	.loc	1 121 14 prologue_end           ## edit_employee.c:121:14
	leaq	-224(%rbp), %rdi
	leaq	l___const.main.employees(%rip), %rsi
	movl	$204, %edx
	callq	_memcpy
	.loc	1 126 20                        ## edit_employee.c:126:20
	leaq	-224(%rbp), %rdi
	.loc	1 126 5 is_stmt 0               ## edit_employee.c:126:5
	xorl	%esi, %esi
	callq	_edit_employees
	.loc	1 127 5 is_stmt 1               ## edit_employee.c:127:5
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB7_2
## %bb.1:
	.loc	1 128 5                         ## edit_employee.c:128:5
	xorl	%eax, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
LBB7_2:
	.loc	1 0 0 is_stmt 0                 ## edit_employee.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp36:
Lfunc_end7:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

.zerofill __DATA,__bss,_next_line.buffer,1024,4 ## @next_line.buffer
L_.str.1:                               ## @.str.1
	.asciz	"Enter the new name: "

L_.str.2:                               ## @.str.2
	.asciz	"Enter the new title: "

L_.str.3:                               ## @.str.3
	.asciz	"Enter the new salary: "

L___const.edit_employees.message1:      ## @__const.edit_employees.message1
	.asciz	"ABCDEFG"

L___const.edit_employees.message2:      ## @__const.edit_employees.message2
	.asciz	"abcdefg"

L_.str.4:                               ## @.str.4
	.asciz	"Enter number of employee to edit (or 999 to exit): "

L_.str.5:                               ## @.str.5
	.asciz	"Current employee: \n"

L_.str.6:                               ## @.str.6
	.asciz	"   Name:   %s\n"

L_.str.7:                               ## @.str.7
	.asciz	"   Title:  %s\n"

L_.str.8:                               ## @.str.8
	.asciz	"   Salary: %d\n"

L_.str.9:                               ## @.str.9
	.asciz	"What do you want to edit?\n"

L_.str.10:                              ## @.str.10
	.asciz	"   (1) Name\n"

L_.str.11:                              ## @.str.11
	.asciz	"   (2) Title\n"

L_.str.12:                              ## @.str.12
	.asciz	"   (3) Salary\n"

L_.str.13:                              ## @.str.13
	.asciz	"Updated employee: \n"

L_.str.14:                              ## @.str.14
	.asciz	"Message 1: =>%s<=\n"

L_.str.15:                              ## @.str.15
	.asciz	"Can edit salary: %d\n"

L_.str.16:                              ## @.str.16
	.asciz	"Message 2: =>%s<=\n"

	.section	__TEXT,__const
	.p2align	4                               ## @__const.main.employees
l___const.main.employees:
	.asciz	"George Washington\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	43615                           ## 0xaa5f
	.asciz	"First President\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"John Adams\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	55134                           ## 0xd75e
	.asciz	"Second President\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Thomas Jefferson\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	61143                           ## 0xeed7
	.asciz	"Third President\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str.17:                              ## @.str.17
	.asciz	"Good-bye.\n"

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	14                              ## DW_FORM_strp
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	14                              ## DW_FORM_strp
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	14                              ## DW_FORM_strp
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	14                              ## DW_FORM_strp
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	1                               ## DW_TAG_array_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	5                               ## DW_FORM_data2
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
	.byte	11                              ## DW_TAG_lexical_block
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	12                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	13                              ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	14                              ## Abbreviation Code
	.byte	22                              ## DW_TAG_typedef
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	15                              ## Abbreviation Code
	.byte	19                              ## DW_TAG_structure_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	16                              ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	17                              ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x2b5 DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.long	50                              ## DW_AT_name
	.long	66                              ## DW_AT_LLVM_sysroot
	.long	118                             ## DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset2
	.long	129                             ## DW_AT_comp_dir
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset3, Lfunc_end7-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset3
	.byte	2                               ## Abbrev [2] 0x32:0x55 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ## DW_AT_low_pc
.set Lset4, Lfunc_end2-Lfunc_begin2     ## DW_AT_high_pc
	.long	Lset4
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	243                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	34                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	3                               ## Abbrev [3] 0x47:0x15 DW_TAG_variable
	.long	191                             ## DW_AT_name
	.long	135                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	36                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	_next_line.buffer
	.byte	4                               ## Abbrev [4] 0x5c:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	327                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	34                              ## DW_AT_decl_line
	.long	600                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x6a:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	116
	.long	323                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	34                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x78:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	334                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	38                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	6                               ## Abbrev [6] 0x87:0xd DW_TAG_array_type
	.long	148                             ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x8c:0x7 DW_TAG_subrange_type
	.long	155                             ## DW_AT_type
	.short	1024                            ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	8                               ## Abbrev [8] 0x94:0x7 DW_TAG_base_type
	.long	198                             ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	9                               ## Abbrev [9] 0x9b:0x7 DW_TAG_base_type
	.long	203                             ## DW_AT_name
	.byte	8                               ## DW_AT_byte_size
	.byte	7                               ## DW_AT_encoding
	.byte	10                              ## Abbrev [10] 0xa2:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset5, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset5
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	223                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	13                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
                                        ## DW_AT_external
	.byte	5                               ## Abbrev [5] 0xbb:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	124
	.long	310                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	15                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0xca:0x5c DW_TAG_subprogram
	.quad	Lfunc_begin1                    ## DW_AT_low_pc
.set Lset6, Lfunc_end1-Lfunc_begin1     ## DW_AT_high_pc
	.long	Lset6
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	232                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0xdf:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	314                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	600                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0xed:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	319                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	600                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0xfb:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	108
	.long	323                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	11                              ## Abbrev [11] 0x109:0x1c DW_TAG_lexical_block
	.quad	Ltmp2                           ## DW_AT_low_pc
.set Lset7, Ltmp11-Ltmp2                ## DW_AT_high_pc
	.long	Lset7
	.byte	5                               ## Abbrev [5] 0x116:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	104
	.long	325                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	24                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x126:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ## DW_AT_low_pc
.set Lset8, Lfunc_end3-Lfunc_begin3     ## DW_AT_high_pc
	.long	Lset8
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	253                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	46                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x13b:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	46                              ## DW_AT_decl_line
	.long	605                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x14a:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ## DW_AT_low_pc
.set Lset9, Lfunc_end4-Lfunc_begin4     ## DW_AT_high_pc
	.long	Lset9
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	263                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	52                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x15f:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	52                              ## DW_AT_decl_line
	.long	605                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x16e:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ## DW_AT_low_pc
.set Lset10, Lfunc_end5-Lfunc_begin5    ## DW_AT_high_pc
	.long	Lset10
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	274                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	58                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x183:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	58                              ## DW_AT_decl_line
	.long	605                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x192:0x78 DW_TAG_subprogram
	.quad	Lfunc_begin6                    ## DW_AT_low_pc
.set Lset11, Lfunc_end6-Lfunc_begin6    ## DW_AT_high_pc
	.long	Lset11
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	286                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	64                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x1a7:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	96
	.long	370                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	64                              ## DW_AT_decl_line
	.long	605                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x1b5:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	92
	.long	380                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	64                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1c3:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	396                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	66                              ## DW_AT_decl_line
	.long	674                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1d1:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	88
	.long	405                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	67                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1df:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	80
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	68                              ## DW_AT_decl_line
	.long	605                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1ed:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	76
	.long	413                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	69                              ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1fb:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	104
	.long	420                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	70                              ## DW_AT_decl_line
	.long	674                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	12                              ## Abbrev [12] 0x20a:0x47 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ## DW_AT_low_pc
.set Lset12, Lfunc_end7-Lfunc_begin7    ## DW_AT_high_pc
	.long	Lset12
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	301                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	119                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	593                             ## DW_AT_type
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x223:0xf DW_TAG_formal_parameter
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\230~"
	.long	429                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	119                             ## DW_AT_decl_line
	.long	593                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x232:0xf DW_TAG_formal_parameter
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\220~"
	.long	434                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	119                             ## DW_AT_decl_line
	.long	686                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x241:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\240~"
	.long	370                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	121                             ## DW_AT_decl_line
	.long	691                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	8                               ## Abbrev [8] 0x251:0x7 DW_TAG_base_type
	.long	306                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	13                              ## Abbrev [13] 0x258:0x5 DW_TAG_pointer_type
	.long	148                             ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x25d:0x5 DW_TAG_pointer_type
	.long	610                             ## DW_AT_type
	.byte	14                              ## Abbrev [14] 0x262:0xb DW_TAG_typedef
	.long	621                             ## DW_AT_type
	.long	343                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
	.byte	15                              ## Abbrev [15] 0x26d:0x29 DW_TAG_structure_type
	.byte	68                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	4                               ## DW_AT_decl_line
	.byte	16                              ## Abbrev [16] 0x271:0xc DW_TAG_member
	.long	352                             ## DW_AT_name
	.long	662                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	6                               ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	16                              ## Abbrev [16] 0x27d:0xc DW_TAG_member
	.long	357                             ## DW_AT_name
	.long	593                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	7                               ## DW_AT_decl_line
	.byte	32                              ## DW_AT_data_member_location
	.byte	16                              ## Abbrev [16] 0x289:0xc DW_TAG_member
	.long	364                             ## DW_AT_name
	.long	662                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	8                               ## DW_AT_decl_line
	.byte	36                              ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	6                               ## Abbrev [6] 0x296:0xc DW_TAG_array_type
	.long	148                             ## DW_AT_type
	.byte	17                              ## Abbrev [17] 0x29b:0x6 DW_TAG_subrange_type
	.long	155                             ## DW_AT_type
	.byte	32                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	6                               ## Abbrev [6] 0x2a2:0xc DW_TAG_array_type
	.long	148                             ## DW_AT_type
	.byte	17                              ## Abbrev [17] 0x2a7:0x6 DW_TAG_subrange_type
	.long	155                             ## DW_AT_type
	.byte	8                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	13                              ## Abbrev [13] 0x2ae:0x5 DW_TAG_pointer_type
	.long	600                             ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x2b3:0xc DW_TAG_array_type
	.long	610                             ## DW_AT_type
	.byte	17                              ## Abbrev [17] 0x2b8:0x6 DW_TAG_subrange_type
	.long	155                             ## DW_AT_type
	.byte	3                               ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 14.0.3 (clang-1403.0.22.14.1)" ## string offset=0
	.asciz	"edit_employee.c"               ## string offset=50
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=66
	.asciz	"MacOSX.sdk"                    ## string offset=118
	.asciz	"/Users/kurmasz/Documents/DiveIntoSystems/dis_buffer/problem_2" ## string offset=129
	.asciz	"buffer"                        ## string offset=191
	.asciz	"char"                          ## string offset=198
	.asciz	"__ARRAY_SIZE_TYPE__"           ## string offset=203
	.asciz	"next_int"                      ## string offset=223
	.asciz	"my_strncpy"                    ## string offset=232
	.asciz	"next_line"                     ## string offset=243
	.asciz	"edit_name"                     ## string offset=253
	.asciz	"edit_title"                    ## string offset=263
	.asciz	"edit_salary"                   ## string offset=274
	.asciz	"edit_employees"                ## string offset=286
	.asciz	"main"                          ## string offset=301
	.asciz	"int"                           ## string offset=306
	.asciz	"ipt"                           ## string offset=310
	.asciz	"dest"                          ## string offset=314
	.asciz	"src"                           ## string offset=319
	.asciz	"n"                             ## string offset=323
	.asciz	"i"                             ## string offset=325
	.asciz	"target"                        ## string offset=327
	.asciz	"last"                          ## string offset=334
	.asciz	"emp"                           ## string offset=339
	.asciz	"Employee"                      ## string offset=343
	.asciz	"name"                          ## string offset=352
	.asciz	"salary"                        ## string offset=357
	.asciz	"title"                         ## string offset=364
	.asciz	"employees"                     ## string offset=370
	.asciz	"can_edit_salary"               ## string offset=380
	.asciz	"message1"                      ## string offset=396
	.asciz	"emp_num"                       ## string offset=405
	.asciz	"choice"                        ## string offset=413
	.asciz	"message2"                      ## string offset=420
	.asciz	"argc"                          ## string offset=429
	.asciz	"argv"                          ## string offset=434
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	9                               ## Header Bucket Count
	.long	9                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.long	-1                              ## Bucket 1
	.long	0                               ## Bucket 2
	.long	2                               ## Bucket 3
	.long	3                               ## Bucket 4
	.long	5                               ## Bucket 5
	.long	-1                              ## Bucket 6
	.long	6                               ## Bucket 7
	.long	8                               ## Bucket 8
	.long	-1775057834                     ## Hash in Bucket 2
	.long	-52307156                       ## Hash in Bucket 2
	.long	1421456925                      ## Hash in Bucket 3
	.long	2131412494                      ## Hash in Bucket 4
	.long	-1371513699                     ## Hash in Bucket 4
	.long	-652562261                      ## Hash in Bucket 5
	.long	1617237835                      ## Hash in Bucket 7
	.long	2090499946                      ## Hash in Bucket 7
	.long	-185109665                      ## Hash in Bucket 8
.set Lset13, LNames0-Lnames_begin       ## Offset in Bucket 2
	.long	Lset13
.set Lset14, LNames8-Lnames_begin       ## Offset in Bucket 2
	.long	Lset14
.set Lset15, LNames4-Lnames_begin       ## Offset in Bucket 3
	.long	Lset15
.set Lset16, LNames5-Lnames_begin       ## Offset in Bucket 4
	.long	Lset16
.set Lset17, LNames7-Lnames_begin       ## Offset in Bucket 4
	.long	Lset17
.set Lset18, LNames3-Lnames_begin       ## Offset in Bucket 5
	.long	Lset18
.set Lset19, LNames2-Lnames_begin       ## Offset in Bucket 7
	.long	Lset19
.set Lset20, LNames1-Lnames_begin       ## Offset in Bucket 7
	.long	Lset20
.set Lset21, LNames6-Lnames_begin       ## Offset in Bucket 8
	.long	Lset21
LNames0:
	.long	274                             ## edit_salary
	.long	1                               ## Num DIEs
	.long	366
	.long	0
LNames8:
	.long	263                             ## edit_title
	.long	1                               ## Num DIEs
	.long	330
	.long	0
LNames4:
	.long	232                             ## my_strncpy
	.long	1                               ## Num DIEs
	.long	202
	.long	0
LNames5:
	.long	223                             ## next_int
	.long	1                               ## Num DIEs
	.long	162
	.long	0
LNames7:
	.long	286                             ## edit_employees
	.long	1                               ## Num DIEs
	.long	402
	.long	0
LNames3:
	.long	253                             ## edit_name
	.long	1                               ## Num DIEs
	.long	294
	.long	0
LNames2:
	.long	243                             ## next_line
	.long	1                               ## Num DIEs
	.long	50
	.long	0
LNames1:
	.long	301                             ## main
	.long	1                               ## Num DIEs
	.long	522
	.long	0
LNames6:
	.long	191                             ## buffer
	.long	1                               ## Num DIEs
	.long	71
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	4                               ## Header Bucket Count
	.long	4                               ## Header Hash Count
	.long	20                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	3                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.short	3                               ## DW_ATOM_die_tag
	.short	5                               ## DW_FORM_data2
	.short	4                               ## DW_ATOM_type_flags
	.short	11                              ## DW_FORM_data1
	.long	0                               ## Bucket 0
	.long	1                               ## Bucket 1
	.long	-1                              ## Bucket 2
	.long	2                               ## Bucket 3
	.long	193495088                       ## Hash in Bucket 0
	.long	-48196635                       ## Hash in Bucket 1
	.long	2090147939                      ## Hash in Bucket 3
	.long	-594775205                      ## Hash in Bucket 3
.set Lset22, Ltypes2-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset22
.set Lset23, Ltypes0-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset23
.set Lset24, Ltypes3-Ltypes_begin       ## Offset in Bucket 3
	.long	Lset24
.set Lset25, Ltypes1-Ltypes_begin       ## Offset in Bucket 3
	.long	Lset25
Ltypes2:
	.long	306                             ## int
	.long	1                               ## Num DIEs
	.long	593
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	343                             ## Employee
	.long	1                               ## Num DIEs
	.long	610
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	198                             ## char
	.long	1                               ## Num DIEs
	.long	148
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	203                             ## __ARRAY_SIZE_TYPE__
	.long	1                               ## Num DIEs
	.long	155
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
