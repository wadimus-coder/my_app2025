	.file	"app.c"
	.text
Ltext0:
	.comm	_ty, 4, 2
	.comm	_tx, 4, 2
	.comm	_py, 4, 2
	.comm	_px, 4, 2
	.globl	_p_gold
	.bss
	.align 4
_p_gold:
	.space 4
	.globl	_t_placed
_t_placed:
	.space 1
	.globl	_p_placed
_p_placed:
	.space 1
	.globl	_r_placed
	.align 4
_r_placed:
	.space 4
	.section .rdata,"dr"
LC0:
	.ascii "Gold : %d\0"
	.text
	.globl	_dungeon
	.def	_dungeon;	.scl	2;	.type	32;	.endef
_dungeon:
LFB15:
	.file 1 "app.c"
	.loc 1 20 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	.loc 1 20 0
	movl	16(%ebp), %ebx
	.loc 1 19 0
	leal	-1(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 23 0
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	.loc 1 25 0
	movl	_r_placed, %eax
	testl	%eax, %eax
	jne	L2
LBB2:
	.loc 1 32 0
	call	_rand
	movl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$7, %eax
	movl	%eax, -52(%ebp)
LBB3:
	.loc 1 35 0
	movl	$0, -16(%ebp)
	jmp	L3
L9:
LBB4:
	.loc 1 37 0
	movl	$0, -20(%ebp)
	jmp	L4
L8:
	.loc 1 40 0
	cmpl	$0, -16(%ebp)
	je	L5
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-16(%ebp), %eax
	je	L5
	.loc 1 40 0 discriminator 2
	cmpl	$0, -20(%ebp)
	je	L5
	.loc 1 40 0 discriminator 3
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	L5
	.loc 1 40 0 discriminator 4
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L6
L5:
	.loc 1 42 0 is_stmt 1
	movl	%ebx, %edx
	movl	-16(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movb	$37, (%eax)
	jmp	L7
L6:
	.loc 1 45 0
	movl	%ebx, %edx
	movl	-16(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movb	$35, (%eax)
L7:
	.loc 1 37 0 discriminator 2
	addl	$1, -20(%ebp)
L4:
	.loc 1 37 0 is_stmt 0 discriminator 1
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L8
LBE4:
	.loc 1 35 0 is_stmt 1 discriminator 2
	addl	$1, -16(%ebp)
L3:
	.loc 1 35 0 is_stmt 0 discriminator 1
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L9
L17:
LBE3:
	.loc 1 54 0 is_stmt 1
	movb	$0, -9(%ebp)
	.loc 1 56 0
	call	_rand
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	-3(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -56(%ebp)
	.loc 1 57 0
	call	_rand
	movl	%eax, %edx
	movl	16(%ebp), %eax
	leal	-3(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -60(%ebp)
	.loc 1 60 0
	call	_rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	5(%edx), %eax
	movl	%eax, -64(%ebp)
	.loc 1 61 0
	call	_rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	8(%edx), %eax
	movl	%eax, -68(%ebp)
LBB5:
	.loc 1 64 0
	movl	-56(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	L10
L16:
LBB6:
	.loc 1 66 0
	movl	-60(%ebp), %eax
	movl	%eax, -28(%ebp)
	jmp	L11
L15:
	.loc 1 68 0
	movl	%ebx, %edx
	movl	-24(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	L12
	.loc 1 68 0 is_stmt 0 discriminator 1
	movl	%ebx, %edx
	movl	-24(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L12
	.loc 1 69 0 is_stmt 1 discriminator 2
	movl	-24(%ebp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	.loc 1 68 0 discriminator 2
	cmpb	$32, %al
	je	L12
	.loc 1 69 0
	movl	-24(%ebp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L12
	.loc 1 70 0 discriminator 1
	movl	%ebx, %edx
	movl	-24(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	$2, %eax
	movzbl	(%edx,%eax), %eax
	.loc 1 69 0 discriminator 1
	cmpb	$32, %al
	je	L12
	.loc 1 70 0
	movl	%ebx, %edx
	movl	-24(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	subl	$2, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L13
L12:
	.loc 1 73 0
	movb	$1, -9(%ebp)
	.loc 1 74 0
	movl	-56(%ebp), %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%ebp)
	.loc 1 75 0
	jmp	L14
L13:
	.loc 1 66 0 discriminator 2
	addl	$1, -28(%ebp)
L11:
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	-60(%ebp), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	cmpl	-28(%ebp), %eax
	jge	L15
L14:
LBE6:
	.loc 1 64 0 is_stmt 1 discriminator 2
	addl	$1, -24(%ebp)
L10:
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	-56(%ebp), %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	cmpl	-24(%ebp), %eax
	jge	L16
LBE5:
	.loc 1 81 0 is_stmt 1
	cmpb	$0, -9(%ebp)
	jne	L17
LBB7:
	.loc 1 84 0
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
	jmp	L18
L23:
LBB8:
	.loc 1 86 0
	movl	-60(%ebp), %eax
	movl	%eax, -36(%ebp)
	jmp	L19
L22:
	.loc 1 88 0
	movl	%ebx, %edx
	movl	-32(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L20
	.loc 1 90 0
	movl	-56(%ebp), %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 91 0
	jmp	L21
L20:
	.loc 1 95 0 discriminator 2
	movl	%ebx, %edx
	movl	-32(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	.loc 1 86 0 discriminator 2
	addl	$1, -36(%ebp)
L19:
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-60(%ebp), %edx
	movl	-68(%ebp), %eax
	addl	%edx, %eax
	cmpl	-36(%ebp), %eax
	jge	L22
L21:
LBE8:
	.loc 1 84 0 is_stmt 1 discriminator 2
	addl	$1, -32(%ebp)
L18:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	-56(%ebp), %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	cmpl	-32(%ebp), %eax
	jge	L23
LBE7:
	.loc 1 98 0 is_stmt 1
	movl	_r_placed, %eax
	addl	$1, %eax
	movl	%eax, _r_placed
	.loc 1 101 0
	movl	_r_placed, %eax
	cmpl	-52(%ebp), %eax
	jl	L17
L2:
LBE2:
LBB9:
	.loc 1 105 0
	movl	$0, -40(%ebp)
	jmp	L24
L31:
LBB10:
	.loc 1 107 0
	movl	$0, -44(%ebp)
	jmp	L25
L30:
	.loc 1 110 0
	movl	-40(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L26
	.loc 1 111 0
	movl	$32, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L27
L26:
	.loc 1 112 0
	movl	%ebx, %edx
	movl	-40(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L28
	.loc 1 113 0
	movl	$37, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L27
L28:
	.loc 1 114 0
	movl	%ebx, %edx
	movl	-40(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L29
	.loc 1 115 0
	movl	$32, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L27
L29:
	.loc 1 118 0
	movl	$35, 8(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
L27:
	.loc 1 107 0 discriminator 2
	addl	$1, -44(%ebp)
L25:
	.loc 1 107 0 is_stmt 0 discriminator 1
	movl	-44(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L30
LBE10:
	.loc 1 105 0 is_stmt 1 discriminator 2
	addl	$1, -40(%ebp)
L24:
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	-40(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L31
LBE9:
	.loc 1 122 0 is_stmt 1
	cmpl	$259, 8(%ebp)
	jne	L32
	.loc 1 122 0 discriminator 1
	movl	_py, %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L32
	.loc 1 123 0
	movl	_py, %eax
	subl	$1, %eax
	movl	%eax, _py
	jmp	L33
L32:
	.loc 1 124 0
	cmpl	$258, 8(%ebp)
	jne	L34
	.loc 1 124 0 discriminator 1
	movl	_py, %eax
	addl	$1, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L34
	.loc 1 125 0
	movl	_py, %eax
	addl	$1, %eax
	movl	%eax, _py
	jmp	L33
L34:
	.loc 1 126 0
	cmpl	$260, 8(%ebp)
	jne	L35
	.loc 1 126 0 discriminator 1
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	subl	$1, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L35
	.loc 1 127 0
	movl	_px, %eax
	subl	$1, %eax
	movl	%eax, _px
	jmp	L33
L35:
	.loc 1 128 0
	cmpl	$261, 8(%ebp)
	jne	L33
	.loc 1 128 0 discriminator 1
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	addl	$1, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L33
	.loc 1 129 0
	movl	_px, %eax
	addl	$1, %eax
	movl	%eax, _px
L33:
	.loc 1 131 0
	movzbl	_t_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L36
L37:
	.loc 1 134 0 discriminator 3
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, %eax
	movl	%eax, _ty
	.loc 1 135 0 discriminator 3
	call	_rand
	cltd
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, _tx
	.loc 1 138 0 discriminator 3
	movl	%ebx, %edx
	movl	_ty, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_tx, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$35, %al
	je	L37
	.loc 1 138 0 is_stmt 0 discriminator 2
	movl	%ebx, %edx
	movl	_ty, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_tx, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$37, %al
	je	L37
L36:
	.loc 1 139 0 is_stmt 1
	movb	$1, _t_placed
	.loc 1 141 0
	movzbl	_p_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L38
L39:
	.loc 1 144 0 discriminator 3
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, %eax
	movl	%eax, _py
	.loc 1 145 0 discriminator 3
	call	_rand
	cltd
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, _px
	.loc 1 148 0 discriminator 3
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$35, %al
	je	L39
	.loc 1 148 0 is_stmt 0 discriminator 2
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$37, %al
	je	L39
L38:
	.loc 1 149 0 is_stmt 1
	movb	$1, _p_placed
	.loc 1 152 0
	movl	_py, %edx
	movl	_ty, %eax
	cmpl	%eax, %edx
	jne	L40
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	_px, %edx
	movl	_tx, %eax
	cmpl	%eax, %edx
	jne	L40
	.loc 1 154 0 is_stmt 1
	movb	$0, _t_placed
	.loc 1 157 0
	call	_rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	_p_gold, %eax
	addl	%edx, %eax
	movl	%eax, _p_gold
L40:
	.loc 1 160 0
	movl	_tx, %edx
	movl	_ty, %eax
	movl	$116, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 161 0
	movl	_px, %edx
	movl	_py, %eax
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 162 0
	movl	_p_gold, %eax
	movl	%eax, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvprintw
	.loc 1 163 0
	movl	$0, %eax
	.loc 1 164 0
	addl	$84, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB16:
	.loc 1 167 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$72, %esp
	.loc 1 167 0
	call	___main
LVL0:
	movl	%esp, %eax
	movl	%eax, -64(%ebp)
	.loc 1 168 0
	movl	$0, -28(%ebp)
	.loc 1 173 0
	call	_initscr
	.loc 1 174 0
	movl	_stdscr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_keypad
	.loc 1 175 0
	call	_noecho
	.loc 1 176 0
	movl	$0, (%esp)
	call	_curs_set
	.loc 1 177 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxy
	movl	%eax, -32(%ebp)
	.loc 1 177 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxx
	movl	%eax, -36(%ebp)
	.loc 1 178 0
	movl	-36(%ebp), %eax
	movl	%eax, %esi
	movl	-32(%ebp), %edi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	leal	-1(%edi), %eax
	movl	%eax, -44(%ebp)
	movl	%esi, -60(%ebp)
	movl	%esi, %eax
	movl	$0, %edx
	movl	%edi, %ecx
	movl	%ecx, %ebx
	movl	$0, %esi
	movl	%edx, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -68(%ebp)
	movl	%esi, %ecx
	imull	%eax, %ecx
	addl	-68(%ebp), %ecx
	mull	%ebx
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	-60(%ebp), %eax
	movl	$0, %edx
	movl	%edi, %ecx
	movl	%ecx, %ebx
	movl	$0, %esi
	movl	%edx, %ecx
	imull	%ebx, %ecx
	movl	%ecx, -68(%ebp)
	movl	%esi, %ecx
	imull	%eax, %ecx
	addl	-68(%ebp), %ecx
	mull	%ebx
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	-60(%ebp), %edx
	movl	%edi, %eax
	imull	%edx, %eax
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %esi
	movl	$0, %edx
	divl	%esi
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	16(%esp), %eax
	addl	$0, %eax
	movl	%eax, -48(%ebp)
L43:
	.loc 1 181 0 discriminator 1
	movl	-48(%ebp), %eax
	movl	-36(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	-32(%ebp), %edx
	subl	$1, %edx
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_dungeon
	.loc 1 187 0 discriminator 1
	movl	_stdscr, %eax
	.loc 1 187 0 discriminator 1
	movl	%eax, (%esp)
	call	_wgetch
	movl	%eax, -28(%ebp)
	cmpl	$27, -28(%ebp)
	jne	L43
	.loc 1 189 0
	call	_endwin
	.loc 1 191 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 192 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 194 0
	movl	$0, %eax
	movl	-64(%ebp), %esp
	.loc 1 195 0
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
Letext0:
	.file 2 "c:/mingw/include/stdio.h"
	.file 3 "c:/mingw/include/curses.h"
	.file 4 "c:/mingw/include/stdlib.h"
	.file 5 "c:/mingw/include/time.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xb10
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -mtune=generic -march=i586 -g3\0"
	.byte	0xc
	.ascii "app.c\0"
	.ascii "C:\\AglasC-KURS\\019-prototyping-rooms\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x2
	.byte	0xd2
	.long	0x15d
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0xd4
	.long	0x15d
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0xd5
	.long	0x7d
	.byte	0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0xd6
	.long	0x15d
	.byte	0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0xd7
	.long	0x7d
	.byte	0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0xd8
	.long	0x7d
	.byte	0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0xd9
	.long	0x7d
	.byte	0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0xda
	.long	0x7d
	.byte	0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0xdb
	.long	0x15d
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x75
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0xdc
	.long	0xd6
	.uleb128 0x7
	.long	0x163
	.long	0x17a
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "_iob\0"
	.byte	0x2
	.byte	0xef
	.long	0x16f
	.uleb128 0x6
	.ascii "bool\0"
	.byte	0x3
	.byte	0x55
	.long	0x192
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x6
	.ascii "chtype\0"
	.byte	0x3
	.byte	0x5b
	.long	0x1b1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xa
	.byte	0x14
	.byte	0x3
	.byte	0x6d
	.long	0x202
	.uleb128 0x4
	.ascii "x\0"
	.byte	0x3
	.byte	0x6f
	.long	0x7d
	.byte	0
	.uleb128 0x4
	.ascii "y\0"
	.byte	0x3
	.byte	0x70
	.long	0x7d
	.byte	0x4
	.uleb128 0x4
	.ascii "button\0"
	.byte	0x3
	.byte	0x71
	.long	0x202
	.byte	0x8
	.uleb128 0x4
	.ascii "changes\0"
	.byte	0x3
	.byte	0x72
	.long	0x7d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x21e
	.long	0x212
	.uleb128 0xb
	.long	0x212
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x6
	.ascii "MOUSE_STATUS\0"
	.byte	0x3
	.byte	0x73
	.long	0x1c6
	.uleb128 0x3
	.ascii "_win\0"
	.byte	0x50
	.byte	0x3
	.byte	0xec
	.long	0x3cd
	.uleb128 0x4
	.ascii "_cury\0"
	.byte	0x3
	.byte	0xee
	.long	0x7d
	.byte	0
	.uleb128 0x4
	.ascii "_curx\0"
	.byte	0x3
	.byte	0xef
	.long	0x7d
	.byte	0x4
	.uleb128 0x4
	.ascii "_maxy\0"
	.byte	0x3
	.byte	0xf0
	.long	0x7d
	.byte	0x8
	.uleb128 0x4
	.ascii "_maxx\0"
	.byte	0x3
	.byte	0xf1
	.long	0x7d
	.byte	0xc
	.uleb128 0x4
	.ascii "_begy\0"
	.byte	0x3
	.byte	0xf2
	.long	0x7d
	.byte	0x10
	.uleb128 0x4
	.ascii "_begx\0"
	.byte	0x3
	.byte	0xf3
	.long	0x7d
	.byte	0x14
	.uleb128 0x4
	.ascii "_flags\0"
	.byte	0x3
	.byte	0xf4
	.long	0x7d
	.byte	0x18
	.uleb128 0x4
	.ascii "_attrs\0"
	.byte	0x3
	.byte	0xf5
	.long	0x1a3
	.byte	0x1c
	.uleb128 0x4
	.ascii "_bkgd\0"
	.byte	0x3
	.byte	0xf6
	.long	0x1a3
	.byte	0x20
	.uleb128 0x4
	.ascii "_clear\0"
	.byte	0x3
	.byte	0xf7
	.long	0x186
	.byte	0x24
	.uleb128 0x4
	.ascii "_leaveit\0"
	.byte	0x3
	.byte	0xf8
	.long	0x186
	.byte	0x25
	.uleb128 0x4
	.ascii "_scroll\0"
	.byte	0x3
	.byte	0xf9
	.long	0x186
	.byte	0x26
	.uleb128 0x4
	.ascii "_nodelay\0"
	.byte	0x3
	.byte	0xfa
	.long	0x186
	.byte	0x27
	.uleb128 0x4
	.ascii "_immed\0"
	.byte	0x3
	.byte	0xfb
	.long	0x186
	.byte	0x28
	.uleb128 0x4
	.ascii "_sync\0"
	.byte	0x3
	.byte	0xfc
	.long	0x186
	.byte	0x29
	.uleb128 0x4
	.ascii "_use_keypad\0"
	.byte	0x3
	.byte	0xfd
	.long	0x186
	.byte	0x2a
	.uleb128 0x4
	.ascii "_y\0"
	.byte	0x3
	.byte	0xfe
	.long	0x3cd
	.byte	0x2c
	.uleb128 0x4
	.ascii "_firstch\0"
	.byte	0x3
	.byte	0xff
	.long	0x3d9
	.byte	0x30
	.uleb128 0xc
	.ascii "_lastch\0"
	.byte	0x3
	.word	0x100
	.long	0x3d9
	.byte	0x34
	.uleb128 0xc
	.ascii "_tmarg\0"
	.byte	0x3
	.word	0x101
	.long	0x7d
	.byte	0x38
	.uleb128 0xc
	.ascii "_bmarg\0"
	.byte	0x3
	.word	0x102
	.long	0x7d
	.byte	0x3c
	.uleb128 0xc
	.ascii "_delayms\0"
	.byte	0x3
	.word	0x103
	.long	0x7d
	.byte	0x40
	.uleb128 0xc
	.ascii "_parx\0"
	.byte	0x3
	.word	0x104
	.long	0x7d
	.byte	0x44
	.uleb128 0xc
	.ascii "_pary\0"
	.byte	0x3
	.word	0x104
	.long	0x7d
	.byte	0x48
	.uleb128 0xc
	.ascii "_parent\0"
	.byte	0x3
	.word	0x105
	.long	0x3df
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3d3
	.uleb128 0x5
	.byte	0x4
	.long	0x1a3
	.uleb128 0x5
	.byte	0x4
	.long	0x7d
	.uleb128 0x5
	.byte	0x4
	.long	0x23f
	.uleb128 0xd
	.ascii "WINDOW\0"
	.byte	0x3
	.word	0x106
	.long	0x23f
	.uleb128 0xe
	.byte	0x58
	.byte	0x3
	.word	0x10b
	.long	0x663
	.uleb128 0xc
	.ascii "alive\0"
	.byte	0x3
	.word	0x10d
	.long	0x186
	.byte	0
	.uleb128 0xc
	.ascii "autocr\0"
	.byte	0x3
	.word	0x10e
	.long	0x186
	.byte	0x1
	.uleb128 0xc
	.ascii "cbreak\0"
	.byte	0x3
	.word	0x10f
	.long	0x186
	.byte	0x2
	.uleb128 0xc
	.ascii "echo\0"
	.byte	0x3
	.word	0x110
	.long	0x186
	.byte	0x3
	.uleb128 0xc
	.ascii "raw_inp\0"
	.byte	0x3
	.word	0x111
	.long	0x186
	.byte	0x4
	.uleb128 0xc
	.ascii "raw_out\0"
	.byte	0x3
	.word	0x112
	.long	0x186
	.byte	0x5
	.uleb128 0xc
	.ascii "audible\0"
	.byte	0x3
	.word	0x113
	.long	0x186
	.byte	0x6
	.uleb128 0xc
	.ascii "mono\0"
	.byte	0x3
	.word	0x114
	.long	0x186
	.byte	0x7
	.uleb128 0xc
	.ascii "resized\0"
	.byte	0x3
	.word	0x115
	.long	0x186
	.byte	0x8
	.uleb128 0xc
	.ascii "orig_attr\0"
	.byte	0x3
	.word	0x116
	.long	0x186
	.byte	0x9
	.uleb128 0xc
	.ascii "orig_fore\0"
	.byte	0x3
	.word	0x117
	.long	0x21e
	.byte	0xa
	.uleb128 0xc
	.ascii "orig_back\0"
	.byte	0x3
	.word	0x118
	.long	0x21e
	.byte	0xc
	.uleb128 0xc
	.ascii "cursrow\0"
	.byte	0x3
	.word	0x119
	.long	0x7d
	.byte	0x10
	.uleb128 0xc
	.ascii "curscol\0"
	.byte	0x3
	.word	0x11a
	.long	0x7d
	.byte	0x14
	.uleb128 0xc
	.ascii "visibility\0"
	.byte	0x3
	.word	0x11b
	.long	0x7d
	.byte	0x18
	.uleb128 0xc
	.ascii "orig_cursor\0"
	.byte	0x3
	.word	0x11c
	.long	0x7d
	.byte	0x1c
	.uleb128 0xc
	.ascii "lines\0"
	.byte	0x3
	.word	0x11d
	.long	0x7d
	.byte	0x20
	.uleb128 0xc
	.ascii "cols\0"
	.byte	0x3
	.word	0x11e
	.long	0x7d
	.byte	0x24
	.uleb128 0xc
	.ascii "_trap_mbe\0"
	.byte	0x3
	.word	0x11f
	.long	0x1b1
	.byte	0x28
	.uleb128 0xc
	.ascii "_map_mbe_to_key\0"
	.byte	0x3
	.word	0x120
	.long	0x1b1
	.byte	0x2c
	.uleb128 0xc
	.ascii "mouse_wait\0"
	.byte	0x3
	.word	0x121
	.long	0x7d
	.byte	0x30
	.uleb128 0xc
	.ascii "slklines\0"
	.byte	0x3
	.word	0x124
	.long	0x7d
	.byte	0x34
	.uleb128 0xc
	.ascii "slk_winptr\0"
	.byte	0x3
	.word	0x125
	.long	0x663
	.byte	0x38
	.uleb128 0xc
	.ascii "linesrippedoff\0"
	.byte	0x3
	.word	0x126
	.long	0x7d
	.byte	0x3c
	.uleb128 0xc
	.ascii "linesrippedoffontop\0"
	.byte	0x3
	.word	0x127
	.long	0x7d
	.byte	0x40
	.uleb128 0xc
	.ascii "delaytenths\0"
	.byte	0x3
	.word	0x129
	.long	0x7d
	.byte	0x44
	.uleb128 0xc
	.ascii "_preserve\0"
	.byte	0x3
	.word	0x12b
	.long	0x186
	.byte	0x48
	.uleb128 0xc
	.ascii "_restore\0"
	.byte	0x3
	.word	0x12d
	.long	0x7d
	.byte	0x4c
	.uleb128 0xc
	.ascii "save_key_modifiers\0"
	.byte	0x3
	.word	0x12f
	.long	0x186
	.byte	0x50
	.uleb128 0xc
	.ascii "return_key_modifiers\0"
	.byte	0x3
	.word	0x131
	.long	0x186
	.byte	0x51
	.uleb128 0xc
	.ascii "key_code\0"
	.byte	0x3
	.word	0x133
	.long	0x186
	.byte	0x52
	.uleb128 0xc
	.ascii "line_color\0"
	.byte	0x3
	.word	0x13f
	.long	0x21e
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3e5
	.uleb128 0xd
	.ascii "SCREEN\0"
	.byte	0x3
	.word	0x140
	.long	0x3f4
	.uleb128 0xf
	.ascii "LINES\0"
	.byte	0x3
	.word	0x152
	.long	0x7d
	.uleb128 0xf
	.ascii "COLS\0"
	.byte	0x3
	.word	0x153
	.long	0x7d
	.uleb128 0xf
	.ascii "stdscr\0"
	.byte	0x3
	.word	0x154
	.long	0x663
	.uleb128 0xf
	.ascii "curscr\0"
	.byte	0x3
	.word	0x155
	.long	0x663
	.uleb128 0xf
	.ascii "SP\0"
	.byte	0x3
	.word	0x156
	.long	0x6bc
	.uleb128 0x5
	.byte	0x4
	.long	0x669
	.uleb128 0xf
	.ascii "Mouse_status\0"
	.byte	0x3
	.word	0x157
	.long	0x22b
	.uleb128 0xf
	.ascii "COLORS\0"
	.byte	0x3
	.word	0x158
	.long	0x7d
	.uleb128 0xf
	.ascii "COLOR_PAIRS\0"
	.byte	0x3
	.word	0x159
	.long	0x7d
	.uleb128 0xf
	.ascii "TABSIZE\0"
	.byte	0x3
	.word	0x15a
	.long	0x7d
	.uleb128 0x7
	.long	0x1a3
	.long	0x715
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.ascii "acs_map\0"
	.byte	0x3
	.word	0x15b
	.long	0x70a
	.uleb128 0x7
	.long	0x75
	.long	0x730
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.ascii "ttytype\0"
	.byte	0x3
	.word	0x15c
	.long	0x725
	.uleb128 0x9
	.ascii "_argc\0"
	.byte	0x4
	.byte	0x63
	.long	0x7d
	.uleb128 0x9
	.ascii "_argv\0"
	.byte	0x4
	.byte	0x64
	.long	0x75a
	.uleb128 0x5
	.byte	0x4
	.long	0x15d
	.uleb128 0x9
	.ascii "__mb_cur_max\0"
	.byte	0x4
	.byte	0x8e
	.long	0x7d
	.uleb128 0x9
	.ascii "_sys_nerr\0"
	.byte	0x4
	.byte	0xca
	.long	0x7d
	.uleb128 0x7
	.long	0x15d
	.long	0x790
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "_sys_errlist\0"
	.byte	0x4
	.byte	0xe3
	.long	0x785
	.uleb128 0x9
	.ascii "_osver\0"
	.byte	0x4
	.byte	0xfa
	.long	0x84
	.uleb128 0x9
	.ascii "_winver\0"
	.byte	0x4
	.byte	0xfb
	.long	0x84
	.uleb128 0x9
	.ascii "_winmajor\0"
	.byte	0x4
	.byte	0xfc
	.long	0x84
	.uleb128 0x9
	.ascii "_winminor\0"
	.byte	0x4
	.byte	0xfd
	.long	0x84
	.uleb128 0xf
	.ascii "_fmode\0"
	.byte	0x4
	.word	0x145
	.long	0x7d
	.uleb128 0xf
	.ascii "_daylight\0"
	.byte	0x5
	.word	0x15c
	.long	0x7d
	.uleb128 0xf
	.ascii "_timezone\0"
	.byte	0x5
	.word	0x15d
	.long	0xca
	.uleb128 0x7
	.long	0x15d
	.long	0x826
	.uleb128 0xb
	.long	0x212
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.ascii "_tzname\0"
	.byte	0x5
	.word	0x15e
	.long	0x816
	.uleb128 0xf
	.ascii "daylight\0"
	.byte	0x5
	.word	0x17d
	.long	0x7d
	.uleb128 0xf
	.ascii "timezone\0"
	.byte	0x5
	.word	0x17e
	.long	0xca
	.uleb128 0xf
	.ascii "tzname\0"
	.byte	0x5
	.word	0x17f
	.long	0x816
	.uleb128 0x10
	.ascii "ty\0"
	.byte	0x1
	.byte	0x9
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_ty
	.uleb128 0x10
	.ascii "tx\0"
	.byte	0x1
	.byte	0xa
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_tx
	.uleb128 0x10
	.ascii "py\0"
	.byte	0x1
	.byte	0xb
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_py
	.uleb128 0x10
	.ascii "px\0"
	.byte	0x1
	.byte	0xc
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_px
	.uleb128 0x10
	.ascii "p_gold\0"
	.byte	0x1
	.byte	0xe
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_p_gold
	.uleb128 0x10
	.ascii "t_placed\0"
	.byte	0x1
	.byte	0xf
	.long	0x8d1
	.uleb128 0x5
	.byte	0x3
	.long	_t_placed
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0x10
	.ascii "p_placed\0"
	.byte	0x1
	.byte	0x10
	.long	0x8d1
	.uleb128 0x5
	.byte	0x3
	.long	_p_placed
	.uleb128 0x10
	.ascii "r_placed\0"
	.byte	0x1
	.byte	0x11
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_r_placed
	.uleb128 0x11
	.ascii "main\0"
	.byte	0x1
	.byte	0xa6
	.long	0x7d
	.long	LFB16
	.long	LFE16-LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x95b
	.uleb128 0x12
	.ascii "c\0"
	.byte	0x1
	.byte	0xa8
	.long	0x7d
	.uleb128 0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x12
	.ascii "rows\0"
	.byte	0x1
	.byte	0xaa
	.long	0x7d
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x12
	.ascii "colms\0"
	.byte	0x1
	.byte	0xab
	.long	0x7d
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x12
	.ascii "map\0"
	.byte	0x1
	.byte	0xb2
	.long	0x95b
	.uleb128 0x3
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0x75
	.long	0x977
	.uleb128 0x13
	.long	0x212
	.uleb128 0x3
	.byte	0x75
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.long	0x212
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.ascii "dungeon\0"
	.byte	0x1
	.byte	0x13
	.long	0x7d
	.long	LFB15
	.long	LFE15-LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xafe
	.uleb128 0x15
	.ascii "c\0"
	.byte	0x1
	.byte	0x13
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.ascii "rows\0"
	.byte	0x1
	.byte	0x13
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii "colms\0"
	.byte	0x1
	.byte	0x13
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.ascii "map\0"
	.byte	0x1
	.byte	0x13
	.long	0xb0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.ascii "collision\0"
	.byte	0x1
	.byte	0x15
	.long	0x8d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x16
	.long	LBB2
	.long	LBE2-LBB2
	.long	0xad1
	.uleb128 0x12
	.ascii "ry\0"
	.byte	0x1
	.byte	0x1c
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.ascii "rx\0"
	.byte	0x1
	.byte	0x1d
	.long	0x7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x12
	.ascii "r_size_y\0"
	.byte	0x1
	.byte	0x1e
	.long	0x7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.ascii "r_size_x\0"
	.byte	0x1
	.byte	0x1f
	.long	0x7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.ascii "room_num\0"
	.byte	0x1
	.byte	0x20
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.long	LBB3
	.long	LBE3-LBB3
	.long	0xa74
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x23
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	LBB4
	.long	LBE4-LBB4
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x25
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	LBB5
	.long	LBE5-LBB5
	.long	0xaa4
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x40
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	LBB6
	.long	LBE6-LBB6
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x42
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	LBB7
	.long	LBE7-LBB7
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x54
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	LBB8
	.long	LBE8-LBB8
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x56
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	LBB9
	.long	LBE9-LBB9
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x69
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	LBB10
	.long	LBE10-LBB10
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x6b
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x75
	.long	0xb0d
	.uleb128 0x18
	.long	0x212
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xafe
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"dr"
Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x3
	.file 6 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x6
	.byte	0x4
	.file 7 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.file 8 "c:/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x8
	.file 9 "c:/mingw/include/msvcrtver.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x9
	.byte	0x4
	.file 10 "c:/mingw/include/w32api.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0xa
	.file 11 "c:/mingw/include/sdkddkver.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x7
	.byte	0x4
	.file 12 "c:/mingw/include/sys/types.h"
	.byte	0x3
	.uleb128 0x5e
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
	.file 13 "c:/mingw/include/sys/types.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uleb128 0xb2
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 14 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stdbool.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_mvaddch;	.scl	2;	.type	32;	.endef
	.def	_mvprintw;	.scl	2;	.type	32;	.endef
	.def	_initscr;	.scl	2;	.type	32;	.endef
	.def	_keypad;	.scl	2;	.type	32;	.endef
	.def	_noecho;	.scl	2;	.type	32;	.endef
	.def	_curs_set;	.scl	2;	.type	32;	.endef
	.def	_getmaxy;	.scl	2;	.type	32;	.endef
	.def	_getmaxx;	.scl	2;	.type	32;	.endef
	.def	_wgetch;	.scl	2;	.type	32;	.endef
	.def	_endwin;	.scl	2;	.type	32;	.endef
