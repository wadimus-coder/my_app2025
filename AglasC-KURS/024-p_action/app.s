	.file	"app.c"
	.text
Ltext0:
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
	.file 1 "app.c"
	.loc 1 28 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 27 0
	movl	8(%ebp), %edx
	leal	-1(%edx), %eax
	movl	%eax, -16(%ebp)
LBB2:
	.loc 1 29 0
	movl	$0, -12(%ebp)
	jmp	L2
L7:
	.loc 1 31 0
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	$_monster, %eax
	movl	(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	L3
	.loc 1 31 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	$_monster+4, %eax
	movl	(%eax), %eax
	cmpl	20(%ebp), %eax
	jne	L3
	.loc 1 33 0 is_stmt 1
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	addl	$_monster+8, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jg	L4
	.loc 1 35 0
	movl	16(%ebp), %eax
	imull	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	.loc 1 36 0
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
	.loc 1 41 0
	jmp	L6
L4:
	.loc 1 39 0
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
	.loc 1 41 0
	jmp	L6
L3:
	.loc 1 29 0 discriminator 2
	addl	$1, -12(%ebp)
L2:
	.loc 1 29 0 is_stmt 0 discriminator 1
	cmpl	$9, -12(%ebp)
	jle	L7
L6:
LBE2:
	.loc 1 44 0 is_stmt 1
	movl	$0, %eax
	.loc 1 45 0
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
	.loc 1 47 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 47 0
	movl	12(%ebp), %eax
	.loc 1 46 0
	leal	-1(%eax), %edx
	movl	%edx, -20(%ebp)
	.loc 1 48 0
	movl	_py, %edx
	movl	%edx, -12(%ebp)
	movl	_px, %edx
	movl	%edx, -16(%ebp)
	.loc 1 50 0
	cmpl	$259, 8(%ebp)
	jne	L10
	.loc 1 51 0
	subl	$1, -12(%ebp)
	jmp	L11
L10:
	.loc 1 52 0
	cmpl	$258, 8(%ebp)
	jne	L12
	.loc 1 53 0
	addl	$1, -12(%ebp)
	jmp	L11
L12:
	.loc 1 54 0
	cmpl	$260, 8(%ebp)
	jne	L13
	.loc 1 55 0
	subl	$1, -16(%ebp)
	jmp	L11
L13:
	.loc 1 56 0
	cmpl	$261, 8(%ebp)
	jne	L11
	.loc 1 57 0
	addl	$1, -16(%ebp)
L11:
	.loc 1 59 0
	movl	%eax, %ecx
	movl	-12(%ebp), %edx
	imull	%edx, %ecx
	movl	16(%ebp), %edx
	addl	%edx, %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	cmpb	$32, %dl
	jne	L14
	.loc 1 61 0
	movl	-12(%ebp), %eax
	movl	%eax, _py
	.loc 1 62 0
	movl	-16(%ebp), %eax
	movl	%eax, _px
	jmp	L15
L14:
	.loc 1 64 0
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	L15
	.loc 1 66 0
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_battle
L15:
	.loc 1 68 0
	movl	$0, %eax
	.loc 1 69 0
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
	.loc 1 72 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	.loc 1 72 0
	movl	12(%ebp), %ebx
	.loc 1 71 0
	leal	-1(%ebx), %eax
	movl	%eax, -84(%ebp)
	.loc 1 74 0
	movl	_r_placed, %eax
	testl	%eax, %eax
	jne	L18
LBB3:
	.loc 1 85 0
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
LBB4:
	.loc 1 89 0
	movl	$0, -48(%ebp)
	jmp	L19
L25:
LBB5:
	.loc 1 91 0
	movl	$0, -52(%ebp)
	jmp	L20
L24:
	.loc 1 94 0
	cmpl	$0, -48(%ebp)
	je	L21
	.loc 1 94 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	subl	$1, %eax
	cmpl	-48(%ebp), %eax
	je	L21
	.loc 1 94 0 discriminator 2
	cmpl	$0, -52(%ebp)
	je	L21
	.loc 1 95 0 is_stmt 1
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	je	L21
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	-48(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L22
L21:
	.loc 1 97 0 is_stmt 1
	movl	%ebx, %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movb	$37, (%eax)
	jmp	L23
L22:
	.loc 1 100 0
	movl	%ebx, %edx
	movl	-48(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-52(%ebp), %eax
	addl	%edx, %eax
	movb	$35, (%eax)
L23:
	.loc 1 91 0 discriminator 2
	addl	$1, -52(%ebp)
L20:
	.loc 1 91 0 is_stmt 0 discriminator 1
	movl	-52(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L24
LBE5:
	.loc 1 89 0 is_stmt 1 discriminator 2
	addl	$1, -48(%ebp)
L19:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	-48(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L25
LBE4:
	.loc 1 104 0 is_stmt 1
	jmp	L26
L50:
LBB6:
	.loc 1 106 0
	movl	$0, -56(%ebp)
L36:
	.loc 1 110 0
	movb	$0, -41(%ebp)
	.loc 1 113 0
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
	.loc 1 114 0
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
	.loc 1 117 0
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
	.loc 1 118 0
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
	.loc 1 120 0
	addl	$1, -56(%ebp)
	.loc 1 122 0
	cmpl	$100, -56(%ebp)
	jle	L27
	.loc 1 124 0
	movl	$3, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 125 0
	movl	$3, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 127 0
	jmp	L28
L27:
LBB7:
	.loc 1 131 0
	movl	-12(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	L29
L35:
LBB8:
	.loc 1 133 0
	movl	-16(%ebp), %eax
	movl	%eax, -64(%ebp)
	jmp	L30
L34:
	.loc 1 135 0
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	je	L31
	.loc 1 135 0 is_stmt 0 discriminator 1
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	L31
	.loc 1 136 0 is_stmt 1 discriminator 2
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
	.loc 1 135 0 discriminator 2
	cmpb	$32, %al
	je	L31
	.loc 1 136 0
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
	je	L31
	.loc 1 137 0 discriminator 1
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	addl	$2, %eax
	movzbl	(%edx,%eax), %eax
	.loc 1 136 0 discriminator 1
	cmpb	$32, %al
	je	L31
	.loc 1 137 0
	movl	%ebx, %edx
	movl	-60(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-64(%ebp), %eax
	subl	$2, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$32, %al
	jne	L32
L31:
	.loc 1 140 0
	movb	$1, -41(%ebp)
	.loc 1 141 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%ebp)
	.loc 1 142 0
	jmp	L33
L32:
	.loc 1 133 0 discriminator 2
	addl	$1, -64(%ebp)
L30:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	cmpl	-64(%ebp), %eax
	jge	L34
L33:
LBE8:
	.loc 1 131 0 is_stmt 1 discriminator 2
	addl	$1, -60(%ebp)
L29:
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	cmpl	-60(%ebp), %eax
	jge	L35
LBE7:
	.loc 1 149 0 is_stmt 1
	cmpb	$0, -41(%ebp)
	jne	L36
L28:
LBB9:
	.loc 1 152 0
	movl	-12(%ebp), %eax
	movl	%eax, -68(%ebp)
	jmp	L37
L42:
LBB10:
	.loc 1 154 0
	movl	-16(%ebp), %eax
	movl	%eax, -72(%ebp)
	jmp	L38
L41:
	.loc 1 156 0
	movl	%ebx, %edx
	movl	-68(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L39
	.loc 1 158 0
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -68(%ebp)
	.loc 1 159 0
	jmp	L40
L39:
	.loc 1 163 0 discriminator 2
	movl	%ebx, %edx
	movl	-68(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-72(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	.loc 1 154 0 discriminator 2
	addl	$1, -72(%ebp)
L38:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	cmpl	-72(%ebp), %eax
	jge	L41
L40:
LBE10:
	.loc 1 152 0 is_stmt 1 discriminator 2
	addl	$1, -68(%ebp)
L37:
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	cmpl	-68(%ebp), %eax
	jge	L42
LBE9:
	.loc 1 166 0 is_stmt 1
	movl	_r_placed, %eax
	addl	$1, %eax
	movl	%eax, _r_placed
	.loc 1 170 0
	movl	_r_placed, %eax
	cmpl	$1, %eax
	jle	L43
	.loc 1 172 0
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 173 0
	movl	-32(%ebp), %eax
	movl	%eax, -40(%ebp)
L43:
	.loc 1 176 0
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	.loc 1 177 0
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 179 0
	movl	_r_placed, %eax
	cmpl	$1, %eax
	jle	L26
LBB11:
	.loc 1 182 0
	movl	-36(%ebp), %eax
	movl	%eax, -76(%ebp)
	jmp	L44
L46:
	.loc 1 184 0
	movl	%ebx, %edx
	movl	-76(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	.loc 1 185 0
	movl	-36(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	L45
	.loc 1 186 0
	addl	$1, -76(%ebp)
	jmp	L44
L45:
	.loc 1 188 0
	subl	$1, -76(%ebp)
L44:
	.loc 1 182 0 discriminator 1
	movl	-76(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jne	L46
LBB12:
	.loc 1 191 0
	movl	-40(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	L47
L49:
	.loc 1 193 0
	movl	%ebx, %edx
	movl	-76(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-80(%ebp), %eax
	addl	%edx, %eax
	movb	$32, (%eax)
	.loc 1 194 0
	movl	-40(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	L48
	.loc 1 195 0
	addl	$1, -80(%ebp)
	jmp	L47
L48:
	.loc 1 197 0
	subl	$1, -80(%ebp)
L47:
	.loc 1 191 0 discriminator 1
	movl	-80(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	L49
L26:
LBE12:
LBE11:
LBE6:
	.loc 1 104 0
	movl	_r_placed, %eax
	cmpl	-88(%ebp), %eax
	jl	L50
L18:
LBE3:
	.loc 1 202 0
	movl	$0, %eax
	.loc 1 203 0
	addl	$84, %esp
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
	.loc 1 205 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 205 0
	movl	16(%ebp), %ebx
	.loc 1 204 0
	leal	-1(%ebx), %eax
	movl	%eax, -16(%ebp)
	.loc 1 207 0
	movzbl	_t_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L53
LBB13:
LBB14:
	.loc 1 211 0
	movl	$0, -12(%ebp)
	jmp	L54
L55:
	.loc 1 215 0 discriminator 1
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 216 0 discriminator 1
	call	_rand
	cltd
	idivl	16(%ebp)
	movl	%edx, -24(%ebp)
	.loc 1 219 0 discriminator 1
	movl	%ebx, %edx
	movl	-20(%ebp), %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L55
	.loc 1 221 0 discriminator 2
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	_monster(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 222 0 discriminator 2
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	_monster+4(%eax), %edx
	movl	-24(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 223 0 discriminator 2
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster+8, %eax
	movl	$2, (%eax)
	.loc 1 224 0 discriminator 2
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
	movl	20(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_monster+4, %eax
	movl	(%eax), %eax
	movb	$116, (%ecx,%eax)
	.loc 1 211 0 discriminator 2
	addl	$1, -12(%ebp)
L54:
	.loc 1 211 0 is_stmt 0 discriminator 1
	cmpl	$9, -12(%ebp)
	jle	L55
LBE14:
	.loc 1 227 0 is_stmt 1
	movb	$1, _t_placed
L53:
LBE13:
	.loc 1 232 0
	movzbl	_p_placed, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L56
L57:
	.loc 1 236 0 discriminator 3
	call	_rand
	cltd
	idivl	12(%ebp)
	movl	%edx, %eax
	movl	%eax, _py
	.loc 1 237 0 discriminator 3
	call	_rand
	cltd
	idivl	16(%ebp)
	movl	%edx, %eax
	movl	%eax, _px
	.loc 1 240 0 discriminator 3
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$35, %al
	je	L57
	.loc 1 240 0 is_stmt 0 discriminator 2
	movl	%ebx, %edx
	movl	_py, %eax
	imull	%eax, %edx
	movl	20(%ebp), %eax
	addl	%eax, %edx
	movl	_px, %eax
	movzbl	(%edx,%eax), %eax
	cmpb	$37, %al
	je	L57
	.loc 1 241 0 is_stmt 1
	movb	$1, _p_placed
L56:
	.loc 1 243 0
	movl	$0, %eax
	.loc 1 244 0
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
	.loc 1 246 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 246 0
	movl	12(%ebp), %ebx
	.loc 1 245 0
	leal	-1(%ebx), %eax
	movl	%eax, -20(%ebp)
LBB15:
	.loc 1 248 0
	movl	$0, -12(%ebp)
	jmp	L60
L68:
LBB16:
	.loc 1 250 0
	movl	$0, -16(%ebp)
	jmp	L61
L67:
	.loc 1 253 0
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jne	L62
	.loc 1 254 0
	movl	$32, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L63
L62:
	.loc 1 255 0
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$116, %al
	jne	L64
	.loc 1 256 0
	movl	$116, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L63
L64:
	.loc 1 257 0
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$37, %al
	jne	L65
	.loc 1 258 0
	movl	$37, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L63
L65:
	.loc 1 259 0
	movl	%ebx, %edx
	movl	-12(%ebp), %eax
	imull	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L66
	.loc 1 260 0
	movl	$32, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	jmp	L63
L66:
	.loc 1 263 0
	movl	$35, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
L63:
	.loc 1 250 0 discriminator 2
	addl	$1, -16(%ebp)
L61:
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L67
LBE16:
	.loc 1 248 0 is_stmt 1 discriminator 2
	addl	$1, -12(%ebp)
L60:
	.loc 1 248 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L68
LBE15:
	.loc 1 266 0 is_stmt 1
	movl	_p_gold, %eax
	movl	%eax, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvprintw
	.loc 1 267 0
	movl	$0, %eax
	.loc 1 268 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_game_loop
	.def	_game_loop;	.scl	2;	.type	32;	.endef
_game_loop:
LFB20:
	.loc 1 271 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 271 0
	movl	16(%ebp), %eax
	.loc 1 270 0
	subl	$1, %eax
	movl	%eax, -12(%ebp)
	.loc 1 273 0
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	.loc 1 275 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_dungeon_gen
	.loc 1 276 0
	movl	20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_respawn_creatures
	.loc 1 278 0
	cmpl	$0, 8(%ebp)
	je	L71
	.loc 1 280 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_p_action
L71:
	.loc 1 283 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_dungeon_draw
	.loc 1 285 0
	movl	_px, %edx
	movl	_py, %eax
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 287 0
	movl	$0, %eax
	.loc 1 288 0
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
	.loc 1 291 0
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
	.loc 1 291 0
	call	___main
LVL0:
	movl	%esp, %eax
	movl	%eax, -64(%ebp)
	.loc 1 292 0
	movl	$0, -28(%ebp)
	.loc 1 297 0
	call	_initscr
	.loc 1 298 0
	movl	_stdscr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_keypad
	.loc 1 299 0
	call	_noecho
	.loc 1 300 0
	movl	$0, (%esp)
	call	_curs_set
	.loc 1 301 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxy
	movl	%eax, -32(%ebp)
	.loc 1 301 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxx
	movl	%eax, -36(%ebp)
	.loc 1 302 0
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
L74:
	.loc 1 305 0 discriminator 1
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
	call	_game_loop
	.loc 1 311 0 discriminator 1
	movl	_stdscr, %eax
	.loc 1 311 0 discriminator 1
	movl	%eax, (%esp)
	call	_wgetch
	movl	%eax, -28(%ebp)
	cmpl	$27, -28(%ebp)
	jne	L74
	.loc 1 313 0
	call	_endwin
	.loc 1 315 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 316 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 318 0
	movl	$0, %eax
	movl	-64(%ebp), %esp
	.loc 1 319 0
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
Letext0:
	.file 2 "c:/mingw/include/stdio.h"
	.file 3 "c:/mingw/include/curses.h"
	.file 4 "c:/mingw/include/stdlib.h"
	.file 5 "c:/mingw/include/time.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xe69
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -mtune=generic -march=i586 -g3\0"
	.byte	0xc
	.ascii "app.c\0"
	.ascii "c:\\AglasC-KURS\\024-p_action\0"
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
	.long	0x154
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0xd4
	.long	0x154
	.byte	0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0xd5
	.long	0x74
	.byte	0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0xd6
	.long	0x154
	.byte	0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0xd7
	.long	0x74
	.byte	0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0xd8
	.long	0x74
	.byte	0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0xd9
	.long	0x74
	.byte	0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0xda
	.long	0x74
	.byte	0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0xdb
	.long	0x154
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x6c
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0xdc
	.long	0xcd
	.uleb128 0x7
	.long	0x15a
	.long	0x171
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "_iob\0"
	.byte	0x2
	.byte	0xef
	.long	0x166
	.uleb128 0x6
	.ascii "bool\0"
	.byte	0x3
	.byte	0x55
	.long	0x189
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x6
	.ascii "chtype\0"
	.byte	0x3
	.byte	0x5b
	.long	0x1a8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0xa
	.byte	0x14
	.byte	0x3
	.byte	0x6d
	.long	0x1f9
	.uleb128 0x4
	.ascii "x\0"
	.byte	0x3
	.byte	0x6f
	.long	0x74
	.byte	0
	.uleb128 0x4
	.ascii "y\0"
	.byte	0x3
	.byte	0x70
	.long	0x74
	.byte	0x4
	.uleb128 0x4
	.ascii "button\0"
	.byte	0x3
	.byte	0x71
	.long	0x1f9
	.byte	0x8
	.uleb128 0x4
	.ascii "changes\0"
	.byte	0x3
	.byte	0x72
	.long	0x74
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x215
	.long	0x209
	.uleb128 0xb
	.long	0x209
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
	.long	0x1bd
	.uleb128 0x3
	.ascii "_win\0"
	.byte	0x50
	.byte	0x3
	.byte	0xec
	.long	0x3c4
	.uleb128 0x4
	.ascii "_cury\0"
	.byte	0x3
	.byte	0xee
	.long	0x74
	.byte	0
	.uleb128 0x4
	.ascii "_curx\0"
	.byte	0x3
	.byte	0xef
	.long	0x74
	.byte	0x4
	.uleb128 0x4
	.ascii "_maxy\0"
	.byte	0x3
	.byte	0xf0
	.long	0x74
	.byte	0x8
	.uleb128 0x4
	.ascii "_maxx\0"
	.byte	0x3
	.byte	0xf1
	.long	0x74
	.byte	0xc
	.uleb128 0x4
	.ascii "_begy\0"
	.byte	0x3
	.byte	0xf2
	.long	0x74
	.byte	0x10
	.uleb128 0x4
	.ascii "_begx\0"
	.byte	0x3
	.byte	0xf3
	.long	0x74
	.byte	0x14
	.uleb128 0x4
	.ascii "_flags\0"
	.byte	0x3
	.byte	0xf4
	.long	0x74
	.byte	0x18
	.uleb128 0x4
	.ascii "_attrs\0"
	.byte	0x3
	.byte	0xf5
	.long	0x19a
	.byte	0x1c
	.uleb128 0x4
	.ascii "_bkgd\0"
	.byte	0x3
	.byte	0xf6
	.long	0x19a
	.byte	0x20
	.uleb128 0x4
	.ascii "_clear\0"
	.byte	0x3
	.byte	0xf7
	.long	0x17d
	.byte	0x24
	.uleb128 0x4
	.ascii "_leaveit\0"
	.byte	0x3
	.byte	0xf8
	.long	0x17d
	.byte	0x25
	.uleb128 0x4
	.ascii "_scroll\0"
	.byte	0x3
	.byte	0xf9
	.long	0x17d
	.byte	0x26
	.uleb128 0x4
	.ascii "_nodelay\0"
	.byte	0x3
	.byte	0xfa
	.long	0x17d
	.byte	0x27
	.uleb128 0x4
	.ascii "_immed\0"
	.byte	0x3
	.byte	0xfb
	.long	0x17d
	.byte	0x28
	.uleb128 0x4
	.ascii "_sync\0"
	.byte	0x3
	.byte	0xfc
	.long	0x17d
	.byte	0x29
	.uleb128 0x4
	.ascii "_use_keypad\0"
	.byte	0x3
	.byte	0xfd
	.long	0x17d
	.byte	0x2a
	.uleb128 0x4
	.ascii "_y\0"
	.byte	0x3
	.byte	0xfe
	.long	0x3c4
	.byte	0x2c
	.uleb128 0x4
	.ascii "_firstch\0"
	.byte	0x3
	.byte	0xff
	.long	0x3d0
	.byte	0x30
	.uleb128 0xc
	.ascii "_lastch\0"
	.byte	0x3
	.word	0x100
	.long	0x3d0
	.byte	0x34
	.uleb128 0xc
	.ascii "_tmarg\0"
	.byte	0x3
	.word	0x101
	.long	0x74
	.byte	0x38
	.uleb128 0xc
	.ascii "_bmarg\0"
	.byte	0x3
	.word	0x102
	.long	0x74
	.byte	0x3c
	.uleb128 0xc
	.ascii "_delayms\0"
	.byte	0x3
	.word	0x103
	.long	0x74
	.byte	0x40
	.uleb128 0xc
	.ascii "_parx\0"
	.byte	0x3
	.word	0x104
	.long	0x74
	.byte	0x44
	.uleb128 0xc
	.ascii "_pary\0"
	.byte	0x3
	.word	0x104
	.long	0x74
	.byte	0x48
	.uleb128 0xc
	.ascii "_parent\0"
	.byte	0x3
	.word	0x105
	.long	0x3d6
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3ca
	.uleb128 0x5
	.byte	0x4
	.long	0x19a
	.uleb128 0x5
	.byte	0x4
	.long	0x74
	.uleb128 0x5
	.byte	0x4
	.long	0x236
	.uleb128 0xd
	.ascii "WINDOW\0"
	.byte	0x3
	.word	0x106
	.long	0x236
	.uleb128 0xe
	.byte	0x58
	.byte	0x3
	.word	0x10b
	.long	0x65a
	.uleb128 0xc
	.ascii "alive\0"
	.byte	0x3
	.word	0x10d
	.long	0x17d
	.byte	0
	.uleb128 0xc
	.ascii "autocr\0"
	.byte	0x3
	.word	0x10e
	.long	0x17d
	.byte	0x1
	.uleb128 0xc
	.ascii "cbreak\0"
	.byte	0x3
	.word	0x10f
	.long	0x17d
	.byte	0x2
	.uleb128 0xc
	.ascii "echo\0"
	.byte	0x3
	.word	0x110
	.long	0x17d
	.byte	0x3
	.uleb128 0xc
	.ascii "raw_inp\0"
	.byte	0x3
	.word	0x111
	.long	0x17d
	.byte	0x4
	.uleb128 0xc
	.ascii "raw_out\0"
	.byte	0x3
	.word	0x112
	.long	0x17d
	.byte	0x5
	.uleb128 0xc
	.ascii "audible\0"
	.byte	0x3
	.word	0x113
	.long	0x17d
	.byte	0x6
	.uleb128 0xc
	.ascii "mono\0"
	.byte	0x3
	.word	0x114
	.long	0x17d
	.byte	0x7
	.uleb128 0xc
	.ascii "resized\0"
	.byte	0x3
	.word	0x115
	.long	0x17d
	.byte	0x8
	.uleb128 0xc
	.ascii "orig_attr\0"
	.byte	0x3
	.word	0x116
	.long	0x17d
	.byte	0x9
	.uleb128 0xc
	.ascii "orig_fore\0"
	.byte	0x3
	.word	0x117
	.long	0x215
	.byte	0xa
	.uleb128 0xc
	.ascii "orig_back\0"
	.byte	0x3
	.word	0x118
	.long	0x215
	.byte	0xc
	.uleb128 0xc
	.ascii "cursrow\0"
	.byte	0x3
	.word	0x119
	.long	0x74
	.byte	0x10
	.uleb128 0xc
	.ascii "curscol\0"
	.byte	0x3
	.word	0x11a
	.long	0x74
	.byte	0x14
	.uleb128 0xc
	.ascii "visibility\0"
	.byte	0x3
	.word	0x11b
	.long	0x74
	.byte	0x18
	.uleb128 0xc
	.ascii "orig_cursor\0"
	.byte	0x3
	.word	0x11c
	.long	0x74
	.byte	0x1c
	.uleb128 0xc
	.ascii "lines\0"
	.byte	0x3
	.word	0x11d
	.long	0x74
	.byte	0x20
	.uleb128 0xc
	.ascii "cols\0"
	.byte	0x3
	.word	0x11e
	.long	0x74
	.byte	0x24
	.uleb128 0xc
	.ascii "_trap_mbe\0"
	.byte	0x3
	.word	0x11f
	.long	0x1a8
	.byte	0x28
	.uleb128 0xc
	.ascii "_map_mbe_to_key\0"
	.byte	0x3
	.word	0x120
	.long	0x1a8
	.byte	0x2c
	.uleb128 0xc
	.ascii "mouse_wait\0"
	.byte	0x3
	.word	0x121
	.long	0x74
	.byte	0x30
	.uleb128 0xc
	.ascii "slklines\0"
	.byte	0x3
	.word	0x124
	.long	0x74
	.byte	0x34
	.uleb128 0xc
	.ascii "slk_winptr\0"
	.byte	0x3
	.word	0x125
	.long	0x65a
	.byte	0x38
	.uleb128 0xc
	.ascii "linesrippedoff\0"
	.byte	0x3
	.word	0x126
	.long	0x74
	.byte	0x3c
	.uleb128 0xc
	.ascii "linesrippedoffontop\0"
	.byte	0x3
	.word	0x127
	.long	0x74
	.byte	0x40
	.uleb128 0xc
	.ascii "delaytenths\0"
	.byte	0x3
	.word	0x129
	.long	0x74
	.byte	0x44
	.uleb128 0xc
	.ascii "_preserve\0"
	.byte	0x3
	.word	0x12b
	.long	0x17d
	.byte	0x48
	.uleb128 0xc
	.ascii "_restore\0"
	.byte	0x3
	.word	0x12d
	.long	0x74
	.byte	0x4c
	.uleb128 0xc
	.ascii "save_key_modifiers\0"
	.byte	0x3
	.word	0x12f
	.long	0x17d
	.byte	0x50
	.uleb128 0xc
	.ascii "return_key_modifiers\0"
	.byte	0x3
	.word	0x131
	.long	0x17d
	.byte	0x51
	.uleb128 0xc
	.ascii "key_code\0"
	.byte	0x3
	.word	0x133
	.long	0x17d
	.byte	0x52
	.uleb128 0xc
	.ascii "line_color\0"
	.byte	0x3
	.word	0x13f
	.long	0x215
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3dc
	.uleb128 0xd
	.ascii "SCREEN\0"
	.byte	0x3
	.word	0x140
	.long	0x3eb
	.uleb128 0xf
	.ascii "LINES\0"
	.byte	0x3
	.word	0x152
	.long	0x74
	.uleb128 0xf
	.ascii "COLS\0"
	.byte	0x3
	.word	0x153
	.long	0x74
	.uleb128 0xf
	.ascii "stdscr\0"
	.byte	0x3
	.word	0x154
	.long	0x65a
	.uleb128 0xf
	.ascii "curscr\0"
	.byte	0x3
	.word	0x155
	.long	0x65a
	.uleb128 0xf
	.ascii "SP\0"
	.byte	0x3
	.word	0x156
	.long	0x6b3
	.uleb128 0x5
	.byte	0x4
	.long	0x660
	.uleb128 0xf
	.ascii "Mouse_status\0"
	.byte	0x3
	.word	0x157
	.long	0x222
	.uleb128 0xf
	.ascii "COLORS\0"
	.byte	0x3
	.word	0x158
	.long	0x74
	.uleb128 0xf
	.ascii "COLOR_PAIRS\0"
	.byte	0x3
	.word	0x159
	.long	0x74
	.uleb128 0xf
	.ascii "TABSIZE\0"
	.byte	0x3
	.word	0x15a
	.long	0x74
	.uleb128 0x7
	.long	0x19a
	.long	0x70c
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.ascii "acs_map\0"
	.byte	0x3
	.word	0x15b
	.long	0x701
	.uleb128 0x7
	.long	0x6c
	.long	0x727
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.ascii "ttytype\0"
	.byte	0x3
	.word	0x15c
	.long	0x71c
	.uleb128 0x9
	.ascii "_argc\0"
	.byte	0x4
	.byte	0x63
	.long	0x74
	.uleb128 0x9
	.ascii "_argv\0"
	.byte	0x4
	.byte	0x64
	.long	0x751
	.uleb128 0x5
	.byte	0x4
	.long	0x154
	.uleb128 0x9
	.ascii "__mb_cur_max\0"
	.byte	0x4
	.byte	0x8e
	.long	0x74
	.uleb128 0x9
	.ascii "_sys_nerr\0"
	.byte	0x4
	.byte	0xca
	.long	0x74
	.uleb128 0x7
	.long	0x154
	.long	0x787
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.ascii "_sys_errlist\0"
	.byte	0x4
	.byte	0xe3
	.long	0x77c
	.uleb128 0x9
	.ascii "_osver\0"
	.byte	0x4
	.byte	0xfa
	.long	0x7b
	.uleb128 0x9
	.ascii "_winver\0"
	.byte	0x4
	.byte	0xfb
	.long	0x7b
	.uleb128 0x9
	.ascii "_winmajor\0"
	.byte	0x4
	.byte	0xfc
	.long	0x7b
	.uleb128 0x9
	.ascii "_winminor\0"
	.byte	0x4
	.byte	0xfd
	.long	0x7b
	.uleb128 0xf
	.ascii "_fmode\0"
	.byte	0x4
	.word	0x145
	.long	0x74
	.uleb128 0xf
	.ascii "_daylight\0"
	.byte	0x5
	.word	0x15c
	.long	0x74
	.uleb128 0xf
	.ascii "_timezone\0"
	.byte	0x5
	.word	0x15d
	.long	0xc1
	.uleb128 0x7
	.long	0x154
	.long	0x81d
	.uleb128 0xb
	.long	0x209
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.ascii "_tzname\0"
	.byte	0x5
	.word	0x15e
	.long	0x80d
	.uleb128 0xf
	.ascii "daylight\0"
	.byte	0x5
	.word	0x17d
	.long	0x74
	.uleb128 0xf
	.ascii "timezone\0"
	.byte	0x5
	.word	0x17e
	.long	0xc1
	.uleb128 0xf
	.ascii "tzname\0"
	.byte	0x5
	.word	0x17f
	.long	0x80d
	.uleb128 0x10
	.ascii "py\0"
	.byte	0x1
	.byte	0xa
	.long	0x74
	.uleb128 0x5
	.byte	0x3
	.long	_py
	.uleb128 0x10
	.ascii "px\0"
	.byte	0x1
	.byte	0xb
	.long	0x74
	.uleb128 0x5
	.byte	0x3
	.long	_px
	.uleb128 0x10
	.ascii "p_gold\0"
	.byte	0x1
	.byte	0xd
	.long	0x74
	.uleb128 0x5
	.byte	0x3
	.long	_p_gold
	.uleb128 0x10
	.ascii "t_placed\0"
	.byte	0x1
	.byte	0xe
	.long	0x8a8
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
	.long	0x8a8
	.uleb128 0x5
	.byte	0x3
	.long	_p_placed
	.uleb128 0x10
	.ascii "r_placed\0"
	.byte	0x1
	.byte	0x10
	.long	0x74
	.uleb128 0x5
	.byte	0x3
	.long	_r_placed
	.uleb128 0x3
	.ascii "Monsters\0"
	.byte	0xc
	.byte	0x1
	.byte	0x12
	.long	0x90e
	.uleb128 0x4
	.ascii "y\0"
	.byte	0x1
	.byte	0x14
	.long	0x74
	.byte	0
	.uleb128 0x4
	.ascii "x\0"
	.byte	0x1
	.byte	0x15
	.long	0x74
	.byte	0x4
	.uleb128 0x4
	.ascii "hp\0"
	.byte	0x1
	.byte	0x16
	.long	0x74
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0x8dd
	.long	0x91e
	.uleb128 0xb
	.long	0x209
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.ascii "monster\0"
	.byte	0x1
	.byte	0x19
	.long	0x90e
	.uleb128 0x5
	.byte	0x3
	.long	_monster
	.uleb128 0x11
	.ascii "main\0"
	.byte	0x1
	.word	0x122
	.long	0x74
	.long	LFB21
	.long	LFE21-LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x98b
	.uleb128 0x12
	.ascii "c\0"
	.byte	0x1
	.word	0x124
	.long	0x74
	.uleb128 0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x12
	.ascii "rows\0"
	.byte	0x1
	.word	0x126
	.long	0x74
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x13
	.secrel32	LASF0
	.byte	0x1
	.word	0x127
	.long	0x74
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x12
	.ascii "map\0"
	.byte	0x1
	.word	0x12e
	.long	0x98b
	.uleb128 0x3
	.byte	0x75
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0x9a7
	.uleb128 0x14
	.long	0x209
	.uleb128 0x3
	.byte	0x75
	.sleb128 -44
	.byte	0x6
	.uleb128 0x14
	.long	0x209
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.ascii "game_loop\0"
	.byte	0x1
	.word	0x10e
	.long	0x74
	.long	LFB20
	.long	LFE20-LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xa03
	.uleb128 0x16
	.ascii "c\0"
	.byte	0x1
	.word	0x10e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.ascii "rows\0"
	.byte	0x1
	.word	0x10e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1
	.word	0x10e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.ascii "map\0"
	.byte	0x1
	.word	0x10e
	.long	0xa12
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xa12
	.uleb128 0x18
	.long	0x209
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xa03
	.uleb128 0x19
	.ascii "dungeon_draw\0"
	.byte	0x1
	.byte	0xf5
	.long	0x74
	.long	LFB19
	.long	LFE19-LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xa92
	.uleb128 0x1a
	.ascii "rows\0"
	.byte	0x1
	.byte	0xf5
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	LASF0
	.byte	0x1
	.byte	0xf5
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.ascii "map\0"
	.byte	0x1
	.byte	0xf5
	.long	0xaa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	LBB15
	.long	LBE15-LBB15
	.uleb128 0x1d
	.ascii "y\0"
	.byte	0x1
	.byte	0xf8
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.long	LBB16
	.long	LBE16-LBB16
	.uleb128 0x1d
	.ascii "x\0"
	.byte	0x1
	.byte	0xfa
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xaa1
	.uleb128 0x18
	.long	0x209
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xa92
	.uleb128 0x19
	.ascii "respawn_creatures\0"
	.byte	0x1
	.byte	0xcc
	.long	0x74
	.long	LFB18
	.long	LFE18-LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xb40
	.uleb128 0x1a
	.ascii "c\0"
	.byte	0x1
	.byte	0xcc
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.ascii "rows\0"
	.byte	0x1
	.byte	0xcc
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.secrel32	LASF0
	.byte	0x1
	.byte	0xcc
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.ascii "map\0"
	.byte	0x1
	.byte	0xcc
	.long	0xb4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	LBB13
	.long	LBE13-LBB13
	.uleb128 0x1d
	.ascii "my\0"
	.byte	0x1
	.byte	0xd1
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.ascii "mx\0"
	.byte	0x1
	.byte	0xd1
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	LBB14
	.long	LBE14-LBB14
	.uleb128 0x1d
	.ascii "m\0"
	.byte	0x1
	.byte	0xd3
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xb4f
	.uleb128 0x18
	.long	0x209
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xb40
	.uleb128 0x19
	.ascii "dungeon_gen\0"
	.byte	0x1
	.byte	0x47
	.long	0x74
	.long	LFB17
	.long	LFE17-LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xd57
	.uleb128 0x1a
	.ascii "rows\0"
	.byte	0x1
	.byte	0x47
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	LASF0
	.byte	0x1
	.byte	0x47
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.ascii "map\0"
	.byte	0x1
	.byte	0x47
	.long	0xd66
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x1d
	.ascii "ry\0"
	.byte	0x1
	.byte	0x4d
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "rx\0"
	.byte	0x1
	.byte	0x4e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.ascii "r_size_y\0"
	.byte	0x1
	.byte	0x4f
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.ascii "r_size_x\0"
	.byte	0x1
	.byte	0x50
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.ascii "r_center_y\0"
	.byte	0x1
	.byte	0x51
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.ascii "r_center_x\0"
	.byte	0x1
	.byte	0x52
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.ascii "r_old_center_y\0"
	.byte	0x1
	.byte	0x53
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.ascii "r_old_center_x\0"
	.byte	0x1
	.byte	0x54
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.ascii "room_num\0"
	.byte	0x1
	.byte	0x55
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.ascii "collision\0"
	.byte	0x1
	.byte	0x56
	.long	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1e
	.long	LBB4
	.long	LBE4-LBB4
	.long	0xc9e
	.uleb128 0x1d
	.ascii "y\0"
	.byte	0x1
	.byte	0x59
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x1d
	.ascii "x\0"
	.byte	0x1
	.byte	0x5b
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	LBB6
	.long	LBE6-LBB6
	.uleb128 0x1d
	.ascii "try_counter\0"
	.byte	0x1
	.byte	0x6a
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	LBB7
	.long	LBE7-LBB7
	.long	0xcef
	.uleb128 0x1d
	.ascii "y\0"
	.byte	0x1
	.byte	0x83
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.long	LBB8
	.long	LBE8-LBB8
	.uleb128 0x1d
	.ascii "x\0"
	.byte	0x1
	.byte	0x85
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	LBB9
	.long	LBE9-LBB9
	.long	0xd21
	.uleb128 0x1d
	.ascii "y\0"
	.byte	0x1
	.byte	0x98
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.long	LBB10
	.long	LBE10-LBB10
	.uleb128 0x1d
	.ascii "x\0"
	.byte	0x1
	.byte	0x9a
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	LBB11
	.long	LBE11-LBB11
	.uleb128 0x1d
	.ascii "path_y\0"
	.byte	0x1
	.byte	0xb5
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	LBB12
	.long	LBE12-LBB12
	.uleb128 0x1d
	.ascii "x\0"
	.byte	0x1
	.byte	0xbf
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xd66
	.uleb128 0x18
	.long	0x209
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xd57
	.uleb128 0x19
	.ascii "p_action\0"
	.byte	0x1
	.byte	0x2e
	.long	0x74
	.long	LFB16
	.long	LFE16-LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd3
	.uleb128 0x1a
	.ascii "c\0"
	.byte	0x1
	.byte	0x2e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.secrel32	LASF0
	.byte	0x1
	.byte	0x2e
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.ascii "map\0"
	.byte	0x1
	.byte	0x2e
	.long	0xde2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.ascii "dir_y\0"
	.byte	0x1
	.byte	0x30
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.ascii "dir_x\0"
	.byte	0x1
	.byte	0x30
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xde2
	.uleb128 0x18
	.long	0x209
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xdd3
	.uleb128 0x19
	.ascii "battle\0"
	.byte	0x1
	.byte	0x1b
	.long	0x74
	.long	LFB15
	.long	LFE15-LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xe57
	.uleb128 0x1b
	.secrel32	LASF0
	.byte	0x1
	.byte	0x1b
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.ascii "map\0"
	.byte	0x1
	.byte	0x1b
	.long	0xe66
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.ascii "dir_y\0"
	.byte	0x1
	.byte	0x1b
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.ascii "dir_x\0"
	.byte	0x1
	.byte	0x1b
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x1d
	.ascii "m\0"
	.byte	0x1
	.byte	0x1d
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x6c
	.long	0xe66
	.uleb128 0x18
	.long	0x209
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xe57
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
LASF0:
	.ascii "colms\0"
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_mvaddch;	.scl	2;	.type	32;	.endef
	.def	_mvprintw;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_initscr;	.scl	2;	.type	32;	.endef
	.def	_keypad;	.scl	2;	.type	32;	.endef
	.def	_noecho;	.scl	2;	.type	32;	.endef
	.def	_curs_set;	.scl	2;	.type	32;	.endef
	.def	_getmaxy;	.scl	2;	.type	32;	.endef
	.def	_getmaxx;	.scl	2;	.type	32;	.endef
	.def	_wgetch;	.scl	2;	.type	32;	.endef
	.def	_endwin;	.scl	2;	.type	32;	.endef
