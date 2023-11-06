	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 14, 0
	.file	1 "/Volumes/dfs/Computing-Private/KURMASZ/dive_in_buffer_overflow/problem_2" "array_underflow_gcc.c"
	.globl	_next_int                       ; -- Begin function next_int
	.p2align	2
_next_int:                              ; @next_int
Lfunc_begin0:
	.loc	1 14 0                          ; array_underflow_gcc.c:14:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp0:
	.loc	1 16 5 prologue_end             ; array_underflow_gcc.c:16:5
	mov	x9, sp
	sub	x8, x29, #4
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	.loc	1 17 5                          ; array_underflow_gcc.c:17:5
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	.loc	1 17 12 is_stmt 0               ; array_underflow_gcc.c:17:12
	bl	_getchar
	.loc	1 17 22                         ; array_underflow_gcc.c:17:22
	subs	w8, w0, #10
	cset	w8, eq
	.loc	1 17 5                          ; array_underflow_gcc.c:17:5
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_1
LBB0_3:
	.loc	1 19 12 is_stmt 1               ; array_underflow_gcc.c:19:12
	ldur	w0, [x29, #-4]
	.loc	1 19 5 is_stmt 0                ; array_underflow_gcc.c:19:5
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_my_strncpy                     ; -- Begin function my_strncpy
	.p2align	2
_my_strncpy:                            ; @my_strncpy
Lfunc_begin1:
	.loc	1 23 0 is_stmt 1                ; array_underflow_gcc.c:23:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
Ltmp3:
	.loc	1 25 14 prologue_end            ; array_underflow_gcc.c:25:14
	str	wzr, [sp, #8]
	.loc	1 25 10 is_stmt 0               ; array_underflow_gcc.c:25:10
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
Ltmp4:
	.loc	1 25 21                         ; array_underflow_gcc.c:25:21
	ldr	w8, [sp, #8]
	.loc	1 25 25                         ; array_underflow_gcc.c:25:25
	ldr	w9, [sp, #12]
	.loc	1 25 23                         ; array_underflow_gcc.c:25:23
	subs	w8, w8, w9
	cset	w8, ge
Ltmp5:
	.loc	1 25 5                          ; array_underflow_gcc.c:25:5
	tbnz	w8, #0, LBB1_6
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
Ltmp6:
	.loc	1 27 19 is_stmt 1               ; array_underflow_gcc.c:27:19
	ldr	x8, [sp, #16]
	.loc	1 27 23 is_stmt 0               ; array_underflow_gcc.c:27:23
	ldrsw	x9, [sp, #8]
	.loc	1 27 19                         ; array_underflow_gcc.c:27:19
	add	x8, x8, x9
	ldrb	w8, [x8]
	.loc	1 27 9                          ; array_underflow_gcc.c:27:9
	ldr	x9, [sp, #24]
	.loc	1 27 14                         ; array_underflow_gcc.c:27:14
	ldrsw	x10, [sp, #8]
	.loc	1 27 9                          ; array_underflow_gcc.c:27:9
	add	x9, x9, x10
	.loc	1 27 17                         ; array_underflow_gcc.c:27:17
	strb	w8, [x9]
Ltmp7:
	.loc	1 28 13 is_stmt 1               ; array_underflow_gcc.c:28:13
	ldr	x8, [sp, #16]
	.loc	1 28 17 is_stmt 0               ; array_underflow_gcc.c:28:17
	ldrsw	x9, [sp, #8]
	.loc	1 28 13                         ; array_underflow_gcc.c:28:13
	ldrsb	w8, [x8, x9]
	.loc	1 28 20                         ; array_underflow_gcc.c:28:20
	subs	w8, w8, #0
	cset	w8, ne
Ltmp8:
	.loc	1 28 13                         ; array_underflow_gcc.c:28:13
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:
Ltmp9:
	.loc	1 30 13 is_stmt 1               ; array_underflow_gcc.c:30:13
	b	LBB1_6
Ltmp10:
LBB1_4:                                 ;   in Loop: Header=BB1_1 Depth=1
	.loc	1 32 5                          ; array_underflow_gcc.c:32:5
	b	LBB1_5
Ltmp11:
LBB1_5:                                 ;   in Loop: Header=BB1_1 Depth=1
	.loc	1 25 28                         ; array_underflow_gcc.c:25:28
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	.loc	1 25 5 is_stmt 0                ; array_underflow_gcc.c:25:5
	b	LBB1_1
Ltmp12:
LBB1_6:
	.loc	1 33 1 is_stmt 1                ; array_underflow_gcc.c:33:1
	add	sp, sp, #32
	ret
Ltmp13:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_next_line                      ; -- Begin function next_line
	.p2align	2
_next_line:                             ; @next_line
Lfunc_begin2:
	.loc	1 38 0                          ; array_underflow_gcc.c:38:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	adrp	x8, ___stdinp@GOTPAGE
	ldr	x8, [x8, ___stdinp@GOTPAGEOFF]
Ltmp14:
	.loc	1 40 25 prologue_end            ; array_underflow_gcc.c:40:25
	ldr	x2, [x8]
	adrp	x0, _next_line.buffer@PAGE
	add	x0, x0, _next_line.buffer@PAGEOFF
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	w1, #1024
	.loc	1 40 5 is_stmt 0                ; array_underflow_gcc.c:40:5
	bl	_fgets
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	.loc	1 41 16 is_stmt 1               ; array_underflow_gcc.c:41:16
	bl	_strlen
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	.loc	1 41 31 is_stmt 0               ; array_underflow_gcc.c:41:31
	subs	x9, x0, #1
                                        ; kill: def $w9 killed $w9 killed $x9
	.loc	1 41 9                          ; array_underflow_gcc.c:41:9
	str	w9, [sp, #16]
Ltmp15:
	.loc	1 42 16 is_stmt 1               ; array_underflow_gcc.c:42:16
	ldrsw	x9, [sp, #16]
	.loc	1 42 9 is_stmt 0                ; array_underflow_gcc.c:42:9
	ldrsb	w8, [x8, x9]
	.loc	1 42 22                         ; array_underflow_gcc.c:42:22
	subs	w8, w8, #10
	cset	w8, ne
Ltmp16:
	.loc	1 42 9                          ; array_underflow_gcc.c:42:9
	tbnz	w8, #0, LBB2_2
	b	LBB2_1
LBB2_1:
Ltmp17:
	.loc	1 44 16 is_stmt 1               ; array_underflow_gcc.c:44:16
	ldrsw	x9, [sp, #16]
	adrp	x8, _next_line.buffer@PAGE
	add	x8, x8, _next_line.buffer@PAGEOFF
	.loc	1 44 9 is_stmt 0                ; array_underflow_gcc.c:44:9
	add	x8, x8, x9
	.loc	1 44 22                         ; array_underflow_gcc.c:44:22
	strb	wzr, [x8]
	.loc	1 45 5 is_stmt 1                ; array_underflow_gcc.c:45:5
	b	LBB2_2
Ltmp18:
LBB2_2:
	.loc	1 46 16                         ; array_underflow_gcc.c:46:16
	ldur	x0, [x29, #-8]
	.loc	1 46 32 is_stmt 0               ; array_underflow_gcc.c:46:32
	ldur	w2, [x29, #-12]
	adrp	x1, _next_line.buffer@PAGE
	add	x1, x1, _next_line.buffer@PAGEOFF
	.loc	1 46 5                          ; array_underflow_gcc.c:46:5
	bl	_my_strncpy
	.loc	1 47 1 is_stmt 1                ; array_underflow_gcc.c:47:1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
Ltmp19:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_edit_name                      ; -- Begin function edit_name
	.p2align	2
_edit_name:                             ; @edit_name
Lfunc_begin3:
	.loc	1 50 0                          ; array_underflow_gcc.c:50:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
Ltmp20:
	.loc	1 51 5 prologue_end             ; array_underflow_gcc.c:51:5
	bl	_printf
	.loc	1 52 15                         ; array_underflow_gcc.c:52:15
	ldr	x0, [sp, #8]
	mov	w1, #32
	.loc	1 52 5 is_stmt 0                ; array_underflow_gcc.c:52:5
	bl	_next_line
	.loc	1 53 1 is_stmt 1                ; array_underflow_gcc.c:53:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp21:
Lfunc_end3:
	.cfi_endproc
                                        ; -- End function
	.globl	_edit_title                     ; -- Begin function edit_title
	.p2align	2
_edit_title:                            ; @edit_title
Lfunc_begin4:
	.loc	1 56 0                          ; array_underflow_gcc.c:56:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
Ltmp22:
	.loc	1 57 5 prologue_end             ; array_underflow_gcc.c:57:5
	bl	_printf
	.loc	1 58 15                         ; array_underflow_gcc.c:58:15
	ldr	x8, [sp, #8]
	.loc	1 58 20 is_stmt 0               ; array_underflow_gcc.c:58:20
	add	x0, x8, #36
	mov	w1, #32
	.loc	1 58 5                          ; array_underflow_gcc.c:58:5
	bl	_next_line
	.loc	1 59 1 is_stmt 1                ; array_underflow_gcc.c:59:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp23:
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.globl	_edit_salary                    ; -- Begin function edit_salary
	.p2align	2
_edit_salary:                           ; @edit_salary
Lfunc_begin5:
	.loc	1 62 0                          ; array_underflow_gcc.c:62:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
Ltmp24:
	.loc	1 63 5 prologue_end             ; array_underflow_gcc.c:63:5
	bl	_printf
	.loc	1 64 18                         ; array_underflow_gcc.c:64:18
	ldr	x8, [sp, #8]
	.loc	1 64 23 is_stmt 0               ; array_underflow_gcc.c:64:23
	add	x8, x8, #32
	.loc	1 64 5                          ; array_underflow_gcc.c:64:5
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_scanf
	.loc	1 65 1 is_stmt 1                ; array_underflow_gcc.c:65:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp25:
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.globl	_edit_employees                 ; -- Begin function edit_employees
	.p2align	2
_edit_employees:                        ; @edit_employees
Lfunc_begin6:
	.loc	1 68 0                          ; array_underflow_gcc.c:68:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	x2, [x29, #-16]
	mov	w8, #-3
Ltmp26:
	.loc	1 71 9 prologue_end             ; array_underflow_gcc.c:71:9
	stur	w8, [x29, #-20]
                                        ; kill: def $x8 killed $xzr
	.loc	1 72 15                         ; array_underflow_gcc.c:72:15
	str	xzr, [sp, #32]
	mov	w8, #-2
	.loc	1 73 9                          ; array_underflow_gcc.c:73:9
	str	w8, [sp, #28]
	mov	w8, #-1
	.loc	1 74 9                          ; array_underflow_gcc.c:74:9
	str	w8, [sp, #24]
	.loc	1 75 24                         ; array_underflow_gcc.c:75:24
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	.loc	1 75 40 is_stmt 0               ; array_underflow_gcc.c:75:40
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	.loc	1 75 43                         ; array_underflow_gcc.c:75:43
	ldur	w8, [x29, #-8]
	.loc	1 75 40                         ; array_underflow_gcc.c:75:40
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB6_2
LBB6_2:
	.loc	1 0 40                          ; array_underflow_gcc.c:0:40
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	.loc	1 75 40                         ; array_underflow_gcc.c:75:40
	and	w8, w8, #0x1
	.loc	1 75 22                         ; array_underflow_gcc.c:75:22
	str	w8, [sp, #28]
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	.loc	1 77 5 is_stmt 1                ; array_underflow_gcc.c:77:5
	bl	_printf
	.loc	1 78 15                         ; array_underflow_gcc.c:78:15
	bl	_next_int
	.loc	1 78 13 is_stmt 0               ; array_underflow_gcc.c:78:13
	stur	w0, [x29, #-20]
	.loc	1 79 5 is_stmt 1                ; array_underflow_gcc.c:79:5
	b	LBB6_3
LBB6_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_5 Depth 2
	.loc	1 79 12 is_stmt 0               ; array_underflow_gcc.c:79:12
	ldur	w8, [x29, #-20]
	.loc	1 79 20                         ; array_underflow_gcc.c:79:20
	subs	w8, w8, #999
	cset	w8, eq
	.loc	1 79 5                          ; array_underflow_gcc.c:79:5
	tbnz	w8, #0, LBB6_20
	b	LBB6_4
LBB6_4:                                 ;   in Loop: Header=BB6_3 Depth=1
Ltmp27:
	.loc	1 81 16 is_stmt 1               ; array_underflow_gcc.c:81:16
	ldur	x8, [x29, #-16]
	.loc	1 81 26 is_stmt 0               ; array_underflow_gcc.c:81:26
	ldursw	x9, [x29, #-20]
	mov	x10, #68
	.loc	1 81 16                         ; array_underflow_gcc.c:81:16
	mul	x9, x9, x10
	add	x8, x8, x9
	.loc	1 81 13                         ; array_underflow_gcc.c:81:13
	str	x8, [sp, #32]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	.loc	1 83 9 is_stmt 1                ; array_underflow_gcc.c:83:9
	bl	_printf
	.loc	1 84 35                         ; array_underflow_gcc.c:84:35
	ldr	x8, [sp, #32]
	.loc	1 84 9 is_stmt 0                ; array_underflow_gcc.c:84:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	.loc	1 85 35 is_stmt 1               ; array_underflow_gcc.c:85:35
	ldr	x8, [sp, #32]
	.loc	1 85 40 is_stmt 0               ; array_underflow_gcc.c:85:40
	add	x8, x8, #36
	.loc	1 85 9                          ; array_underflow_gcc.c:85:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	.loc	1 86 35 is_stmt 1               ; array_underflow_gcc.c:86:35
	ldr	x8, [sp, #32]
	.loc	1 86 40 is_stmt 0               ; array_underflow_gcc.c:86:40
	ldr	w9, [x8, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	.loc	1 86 9                          ; array_underflow_gcc.c:86:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	.loc	1 101 9 is_stmt 1               ; array_underflow_gcc.c:101:9
	b	LBB6_5
LBB6_5:                                 ;   Parent Loop BB6_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 9 is_stmt 0                 ; array_underflow_gcc.c:0:9
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
Ltmp28:
	.loc	1 103 13 is_stmt 1              ; array_underflow_gcc.c:103:13
	bl	_printf
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	.loc	1 104 13                        ; array_underflow_gcc.c:104:13
	bl	_printf
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	.loc	1 105 13                        ; array_underflow_gcc.c:105:13
	bl	_printf
Ltmp29:
	.loc	1 106 17                        ; array_underflow_gcc.c:106:17
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, eq
Ltmp30:
	.loc	1 106 17 is_stmt 0              ; array_underflow_gcc.c:106:17
	tbnz	w8, #0, LBB6_7
	b	LBB6_6
LBB6_6:                                 ;   in Loop: Header=BB6_5 Depth=2
	.loc	1 0 17                          ; array_underflow_gcc.c:0:17
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
Ltmp31:
	.loc	1 108 17 is_stmt 1              ; array_underflow_gcc.c:108:17
	bl	_printf
	.loc	1 109 13                        ; array_underflow_gcc.c:109:13
	b	LBB6_7
Ltmp32:
LBB6_7:                                 ;   in Loop: Header=BB6_5 Depth=2
	.loc	1 110 22                        ; array_underflow_gcc.c:110:22
	bl	_next_int
	.loc	1 110 20 is_stmt 0              ; array_underflow_gcc.c:110:20
	str	w0, [sp, #24]
Ltmp33:
	.loc	1 111 18 is_stmt 1              ; array_underflow_gcc.c:111:18
	ldr	w8, [sp, #24]
	.loc	1 111 25 is_stmt 0              ; array_underflow_gcc.c:111:25
	subs	w8, w8, #1
	cset	w8, lt
	.loc	1 111 30                        ; array_underflow_gcc.c:111:30
	tbnz	w8, #0, LBB6_9
	b	LBB6_8
LBB6_8:                                 ;   in Loop: Header=BB6_5 Depth=2
	.loc	1 111 33                        ; array_underflow_gcc.c:111:33
	ldr	w8, [sp, #24]
	.loc	1 111 40                        ; array_underflow_gcc.c:111:40
	subs	w8, w8, #2
	cset	w8, le
	.loc	1 111 46                        ; array_underflow_gcc.c:111:46
	tbnz	w8, #0, LBB6_11
	b	LBB6_9
LBB6_9:                                 ;   in Loop: Header=BB6_5 Depth=2
	.loc	1 111 50                        ; array_underflow_gcc.c:111:50
	ldr	w8, [sp, #24]
	.loc	1 111 57                        ; array_underflow_gcc.c:111:57
	subs	w8, w8, #3
	cset	w8, ne
	.loc	1 111 62                        ; array_underflow_gcc.c:111:62
	tbnz	w8, #0, LBB6_12
	b	LBB6_10
LBB6_10:                                ;   in Loop: Header=BB6_5 Depth=2
	.loc	1 111 65                        ; array_underflow_gcc.c:111:65
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, eq
Ltmp34:
	.loc	1 111 17                        ; array_underflow_gcc.c:111:17
	tbnz	w8, #0, LBB6_12
	b	LBB6_11
LBB6_11:                                ;   in Loop: Header=BB6_3 Depth=1
Ltmp35:
	.loc	1 113 17 is_stmt 1              ; array_underflow_gcc.c:113:17
	b	LBB6_13
Ltmp36:
LBB6_12:                                ;   in Loop: Header=BB6_5 Depth=2
	.loc	1 101 9                         ; array_underflow_gcc.c:101:9
	b	LBB6_5
LBB6_13:                                ;   in Loop: Header=BB6_3 Depth=1
	.loc	1 117 17                        ; array_underflow_gcc.c:117:17
	ldr	w8, [sp, #24]
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	.loc	1 117 9 is_stmt 0               ; array_underflow_gcc.c:117:9
	subs	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB6_16
	b	LBB6_14
LBB6_14:                                ;   in Loop: Header=BB6_3 Depth=1
	.loc	1 0 9                           ; array_underflow_gcc.c:0:9
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	.loc	1 117 9                         ; array_underflow_gcc.c:117:9
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB6_17
	b	LBB6_15
LBB6_15:                                ;   in Loop: Header=BB6_3 Depth=1
	.loc	1 0 9                           ; array_underflow_gcc.c:0:9
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	.loc	1 117 9                         ; array_underflow_gcc.c:117:9
	subs	w8, w8, #3
	cset	w8, eq
	tbnz	w8, #0, LBB6_18
	b	LBB6_19
LBB6_16:                                ;   in Loop: Header=BB6_3 Depth=1
Ltmp37:
	.loc	1 120 23 is_stmt 1              ; array_underflow_gcc.c:120:23
	ldr	x0, [sp, #32]
	.loc	1 120 13 is_stmt 0              ; array_underflow_gcc.c:120:13
	bl	_edit_name
	.loc	1 121 13 is_stmt 1              ; array_underflow_gcc.c:121:13
	b	LBB6_19
LBB6_17:                                ;   in Loop: Header=BB6_3 Depth=1
	.loc	1 123 24                        ; array_underflow_gcc.c:123:24
	ldr	x0, [sp, #32]
	.loc	1 123 13 is_stmt 0              ; array_underflow_gcc.c:123:13
	bl	_edit_title
	.loc	1 124 13 is_stmt 1              ; array_underflow_gcc.c:124:13
	b	LBB6_19
LBB6_18:                                ;   in Loop: Header=BB6_3 Depth=1
	.loc	1 126 25                        ; array_underflow_gcc.c:126:25
	ldr	x0, [sp, #32]
	.loc	1 126 13 is_stmt 0              ; array_underflow_gcc.c:126:13
	bl	_edit_salary
	.loc	1 127 13 is_stmt 1              ; array_underflow_gcc.c:127:13
	b	LBB6_19
Ltmp38:
LBB6_19:                                ;   in Loop: Header=BB6_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; array_underflow_gcc.c:0:13
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	.loc	1 130 9 is_stmt 1               ; array_underflow_gcc.c:130:9
	bl	_printf
	.loc	1 131 35                        ; array_underflow_gcc.c:131:35
	ldr	x8, [sp, #32]
	.loc	1 131 9 is_stmt 0               ; array_underflow_gcc.c:131:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	.loc	1 132 35 is_stmt 1              ; array_underflow_gcc.c:132:35
	ldr	x8, [sp, #32]
	.loc	1 132 40 is_stmt 0              ; array_underflow_gcc.c:132:40
	add	x8, x8, #36
	.loc	1 132 9                         ; array_underflow_gcc.c:132:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	.loc	1 133 35 is_stmt 1              ; array_underflow_gcc.c:133:35
	ldr	x8, [sp, #32]
	.loc	1 133 40 is_stmt 0              ; array_underflow_gcc.c:133:40
	ldr	w9, [x8, #32]
                                        ; implicit-def: $x8
	mov	x8, x9
	.loc	1 133 9                         ; array_underflow_gcc.c:133:9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	.loc	1 135 48 is_stmt 1              ; array_underflow_gcc.c:135:48
	ldr	w8, [sp, #28]
                                        ; implicit-def: $x10
	mov	x10, x8
	.loc	1 135 66 is_stmt 0              ; array_underflow_gcc.c:135:66
	ldr	w9, [sp, #28]
                                        ; implicit-def: $x8
	mov	x8, x9
	.loc	1 135 9                         ; array_underflow_gcc.c:135:9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	.loc	1 137 9 is_stmt 1               ; array_underflow_gcc.c:137:9
	bl	_printf
	.loc	1 138 19                        ; array_underflow_gcc.c:138:19
	bl	_next_int
	.loc	1 138 17 is_stmt 0              ; array_underflow_gcc.c:138:17
	stur	w0, [x29, #-20]
Ltmp39:
	.loc	1 79 5 is_stmt 1                ; array_underflow_gcc.c:79:5
	b	LBB6_3
LBB6_20:
	.loc	1 140 1                         ; array_underflow_gcc.c:140:1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp40:
Lfunc_end6:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin7:
	.loc	1 143 0                         ; array_underflow_gcc.c:143:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x28, x27, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	mov	w8, #0
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	str	wzr, [sp, #40]
	str	w0, [sp, #36]
	str	x1, [sp, #24]
	add	x0, sp, #44
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x1, l___const.main.employees@PAGE
	add	x1, x1, l___const.main.employees@PAGEOFF
	mov	x2, #204
Ltmp41:
	.loc	1 145 12 prologue_end           ; array_underflow_gcc.c:145:12
	bl	_memcpy
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	w0, #1
	.loc	1 149 5                         ; array_underflow_gcc.c:149:5
	bl	_edit_employees
	.loc	1 151 5                         ; array_underflow_gcc.c:151:5
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	bl	___stack_chk_fail
LBB7_2:
	.loc	1 0 5 is_stmt 0                 ; array_underflow_gcc.c:0:5
	mov	w0, #0
	.loc	1 151 5                         ; array_underflow_gcc.c:151:5
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
Ltmp42:
Lfunc_end7:
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d"

.zerofill __DATA,__bss,_next_line.buffer,1024,0 ; @next_line.buffer
l_.str.1:                               ; @.str.1
	.asciz	"Enter the new name: "

l_.str.2:                               ; @.str.2
	.asciz	"Enter the new title: "

l_.str.3:                               ; @.str.3
	.asciz	"Enter the new salary: "

l_.str.4:                               ; @.str.4
	.asciz	"Enter number of employee to edit (or 999 to exit): "

l_.str.5:                               ; @.str.5
	.asciz	"Current employee: \n"

l_.str.6:                               ; @.str.6
	.asciz	"   Name:   %s\n"

l_.str.7:                               ; @.str.7
	.asciz	"   Title:  %s\n"

l_.str.8:                               ; @.str.8
	.asciz	"   Salary: %d\n"

l_.str.9:                               ; @.str.9
	.asciz	"What do you want to edit?\n"

l_.str.10:                              ; @.str.10
	.asciz	"   (1) Name\n"

l_.str.11:                              ; @.str.11
	.asciz	"   (2) Title\n"

l_.str.12:                              ; @.str.12
	.asciz	"   (3) Salary\n"

l_.str.13:                              ; @.str.13
	.asciz	"Updated employee: \n"

l_.str.14:                              ; @.str.14
	.asciz	"Can edit salary: %d (0x%x)\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.employees
l___const.main.employees:
	.asciz	"George Washington\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	43615                           ; 0xaa5f
	.asciz	"First President\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"John Adams\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	55134                           ; 0xd75e
	.asciz	"Second President\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Thomas Jefferson\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	61143                           ; 0xeed7
	.asciz	"Third President\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	5                               ; DW_FORM_data2
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x429 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	47                              ; DW_AT_name
	.long	69                              ; DW_AT_LLVM_sysroot
	.long	121                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	132                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end7-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x11 DW_TAG_variable
	.long	67                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str
	.byte	3                               ; Abbrev [3] 0x43:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x48:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	3                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x4f:0x7 DW_TAG_base_type
	.long	205                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x56:0x7 DW_TAG_base_type
	.long	210                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	7                               ; Abbrev [7] 0x5d:0x55 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset4, Lfunc_end2-Lfunc_begin2     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	258                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	8                               ; Abbrev [8] 0x72:0x15 DW_TAG_variable
	.long	231                             ; DW_AT_name
	.long	178                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	39                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	_next_line.buffer
	.byte	9                               ; Abbrev [9] 0x87:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	342                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	984                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x95:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	116
	.long	338                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0xa3:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	349                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xb2:0xd DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xb7:0x7 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.short	1024                            ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xbf:0x11 DW_TAG_variable
	.long	208                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.1
	.byte	3                               ; Abbrev [3] 0xd0:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xd5:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	21                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xdc:0x11 DW_TAG_variable
	.long	237                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.2
	.byte	3                               ; Abbrev [3] 0xed:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xf2:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	22                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xf9:0x11 DW_TAG_variable
	.long	266                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.3
	.byte	3                               ; Abbrev [3] 0x10a:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x10f:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	23                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x116:0x11 DW_TAG_variable
	.long	295                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	77                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.4
	.byte	3                               ; Abbrev [3] 0x127:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x12c:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	52                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x133:0x11 DW_TAG_variable
	.long	324                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	83                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.5
	.byte	3                               ; Abbrev [3] 0x144:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x149:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	20                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x150:0x11 DW_TAG_variable
	.long	353                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	84                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.6
	.byte	3                               ; Abbrev [3] 0x161:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x166:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	15                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x16d:0x11 DW_TAG_variable
	.long	353                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	85                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.7
	.byte	2                               ; Abbrev [2] 0x17e:0x11 DW_TAG_variable
	.long	353                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	86                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.8
	.byte	2                               ; Abbrev [2] 0x18f:0x11 DW_TAG_variable
	.long	416                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.9
	.byte	3                               ; Abbrev [3] 0x1a0:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1a5:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	27                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1ac:0x11 DW_TAG_variable
	.long	445                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	104                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.10
	.byte	3                               ; Abbrev [3] 0x1bd:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1c2:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	13                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1c9:0x11 DW_TAG_variable
	.long	474                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	105                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.11
	.byte	3                               ; Abbrev [3] 0x1da:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1df:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	14                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1e6:0x11 DW_TAG_variable
	.long	353                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	108                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.12
	.byte	2                               ; Abbrev [2] 0x1f7:0x11 DW_TAG_variable
	.long	324                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	130                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.13
	.byte	2                               ; Abbrev [2] 0x208:0x11 DW_TAG_variable
	.long	537                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.14
	.byte	3                               ; Abbrev [3] 0x219:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x21e:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	28                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x225:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset5, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset5
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	238                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	10                              ; Abbrev [10] 0x23e:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	325                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x24d:0x5c DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset6, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset6
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
	.long	247                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x262:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	24
	.long	329                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.long	984                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x270:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	16
	.long	334                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.long	984                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x27e:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	12
	.long	338                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x28c:0x1c DW_TAG_lexical_block
	.quad	Ltmp3                           ; DW_AT_low_pc
.set Lset7, Ltmp12-Ltmp3                ; DW_AT_high_pc
	.long	Lset7
	.byte	10                              ; Abbrev [10] 0x299:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	8
	.long	340                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x2a9:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset8, Lfunc_end3-Lfunc_begin3     ; DW_AT_high_pc
	.long	Lset8
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	268                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x2be:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	354                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	989                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x2cd:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset9, Lfunc_end4-Lfunc_begin4     ; DW_AT_high_pc
	.long	Lset9
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	278                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x2e2:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	354                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	989                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x2f1:0x24 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset10, Lfunc_end5-Lfunc_begin5    ; DW_AT_high_pc
	.long	Lset10
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	289                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x306:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	354                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
	.long	989                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x315:0x78 DW_TAG_subprogram
	.quad	Lfunc_begin6                    ; DW_AT_low_pc
.set Lset11, Lfunc_end6-Lfunc_begin6    ; DW_AT_high_pc
	.long	Lset11
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	301                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x32a:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	124
	.long	385                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x338:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	120
	.long	401                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x346:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	112
	.long	417                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	989                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x354:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	108
	.long	427                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x362:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	32
	.long	354                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	989                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x370:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	28
	.long	435                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x37e:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	452                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	74                              ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x38d:0x44 DW_TAG_subprogram
	.quad	Lfunc_begin7                    ; DW_AT_low_pc
.set Lset12, Lfunc_end7-Lfunc_begin7    ; DW_AT_high_pc
	.long	Lset12
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	316                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	142                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	977                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	9                               ; Abbrev [9] 0x3a6:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	36
	.long	459                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	142                             ; DW_AT_decl_line
	.long	977                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x3b4:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	464                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	142                             ; DW_AT_decl_line
	.long	1058                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x3c2:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	44
	.long	417                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	1063                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3d1:0x7 DW_TAG_base_type
	.long	321                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	16                              ; Abbrev [16] 0x3d8:0x5 DW_TAG_pointer_type
	.long	79                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x3dd:0x5 DW_TAG_pointer_type
	.long	994                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x3e2:0xb DW_TAG_typedef
	.long	1005                            ; DW_AT_type
	.long	358                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	18                              ; Abbrev [18] 0x3ed:0x29 DW_TAG_structure_type
	.byte	68                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	4                               ; DW_AT_decl_line
	.byte	19                              ; Abbrev [19] 0x3f1:0xc DW_TAG_member
	.long	367                             ; DW_AT_name
	.long	1046                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	19                              ; Abbrev [19] 0x3fd:0xc DW_TAG_member
	.long	372                             ; DW_AT_name
	.long	977                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	32                              ; DW_AT_data_member_location
	.byte	19                              ; Abbrev [19] 0x409:0xc DW_TAG_member
	.long	379                             ; DW_AT_name
	.long	1046                            ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	36                              ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x416:0xc DW_TAG_array_type
	.long	79                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x41b:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x422:0x5 DW_TAG_pointer_type
	.long	984                             ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x427:0xc DW_TAG_array_type
	.long	994                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x42c:0x6 DW_TAG_subrange_type
	.long	86                              ; DW_AT_type
	.byte	3                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.0.40.1)" ; string offset=0
	.asciz	"array_underflow_gcc.c"         ; string offset=47
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=69
	.asciz	"MacOSX.sdk"                    ; string offset=121
	.asciz	"/Volumes/dfs/Computing-Private/KURMASZ/dive_in_buffer_overflow/problem_2" ; string offset=132
	.asciz	"char"                          ; string offset=205
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=210
	.byte	0                               ; string offset=230
	.asciz	"buffer"                        ; string offset=231
	.asciz	"next_int"                      ; string offset=238
	.asciz	"my_strncpy"                    ; string offset=247
	.asciz	"next_line"                     ; string offset=258
	.asciz	"edit_name"                     ; string offset=268
	.asciz	"edit_title"                    ; string offset=278
	.asciz	"edit_salary"                   ; string offset=289
	.asciz	"edit_employees"                ; string offset=301
	.asciz	"main"                          ; string offset=316
	.asciz	"int"                           ; string offset=321
	.asciz	"ipt"                           ; string offset=325
	.asciz	"dest"                          ; string offset=329
	.asciz	"src"                           ; string offset=334
	.asciz	"n"                             ; string offset=338
	.asciz	"i"                             ; string offset=340
	.asciz	"target"                        ; string offset=342
	.asciz	"last"                          ; string offset=349
	.asciz	"emp"                           ; string offset=354
	.asciz	"Employee"                      ; string offset=358
	.asciz	"name"                          ; string offset=367
	.asciz	"salary"                        ; string offset=372
	.asciz	"title"                         ; string offset=379
	.asciz	"can_edit_record"               ; string offset=385
	.asciz	"can_edit_salary"               ; string offset=401
	.asciz	"employees"                     ; string offset=417
	.asciz	"emp_num"                       ; string offset=427
	.asciz	"both_permissions"              ; string offset=435
	.asciz	"choice"                        ; string offset=452
	.asciz	"argc"                          ; string offset=459
	.asciz	"argv"                          ; string offset=464
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	10                              ; Header Bucket Count
	.long	10                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	3                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	4                               ; Bucket 4
	.long	5                               ; Bucket 5
	.long	8                               ; Bucket 6
	.long	9                               ; Bucket 7
	.long	-1                              ; Bucket 8
	.long	-1                              ; Bucket 9
	.long	-52307156                       ; Hash in Bucket 0
	.long	5381                            ; Hash in Bucket 1
	.long	-185109665                      ; Hash in Bucket 1
	.long	-1775057834                     ; Hash in Bucket 2
	.long	2131412494                      ; Hash in Bucket 4
	.long	1421456925                      ; Hash in Bucket 5
	.long	1617237835                      ; Hash in Bucket 5
	.long	-652562261                      ; Hash in Bucket 5
	.long	2090499946                      ; Hash in Bucket 6
	.long	-1371513699                     ; Hash in Bucket 7
.set Lset13, LNames9-Lnames_begin       ; Offset in Bucket 0
	.long	Lset13
.set Lset14, LNames0-Lnames_begin       ; Offset in Bucket 1
	.long	Lset14
.set Lset15, LNames7-Lnames_begin       ; Offset in Bucket 1
	.long	Lset15
.set Lset16, LNames1-Lnames_begin       ; Offset in Bucket 2
	.long	Lset16
.set Lset17, LNames6-Lnames_begin       ; Offset in Bucket 4
	.long	Lset17
.set Lset18, LNames5-Lnames_begin       ; Offset in Bucket 5
	.long	Lset18
.set Lset19, LNames3-Lnames_begin       ; Offset in Bucket 5
	.long	Lset19
.set Lset20, LNames4-Lnames_begin       ; Offset in Bucket 5
	.long	Lset20
.set Lset21, LNames2-Lnames_begin       ; Offset in Bucket 6
	.long	Lset21
.set Lset22, LNames8-Lnames_begin       ; Offset in Bucket 7
	.long	Lset22
LNames9:
	.long	278                             ; edit_title
	.long	1                               ; Num DIEs
	.long	717
	.long	0
LNames0:
	.long	230                             ; 
	.long	15                              ; Num DIEs
	.long	50
	.long	191
	.long	220
	.long	249
	.long	278
	.long	307
	.long	336
	.long	365
	.long	382
	.long	399
	.long	428
	.long	457
	.long	486
	.long	503
	.long	520
	.long	0
LNames7:
	.long	231                             ; buffer
	.long	1                               ; Num DIEs
	.long	114
	.long	0
LNames1:
	.long	289                             ; edit_salary
	.long	1                               ; Num DIEs
	.long	753
	.long	0
LNames6:
	.long	238                             ; next_int
	.long	1                               ; Num DIEs
	.long	549
	.long	0
LNames5:
	.long	247                             ; my_strncpy
	.long	1                               ; Num DIEs
	.long	589
	.long	0
LNames3:
	.long	258                             ; next_line
	.long	1                               ; Num DIEs
	.long	93
	.long	0
LNames4:
	.long	268                             ; edit_name
	.long	1                               ; Num DIEs
	.long	681
	.long	0
LNames2:
	.long	316                             ; main
	.long	1                               ; Num DIEs
	.long	909
	.long	0
LNames8:
	.long	301                             ; edit_employees
	.long	1                               ; Num DIEs
	.long	789
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	4                               ; Header Bucket Count
	.long	4                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	2                               ; Bucket 3
	.long	193495088                       ; Hash in Bucket 0
	.long	-48196635                       ; Hash in Bucket 1
	.long	2090147939                      ; Hash in Bucket 3
	.long	-594775205                      ; Hash in Bucket 3
.set Lset23, Ltypes2-Ltypes_begin       ; Offset in Bucket 0
	.long	Lset23
.set Lset24, Ltypes0-Ltypes_begin       ; Offset in Bucket 1
	.long	Lset24
.set Lset25, Ltypes3-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset25
.set Lset26, Ltypes1-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset26
Ltypes2:
	.long	321                             ; int
	.long	1                               ; Num DIEs
	.long	977
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	358                             ; Employee
	.long	1                               ; Num DIEs
	.long	994
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	205                             ; char
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	210                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
