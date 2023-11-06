	.file	"edit_employee.c"
	.text
.Ltext0:
	.file 0 "/home/kurmasz/DiveIntoSystems/dive_in_buffer_overflow/problem_2" "edit_employee.c"
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	next_int
	.type	next_int, @function
next_int:
.LFB0:
	.file 1 "edit_employee.c"
	.loc 1 14 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 14 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 16 5
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 17 11
	nop
.L2:
	.loc 1 17 12 discriminator 1
	call	getchar@PLT
	.loc 1 17 22 discriminator 1
	cmpl	$10, %eax
	jne	.L2
	.loc 1 19 12
	movl	-12(%rbp), %eax
	.loc 1 20 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	next_int, .-next_int
	.globl	my_strncpy
	.type	my_strncpy, @function
my_strncpy:
.LFB1:
	.loc 1 23 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
.LBB2:
	.loc 1 25 14
	movl	$0, -4(%rbp)
	.loc 1 25 5
	jmp	.L6
.L9:
	.loc 1 27 22
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 27 13
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 27 22
	movzbl	(%rax), %eax
	.loc 1 27 17
	movb	%al, (%rdx)
	.loc 1 28 16
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 28 12
	testb	%al, %al
	je	.L10
	.loc 1 25 28 discriminator 2
	addl	$1, -4(%rbp)
.L6:
	.loc 1 25 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L9
.LBE2:
	.loc 1 33 1
	jmp	.L11
.L10:
.LBB3:
	.loc 1 30 13
	nop
.L11:
.LBE3:
	.loc 1 33 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_strncpy, .-my_strncpy
	.globl	next_line
	.type	next_line, @function
next_line:
.LFB2:
	.loc 1 38 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 40 5
	movq	stdin(%rip), %rax
	movq	%rax, %rdx
	movl	$1024, %esi
	leaq	buffer.0(%rip), %rax
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 41 16
	leaq	buffer.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 41 31
	subl	$1, %eax
	.loc 1 41 9
	movl	%eax, -4(%rbp)
	.loc 1 42 15
	movl	-4(%rbp), %eax
	cltq
	leaq	buffer.0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 1 42 8
	cmpb	$10, %al
	jne	.L13
	.loc 1 44 22
	movl	-4(%rbp), %eax
	cltq
	leaq	buffer.0(%rip), %rdx
	movb	$0, (%rax,%rdx)
.L13:
	.loc 1 46 5
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	buffer.0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_strncpy
	.loc 1 47 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	next_line, .-next_line
	.section	.rodata
.LC1:
	.string	"Enter the new name: "
	.text
	.globl	edit_name
	.type	edit_name, @function
edit_name:
.LFB3:
	.loc 1 50 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 51 5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 52 18
	movq	-8(%rbp), %rax
	.loc 1 52 5
	movl	$32, %esi
	movq	%rax, %rdi
	call	next_line
	.loc 1 53 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	edit_name, .-edit_name
	.section	.rodata
.LC2:
	.string	"Enter the new title: "
	.text
	.globl	edit_title
	.type	edit_title, @function
edit_title:
.LFB4:
	.loc 1 56 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 57 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 58 18
	movq	-8(%rbp), %rax
	addq	$36, %rax
	.loc 1 58 5
	movl	$32, %esi
	movq	%rax, %rdi
	call	next_line
	.loc 1 59 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	edit_title, .-edit_title
	.section	.rodata
.LC3:
	.string	"Enter the new salary: "
	.text
	.globl	edit_salary
	.type	edit_salary, @function
edit_salary:
.LFB5:
	.loc 1 62 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 63 5
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 64 5
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 65 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	edit_salary, .-edit_salary
	.section	.rodata
	.align 8
.LC4:
	.string	"Enter number of employee to edit (or 999 to exit): "
.LC5:
	.string	"Current employee: "
.LC6:
	.string	"   Name:   %s\n"
.LC7:
	.string	"   Title:  %s\n"
.LC8:
	.string	"   Salary: %d\n"
.LC9:
	.string	"       emp: %p\n"
.LC10:
	.string	"    target: %p  (%ld)\n"
.LC11:
	.string	"    bottom: %p\n"
.LC12:
	.string	"   pointer: %p\n"
.LC13:
	.string	"What do you want to edit?"
.LC14:
	.string	"   (1) Name"
.LC15:
	.string	"   (2) Title"
.LC16:
	.string	"   (3) Salary"
.LC17:
	.string	"Updated employee: "
.LC18:
	.string	"Can edit salary: %d\n"
	.text
	.globl	edit_employees
	.type	edit_employees, @function
edit_employees:
.LFB6:
	.loc 1 68 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	.loc 1 68 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 70 9
	movl	$-3, -24(%rbp)
	.loc 1 71 15
	movq	$0, -16(%rbp)
	.loc 1 72 9
	movl	$-2, -28(%rbp)
	.loc 1 73 9
	movl	$-1, -20(%rbp)
	.loc 1 74 40
	cmpl	$0, -44(%rbp)
	je	.L18
	.loc 1 74 40 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.L18
	.loc 1 74 40 discriminator 3
	movl	$1, %eax
	jmp	.L19
.L18:
	.loc 1 74 40 discriminator 4
	movl	$0, %eax
.L19:
	.loc 1 74 22 is_stmt 1 discriminator 6
	movl	%eax, -28(%rbp)
	.loc 1 76 5 discriminator 6
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 77 15 discriminator 6
	movl	$0, %eax
	call	next_int
	movl	%eax, -24(%rbp)
	.loc 1 78 11 discriminator 6
	jmp	.L20
.L30:
	.loc 1 80 15
	movq	-40(%rbp), %rcx
	.loc 1 80 25
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	.loc 1 80 13
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 82 9
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 83 38
	movq	-16(%rbp), %rax
	.loc 1 83 9
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 84 38
	movq	-16(%rbp), %rax
	addq	$36, %rax
	.loc 1 84 9
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 85 9
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 87 9
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 88 9
	leaq	-28(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 89 9
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 90 2
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L25:
	.loc 1 94 13
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 95 13
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 96 13
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 97 17
	movl	-28(%rbp), %eax
	.loc 1 97 16
	testl	%eax, %eax
	je	.L21
	.loc 1 99 17
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L21:
	.loc 1 101 22
	movl	$0, %eax
	call	next_int
	movl	%eax, -20(%rbp)
	.loc 1 102 16
	cmpl	$0, -20(%rbp)
	jle	.L22
	.loc 1 102 30 discriminator 1
	cmpl	$2, -20(%rbp)
	jle	.L23
.L22:
	.loc 1 102 46 discriminator 3
	cmpl	$3, -20(%rbp)
	jne	.L25
	.loc 1 102 62 discriminator 4
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L23
	.loc 1 94 13
	jmp	.L25
.L23:
	.loc 1 108 9
	cmpl	$3, -20(%rbp)
	je	.L26
	cmpl	$3, -20(%rbp)
	jg	.L27
	cmpl	$1, -20(%rbp)
	je	.L28
	cmpl	$2, -20(%rbp)
	je	.L29
	jmp	.L27
.L28:
	.loc 1 111 13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	edit_name
	.loc 1 112 13
	jmp	.L27
.L29:
	.loc 1 114 13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	edit_title
	.loc 1 115 13
	jmp	.L27
.L26:
	.loc 1 117 13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	edit_salary
	.loc 1 118 13
	nop
.L27:
	.loc 1 121 9
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 122 38
	movq	-16(%rbp), %rax
	.loc 1 122 9
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 123 38
	movq	-16(%rbp), %rax
	addq	$36, %rax
	.loc 1 123 9
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 124 9
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 126 9
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 128 9
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 129 19
	movl	$0, %eax
	call	next_int
	movl	%eax, -24(%rbp)
.L20:
	.loc 1 78 20
	cmpl	$999, -24(%rbp)
	jne	.L30
	.loc 1 131 1
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	edit_employees, .-edit_employees
	.section	.rodata
.LC19:
	.string	"Good-bye."
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 134 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	.loc 1 134 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 135 14
	movabsq	$6278129375530411335, %rax
	movabsq	$8031157759420953441, %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	$110, -208(%rbp)
	movq	$0, -200(%rbp)
	movl	$43615, -192(%rbp)
	movabsq	$8237119402985810246, %rax
	movabsq	$32772479053820773, %rdx
	movq	%rax, -188(%rbp)
	movq	%rdx, -180(%rbp)
	movq	$0, -172(%rbp)
	movq	$0, -164(%rbp)
	movabsq	$7017805726897172298, %rax
	movl	$29549, %edx
	movq	%rax, -156(%rbp)
	movq	%rdx, -148(%rbp)
	movq	$0, -140(%rbp)
	movq	$0, -132(%rbp)
	movl	$55134, -124(%rbp)
	movabsq	$5773725147766941011, %rax
	movabsq	$8389754637778118002, %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movabsq	$5341396020346447956, %rax
	movabsq	$7957706001751631461, %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$61143, -56(%rbp)
	movabsq	$8237119334248966228, %rax
	movabsq	$32772479053820773, %rdx
	movq	%rax, -52(%rbp)
	movq	%rdx, -44(%rbp)
	movq	$0, -36(%rbp)
	movq	$0, -28(%rbp)
	.loc 1 140 5
	leaq	-224(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	edit_employees
	.loc 1 141 5
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 142 12
	movl	$0, %eax
	.loc 1 143 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.local	buffer.0
	.comm	buffer.0,1024,32
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5be
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x2
	.long	0x96
	.uleb128 0xf
	.long	0x8c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x14
	.long	0x96
	.uleb128 0x15
	.long	.LASF74
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0x1
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8c
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8c
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8c
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8c
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x247
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x24c
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x25c
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x266
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x270
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x247
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0x16
	.long	.LASF75
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x2
	.long	0x23d
	.uleb128 0x2
	.long	0xa2
	.uleb128 0x9
	.long	0x96
	.long	0x25c
	.uleb128 0xb
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	0x235
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x2
	.long	0x261
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x2
	.long	0x26b
	.uleb128 0x9
	.long	0x96
	.long	0x285
	.uleb128 0xb
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.long	.LASF76
	.byte	0x6
	.byte	0x8f
	.byte	0xe
	.long	0x291
	.uleb128 0x2
	.long	0x229
	.uleb128 0xf
	.long	0x291
	.uleb128 0x2
	.long	0x9d
	.uleb128 0x18
	.byte	0x44
	.byte	0x1
	.byte	0x4
	.byte	0x9
	.long	0x2d1
	.uleb128 0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x6
	.byte	0xa
	.long	0x2d1
	.byte	0
	.uleb128 0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0x66
	.byte	0x20
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x8
	.byte	0xa
	.long	0x2d1
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.long	0x96
	.long	0x2e1
	.uleb128 0xb
	.long	0x3a
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.long	0x2a0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.value	0x164
	.byte	0xc
	.long	0x66
	.long	0x305
	.uleb128 0x5
	.long	0x29b
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x7
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x31c
	.uleb128 0x5
	.long	0x29b
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x6
	.value	0x250
	.byte	0xe
	.long	0x8c
	.long	0x33d
	.uleb128 0x5
	.long	0x91
	.uleb128 0x5
	.long	0x66
	.uleb128 0x5
	.long	0x296
	.byte	0
	.uleb128 0x19
	.long	.LASF77
	.byte	0x6
	.value	0x208
	.byte	0xc
	.long	0x66
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x6
	.value	0x1b5
	.byte	0xc
	.long	.LASF78
	.long	0x66
	.long	0x366
	.uleb128 0x5
	.long	0x29b
	.uleb128 0x10
	.byte	0
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.byte	0x85
	.byte	0x5
	.long	0x66
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b6
	.uleb128 0x4
	.long	.LASF53
	.byte	0x85
	.byte	0xe
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x4
	.long	.LASF54
	.byte	0x85
	.byte	0x1a
	.long	0x3b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x6
	.long	.LASF55
	.byte	0x87
	.byte	0xe
	.long	0x3bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x2
	.long	0x8c
	.uleb128 0x9
	.long	0x2e1
	.long	0x3cb
	.uleb128 0xb
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x43
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x44a
	.uleb128 0x4
	.long	.LASF55
	.byte	0x43
	.byte	0x1f
	.long	0x44a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF56
	.byte	0x43
	.byte	0x2e
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.long	.LASF57
	.byte	0x43
	.byte	0x43
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF58
	.byte	0x46
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"emp"
	.byte	0x47
	.byte	0xf
	.long	0x44a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF59
	.byte	0x48
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF60
	.byte	0x49
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2
	.long	0x2e1
	.uleb128 0xa
	.long	.LASF62
	.byte	0x3d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x47a
	.uleb128 0x7
	.string	"emp"
	.byte	0x3d
	.byte	0x1c
	.long	0x44a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF63
	.byte	0x37
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a5
	.uleb128 0x7
	.string	"emp"
	.byte	0x37
	.byte	0x1b
	.long	0x44a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0x31
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d0
	.uleb128 0x7
	.string	"emp"
	.byte	0x31
	.byte	0x1a
	.long	0x44a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0x25
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x52a
	.uleb128 0x4
	.long	.LASF66
	.byte	0x25
	.byte	0x16
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"n"
	.byte	0x25
	.byte	0x22
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF67
	.byte	0x27
	.byte	0x11
	.long	0x52a
	.uleb128 0x9
	.byte	0x3
	.quad	buffer.0
	.uleb128 0x6
	.long	.LASF68
	.byte	0x29
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	0x96
	.long	0x53b
	.uleb128 0x1c
	.long	0x3a
	.value	0x3ff
	.byte	0
	.uleb128 0x1d
	.long	.LASF69
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x594
	.uleb128 0x4
	.long	.LASF70
	.byte	0x16
	.byte	0x17
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"src"
	.byte	0x16
	.byte	0x23
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"n"
	.byte	0x16
	.byte	0x2c
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LLRL0
	.uleb128 0xe
	.string	"i"
	.byte	0x19
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.long	0x66
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"ipt"
	.byte	0xf
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB2-.Ltext0
	.uleb128 .LBE2-.Ltext0
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"_IO_buf_end"
.LASF65:
	.string	"next_line"
.LASF29:
	.string	"_old_offset"
.LASF60:
	.string	"choice"
.LASF71:
	.string	"scanf"
.LASF24:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF78:
	.string	"__isoc99_scanf"
.LASF34:
	.string	"_offset"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF73:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF38:
	.string	"_freeres_buf"
.LASF47:
	.string	"salary"
.LASF52:
	.string	"fgets"
.LASF48:
	.string	"title"
.LASF58:
	.string	"emp_num"
.LASF77:
	.string	"getchar"
.LASF33:
	.string	"_lock"
.LASF8:
	.string	"long int"
.LASF50:
	.string	"printf"
.LASF30:
	.string	"_cur_column"
.LASF70:
	.string	"dest"
.LASF54:
	.string	"argv"
.LASF46:
	.string	"name"
.LASF74:
	.string	"_IO_FILE"
.LASF4:
	.string	"unsigned char"
.LASF53:
	.string	"argc"
.LASF69:
	.string	"my_strncpy"
.LASF6:
	.string	"signed char"
.LASF35:
	.string	"_codecvt"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF68:
	.string	"last"
.LASF14:
	.string	"_IO_read_ptr"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF62:
	.string	"edit_salary"
.LASF79:
	.string	"main"
.LASF51:
	.string	"strlen"
.LASF66:
	.string	"target"
.LASF36:
	.string	"_wide_data"
.LASF37:
	.string	"_freeres_list"
.LASF39:
	.string	"__pad5"
.LASF67:
	.string	"buffer"
.LASF44:
	.string	"_IO_codecvt"
.LASF61:
	.string	"edit_employees"
.LASF2:
	.string	"long unsigned int"
.LASF49:
	.string	"Employee"
.LASF19:
	.string	"_IO_write_end"
.LASF11:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF45:
	.string	"_IO_wide_data"
.LASF23:
	.string	"_IO_backup_base"
.LASF76:
	.string	"stdin"
.LASF59:
	.string	"both_permissions"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF56:
	.string	"can_edit_record"
.LASF64:
	.string	"edit_name"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF42:
	.string	"FILE"
.LASF72:
	.string	"next_int"
.LASF55:
	.string	"employees"
.LASF63:
	.string	"edit_title"
.LASF75:
	.string	"_IO_lock_t"
.LASF57:
	.string	"can_edit_salary"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"edit_employee.c"
.LASF1:
	.string	"/home/kurmasz/DiveIntoSystems/dive_in_buffer_overflow/problem_2"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
