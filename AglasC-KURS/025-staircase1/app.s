	.file	"app.c"
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
	.comm	_monster, 120, 5
	.text
	.globl	_battle
	.def	_battle;	.scl	2;	.type	32;	.endef
_battle:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %edx
	leal	-1(%edx), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	L2
L7:
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	$_monster, %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	L3
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	$_monster+4, %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	L3
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	$_monster+8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	L4
	movl	16(%ebp), %eax
	imull	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
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
	jmp	L6
L4:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster+8, %eax
	movl	(%eax), %eax
	leal	-1(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster+8, %eax
	movl	%ecx, (%eax)
	jmp	L6
L3:
	addl	$1, -12(%ebp)
L2:
	cmpl	$9, -12(%ebp)
	jle	L7
L6:
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_p_action
	.def	_p_action;	.scl	2;	.type	32;	.endef
_p_action:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -20(%ebp)
	movl	_py, %edx
	movl	%edx, -12(%ebp)
	movl	_px, %edx
	movl	%edx, -16(%ebp)
	cmpl	$259, 8(%ebp)
	jne	L10
	subl	$1, -12(%ebp)
	jmp	L11
L10:
	cmpl	$258, 8(%ebp)
	jne	L12
	addl	$1, -12(%ebp)
	jmp	L11
L12:
	cmpl	$260, 8(%ebp)
	jne	L13
	subl	$1, -16(%ebp)
	jmp	L11
L13:
	cmpl	$261, 8(%ebp)
	jne	L14
	addl	$1, -16(%ebp)
	jmp	L11
L14:
	cmpl	$62, 8(%ebp)
	jne	L11
	movl	%eax, %ecx
	movl	_py, %edx
	imull	%edx, %ecx
	movl	16(%ebp), %edx
	addl	%edx, %ecx
	movl	_px, %edx
	movzbl	(%ecx,%edx), %edx
	cmpb	$62, %dl
	jne	L11
	movb	$0, _t_placed
	movb	$0, _p_placed
	movl	$0, _r_placed
	movl	$1, %eax
	jmp	L15
L11:
	movl	%eax, %ecx
	movl	-12(%ebp), %edx
	imull	%edx, %ecx
	movl	16(%ebp), %edx
	addl	%edx, %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	cmpb	$32, %dl
	je	L16
	movl	%eax, %ecx
	movl	-12(%ebp), %edx
	imull	%edx, %ecx
	movl	16(%ebp), %edx
	addl	%edx, %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	cmpb	$62, %dl
	jne	L17
L16:
	movl	-12(%ebp), %eax
	movl	%eax, _py
	movl	-16(%ebp), %eax
	movl	%eax, _px
	jmp	L18
L17:
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	L18
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_battle
L18:
	movl	$0, %eax
L15:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_dungeon_gen
	.def	_dungeon_gen;	.scl	2;	.type	32;	.endef
_dungeon_gen:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$100, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %ebx
	leal	-1(%ebx), %eax
	movl	%eax, -84(%ebp)
	movl	_r_placed, %eax
	testl	%eax, %eax
	jne	L20
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
	movl	%eax, -88(%ebp)
	movl	$0, -48(%ebp)
	jmp	L21
L27:
	movl	$0, -52(%ebp)
	jmp	L22
L26:
	cmpl	$0, -48(%ebp)
	je	L23
	movl	8(%ebp), %eax
	subl	$1, %eax
	cmpl	-48(%ebp), %eax
	je	L23
	cmpl	$0, -52(%ebp)
	je	L23
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L23
	movl	-48(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L24
L23:
	movl	%ebx, %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movb	$37, (%eax)
	jmp	L25
L24:
	movl	%ebx, %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movb	$35, (%eax)
L25:
	addl	$1, -52(%ebp)
L22:
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L26
	addl	$1, -48(%ebp)
L21:
	movl	-48(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L27
	jmp	L28
L52:
	movl	$0, -56(%ebp)
L38:
	movb	$0, -41(%ebp)
	call	_rand
	movl	%eax, %edx
	movl	8(%ebp), %eax
	leal	-3(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	call	_rand
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	-3(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
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
	movl	%eax, -20(%ebp)
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
	movl	%eax, -24(%ebp)
	addl	$1, -56(%ebp)
	cmpl	$100, -56(%ebp)
	jle	L29
	movl	$3, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	$3, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	jmp	L30
L29:
	movl	-12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	L31
L37:
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	L32
L36:
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	L33
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L33
	movl	-60(%ebp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L33
	movl	-60(%ebp), %eax
	subl	$2, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L33
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	$2, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	je	L33
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	subl	$2, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L34
L33:
	movb	$1, -41(%ebp)
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	jmp	L35
L34:
	addl	$1, -64(%ebp)
L32:
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	cmpl	-64(%ebp), %eax
	jge	L36
L35:
	addl	$1, -60(%ebp)
L31:
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	cmpl	-60(%ebp), %eax
	jge	L37
	cmpb	$0, -41(%ebp)
	jne	L38
L30:
	movl	-12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	L39
L44:
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	L40
L43:
	movl	%ebx, %edx
	movl	-68(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L41
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -68(%ebp)
	jmp	L42
L41:
	movl	%ebx, %edx
	movl	-68(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	addl	$1, -72(%ebp)
L40:
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	cmpl	-72(%ebp), %eax
	jge	L43
L42:
	addl	$1, -68(%ebp)
L39:
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	cmpl	-68(%ebp), %eax
	jge	L44
	movl	_r_placed, %eax
	addl	$1, %eax
	movl	%eax, _r_placed
	movl	_r_placed, %eax
	cmpl	$1, %eax
	jle	L45
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
L45:
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	movl	_r_placed, %eax
	cmpl	$1, %eax
	jle	L28
	movl	-36(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	L46
L48:
	movl	%ebx, %edx
	movl	-76(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	L47
	addl	$1, -76(%ebp)
	jmp	L46
L47:
	subl	$1, -76(%ebp)
L46:
	movl	-76(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	L48
	movl	-40(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	L49
L51:
	movl	%ebx, %edx
	movl	-76(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	L50
	addl	$1, -80(%ebp)
	jmp	L49
L50:
	subl	$1, -80(%ebp)
L49:
	movl	-80(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	L51
L28:
	movl	_r_placed, %eax
	cmpl	-88(%ebp), %eax
	jl	L52
L53:
	call	_rand
	cltd
	idivl	8(%ebp)
	movl	%edx, -92(%ebp)
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, -96(%ebp)
	movl	%ebx, %edx
	movl	-92(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-96(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L53
	movl	%ebx, %edx
	movl	-92(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-96(%ebp), %eax
	addl	%edx, %eax
	movb	$62, (%eax)
L20:
	movl	$0, %eax
	addl	$100, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_respawn_creatures
	.def	_respawn_creatures;	.scl	2;	.type	32;	.endef
_respawn_creatures:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %ebx
	leal	-1(%ebx), %eax
	movl	%eax, -16(%ebp)
	movzbl	_t_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L56
	movl	$0, -12(%ebp)
	jmp	L57
L58:
	call	_rand
	cltd
	idivl	8(%ebp)
	movl	%edx, -20(%ebp)
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, -24(%ebp)
	movl	%ebx, %edx
	movl	-20(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L58
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	_monster(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	_monster+4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster+8, %eax
	movl	$2, (%eax)
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster, %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster+4, %eax
	movl	(%eax), %eax
	movb	$116, (%ecx,%eax)
	addl	$1, -12(%ebp)
L57:
	cmpl	$9, -12(%ebp)
	jle	L58
	movb	$1, _t_placed
L56:
	movzbl	_p_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L59
L60:
	call	_rand
	cltd
	idivl	8(%ebp)
	movl	%edx, %eax
	movl	%eax, _py
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, %eax
	movl	%eax, _px
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$35, %al
	je	L60
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$37, %al
	je	L60
	movb	$1, _p_placed
L59:
	movl	$0, %eax
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC0:
	.ascii "Gold : %d\0"
	.text
	.globl	_dungeon_draw
	.def	_dungeon_draw;	.scl	2;	.type	32;	.endef
_dungeon_draw:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %ebx
	leal	-1(%ebx), %eax
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	jmp	L63
L72:
	movl	$0, -16(%ebp)
	jmp	L64
L71:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L65
	movl	$32, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L66
L65:
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	L67
	movl	$116, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L66
L67:
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$62, %al
	jne	L68
	movl	$62, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L66
L68:
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L69
	movl	$37, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L66
L69:
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L70
	movl	$32, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L66
L70:
	movl	$35, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
L66:
	addl	$1, -16(%ebp)
L64:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L71
	addl	$1, -12(%ebp)
L63:
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L72
	movl	_p_gold, %eax
	movl	%eax, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvprintw
	movl	$0, %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
LC1:
	.ascii "Welcome to level %d\0"
	.text
	.globl	_game_loop
	.def	_game_loop;	.scl	2;	.type	32;	.endef
_game_loop:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	$1, -20(%ebp)
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dungeon_gen
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_respawn_creatures
	cmpl	$0, -24(%ebp)
	je	L75
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_p_action
	movl	%eax, -12(%ebp)
L75:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_dungeon_draw
	movl	_px, %edx
	movl	_py, %eax
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	cmpl	$0, -12(%ebp)
	je	L76
	addl	$1, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC1, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvprintw
L76:
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB21:
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
	call	___main
	movl	%esp, %eax
	movl	%eax, -64(%ebp)
	movl	$0, -28(%ebp)
	call	_initscr
	movl	_stdscr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_keypad
	call	_noecho
	movl	$0, (%esp)
	call	_curs_set
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxy
	movl	%eax, -32(%ebp)
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxx
	movl	%eax, -36(%ebp)
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
	leal	12(%esp), %eax
	addl	$0, %eax
	movl	%eax, -48(%ebp)
L79:
	movl	-48(%ebp), %eax
	movl	-36(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	-32(%ebp), %edx
	subl	$1, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_game_loop
	movl	%eax, -28(%ebp)
	cmpl	$27, -28(%ebp)
	jne	L79
	call	_endwin
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	movl	$0, %eax
	movl	-64(%ebp), %esp
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
LFE21:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_mvaddch;	.scl	2;	.type	32;	.endef
	.def	_mvprintw;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_wgetch;	.scl	2;	.type	32;	.endef
	.def	_initscr;	.scl	2;	.type	32;	.endef
	.def	_keypad;	.scl	2;	.type	32;	.endef
	.def	_noecho;	.scl	2;	.type	32;	.endef
	.def	_curs_set;	.scl	2;	.type	32;	.endef
	.def	_getmaxy;	.scl	2;	.type	32;	.endef
	.def	_getmaxx;	.scl	2;	.type	32;	.endef
	.def	_endwin;	.scl	2;	.type	32;	.endef
