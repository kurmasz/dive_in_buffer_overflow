	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_next_int                       ## -- Begin function next_int
	.p2align	4, 0x90
_next_int:                              ## @next_int
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	_scanf
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_getchar
	cmpl	$10, %eax
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_next_line                      ## -- Begin function next_line
	.p2align	4, 0x90
_next_line:                             ## @next_line
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
	movq	___stdinp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	_next_line.buffer(%rip), %rdi
	movl	$1024, %esi                     ## imm = 0x400
	callq	_fgets
	leaq	_next_line.buffer(%rip), %rdi
	callq	_strlen
	subq	$1, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rcx
	leaq	_next_line.buffer(%rip), %rax
	movsbl	(%rax,%rcx), %eax
	cmpl	$10, %eax
	jne	LBB1_2
## %bb.1:
	movslq	-16(%rbp), %rcx
	leaq	_next_line.buffer(%rip), %rax
	movb	$0, (%rax,%rcx)
LBB1_2:
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rdx
	leaq	_next_line.buffer(%rip), %rsi
	movq	$-1, %rcx
	callq	___strncpy_chk
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_name                      ## -- Begin function edit_name
	.p2align	4, 0x90
_edit_name:                             ## @edit_name
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-8(%rbp), %rdi
	movl	$32, %esi
	callq	_next_line
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_title                     ## -- Begin function edit_title
	.p2align	4, 0x90
_edit_title:                            ## @edit_title
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-8(%rbp), %rdi
	addq	$36, %rdi
	movl	$32, %esi
	callq	_next_line
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_salary                    ## -- Begin function edit_salary
	.p2align	4, 0x90
_edit_salary:                           ## @edit_salary
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-8(%rbp), %rsi
	addq	$32, %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_scanf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_edit_employees                 ## -- Begin function edit_employees
	.p2align	4, 0x90
_edit_employees:                        ## @edit_employees
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	callq	_next_int
	movl	%eax, -16(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$999, -16(%rbp)                 ## imm = 0x3E7
	je	LBB5_9
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	imulq	$68, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	addq	$36, %rsi
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
	cmpl	$1, -12(%rbp)
	jne	LBB5_4
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB5_4:                                 ##   in Loop: Header=BB5_1 Depth=1
	callq	_next_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)                 ## 4-byte Spill
	subl	$1, %eax
	je	LBB5_5
	jmp	LBB5_10
LBB5_10:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB5_6
	jmp	LBB5_11
LBB5_11:                                ##   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB5_7
	jmp	LBB5_8
LBB5_5:                                 ##   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	_edit_name
	jmp	LBB5_8
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	_edit_title
	jmp	LBB5_8
LBB5_7:                                 ##   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	_edit_salary
LBB5_8:                                 ##   in Loop: Header=BB5_1 Depth=1
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	addq	$36, %rsi
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	callq	_next_int
	movl	%eax, -16(%rbp)
	jmp	LBB5_1
LBB5_9:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
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
	leaq	-224(%rbp), %rdi
	leaq	l___const.main.employees(%rip), %rsi
	movl	$204, %edx
	callq	_memcpy
	leaq	-224(%rbp), %rdi
	xorl	%esi, %esi
	callq	_edit_employees
	leaq	L_.str.14(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB6_2
## %bb.1:
	xorl	%eax, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
LBB6_2:
	callq	___stack_chk_fail
	ud2
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
	.asciz	"What do you want to edit?\n"

L_.str.10:                              ## @.str.10
	.asciz	"   (1) Name\n"

L_.str.11:                              ## @.str.11
	.asciz	"   (2) Title\n"

L_.str.12:                              ## @.str.12
	.asciz	"   (3) Salary\n"

L_.str.13:                              ## @.str.13
	.asciz	"Updated employee: \n"

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
L_.str.14:                              ## @.str.14
	.asciz	"Good-bye.\n"

.subsections_via_symbols
