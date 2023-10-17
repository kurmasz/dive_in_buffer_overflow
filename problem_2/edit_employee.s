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
	.loc	1 23 0 is_stmt 1                ## edit_employee.c:23:0
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
	.loc	1 25 14 prologue_end            ## edit_employee.c:25:14
	movl	$0, -24(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp3:
	.loc	1 25 21 is_stmt 0               ## edit_employee.c:25:21
	movl	-24(%rbp), %eax
	.loc	1 25 23                         ## edit_employee.c:25:23
	cmpl	-20(%rbp), %eax
Ltmp4:
	.loc	1 25 5                          ## edit_employee.c:25:5
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
Ltmp5:
	.loc	1 27 19 is_stmt 1               ## edit_employee.c:27:19
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 27 9 is_stmt 0                ## edit_employee.c:27:9
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	1 27 17                         ## edit_employee.c:27:17
	movb	%dl, (%rax,%rcx)
Ltmp6:
	.loc	1 28 13 is_stmt 1               ## edit_employee.c:28:13
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 28 20 is_stmt 0               ## edit_employee.c:28:20
	cmpl	$0, %eax
Ltmp7:
	.loc	1 28 13                         ## edit_employee.c:28:13
	jne	LBB1_4
## %bb.3:
Ltmp8:
	.loc	1 30 13 is_stmt 1               ## edit_employee.c:30:13
	jmp	LBB1_6
Ltmp9:
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	.loc	1 32 5                          ## edit_employee.c:32:5
	jmp	LBB1_5
Ltmp10:
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	.loc	1 25 28                         ## edit_employee.c:25:28
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 25 5 is_stmt 0                ## edit_employee.c:25:5
	jmp	LBB1_1
Ltmp11:
LBB1_6:
	.loc	1 33 1 is_stmt 1                ## edit_employee.c:33:1
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
	.loc	1 38 0                          ## edit_employee.c:38:0
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
	.loc	1 40 25 prologue_end            ## edit_employee.c:40:25
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	.loc	1 40 5 is_stmt 0                ## edit_employee.c:40:5
	leaq	_next_line.buffer(%rip), %rdi
	movl	$1024, %esi                     ## imm = 0x400
	callq	_fgets
	.loc	1 41 16 is_stmt 1               ## edit_employee.c:41:16
	leaq	_next_line.buffer(%rip), %rdi
	callq	_strlen
	.loc	1 41 31 is_stmt 0               ## edit_employee.c:41:31
	subq	$1, %rax
                                        ## kill: def $eax killed $eax killed $rax
	.loc	1 41 9                          ## edit_employee.c:41:9
	movl	%eax, -16(%rbp)
Ltmp14:
	.loc	1 42 9 is_stmt 1                ## edit_employee.c:42:9
	movslq	-16(%rbp), %rcx
	leaq	_next_line.buffer(%rip), %rax
	movsbl	(%rax,%rcx), %eax
	.loc	1 42 22 is_stmt 0               ## edit_employee.c:42:22
	cmpl	$10, %eax
Ltmp15:
	.loc	1 42 9                          ## edit_employee.c:42:9
	jne	LBB2_2
## %bb.1:
Ltmp16:
	.loc	1 44 9 is_stmt 1                ## edit_employee.c:44:9
	movslq	-16(%rbp), %rcx
	.loc	1 44 22 is_stmt 0               ## edit_employee.c:44:22
	leaq	_next_line.buffer(%rip), %rax
	movb	$0, (%rax,%rcx)
Ltmp17:
LBB2_2:
	.loc	1 46 16 is_stmt 1               ## edit_employee.c:46:16
	movq	-8(%rbp), %rdi
	.loc	1 46 32 is_stmt 0               ## edit_employee.c:46:32
	movl	-12(%rbp), %edx
	.loc	1 46 5                          ## edit_employee.c:46:5
	leaq	_next_line.buffer(%rip), %rsi
	callq	_my_strncpy
	.loc	1 47 1 is_stmt 1                ## edit_employee.c:47:1
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
	.loc	1 50 0                          ## edit_employee.c:50:0
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
	.loc	1 51 5 prologue_end             ## edit_employee.c:51:5
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 52 15                         ## edit_employee.c:52:15
	movq	-8(%rbp), %rdi
	.loc	1 52 5 is_stmt 0                ## edit_employee.c:52:5
	movl	$32, %esi
	callq	_next_line
	.loc	1 53 1 is_stmt 1                ## edit_employee.c:53:1
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
	.loc	1 56 0                          ## edit_employee.c:56:0
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
	.loc	1 57 5 prologue_end             ## edit_employee.c:57:5
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 58 15                         ## edit_employee.c:58:15
	movq	-8(%rbp), %rdi
	.loc	1 58 20 is_stmt 0               ## edit_employee.c:58:20
	addq	$36, %rdi
	.loc	1 58 5                          ## edit_employee.c:58:5
	movl	$32, %esi
	callq	_next_line
	.loc	1 59 1 is_stmt 1                ## edit_employee.c:59:1
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
	.loc	1 62 0                          ## edit_employee.c:62:0
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
	.loc	1 63 5 prologue_end             ## edit_employee.c:63:5
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 64 18                         ## edit_employee.c:64:18
	movq	-8(%rbp), %rsi
	.loc	1 64 23 is_stmt 0               ## edit_employee.c:64:23
	addq	$32, %rsi
	.loc	1 64 5                          ## edit_employee.c:64:5
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	.loc	1 65 1 is_stmt 1                ## edit_employee.c:65:1
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
	.loc	1 68 0                          ## edit_employee.c:68:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
Ltmp25:
	.loc	1 69 9 prologue_end             ## edit_employee.c:69:9
	movl	$-2, -20(%rbp)
	.loc	1 70 15                         ## edit_employee.c:70:15
	movq	$0, -32(%rbp)
	.loc	1 71 9                          ## edit_employee.c:71:9
	movl	$-1, -36(%rbp)
	.loc	1 72 28                         ## edit_employee.c:72:28
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -12(%rbp)
	movb	%al, -41(%rbp)                  ## 1-byte Spill
	.loc	1 72 44 is_stmt 0               ## edit_employee.c:72:44
	je	LBB6_2
## %bb.1:
	cmpl	$0, -16(%rbp)
	setne	%al
	movb	%al, -41(%rbp)                  ## 1-byte Spill
LBB6_2:
	.loc	1 0 44                          ## edit_employee.c:0:44
	movb	-41(%rbp), %al                  ## 1-byte Reload
	.loc	1 72 44                         ## edit_employee.c:72:44
	andb	$1, %al
	movzbl	%al, %eax
	.loc	1 72 9                          ## edit_employee.c:72:9
	movl	%eax, -40(%rbp)
	.loc	1 74 5 is_stmt 1                ## edit_employee.c:74:5
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 75 15                         ## edit_employee.c:75:15
	callq	_next_int
	.loc	1 75 13 is_stmt 0               ## edit_employee.c:75:13
	movl	%eax, -20(%rbp)
LBB6_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_5 Depth 2
	.loc	1 76 20 is_stmt 1               ## edit_employee.c:76:20
	cmpl	$999, -20(%rbp)                 ## imm = 0x3E7
	.loc	1 76 5 is_stmt 0                ## edit_employee.c:76:5
	je	LBB6_18
## %bb.4:                               ##   in Loop: Header=BB6_3 Depth=1
Ltmp26:
	.loc	1 78 16 is_stmt 1               ## edit_employee.c:78:16
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$68, %rcx, %rcx
	addq	%rcx, %rax
	.loc	1 78 13 is_stmt 0               ## edit_employee.c:78:13
	movq	%rax, -32(%rbp)
	.loc	1 80 9 is_stmt 1                ## edit_employee.c:80:9
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 81 35                         ## edit_employee.c:81:35
	movq	-32(%rbp), %rsi
	.loc	1 81 9 is_stmt 0                ## edit_employee.c:81:9
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 82 35 is_stmt 1               ## edit_employee.c:82:35
	movq	-32(%rbp), %rsi
	.loc	1 82 40 is_stmt 0               ## edit_employee.c:82:40
	addq	$36, %rsi
	.loc	1 82 9                          ## edit_employee.c:82:9
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 83 35 is_stmt 1               ## edit_employee.c:83:35
	movq	-32(%rbp), %rax
	.loc	1 83 40 is_stmt 0               ## edit_employee.c:83:40
	movl	32(%rax), %esi
	.loc	1 83 9                          ## edit_employee.c:83:9
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 85 36 is_stmt 1               ## edit_employee.c:85:36
	movq	-32(%rbp), %rsi
	.loc	1 85 9 is_stmt 0                ## edit_employee.c:85:9
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 86 43 is_stmt 1               ## edit_employee.c:86:43
	leaq	-40(%rbp), %rsi
	.loc	1 86 69 is_stmt 0               ## edit_employee.c:86:69
	leaq	-40(%rbp), %rdx
	.loc	1 86 104                        ## edit_employee.c:86:104
	movq	-32(%rbp), %rax
	.loc	1 86 95                         ## edit_employee.c:86:95
	subq	%rax, %rdx
	.loc	1 86 9                          ## edit_employee.c:86:9
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 87 36 is_stmt 1               ## edit_employee.c:87:36
	leaq	-16(%rbp), %rsi
	.loc	1 87 9 is_stmt 0                ## edit_employee.c:87:9
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_5:                                 ##   Parent Loop BB6_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
Ltmp27:
	.loc	1 91 13 is_stmt 1               ## edit_employee.c:91:13
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 92 13                         ## edit_employee.c:92:13
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 93 13                         ## edit_employee.c:93:13
	leaq	L_.str.14(%rip), %rdi
	movb	$0, %al
	callq	_printf
Ltmp28:
	.loc	1 94 17                         ## edit_employee.c:94:17
	cmpl	$0, -40(%rbp)
Ltmp29:
	.loc	1 94 17 is_stmt 0               ## edit_employee.c:94:17
	je	LBB6_7
## %bb.6:                               ##   in Loop: Header=BB6_5 Depth=2
Ltmp30:
	.loc	1 96 17 is_stmt 1               ## edit_employee.c:96:17
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
Ltmp31:
LBB6_7:                                 ##   in Loop: Header=BB6_5 Depth=2
	.loc	1 98 22                         ## edit_employee.c:98:22
	callq	_next_int
	.loc	1 98 20 is_stmt 0               ## edit_employee.c:98:20
	movl	%eax, -36(%rbp)
Ltmp32:
	.loc	1 99 25 is_stmt 1               ## edit_employee.c:99:25
	cmpl	$1, -36(%rbp)
	.loc	1 99 30 is_stmt 0               ## edit_employee.c:99:30
	jl	LBB6_9
## %bb.8:                               ##   in Loop: Header=BB6_5 Depth=2
	.loc	1 99 40                         ## edit_employee.c:99:40
	cmpl	$2, -36(%rbp)
	.loc	1 99 46                         ## edit_employee.c:99:46
	jle	LBB6_11
LBB6_9:                                 ##   in Loop: Header=BB6_5 Depth=2
	.loc	1 99 57                         ## edit_employee.c:99:57
	cmpl	$3, -36(%rbp)
	.loc	1 99 62                         ## edit_employee.c:99:62
	jne	LBB6_12
## %bb.10:                              ##   in Loop: Header=BB6_5 Depth=2
	.loc	1 99 65                         ## edit_employee.c:99:65
	cmpl	$0, -40(%rbp)
Ltmp33:
	.loc	1 99 17                         ## edit_employee.c:99:17
	je	LBB6_12
LBB6_11:                                ##   in Loop: Header=BB6_3 Depth=1
Ltmp34:
	.loc	1 101 17 is_stmt 1              ## edit_employee.c:101:17
	jmp	LBB6_13
Ltmp35:
LBB6_12:                                ##   in Loop: Header=BB6_5 Depth=2
	.loc	1 89 9                          ## edit_employee.c:89:9
	jmp	LBB6_5
LBB6_13:                                ##   in Loop: Header=BB6_3 Depth=1
	.loc	1 105 17                        ## edit_employee.c:105:17
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	.loc	1 105 9 is_stmt 0               ## edit_employee.c:105:9
	subl	$1, %eax
	je	LBB6_14
	jmp	LBB6_19
LBB6_19:                                ##   in Loop: Header=BB6_3 Depth=1
	.loc	1 0 9                           ## edit_employee.c:0:9
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	.loc	1 105 9                         ## edit_employee.c:105:9
	subl	$2, %eax
	je	LBB6_15
	jmp	LBB6_20
LBB6_20:                                ##   in Loop: Header=BB6_3 Depth=1
	.loc	1 0 9                           ## edit_employee.c:0:9
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	.loc	1 105 9                         ## edit_employee.c:105:9
	subl	$3, %eax
	je	LBB6_16
	jmp	LBB6_17
LBB6_14:                                ##   in Loop: Header=BB6_3 Depth=1
Ltmp36:
	.loc	1 108 23 is_stmt 1              ## edit_employee.c:108:23
	movq	-32(%rbp), %rdi
	.loc	1 108 13 is_stmt 0              ## edit_employee.c:108:13
	callq	_edit_name
	.loc	1 109 13 is_stmt 1              ## edit_employee.c:109:13
	jmp	LBB6_17
LBB6_15:                                ##   in Loop: Header=BB6_3 Depth=1
	.loc	1 111 24                        ## edit_employee.c:111:24
	movq	-32(%rbp), %rdi
	.loc	1 111 13 is_stmt 0              ## edit_employee.c:111:13
	callq	_edit_title
	.loc	1 112 13 is_stmt 1              ## edit_employee.c:112:13
	jmp	LBB6_17
LBB6_16:                                ##   in Loop: Header=BB6_3 Depth=1
	.loc	1 114 25                        ## edit_employee.c:114:25
	movq	-32(%rbp), %rdi
	.loc	1 114 13 is_stmt 0              ## edit_employee.c:114:13
	callq	_edit_salary
Ltmp37:
LBB6_17:                                ##   in Loop: Header=BB6_3 Depth=1
	.loc	1 118 9 is_stmt 1               ## edit_employee.c:118:9
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 119 35                        ## edit_employee.c:119:35
	movq	-32(%rbp), %rsi
	.loc	1 119 9 is_stmt 0               ## edit_employee.c:119:9
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 120 35 is_stmt 1              ## edit_employee.c:120:35
	movq	-32(%rbp), %rsi
	.loc	1 120 40 is_stmt 0              ## edit_employee.c:120:40
	addq	$36, %rsi
	.loc	1 120 9                         ## edit_employee.c:120:9
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 121 35 is_stmt 1              ## edit_employee.c:121:35
	movq	-32(%rbp), %rax
	.loc	1 121 40 is_stmt 0              ## edit_employee.c:121:40
	movl	32(%rax), %esi
	.loc	1 121 9                         ## edit_employee.c:121:9
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 123 41 is_stmt 1              ## edit_employee.c:123:41
	movl	-16(%rbp), %esi
	.loc	1 123 9 is_stmt 0               ## edit_employee.c:123:9
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 125 9 is_stmt 1               ## edit_employee.c:125:9
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	.loc	1 126 19                        ## edit_employee.c:126:19
	callq	_next_int
	.loc	1 126 17 is_stmt 0              ## edit_employee.c:126:17
	movl	%eax, -20(%rbp)
Ltmp38:
	.loc	1 76 5 is_stmt 1                ## edit_employee.c:76:5
	jmp	LBB6_3
LBB6_18:
	.loc	1 128 1                         ## edit_employee.c:128:1
	addq	$48, %rsp
	popq	%rbp
	retq
Ltmp39:
Lfunc_end6:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin7:
	.loc	1 131 0                         ## edit_employee.c:131:0
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
Ltmp40:
	.loc	1 132 14 prologue_end           ## edit_employee.c:132:14
	leaq	-224(%rbp), %rdi
	leaq	l___const.main.employees(%rip), %rsi
	movl	$204, %edx
	callq	_memcpy
	.loc	1 137 20                        ## edit_employee.c:137:20
	leaq	-224(%rbp), %rdi
	.loc	1 137 5 is_stmt 0               ## edit_employee.c:137:5
	movl	$1, %esi
	xorl	%edx, %edx
	callq	_edit_employees
	.loc	1 138 5 is_stmt 1               ## edit_employee.c:138:5
	leaq	L_.str.18(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB7_2
## %bb.1:
	.loc	1 139 5                         ## edit_employee.c:139:5
	xorl	%eax, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
LBB7_2:
	.loc	1 0 0 is_stmt 0                 ## edit_employee.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp41:
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
	.asciz	"       emp: %p\n"

L_.str.10:                              ## @.str.10
	.asciz	"    target: %p  (%ld)\n"

L_.str.11:                              ## @.str.11
	.asciz	"    bottom: %p\n"

L_.str.12:                              ## @.str.12
	.asciz	"What do you want to edit?\n"

L_.str.13:                              ## @.str.13
	.asciz	"   (1) Name\n"

L_.str.14:                              ## @.str.14
	.asciz	"   (2) Title\n"

L_.str.15:                              ## @.str.15
	.asciz	"   (3) Salary\n"

L_.str.16:                              ## @.str.16
	.asciz	"Updated employee: \n"

L_.str.17:                              ## @.str.17
	.asciz	"Can edit salary: %d\n"

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
L_.str.18:                              ## @.str.18
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
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
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
	.byte	12                              ## Abbreviation Code
	.byte	11                              ## DW_TAG_lexical_block
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	13                              ## Abbreviation Code
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
	.byte	14                              ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	15                              ## Abbreviation Code
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
	.byte	16                              ## Abbreviation Code
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
	.byte	17                              ## Abbreviation Code
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
	.byte	18                              ## Abbreviation Code
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
	.byte	1                               ## Abbrev [1] 0xb:0x2aa DW_TAG_compile_unit
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
	.byte	37                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	3                               ## Abbrev [3] 0x47:0x15 DW_TAG_variable
	.long	191                             ## DW_AT_name
	.long	135                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	39                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	_next_line.buffer
	.byte	4                               ## Abbrev [4] 0x5c:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	327                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	37                              ## DW_AT_decl_line
	.long	601                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x6a:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	116
	.long	323                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	37                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x78:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	334                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	41                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
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
	.byte	10                              ## Abbrev [10] 0xa2:0x1 DW_TAG_pointer_type
	.byte	11                              ## Abbrev [11] 0xa3:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset5, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset5
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	223                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	13                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
                                        ## DW_AT_external
	.byte	5                               ## Abbrev [5] 0xbc:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	124
	.long	310                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	15                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0xcb:0x5c DW_TAG_subprogram
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
	.byte	4                               ## Abbrev [4] 0xe0:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	314                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	601                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0xee:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	319                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	601                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0xfc:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	108
	.long	323                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	12                              ## Abbrev [12] 0x10a:0x1c DW_TAG_lexical_block
	.quad	Ltmp2                           ## DW_AT_low_pc
.set Lset7, Ltmp11-Ltmp2                ## DW_AT_high_pc
	.long	Lset7
	.byte	5                               ## Abbrev [5] 0x117:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	104
	.long	325                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	25                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x127:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ## DW_AT_low_pc
.set Lset8, Lfunc_end3-Lfunc_begin3     ## DW_AT_high_pc
	.long	Lset8
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	253                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	49                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x13c:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	49                              ## DW_AT_decl_line
	.long	606                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x14b:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ## DW_AT_low_pc
.set Lset9, Lfunc_end4-Lfunc_begin4     ## DW_AT_high_pc
	.long	Lset9
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	263                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	55                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x160:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	55                              ## DW_AT_decl_line
	.long	606                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x16f:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ## DW_AT_low_pc
.set Lset10, Lfunc_end5-Lfunc_begin5    ## DW_AT_high_pc
	.long	Lset10
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	274                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	61                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x184:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	61                              ## DW_AT_decl_line
	.long	606                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	2                               ## Abbrev [2] 0x193:0x78 DW_TAG_subprogram
	.quad	Lfunc_begin6                    ## DW_AT_low_pc
.set Lset11, Lfunc_end6-Lfunc_begin6    ## DW_AT_high_pc
	.long	Lset11
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	286                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	67                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x1a8:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	120
	.long	370                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	67                              ## DW_AT_decl_line
	.long	606                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x1b6:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	116
	.long	380                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	67                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x1c4:0xe DW_TAG_formal_parameter
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	112
	.long	396                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	67                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1d2:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	108
	.long	412                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	69                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1e0:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	96
	.long	339                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	70                              ## DW_AT_decl_line
	.long	606                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1ee:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	92
	.long	420                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	71                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x1fc:0xe DW_TAG_variable
	.byte	2                               ## DW_AT_location
	.byte	145
	.byte	88
	.long	427                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	72                              ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	13                              ## Abbrev [13] 0x20b:0x47 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ## DW_AT_low_pc
.set Lset12, Lfunc_end7-Lfunc_begin7    ## DW_AT_high_pc
	.long	Lset12
	.byte	1                               ## DW_AT_frame_base
	.byte	86
	.long	301                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	130                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	594                             ## DW_AT_type
                                        ## DW_AT_external
	.byte	4                               ## Abbrev [4] 0x224:0xf DW_TAG_formal_parameter
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\230~"
	.long	444                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	130                             ## DW_AT_decl_line
	.long	594                             ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x233:0xf DW_TAG_formal_parameter
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\220~"
	.long	449                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	130                             ## DW_AT_decl_line
	.long	675                             ## DW_AT_type
	.byte	5                               ## Abbrev [5] 0x242:0xf DW_TAG_variable
	.byte	3                               ## DW_AT_location
	.byte	145
	.ascii	"\240~"
	.long	370                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	132                             ## DW_AT_decl_line
	.long	680                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	8                               ## Abbrev [8] 0x252:0x7 DW_TAG_base_type
	.long	306                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	14                              ## Abbrev [14] 0x259:0x5 DW_TAG_pointer_type
	.long	148                             ## DW_AT_type
	.byte	14                              ## Abbrev [14] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             ## DW_AT_type
	.byte	15                              ## Abbrev [15] 0x263:0xb DW_TAG_typedef
	.long	622                             ## DW_AT_type
	.long	343                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
	.byte	16                              ## Abbrev [16] 0x26e:0x29 DW_TAG_structure_type
	.byte	68                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	4                               ## DW_AT_decl_line
	.byte	17                              ## Abbrev [17] 0x272:0xc DW_TAG_member
	.long	352                             ## DW_AT_name
	.long	663                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	6                               ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	17                              ## Abbrev [17] 0x27e:0xc DW_TAG_member
	.long	357                             ## DW_AT_name
	.long	594                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	7                               ## DW_AT_decl_line
	.byte	32                              ## DW_AT_data_member_location
	.byte	17                              ## Abbrev [17] 0x28a:0xc DW_TAG_member
	.long	364                             ## DW_AT_name
	.long	663                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	8                               ## DW_AT_decl_line
	.byte	36                              ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	6                               ## Abbrev [6] 0x297:0xc DW_TAG_array_type
	.long	148                             ## DW_AT_type
	.byte	18                              ## Abbrev [18] 0x29c:0x6 DW_TAG_subrange_type
	.long	155                             ## DW_AT_type
	.byte	32                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	14                              ## Abbrev [14] 0x2a3:0x5 DW_TAG_pointer_type
	.long	601                             ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x2a8:0xc DW_TAG_array_type
	.long	611                             ## DW_AT_type
	.byte	18                              ## Abbrev [18] 0x2ad:0x6 DW_TAG_subrange_type
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
	.asciz	"can_edit_record"               ## string offset=380
	.asciz	"can_edit_salary"               ## string offset=396
	.asciz	"emp_num"                       ## string offset=412
	.asciz	"choice"                        ## string offset=420
	.asciz	"both_permissions"              ## string offset=427
	.asciz	"argc"                          ## string offset=444
	.asciz	"argv"                          ## string offset=449
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
	.long	367
	.long	0
LNames8:
	.long	263                             ## edit_title
	.long	1                               ## Num DIEs
	.long	331
	.long	0
LNames4:
	.long	232                             ## my_strncpy
	.long	1                               ## Num DIEs
	.long	203
	.long	0
LNames5:
	.long	223                             ## next_int
	.long	1                               ## Num DIEs
	.long	163
	.long	0
LNames7:
	.long	286                             ## edit_employees
	.long	1                               ## Num DIEs
	.long	403
	.long	0
LNames3:
	.long	253                             ## edit_name
	.long	1                               ## Num DIEs
	.long	295
	.long	0
LNames2:
	.long	243                             ## next_line
	.long	1                               ## Num DIEs
	.long	50
	.long	0
LNames1:
	.long	301                             ## main
	.long	1                               ## Num DIEs
	.long	523
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
	.long	594
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	343                             ## Employee
	.long	1                               ## Num DIEs
	.long	611
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
