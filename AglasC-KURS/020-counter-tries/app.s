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
	.loc 1 19 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	.loc 1 19 0
	movl	16(%ebp), %ebx
	.loc 1 18 0
	leal	-1(%ebx), %eax
	movl	%eax, -64(%ebp)
	.loc 1 21 0
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	.loc 1 23 0
	movl	_r_placed, %eax
	testl	%eax, %eax
	jne	L2
LBB2:
	.loc 1 30 0
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
	movl	%eax, -68(%ebp)
LBB3:
	.loc 1 34 0
	movl	$0, -28(%ebp)
	jmp	L3
L9:
LBB4:
	.loc 1 36 0
	movl	$0, -32(%ebp)
	jmp	L4
L8:
	.loc 1 39 0
	cmpl	$0, -28(%ebp)
	je	L5
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	-28(%ebp), %eax
	je	L5
	.loc 1 39 0 discriminator 2
	cmpl	$0, -32(%ebp)
	je	L5
	.loc 1 40 0 is_stmt 1
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	L5
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L6
L5:
	.loc 1 42 0 is_stmt 1
	movl	%ebx, %edx
	movl	-28(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movb	$37, (%eax)
	jmp	L7
L6:
	.loc 1 45 0
	movl	%ebx, %edx
	movl	-28(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movb	$35, (%eax)
L7:
	.loc 1 36 0 discriminator 2
	addl	$1, -32(%ebp)
L4:
	.loc 1 36 0 is_stmt 0 discriminator 1
	movl	-32(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L8
LBE4:
	.loc 1 34 0 is_stmt 1 discriminator 2
	addl	$1, -28(%ebp)
L3:
	.loc 1 34 0 is_stmt 0 discriminator 1
	movl	-28(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L9
L26:
LBE3:
LBB5:
	.loc 1 51 0 is_stmt 1
	movl	$0, -36(%ebp)
L19:
	.loc 1 55 0
	movb	$0, -21(%ebp)
	.loc 1 58 0
	call	_rand
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	-3(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -72(%ebp)
	.loc 1 59 0
	call	_rand
	movl	%eax, %edx
	movl	16(%ebp), %eax
	leal	-3(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 62 0
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
	movl	%eax, -16(%ebp)
	.loc 1 63 0
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
	movl	%eax, -20(%ebp)
	.loc 1 65 0
	addl	$1, -36(%ebp)
	.loc 1 67 0
	cmpl	$100, -36(%ebp)
	jle	L10
	.loc 1 69 0
	movl	$3, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, _ty
	.loc 1 70 0
	movl	$3, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 72 0
	jmp	L11
L10:
LBB6:
	.loc 1 76 0
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
	jmp	L12
L18:
LBB7:
	.loc 1 78 0
	movl	-12(%ebp), %eax
	movl	%eax, -44(%ebp)
	jmp	L13
L17:
	.loc 1 80 0
	movl	%ebx, %edx
	movl	-40(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	L14
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	%ebx, %edx
	movl	-40(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L14
	.loc 1 81 0 is_stmt 1 discriminator 2
	movl	-40(%ebp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	.loc 1 80 0 discriminator 2
	cmpb	$32, %al
	je	L14
	.loc 1 81 0
	movl	-40(%ebp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L14
	.loc 1 82 0 discriminator 1
	movl	%ebx, %edx
	movl	-40(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	addl	$2, %eax
	movzbl	(%edx,%eax), %eax
	.loc 1 81 0 discriminator 1
	cmpb	$32, %al
	je	L14
	.loc 1 82 0
	movl	%ebx, %edx
	movl	-40(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	subl	$2, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L15
L14:
	.loc 1 85 0
	movb	$1, -21(%ebp)
	.loc 1 86 0
	movl	-72(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	.loc 1 87 0
	jmp	L16
L15:
	.loc 1 78 0 discriminator 2
	addl	$1, -44(%ebp)
L13:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	cmpl	-44(%ebp), %eax
	jge	L17
L16:
LBE7:
	.loc 1 76 0 is_stmt 1 discriminator 2
	addl	$1, -40(%ebp)
L12:
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	-72(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	cmpl	-40(%ebp), %eax
	jge	L18
LBE6:
	.loc 1 94 0 is_stmt 1
	cmpb	$0, -21(%ebp)
	jne	L19
L11:
LBB8:
	.loc 1 97 0
	movl	-72(%ebp), %eax
	movl	%eax, -48(%ebp)
	jmp	L20
L25:
LBB9:
	.loc 1 99 0
	movl	-12(%ebp), %eax
	movl	%eax, -52(%ebp)
	jmp	L21
L24:
	.loc 1 101 0
	movl	%ebx, %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L22
	.loc 1 103 0
	movl	-72(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%ebp)
	.loc 1 104 0
	jmp	L23
L22:
	.loc 1 108 0 discriminator 2
	movl	%ebx, %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	.loc 1 99 0 discriminator 2
	addl	$1, -52(%ebp)
L21:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	cmpl	-52(%ebp), %eax
	jge	L24
L23:
LBE9:
	.loc 1 97 0 is_stmt 1 discriminator 2
	addl	$1, -48(%ebp)
L20:
	.loc 1 97 0 is_stmt 0 discriminator 1
	movl	-72(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	cmpl	-48(%ebp), %eax
	jge	L25
LBE8:
	.loc 1 111 0 is_stmt 1
	movl	_r_placed, %eax
	addl	$1, %eax
	movl	%eax, _r_placed
LBE5:
	.loc 1 114 0
	movl	_r_placed, %eax
	cmpl	-68(%ebp), %eax
	jl	L26
L2:
LBE2:
LBB10:
	.loc 1 118 0
	movl	$0, -56(%ebp)
	jmp	L27
L34:
LBB11:
	.loc 1 120 0
	movl	$0, -60(%ebp)
	jmp	L28
L33:
	.loc 1 123 0
	movl	-56(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L29
	.loc 1 124 0
	movl	$32, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L30
L29:
	.loc 1 125 0
	movl	%ebx, %edx
	movl	-56(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L31
	.loc 1 126 0
	movl	$37, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L30
L31:
	.loc 1 127 0
	movl	%ebx, %edx
	movl	-56(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-60(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L32
	.loc 1 128 0
	movl	$32, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L30
L32:
	.loc 1 131 0
	movl	$35, 8(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
L30:
	.loc 1 120 0 discriminator 2
	addl	$1, -60(%ebp)
L28:
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jle	L33
LBE11:
	.loc 1 118 0 is_stmt 1 discriminator 2
	addl	$1, -56(%ebp)
L27:
	.loc 1 118 0 is_stmt 0 discriminator 1
	movl	-56(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L34
LBE10:
	.loc 1 135 0 is_stmt 1
	cmpl	$259, 8(%ebp)
	jne	L35
	.loc 1 135 0 discriminator 1
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
	jne	L35
	.loc 1 136 0
	movl	_py, %eax
	subl	$1, %eax
	movl	%eax, _py
	jmp	L36
L35:
	.loc 1 137 0
	cmpl	$258, 8(%ebp)
	jne	L37
	.loc 1 137 0 discriminator 1
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
	jne	L37
	.loc 1 138 0
	movl	_py, %eax
	addl	$1, %eax
	movl	%eax, _py
	jmp	L36
L37:
	.loc 1 139 0
	cmpl	$260, 8(%ebp)
	jne	L38
	.loc 1 139 0 discriminator 1
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	subl	$1, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L38
	.loc 1 140 0
	movl	_px, %eax
	subl	$1, %eax
	movl	%eax, _px
	jmp	L36
L38:
	.loc 1 141 0
	cmpl	$261, 8(%ebp)
	jne	L36
	.loc 1 141 0 discriminator 1
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	addl	$1, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L36
	.loc 1 142 0
	movl	_px, %eax
	addl	$1, %eax
	movl	%eax, _px
L36:
	.loc 1 144 0
	movzbl	_t_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L39
L40:
	.loc 1 147 0 discriminator 3
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, %eax
	movl	%eax, _ty
	.loc 1 148 0 discriminator 3
	call	_rand
	cltd
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, _tx
	.loc 1 151 0 discriminator 3
	movl	%ebx, %edx
	movl	_ty, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_tx, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$35, %al
	je	L40
	.loc 1 151 0 is_stmt 0 discriminator 2
	movl	%ebx, %edx
	movl	_ty, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_tx, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$37, %al
	je	L40
L39:
	.loc 1 152 0 is_stmt 1
	movb	$1, _t_placed
	.loc 1 154 0
	movzbl	_p_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L41
L42:
	.loc 1 157 0 discriminator 3
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, %eax
	movl	%eax, _py
	.loc 1 158 0 discriminator 3
	call	_rand
	cltd
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, _px
	.loc 1 161 0 discriminator 3
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$35, %al
	je	L42
	.loc 1 161 0 is_stmt 0 discriminator 2
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$37, %al
	je	L42
L41:
	.loc 1 162 0 is_stmt 1
	movb	$1, _p_placed
	.loc 1 165 0
	movl	_py, %edx
	movl	_ty, %eax
	cmpl	%eax, %edx
	jne	L43
	.loc 1 165 0 is_stmt 0 discriminator 1
	movl	_px, %edx
	movl	_tx, %eax
	cmpl	%eax, %edx
	jne	L43
	.loc 1 167 0 is_stmt 1
	movb	$0, _t_placed
	.loc 1 170 0
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
L43:
	.loc 1 173 0
	movl	_tx, %edx
	movl	_ty, %eax
	movl	$116, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 174 0
	movl	_px, %edx
	movl	_py, %eax
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 175 0
	movl	_p_gold, %eax
	movl	%eax, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvprintw
	.loc 1 176 0
	movl	$0, %eax
	.loc 1 177 0
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
	.loc 1 180 0
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
	.loc 1 180 0
	call	___main
LVL0:
	movl	%esp, %eax
	movl	%eax, -64(%ebp)
	.loc 1 181 0
	movl	$0, -28(%ebp)
	.loc 1 186 0
	call	_initscr
	.loc 1 187 0
	movl	_stdscr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_keypad
	.loc 1 188 0
	call	_noecho
	.loc 1 189 0
	movl	$0, (%esp)
	call	_curs_set
	.loc 1 190 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxy
	movl	%eax, -32(%ebp)
	.loc 1 190 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxx
	movl	%eax, -36(%ebp)
	.loc 1 191 0
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
L46:
	.loc 1 194 0 discriminator 1
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
	.loc 1 200 0 discriminator 1
	movl	_stdscr, %eax
	.loc 1 200 0 discriminator 1
	movl	%eax, (%esp)
	call	_wgetch
	movl	%eax, -28(%ebp)
	cmpl	$27, -28(%ebp)
	jne	L46
	.loc 1 202 0
	call	_endwin
	.loc 1 204 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 205 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 207 0
	movl	$0, %eax
	movl	-64(%ebp), %esp
	.loc 1 208 0
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
	.long	0xb2c
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -mtune=generic -march=i586 -g3\0"
	.byte	0xc
	.ascii "app.c\0"
	.ascii "C:\\AglasC-KURS\\020-counter-tries\0"
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
	.long	0x159
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0xd4
	.long	0x159
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0xd5
	.long	0x79
	.byte	0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0xd6
	.long	0x159
	.byte	0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0xd7
	.long	0x79
	.byte	0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0xd8
	.long	0x79
	.byte	0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0xd9
	.long	0x79
	.byte	0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0xda
	.long	0x79
	.byte	0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0xdb
	.long	0x159
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x71
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0xdc
	.long	0xd2
	.uleb128 0x7
	.long	0x15f
	.long	0x176
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "_iob\0"
	.byte	0x2
	.byte	0xef
	.long	0x16b
	.uleb128 0x6
	.ascii "bool\0"
	.byte	0x3
	.byte	0x55
	.long	0x18e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x6
	.ascii "chtype\0"
	.byte	0x3
	.byte	0x5b
	.long	0x1ad
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xa
	.byte	0x14
	.byte	0x3
	.byte	0x6d
	.long	0x1fe
	.uleb128 0x4
	.ascii "x\0"
	.byte	0x3
	.byte	0x6f
	.long	0x79
	.byte	0
	.uleb128 0x4
	.ascii "y\0"
	.byte	0x3
	.byte	0x70
	.long	0x79
	.byte	0x4
	.uleb128 0x4
	.ascii "button\0"
	.byte	0x3
	.byte	0x71
	.long	0x1fe
	.byte	0x8
	.uleb128 0x4
	.ascii "changes\0"
	.byte	0x3
	.byte	0x72
	.long	0x79
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x21a
	.long	0x20e
	.uleb128 0xb
	.long	0x20e
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
	.long	0x1c2
	.uleb128 0x3
	.ascii "_win\0"
	.byte	0x50
	.byte	0x3
	.byte	0xec
	.long	0x3c9
	.uleb128 0x4
	.ascii "_cury\0"
	.byte	0x3
	.byte	0xee
	.long	0x79
	.byte	0
	.uleb128 0x4
	.ascii "_curx\0"
	.byte	0x3
	.byte	0xef
	.long	0x79
	.byte	0x4
	.uleb128 0x4
	.ascii "_maxy\0"
	.byte	0x3
	.byte	0xf0
	.long	0x79
	.byte	0x8
	.uleb128 0x4
	.ascii "_maxx\0"
	.byte	0x3
	.byte	0xf1
	.long	0x79
	.byte	0xc
	.uleb128 0x4
	.ascii "_begy\0"
	.byte	0x3
	.byte	0xf2
	.long	0x79
	.byte	0x10
	.uleb128 0x4
	.ascii "_begx\0"
	.byte	0x3
	.byte	0xf3
	.long	0x79
	.byte	0x14
	.uleb128 0x4
	.ascii "_flags\0"
	.byte	0x3
	.byte	0xf4
	.long	0x79
	.byte	0x18
	.uleb128 0x4
	.ascii "_attrs\0"
	.byte	0x3
	.byte	0xf5
	.long	0x19f
	.byte	0x1c
	.uleb128 0x4
	.ascii "_bkgd\0"
	.byte	0x3
	.byte	0xf6
	.long	0x19f
	.byte	0x20
	.uleb128 0x4
	.ascii "_clear\0"
	.byte	0x3
	.byte	0xf7
	.long	0x182
	.byte	0x24
	.uleb128 0x4
	.ascii "_leaveit\0"
	.byte	0x3
	.byte	0xf8
	.long	0x182
	.byte	0x25
	.uleb128 0x4
	.ascii "_scroll\0"
	.byte	0x3
	.byte	0xf9
	.long	0x182
	.byte	0x26
	.uleb128 0x4
	.ascii "_nodelay\0"
	.byte	0x3
	.byte	0xfa
	.long	0x182
	.byte	0x27
	.uleb128 0x4
	.ascii "_immed\0"
	.byte	0x3
	.byte	0xfb
	.long	0x182
	.byte	0x28
	.uleb128 0x4
	.ascii "_sync\0"
	.byte	0x3
	.byte	0xfc
	.long	0x182
	.byte	0x29
	.uleb128 0x4
	.ascii "_use_keypad\0"
	.byte	0x3
	.byte	0xfd
	.long	0x182
	.byte	0x2a
	.uleb128 0x4
	.ascii "_y\0"
	.byte	0x3
	.byte	0xfe
	.long	0x3c9
	.byte	0x2c
	.uleb128 0x4
	.ascii "_firstch\0"
	.byte	0x3
	.byte	0xff
	.long	0x3d5
	.byte	0x30
	.uleb128 0xc
	.ascii "_lastch\0"
	.byte	0x3
	.word	0x100
	.long	0x3d5
	.byte	0x34
	.uleb128 0xc
	.ascii "_tmarg\0"
	.byte	0x3
	.word	0x101
	.long	0x79
	.byte	0x38
	.uleb128 0xc
	.ascii "_bmarg\0"
	.byte	0x3
	.word	0x102
	.long	0x79
	.byte	0x3c
	.uleb128 0xc
	.ascii "_delayms\0"
	.byte	0x3
	.word	0x103
	.long	0x79
	.byte	0x40
	.uleb128 0xc
	.ascii "_parx\0"
	.byte	0x3
	.word	0x104
	.long	0x79
	.byte	0x44
	.uleb128 0xc
	.ascii "_pary\0"
	.byte	0x3
	.word	0x104
	.long	0x79
	.byte	0x48
	.uleb128 0xc
	.ascii "_parent\0"
	.byte	0x3
	.word	0x105
	.long	0x3db
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3cf
	.uleb128 0x5
	.byte	0x4
	.long	0x19f
	.uleb128 0x5
	.byte	0x4
	.long	0x79
	.uleb128 0x5
	.byte	0x4
	.long	0x23b
	.uleb128 0xd
	.ascii "WINDOW\0"
	.byte	0x3
	.word	0x106
	.long	0x23b
	.uleb128 0xe
	.byte	0x58
	.byte	0x3
	.word	0x10b
	.long	0x65f
	.uleb128 0xc
	.ascii "alive\0"
	.byte	0x3
	.word	0x10d
	.long	0x182
	.byte	0
	.uleb128 0xc
	.ascii "autocr\0"
	.byte	0x3
	.word	0x10e
	.long	0x182
	.byte	0x1
	.uleb128 0xc
	.ascii "cbreak\0"
	.byte	0x3
	.word	0x10f
	.long	0x182
	.byte	0x2
	.uleb128 0xc
	.ascii "echo\0"
	.byte	0x3
	.word	0x110
	.long	0x182
	.byte	0x3
	.uleb128 0xc
	.ascii "raw_inp\0"
	.byte	0x3
	.word	0x111
	.long	0x182
	.byte	0x4
	.uleb128 0xc
	.ascii "raw_out\0"
	.byte	0x3
	.word	0x112
	.long	0x182
	.byte	0x5
	.uleb128 0xc
	.ascii "audible\0"
	.byte	0x3
	.word	0x113
	.long	0x182
	.byte	0x6
	.uleb128 0xc
	.ascii "mono\0"
	.byte	0x3
	.word	0x114
	.long	0x182
	.byte	0x7
	.uleb128 0xc
	.ascii "resized\0"
	.byte	0x3
	.word	0x115
	.long	0x182
	.byte	0x8
	.uleb128 0xc
	.ascii "orig_attr\0"
	.byte	0x3
	.word	0x116
	.long	0x182
	.byte	0x9
	.uleb128 0xc
	.ascii "orig_fore\0"
	.byte	0x3
	.word	0x117
	.long	0x21a
	.byte	0xa
	.uleb128 0xc
	.ascii "orig_back\0"
	.byte	0x3
	.word	0x118
	.long	0x21a
	.byte	0xc
	.uleb128 0xc
	.ascii "cursrow\0"
	.byte	0x3
	.word	0x119
	.long	0x79
	.byte	0x10
	.uleb128 0xc
	.ascii "curscol\0"
	.byte	0x3
	.word	0x11a
	.long	0x79
	.byte	0x14
	.uleb128 0xc
	.ascii "visibility\0"
	.byte	0x3
	.word	0x11b
	.long	0x79
	.byte	0x18
	.uleb128 0xc
	.ascii "orig_cursor\0"
	.byte	0x3
	.word	0x11c
	.long	0x79
	.byte	0x1c
	.uleb128 0xc
	.ascii "lines\0"
	.byte	0x3
	.word	0x11d
	.long	0x79
	.byte	0x20
	.uleb128 0xc
	.ascii "cols\0"
	.byte	0x3
	.word	0x11e
	.long	0x79
	.byte	0x24
	.uleb128 0xc
	.ascii "_trap_mbe\0"
	.byte	0x3
	.word	0x11f
	.long	0x1ad
	.byte	0x28
	.uleb128 0xc
	.ascii "_map_mbe_to_key\0"
	.byte	0x3
	.word	0x120
	.long	0x1ad
	.byte	0x2c
	.uleb128 0xc
	.ascii "mouse_wait\0"
	.byte	0x3
	.word	0x121
	.long	0x79
	.byte	0x30
	.uleb128 0xc
	.ascii "slklines\0"
	.byte	0x3
	.word	0x124
	.long	0x79
	.byte	0x34
	.uleb128 0xc
	.ascii "slk_winptr\0"
	.byte	0x3
	.word	0x125
	.long	0x65f
	.byte	0x38
	.uleb128 0xc
	.ascii "linesrippedoff\0"
	.byte	0x3
	.word	0x126
	.long	0x79
	.byte	0x3c
	.uleb128 0xc
	.ascii "linesrippedoffontop\0"
	.byte	0x3
	.word	0x127
	.long	0x79
	.byte	0x40
	.uleb128 0xc
	.ascii "delaytenths\0"
	.byte	0x3
	.word	0x129
	.long	0x79
	.byte	0x44
	.uleb128 0xc
	.ascii "_preserve\0"
	.byte	0x3
	.word	0x12b
	.long	0x182
	.byte	0x48
	.uleb128 0xc
	.ascii "_restore\0"
	.byte	0x3
	.word	0x12d
	.long	0x79
	.byte	0x4c
	.uleb128 0xc
	.ascii "save_key_modifiers\0"
	.byte	0x3
	.word	0x12f
	.long	0x182
	.byte	0x50
	.uleb128 0xc
	.ascii "return_key_modifiers\0"
	.byte	0x3
	.word	0x131
	.long	0x182
	.byte	0x51
	.uleb128 0xc
	.ascii "key_code\0"
	.byte	0x3
	.word	0x133
	.long	0x182
	.byte	0x52
	.uleb128 0xc
	.ascii "line_color\0"
	.byte	0x3
	.word	0x13f
	.long	0x21a
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3e1
	.uleb128 0xd
	.ascii "SCREEN\0"
	.byte	0x3
	.word	0x140
	.long	0x3f0
	.uleb128 0xf
	.ascii "LINES\0"
	.byte	0x3
	.word	0x152
	.long	0x79
	.uleb128 0xf
	.ascii "COLS\0"
	.byte	0x3
	.word	0x153
	.long	0x79
	.uleb128 0xf
	.ascii "stdscr\0"
	.byte	0x3
	.word	0x154
	.long	0x65f
	.uleb128 0xf
	.ascii "curscr\0"
	.byte	0x3
	.word	0x155
	.long	0x65f
	.uleb128 0xf
	.ascii "SP\0"
	.byte	0x3
	.word	0x156
	.long	0x6b8
	.uleb128 0x5
	.byte	0x4
	.long	0x665
	.uleb128 0xf
	.ascii "Mouse_status\0"
	.byte	0x3
	.word	0x157
	.long	0x227
	.uleb128 0xf
	.ascii "COLORS\0"
	.byte	0x3
	.word	0x158
	.long	0x79
	.uleb128 0xf
	.ascii "COLOR_PAIRS\0"
	.byte	0x3
	.word	0x159
	.long	0x79
	.uleb128 0xf
	.ascii "TABSIZE\0"
	.byte	0x3
	.word	0x15a
	.long	0x79
	.uleb128 0x7
	.long	0x19f
	.long	0x711
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.ascii "acs_map\0"
	.byte	0x3
	.word	0x15b
	.long	0x706
	.uleb128 0x7
	.long	0x71
	.long	0x72c
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.ascii "ttytype\0"
	.byte	0x3
	.word	0x15c
	.long	0x721
	.uleb128 0x9
	.ascii "_argc\0"
	.byte	0x4
	.byte	0x63
	.long	0x79
	.uleb128 0x9
	.ascii "_argv\0"
	.byte	0x4
	.byte	0x64
	.long	0x756
	.uleb128 0x5
	.byte	0x4
	.long	0x159
	.uleb128 0x9
	.ascii "__mb_cur_max\0"
	.byte	0x4
	.byte	0x8e
	.long	0x79
	.uleb128 0x9
	.ascii "_sys_nerr\0"
	.byte	0x4
	.byte	0xca
	.long	0x79
	.uleb128 0x7
	.long	0x159
	.long	0x78c
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "_sys_errlist\0"
	.byte	0x4
	.byte	0xe3
	.long	0x781
	.uleb128 0x9
	.ascii "_osver\0"
	.byte	0x4
	.byte	0xfa
	.long	0x80
	.uleb128 0x9
	.ascii "_winver\0"
	.byte	0x4
	.byte	0xfb
	.long	0x80
	.uleb128 0x9
	.ascii "_winmajor\0"
	.byte	0x4
	.byte	0xfc
	.long	0x80
	.uleb128 0x9
	.ascii "_winminor\0"
	.byte	0x4
	.byte	0xfd
	.long	0x80
	.uleb128 0xf
	.ascii "_fmode\0"
	.byte	0x4
	.word	0x145
	.long	0x79
	.uleb128 0xf
	.ascii "_daylight\0"
	.byte	0x5
	.word	0x15c
	.long	0x79
	.uleb128 0xf
	.ascii "_timezone\0"
	.byte	0x5
	.word	0x15d
	.long	0xc6
	.uleb128 0x7
	.long	0x159
	.long	0x822
	.uleb128 0xb
	.long	0x20e
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.ascii "_tzname\0"
	.byte	0x5
	.word	0x15e
	.long	0x812
	.uleb128 0xf
	.ascii "daylight\0"
	.byte	0x5
	.word	0x17d
	.long	0x79
	.uleb128 0xf
	.ascii "timezone\0"
	.byte	0x5
	.word	0x17e
	.long	0xc6
	.uleb128 0xf
	.ascii "tzname\0"
	.byte	0x5
	.word	0x17f
	.long	0x812
	.uleb128 0x10
	.ascii "ty\0"
	.byte	0x1
	.byte	0x8
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	_ty
	.uleb128 0x10
	.ascii "tx\0"
	.byte	0x1
	.byte	0x9
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	_tx
	.uleb128 0x10
	.ascii "py\0"
	.byte	0x1
	.byte	0xa
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	_py
	.uleb128 0x10
	.ascii "px\0"
	.byte	0x1
	.byte	0xb
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	_px
	.uleb128 0x10
	.ascii "p_gold\0"
	.byte	0x1
	.byte	0xd
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	_p_gold
	.uleb128 0x10
	.ascii "t_placed\0"
	.byte	0x1
	.byte	0xe
	.long	0x8cd
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
	.byte	0xf
	.long	0x8cd
	.uleb128 0x5
	.byte	0x3
	.long	_p_placed
	.uleb128 0x10
	.ascii "r_placed\0"
	.byte	0x1
	.byte	0x10
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	_r_placed
	.uleb128 0x11
	.ascii "main\0"
	.byte	0x1
	.byte	0xb3
	.long	0x79
	.long	LFB16
	.long	LFE16-LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x957
	.uleb128 0x12
	.ascii "c\0"
	.byte	0x1
	.byte	0xb5
	.long	0x79
	.uleb128 0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x12
	.ascii "rows\0"
	.byte	0x1
	.byte	0xb7
	.long	0x79
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x12
	.ascii "colms\0"
	.byte	0x1
	.byte	0xb8
	.long	0x79
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x12
	.ascii "map\0"
	.byte	0x1
	.byte	0xbf
	.long	0x957
	.uleb128 0x3
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0x71
	.long	0x973
	.uleb128 0x13
	.long	0x20e
	.uleb128 0x3
	.byte	0x75
	.sleb128 -44
	.byte	0x6
	.uleb128 0x13
	.long	0x20e
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.ascii "dungeon\0"
	.byte	0x1
	.byte	0x12
	.long	0x79
	.long	LFB15
	.long	LFE15-LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1a
	.uleb128 0x15
	.ascii "c\0"
	.byte	0x1
	.byte	0x12
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.ascii "rows\0"
	.byte	0x1
	.byte	0x12
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii "colms\0"
	.byte	0x1
	.byte	0x12
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.ascii "map\0"
	.byte	0x1
	.byte	0x12
	.long	0xb29
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	LBB2
	.long	LBE2-LBB2
	.long	0xaec
	.uleb128 0x12
	.ascii "ry\0"
	.byte	0x1
	.byte	0x1a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.ascii "rx\0"
	.byte	0x1
	.byte	0x1b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.ascii "r_size_y\0"
	.byte	0x1
	.byte	0x1c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.ascii "r_size_x\0"
	.byte	0x1
	.byte	0x1d
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.ascii "room_num\0"
	.byte	0x1
	.byte	0x1e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.ascii "collision\0"
	.byte	0x1
	.byte	0x1f
	.long	0x8cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x16
	.long	LBB3
	.long	LBE3-LBB3
	.long	0xa6f
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x22
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	LBB4
	.long	LBE4-LBB4
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x24
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x12
	.ascii "try_counter\0"
	.byte	0x1
	.byte	0x33
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.long	LBB6
	.long	LBE6-LBB6
	.long	0xabe
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x4c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	LBB7
	.long	LBE7-LBB7
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x4e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	LBB8
	.long	LBE8-LBB8
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x61
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	LBB9
	.long	LBE9-LBB9
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x63
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	LBB10
	.long	LBE10-LBB10
	.uleb128 0x12
	.ascii "y\0"
	.byte	0x1
	.byte	0x76
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	LBB11
	.long	LBE11-LBB11
	.uleb128 0x12
	.ascii "x\0"
	.byte	0x1
	.byte	0x78
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x71
	.long	0xb29
	.uleb128 0x18
	.long	0x20e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xb1a
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
	.uleb128 0x4
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
