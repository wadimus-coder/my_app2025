	.file	"app.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "C:/AglasC-KURS/022-struct" "app.c"
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
.LFB39:
	.file 1 "C:/MinGW61/x86_64-w64-mingw32/include/time.h"
	.loc 1 256 71
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 256 80
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__time64(%rip), %rax
	call	*%rax
.LVL0:
	.loc 1 256 96
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.seh_endproc
	.globl	py
	.bss
	.align 4
py:
	.space 4
	.globl	px
	.align 4
px:
	.space 4
	.globl	p_gold
	.align 4
p_gold:
	.space 4
	.globl	t_placed
t_placed:
	.space 1
	.globl	p_placed
p_placed:
	.space 1
	.globl	r_placed
	.align 4
r_placed:
	.space 4
	.globl	monster
	.align 32
monster:
	.space 120
	.text
	.globl	dungeon_gen
	.def	dungeon_gen;	.scl	2;	.type	32;	.endef
	.seh_proc	dungeon_gen
dungeon_gen:
.LFB49:
	.file 2 "app.c"
	.loc 2 28 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$136, %rsp
	.seh_stackalloc	136
	.cfi_def_cfa_offset 160
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movq	%r8, 48(%rbp)
	.loc 2 27 45
	movl	40(%rbp), %ebx
	movslq	%ebx, %rax
	subq	$1, %rax
	.loc 2 27 5
	movq	%rax, -80(%rbp)
	.loc 2 29 9
	movl	r_placed(%rip), %eax
	.loc 2 29 8
	testl	%eax, %eax
	jne	.L4
.LBB2:
	.loc 2 40 24
	call	rand
	movl	%eax, %ecx
	.loc 2 40 31 discriminator 1
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 2 40 13 discriminator 1
	leal	5(%rdx), %eax
	movl	%eax, -84(%rbp)
.LBB3:
	.loc 2 44 18
	movl	$0, -40(%rbp)
	.loc 2 44 9
	jmp	.L5
.L11:
.LBB4:
	.loc 2 46 22
	movl	$0, -44(%rbp)
	.loc 2 46 13
	jmp	.L6
.L10:
	.loc 2 49 20
	cmpl	$0, -40(%rbp)
	je	.L7
	.loc 2 49 41 discriminator 1
	movl	32(%rbp), %eax
	subl	$1, %eax
	.loc 2 49 28 discriminator 1
	cmpl	%eax, -40(%rbp)
	je	.L7
	.loc 2 49 45 discriminator 2
	cmpl	$0, -44(%rbp)
	je	.L7
	.loc 2 50 28
	movl	-44(%rbp), %eax
	cmpl	40(%rbp), %eax
	je	.L7
	.loc 2 50 42 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	32(%rbp), %eax
	jne	.L8
.L7:
	.loc 2 52 24
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 52 31
	movl	-44(%rbp), %eax
	cltq
	movb	$37, (%rdx,%rax)
	jmp	.L9
.L8:
	.loc 2 55 24
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 55 31
	movl	-44(%rbp), %eax
	cltq
	movb	$35, (%rdx,%rax)
.L9:
	.loc 2 46 42 discriminator 2
	addl	$1, -44(%rbp)
.L6:
	.loc 2 46 31 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	40(%rbp), %eax
	jle	.L10
.LBE4:
	.loc 2 44 37 discriminator 2
	addl	$1, -40(%rbp)
.L5:
	.loc 2 44 27 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	32(%rbp), %eax
	jle	.L11
.LBE3:
	.loc 2 59 15
	jmp	.L12
.L36:
.LBB5:
	.loc 2 61 17
	movl	$0, -48(%rbp)
.L22:
	.loc 2 65 27
	movb	$0, -33(%rbp)
	.loc 2 68 22
	call	rand
	.loc 2 68 37 discriminator 1
	movl	32(%rbp), %edx
	leal	-3(%rdx), %ecx
	.loc 2 68 29 discriminator 1
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	.loc 2 68 20 discriminator 1
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	.loc 2 69 22
	call	rand
	.loc 2 69 38 discriminator 1
	movl	40(%rbp), %edx
	leal	-3(%rdx), %ecx
	.loc 2 69 29 discriminator 1
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %eax
	.loc 2 69 20 discriminator 1
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	.loc 2 72 28
	call	rand
	movl	%eax, %ecx
	.loc 2 72 35 discriminator 1
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	.loc 2 72 26 discriminator 1
	leal	5(%rdx), %eax
	movl	%eax, -12(%rbp)
	.loc 2 73 28
	call	rand
	movl	%eax, %ecx
	.loc 2 73 35 discriminator 1
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
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
	.loc 2 73 26 discriminator 1
	leal	8(%rdx), %eax
	movl	%eax, -16(%rbp)
	.loc 2 75 28
	addl	$1, -48(%rbp)
	.loc 2 77 20
	cmpl	$100, -48(%rbp)
	jle	.L13
	.loc 2 79 29
	movl	$3, -8(%rbp)
	.loc 2 79 24
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 2 80 41
	movl	$3, -16(%rbp)
	.loc 2 80 30
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 2 82 21
	jmp	.L14
.L13:
.LBB6:
	.loc 2 86 26
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
	.loc 2 86 17
	jmp	.L15
.L21:
.LBB7:
	.loc 2 88 30
	movl	-8(%rbp), %eax
	movl	%eax, -56(%rbp)
	.loc 2 88 21
	jmp	.L16
.L20:
	.loc 2 90 32
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 90 35
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 90 28
	cmpb	$37, %al
	je	.L17
	.loc 2 90 52 discriminator 1
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 90 55 discriminator 1
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 90 46 discriminator 1
	cmpb	$32, %al
	je	.L17
	.loc 2 91 35
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	.loc 2 91 32
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 91 39
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 90 66 discriminator 2
	cmpb	$32, %al
	je	.L17
	.loc 2 91 59
	movl	-52(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	.loc 2 91 56
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 91 63
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 91 50
	cmpb	$32, %al
	je	.L17
	.loc 2 92 32
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 92 38
	movl	-56(%rbp), %eax
	addl	$2, %eax
	.loc 2 92 35
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 91 74 discriminator 1
	cmpb	$32, %al
	je	.L17
	.loc 2 92 56
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 92 62
	movl	-56(%rbp), %eax
	subl	$2, %eax
	.loc 2 92 59
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 92 50
	cmpb	$32, %al
	jne	.L18
.L17:
	.loc 2 95 39
	movb	$1, -33(%rbp)
	.loc 2 96 31
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	.loc 2 97 29
	jmp	.L19
.L18:
	.loc 2 88 59 discriminator 2
	addl	$1, -56(%rbp)
.L16:
	.loc 2 88 46 discriminator 1
	movl	-8(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	.loc 2 88 40 discriminator 1
	cmpl	%eax, -56(%rbp)
	jle	.L20
.L19:
.LBE7:
	.loc 2 86 55 discriminator 2
	addl	$1, -52(%rbp)
.L15:
	.loc 2 86 42 discriminator 1
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 2 86 36 discriminator 1
	cmpl	%eax, -52(%rbp)
	jle	.L21
.LBE6:
	.loc 2 104 30
	cmpb	$0, -33(%rbp)
	jne	.L22
.L14:
.LBB8:
	.loc 2 107 22
	movl	-4(%rbp), %eax
	movl	%eax, -60(%rbp)
	.loc 2 107 13
	jmp	.L23
.L28:
.LBB9:
	.loc 2 109 26
	movl	-8(%rbp), %eax
	movl	%eax, -64(%rbp)
	.loc 2 109 17
	jmp	.L24
.L27:
	.loc 2 111 28
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 111 31
	movl	-64(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 111 24
	cmpb	$37, %al
	jne	.L25
	.loc 2 113 27
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	.loc 2 114 25
	jmp	.L26
.L25:
	.loc 2 118 28
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 118 35
	movl	-64(%rbp), %eax
	cltq
	movb	$32, (%rdx,%rax)
	.loc 2 109 55 discriminator 2
	addl	$1, -64(%rbp)
.L24:
	.loc 2 109 42 discriminator 1
	movl	-8(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	.loc 2 109 36 discriminator 1
	cmpl	%eax, -64(%rbp)
	jle	.L27
.L26:
.LBE9:
	.loc 2 107 51 discriminator 2
	addl	$1, -60(%rbp)
.L23:
	.loc 2 107 38 discriminator 1
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 2 107 32 discriminator 1
	cmpl	%eax, -60(%rbp)
	jle	.L28
.LBE8:
	.loc 2 121 21
	movl	r_placed(%rip), %eax
	addl	$1, %eax
	movl	%eax, r_placed(%rip)
	.loc 2 125 26
	movl	r_placed(%rip), %eax
	.loc 2 125 16
	cmpl	$1, %eax
	jle	.L29
	.loc 2 127 32
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 2 128 32
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.L29:
	.loc 2 131 41
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	.loc 2 131 24
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 2 132 41
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	.loc 2 132 24
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 134 26
	movl	r_placed(%rip), %eax
	.loc 2 134 16
	cmpl	$1, %eax
	jle	.L12
.LBB10:
	.loc 2 137 29
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 2 137 17
	jmp	.L30
.L32:
	.loc 2 139 24
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 139 49
	movl	-32(%rbp), %eax
	cltq
	movb	$32, (%rdx,%rax)
	.loc 2 140 24
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L31
	.loc 2 141 31
	addl	$1, -68(%rbp)
	jmp	.L30
.L31:
	.loc 2 143 31
	subl	$1, -68(%rbp)
.L30:
	.loc 2 137 54 discriminator 1
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L32
.LBB11:
	.loc 2 146 26
	movl	-32(%rbp), %eax
	movl	%eax, -72(%rbp)
	.loc 2 146 17
	jmp	.L33
.L35:
	.loc 2 148 24
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 148 36
	movl	-72(%rbp), %eax
	cltq
	movb	$32, (%rdx,%rax)
	.loc 2 149 24
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L34
	.loc 2 150 26
	addl	$1, -72(%rbp)
	jmp	.L33
.L34:
	.loc 2 152 26
	subl	$1, -72(%rbp)
.L33:
	.loc 2 146 48 discriminator 1
	movl	-72(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L35
.L12:
.LBE11:
.LBE10:
.LBE5:
	.loc 2 59 25
	movl	r_placed(%rip), %eax
	cmpl	%eax, -84(%rbp)
	jg	.L36
.L4:
.LBE2:
	.loc 2 157 12
	movl	$0, %eax
	.loc 2 158 1
	addq	$136, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -120
	ret
	.cfi_endproc
.LFE49:
	.seh_endproc
	.globl	dungeon_draw
	.def	dungeon_draw;	.scl	2;	.type	32;	.endef
	.seh_proc	dungeon_draw
dungeon_draw:
.LFB50:
	.loc 2 160 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movq	%r8, 48(%rbp)
	.loc 2 159 46
	movl	40(%rbp), %ebx
	movslq	%ebx, %rax
	subq	$1, %rax
	.loc 2 159 5
	movq	%rax, -16(%rbp)
.LBB12:
	.loc 2 163 14
	movl	$0, -4(%rbp)
	.loc 2 163 5
	jmp	.L39
.L47:
.LBB13:
	.loc 2 165 18
	movl	$0, -8(%rbp)
	.loc 2 165 9
	jmp	.L40
.L46:
	.loc 2 168 16
	movl	-4(%rbp), %eax
	cmpl	32(%rbp), %eax
	jne	.L41
	.loc 2 169 17
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$32, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L42
.L41:
	.loc 2 170 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 170 28
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 170 21
	cmpb	$116, %al
	jne	.L43
	.loc 2 171 17
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$116, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L42
.L43:
	.loc 2 172 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 172 28
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 172 21
	cmpb	$37, %al
	jne	.L44
	.loc 2 173 17
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$37, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L42
.L44:
	.loc 2 174 25
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 174 28
	movl	-8(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 174 21
	cmpb	$32, %al
	jne	.L45
	.loc 2 175 17
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$32, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L42
.L45:
	.loc 2 178 17
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	$35, %r8d
	movl	%eax, %ecx
	call	mvaddch
.L42:
	.loc 2 165 38 discriminator 2
	addl	$1, -8(%rbp)
.L40:
	.loc 2 165 27 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	40(%rbp), %eax
	jle	.L46
.LBE13:
	.loc 2 163 33 discriminator 2
	addl	$1, -4(%rbp)
.L39:
	.loc 2 163 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	32(%rbp), %eax
	jle	.L47
.LBE12:
	.loc 2 181 12
	movl	$0, %eax
	.loc 2 182 1
	addq	$56, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -40
	ret
	.cfi_endproc
.LFE50:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Gold : %d\0"
	.text
	.globl	game_loop
	.def	game_loop;	.scl	2;	.type	32;	.endef
	.seh_proc	game_loop
game_loop:
.LFB51:
	.loc 2 185 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 96
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movq	%r9, 56(%rbp)
	.loc 2 184 50
	movl	48(%rbp), %ebx
	movslq	%ebx, %rax
	subq	$1, %rax
	.loc 2 184 5
	movq	%rax, -16(%rbp)
	.loc 2 187 11
	movl	$0, %ecx
	call	time
	.loc 2 187 5 discriminator 1
	movl	%eax, %ecx
	call	srand
	.loc 2 189 5
	movq	56(%rbp), %rcx
	movl	48(%rbp), %edx
	movl	40(%rbp), %eax
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	dungeon_gen
	.loc 2 191 8
	cmpl	$259, 32(%rbp)
	jne	.L50
	.loc 2 191 30 discriminator 1
	movl	py(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	.loc 2 191 26 discriminator 1
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 191 34 discriminator 1
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 191 20 discriminator 1
	cmpb	$32, %al
	jne	.L50
	.loc 2 192 11
	movl	py(%rip), %eax
	subl	$1, %eax
	movl	%eax, py(%rip)
	jmp	.L51
.L50:
	.loc 2 193 13
	cmpl	$258, 32(%rbp)
	jne	.L52
	.loc 2 193 37 discriminator 1
	movl	py(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	.loc 2 193 33 discriminator 1
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 193 41 discriminator 1
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 193 27 discriminator 1
	cmpb	$32, %al
	jne	.L52
	.loc 2 194 11
	movl	py(%rip), %eax
	addl	$1, %eax
	movl	%eax, py(%rip)
	jmp	.L51
.L52:
	.loc 2 195 13
	cmpl	$260, 32(%rbp)
	jne	.L53
	.loc 2 195 33 discriminator 1
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 195 41 discriminator 1
	movl	px(%rip), %eax
	subl	$1, %eax
	.loc 2 195 37 discriminator 1
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 195 27 discriminator 1
	cmpb	$32, %al
	jne	.L53
	.loc 2 196 11
	movl	px(%rip), %eax
	subl	$1, %eax
	movl	%eax, px(%rip)
	jmp	.L51
.L53:
	.loc 2 197 13
	cmpl	$261, 32(%rbp)
	jne	.L51
	.loc 2 197 34 discriminator 1
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 197 42 discriminator 1
	movl	px(%rip), %eax
	addl	$1, %eax
	.loc 2 197 38 discriminator 1
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 197 28 discriminator 1
	cmpb	$32, %al
	jne	.L51
	.loc 2 198 11
	movl	px(%rip), %eax
	addl	$1, %eax
	movl	%eax, px(%rip)
.L51:
	.loc 2 200 9
	movzbl	t_placed(%rip), %eax
	xorl	$1, %eax
	.loc 2 200 8
	testb	%al, %al
	je	.L54
.LBB14:
.LBB15:
	.loc 2 204 18
	movl	$0, -4(%rbp)
	.loc 2 204 9
	jmp	.L55
.L56:
	.loc 2 208 22
	call	rand
	.loc 2 208 20 discriminator 1
	cltd
	idivl	40(%rbp)
	movl	%edx, -20(%rbp)
	.loc 2 210 22
	call	rand
	.loc 2 210 20 discriminator 1
	cltd
	idivl	48(%rbp)
	movl	%edx, -24(%rbp)
	.loc 2 213 23 discriminator 1
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 213 27 discriminator 1
	movl	-24(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 213 32 discriminator 1
	cmpb	$32, %al
	jne	.L56
	.loc 2 215 26
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	leaq	4+monster(%rip), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	.loc 2 216 26
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	leaq	monster(%rip), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	.loc 2 217 27
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	8+monster(%rip), %rax
	movl	$2, (%rdx,%rax)
	.loc 2 219 27
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	4+monster(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	.loc 2 219 16
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 219 41
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	monster(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 219 45
	cltq
	movb	$116, (%rcx,%rax)
	.loc 2 204 34 discriminator 2
	addl	$1, -4(%rbp)
.L55:
	.loc 2 204 27 discriminator 1
	cmpl	$9, -4(%rbp)
	jle	.L56
.LBE15:
	.loc 2 222 18
	movb	$1, t_placed(%rip)
.L54:
.LBE14:
	.loc 2 225 5
	movq	56(%rbp), %rcx
	movl	48(%rbp), %edx
	movl	40(%rbp), %eax
	movq	%rcx, %r8
	movl	%eax, %ecx
	call	dungeon_draw
	.loc 2 227 9
	movzbl	p_placed(%rip), %eax
	xorl	$1, %eax
	.loc 2 227 8
	testb	%al, %al
	je	.L57
.L58:
	.loc 2 231 18
	call	rand
	.loc 2 231 25 discriminator 1
	cltd
	idivl	40(%rbp)
	movl	%edx, %eax
	.loc 2 231 16 discriminator 1
	movl	%eax, py(%rip)
	.loc 2 232 18
	call	rand
	.loc 2 232 25 discriminator 1
	cltd
	idivl	48(%rbp)
	movl	%edx, %eax
	.loc 2 232 16 discriminator 1
	movl	%eax, px(%rip)
	.loc 2 235 19 discriminator 3
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 235 23 discriminator 3
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 235 35 discriminator 3
	cmpb	$35, %al
	je	.L58
	.loc 2 235 41 discriminator 2
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 235 45 discriminator 2
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 235 35 discriminator 2
	cmpb	$37, %al
	je	.L58
	.loc 2 236 18
	movb	$1, p_placed(%rip)
.L57:
	.loc 2 250 5
	movl	px(%rip), %edx
	movl	py(%rip), %eax
	movl	$64, %r8d
	movl	%eax, %ecx
	call	mvaddch
	.loc 2 251 5
	movl	p_gold(%rip), %edx
	movl	40(%rbp), %eax
	movl	%edx, %r9d
	leaq	.LC0(%rip), %r8
	movl	$0, %edx
	movl	%eax, %ecx
	call	mvprintw
	.loc 2 252 12
	movl	$0, %eax
	.loc 2 253 1
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE51:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB52:
	.loc 2 256 1
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.seh_stackalloc	80
	.cfi_def_cfa_offset 112
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.cfi_def_cfa 6, 32
	.seh_endprologue
	.loc 2 256 1
	call	__main
	movq	%rsp, %rax
	movq	%rax, %rsi
	.loc 2 257 9
	movl	$0, -4(%rbp)
	.loc 2 262 5
	call	initscr
	.loc 2 263 5
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	keypad
	.loc 2 264 5
	call	noecho
	.loc 2 265 5
	movl	$0, %ecx
	call	curs_set
	.loc 2 266 6
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	getmaxy
	movl	%eax, -8(%rbp)
	.loc 2 266 6 discriminator 1
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	getmaxx
	movl	%eax, -12(%rbp)
	.loc 2 267 5
	movl	-12(%rbp), %r9d
	movl	-8(%rbp), %r8d
	.loc 2 267 10
	movslq	%r9d, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movslq	%r8d, %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movslq	%r9d, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movslq	%r8d, %rax
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rbx, %r11
	imulq	%rax, %r11
	movq	%rdx, %r10
	imulq	%rcx, %r10
	addq	%r11, %r10
	mulq	%rcx
	leaq	(%r10,%rdx), %rcx
	movq	%rcx, %rdx
	movslq	%r9d, %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movslq	%r8d, %rax
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rbx, %r11
	imulq	%rax, %r11
	movq	%rdx, %r10
	imulq	%rcx, %r10
	addq	%r11, %r10
	mulq	%rcx
	leaq	(%r10,%rdx), %rcx
	movq	%rcx, %rdx
	movslq	%r9d, %rdx
	movslq	%r8d, %rax
	imulq	%rdx, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	call	___chkstk_ms
	subq	%rax, %rsp
	leaq	32(%rsp), %rax
	addq	$0, %rax
	movq	%rax, -40(%rbp)
.L61:
	.loc 2 270 9
	movl	-12(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %r9
	movl	%eax, %ecx
	call	game_loop
	.loc 2 276 16 discriminator 1
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	wgetch
	movl	%eax, -4(%rbp)
	.loc 2 276 25 discriminator 1
	cmpl	$27, -4(%rbp)
	jne	.L61
	.loc 2 278 5
	call	endwin
	.loc 2 280 4
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	wgetch
	.loc 2 281 4
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	wgetch
	.loc 2 283 12
	movl	$0, %eax
	movq	%rsi, %rsp
	.loc 2 284 1
	movq	%rbp, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE52:
	.seh_endproc
.Letext0:
	.file 3 "C:/MinGW61/x86_64-w64-mingw32/include/corecrt.h"
	.file 4 "C:/MinGW61/x86_64-w64-mingw32/include/curses.h"
	.file 5 "C:/MinGW61/x86_64-w64-mingw32/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0xa1a
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x15
	.ascii "GNU C17 13.2.0 -mtune=generic -march=x86-64 -g3\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x13
	.long	0x5e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0xd
	.ascii "__time64_t\0"
	.byte	0x3
	.byte	0x7b
	.byte	0x21
	.long	0x85
	.uleb128 0xd
	.ascii "time_t\0"
	.byte	0x3
	.byte	0x8a
	.byte	0x14
	.long	0xbf
	.uleb128 0x5
	.long	0xac
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xd
	.ascii "bool\0"
	.byte	0x4
	.byte	0x55
	.byte	0x17
	.long	0x10b
	.uleb128 0xd
	.ascii "chtype\0"
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0xf6
	.uleb128 0x13
	.long	0x138
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x14
	.ascii "_win\0"
	.byte	0x68
	.byte	0x4
	.byte	0xec
	.byte	0x10
	.long	0x2fa
	.uleb128 0x2
	.ascii "_cury\0"
	.byte	0x4
	.byte	0xee
	.byte	0x9
	.long	0xac
	.byte	0
	.uleb128 0x2
	.ascii "_curx\0"
	.byte	0x4
	.byte	0xef
	.byte	0x9
	.long	0xac
	.byte	0x4
	.uleb128 0x2
	.ascii "_maxy\0"
	.byte	0x4
	.byte	0xf0
	.byte	0x9
	.long	0xac
	.byte	0x8
	.uleb128 0x2
	.ascii "_maxx\0"
	.byte	0x4
	.byte	0xf1
	.byte	0x9
	.long	0xac
	.byte	0xc
	.uleb128 0x2
	.ascii "_begy\0"
	.byte	0x4
	.byte	0xf2
	.byte	0x9
	.long	0xac
	.byte	0x10
	.uleb128 0x2
	.ascii "_begx\0"
	.byte	0x4
	.byte	0xf3
	.byte	0x9
	.long	0xac
	.byte	0x14
	.uleb128 0x2
	.ascii "_flags\0"
	.byte	0x4
	.byte	0xf4
	.byte	0x9
	.long	0xac
	.byte	0x18
	.uleb128 0x2
	.ascii "_attrs\0"
	.byte	0x4
	.byte	0xf5
	.byte	0xc
	.long	0x138
	.byte	0x1c
	.uleb128 0x2
	.ascii "_bkgd\0"
	.byte	0x4
	.byte	0xf6
	.byte	0xc
	.long	0x138
	.byte	0x20
	.uleb128 0x2
	.ascii "_clear\0"
	.byte	0x4
	.byte	0xf7
	.byte	0xa
	.long	0x12b
	.byte	0x24
	.uleb128 0x2
	.ascii "_leaveit\0"
	.byte	0x4
	.byte	0xf8
	.byte	0xa
	.long	0x12b
	.byte	0x25
	.uleb128 0x2
	.ascii "_scroll\0"
	.byte	0x4
	.byte	0xf9
	.byte	0xa
	.long	0x12b
	.byte	0x26
	.uleb128 0x2
	.ascii "_nodelay\0"
	.byte	0x4
	.byte	0xfa
	.byte	0xa
	.long	0x12b
	.byte	0x27
	.uleb128 0x2
	.ascii "_immed\0"
	.byte	0x4
	.byte	0xfb
	.byte	0xa
	.long	0x12b
	.byte	0x28
	.uleb128 0x2
	.ascii "_sync\0"
	.byte	0x4
	.byte	0xfc
	.byte	0xa
	.long	0x12b
	.byte	0x29
	.uleb128 0x2
	.ascii "_use_keypad\0"
	.byte	0x4
	.byte	0xfd
	.byte	0xa
	.long	0x12b
	.byte	0x2a
	.uleb128 0x2
	.ascii "_y\0"
	.byte	0x4
	.byte	0xfe
	.byte	0xe
	.long	0x2fa
	.byte	0x30
	.uleb128 0x2
	.ascii "_firstch\0"
	.byte	0x4
	.byte	0xff
	.byte	0xa
	.long	0xe1
	.byte	0x38
	.uleb128 0x7
	.ascii "_lastch\0"
	.word	0x100
	.byte	0xa
	.long	0xe1
	.byte	0x40
	.uleb128 0x7
	.ascii "_tmarg\0"
	.word	0x101
	.byte	0x9
	.long	0xac
	.byte	0x48
	.uleb128 0x7
	.ascii "_bmarg\0"
	.word	0x102
	.byte	0x9
	.long	0xac
	.byte	0x4c
	.uleb128 0x7
	.ascii "_delayms\0"
	.word	0x103
	.byte	0x9
	.long	0xac
	.byte	0x50
	.uleb128 0x7
	.ascii "_parx\0"
	.word	0x104
	.byte	0x9
	.long	0xac
	.byte	0x54
	.uleb128 0x7
	.ascii "_pary\0"
	.word	0x104
	.byte	0x10
	.long	0xac
	.byte	0x58
	.uleb128 0x7
	.ascii "_parent\0"
	.word	0x105
	.byte	0x12
	.long	0x304
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.long	0x2ff
	.uleb128 0x5
	.long	0x138
	.uleb128 0x5
	.long	0x159
	.uleb128 0x16
	.ascii "WINDOW\0"
	.byte	0x4
	.word	0x106
	.byte	0x3
	.long	0x159
	.uleb128 0x5
	.long	0x309
	.uleb128 0x17
	.ascii "stdscr\0"
	.byte	0x4
	.word	0x154
	.byte	0x10
	.long	0x319
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x8
	.ascii "py\0"
	.byte	0xa
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	py
	.uleb128 0x8
	.ascii "px\0"
	.byte	0xb
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	px
	.uleb128 0x8
	.ascii "p_gold\0"
	.byte	0xd
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	p_gold
	.uleb128 0x8
	.ascii "t_placed\0"
	.byte	0xe
	.byte	0x5
	.long	0x39b
	.uleb128 0x9
	.byte	0x3
	.quad	t_placed
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0x8
	.ascii "p_placed\0"
	.byte	0xf
	.byte	0x5
	.long	0x39b
	.uleb128 0x9
	.byte	0x3
	.quad	p_placed
	.uleb128 0x8
	.ascii "r_placed\0"
	.byte	0x10
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	r_placed
	.uleb128 0x14
	.ascii "Monsters\0"
	.byte	0xc
	.byte	0x2
	.byte	0x12
	.byte	0x8
	.long	0x40d
	.uleb128 0x2
	.ascii "x\0"
	.byte	0x2
	.byte	0x14
	.byte	0x9
	.long	0xac
	.byte	0
	.uleb128 0x2
	.ascii "y\0"
	.byte	0x2
	.byte	0x15
	.byte	0x9
	.long	0xac
	.byte	0x4
	.uleb128 0x2
	.ascii "hp\0"
	.byte	0x2
	.byte	0x16
	.byte	0x9
	.long	0xac
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x3d8
	.long	0x41d
	.uleb128 0x18
	.long	0x6b
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.ascii "monster\0"
	.byte	0x19
	.byte	0x11
	.long	0x40d
	.uleb128 0x9
	.byte	0x3
	.quad	monster
	.uleb128 0xb
	.long	0x5e
	.long	0x44a
	.uleb128 0xc
	.long	0x6b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x5e
	.long	0x45d
	.uleb128 0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x5e
	.long	0x470
	.uleb128 0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.ascii "endwin\0"
	.byte	0x4
	.word	0x391
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.ascii "wgetch\0"
	.word	0x452
	.long	0xac
	.long	0x498
	.uleb128 0x4
	.long	0x319
	.byte	0
	.uleb128 0x9
	.ascii "getmaxx\0"
	.word	0x4d8
	.long	0xac
	.long	0x4b1
	.uleb128 0x4
	.long	0x319
	.byte	0
	.uleb128 0x9
	.ascii "getmaxy\0"
	.word	0x4d9
	.long	0xac
	.long	0x4ca
	.uleb128 0x4
	.long	0x319
	.byte	0
	.uleb128 0x9
	.ascii "curs_set\0"
	.word	0x384
	.long	0xac
	.long	0x4e4
	.uleb128 0x4
	.long	0xac
	.byte	0
	.uleb128 0xe
	.ascii "noecho\0"
	.byte	0x4
	.word	0x3f1
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.ascii "keypad\0"
	.word	0x3b5
	.long	0xac
	.long	0x511
	.uleb128 0x4
	.long	0x319
	.uleb128 0x4
	.long	0x12b
	.byte	0
	.uleb128 0xe
	.ascii "initscr\0"
	.byte	0x4
	.word	0x3a8
	.byte	0x9
	.long	0x319
	.uleb128 0x19
	.ascii "_time64\0"
	.byte	0x1
	.byte	0xbf
	.byte	0x49
	.long	0xbf
	.long	0x53c
	.uleb128 0x4
	.long	0x53c
	.byte	0
	.uleb128 0x5
	.long	0xbf
	.uleb128 0x9
	.ascii "mvprintw\0"
	.word	0x3d0
	.long	0xac
	.long	0x566
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0x566
	.uleb128 0x1a
	.byte	0
	.uleb128 0x5
	.long	0x66
	.uleb128 0x1b
	.ascii "srand\0"
	.byte	0x5
	.word	0x1d8
	.byte	0x23
	.long	0x580
	.uleb128 0x4
	.long	0xe6
	.byte	0
	.uleb128 0x9
	.ascii "mvaddch\0"
	.word	0x3bb
	.long	0xac
	.long	0x5a3
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0x147
	.byte	0
	.uleb128 0xe
	.ascii "rand\0"
	.byte	0x5
	.word	0x1d6
	.byte	0x22
	.long	0xac
	.uleb128 0x1c
	.ascii "main\0"
	.byte	0x2
	.byte	0xff
	.byte	0x5
	.long	0xac
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x613
	.uleb128 0xf
	.ascii "c\0"
	.word	0x101
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.ascii "rows\0"
	.word	0x103
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.secrel32	.LASF2
	.byte	0x2
	.word	0x104
	.byte	0x9
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.ascii "map\0"
	.word	0x10b
	.byte	0xa
	.long	0x613
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x5e
	.long	0x62f
	.uleb128 0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.ascii "game_loop\0"
	.byte	0xb8
	.long	0xac
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d7
	.uleb128 0xa
	.ascii "c\0"
	.byte	0xb8
	.byte	0x13
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "rows\0"
	.byte	0xb8
	.byte	0x1a
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0xb8
	.byte	0x24
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.ascii "map\0"
	.byte	0xb8
	.byte	0x32
	.long	0x6d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x6
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1
	.ascii "my\0"
	.byte	0xcb
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.ascii "mx\0"
	.byte	0xcb
	.byte	0x11
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1
	.ascii "m\0"
	.byte	0xcc
	.byte	0x12
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x45d
	.uleb128 0x10
	.ascii "dungeon_draw\0"
	.byte	0x9f
	.long	0xac
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x76d
	.uleb128 0xa
	.ascii "rows\0"
	.byte	0x9f
	.byte	0x16
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x9f
	.byte	0x20
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.ascii "map\0"
	.byte	0x9f
	.byte	0x2e
	.long	0x76d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1
	.ascii "y\0"
	.byte	0xa3
	.byte	0xe
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x1
	.ascii "x\0"
	.byte	0xa5
	.byte	0x12
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x44a
	.uleb128 0x10
	.ascii "dungeon_gen\0"
	.byte	0x1b
	.long	0xac
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cf
	.uleb128 0xa
	.ascii "rows\0"
	.byte	0x1b
	.byte	0x15
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0x1b
	.byte	0x1f
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.ascii "map\0"
	.byte	0x1b
	.byte	0x2d
	.long	0x9cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1
	.ascii "ry\0"
	.byte	0x20
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.ascii "rx\0"
	.byte	0x21
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.ascii "r_size_y\0"
	.byte	0x22
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.ascii "r_size_x\0"
	.byte	0x23
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.ascii "r_center_y\0"
	.byte	0x24
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.ascii "r_center_x\0"
	.byte	0x25
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.ascii "r_old_center_y\0"
	.byte	0x26
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.ascii "r_old_center_x\0"
	.byte	0x27
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.ascii "room_num\0"
	.byte	0x28
	.byte	0xd
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1
	.ascii "collision\0"
	.byte	0x29
	.byte	0xd
	.long	0x39b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x12
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x8dd
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x2c
	.byte	0x12
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x2e
	.byte	0x16
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1
	.ascii "try_counter\0"
	.byte	0x3d
	.byte	0x11
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x947
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x56
	.byte	0x1a
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x58
	.byte	0x1e
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x12
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x989
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x6b
	.byte	0x16
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x6d
	.byte	0x1a
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1
	.ascii "path_y\0"
	.byte	0x88
	.byte	0x15
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x92
	.byte	0x1a
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x436
	.uleb128 0x1e
	.ascii "time\0"
	.byte	0x1
	.word	0x100
	.byte	0x33
	.long	0xd2
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xa18
	.uleb128 0x1f
	.ascii "_Time\0"
	.byte	0x1
	.word	0x100
	.byte	0x40
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.quad	.LVL0
	.long	0x522
	.byte	0
	.uleb128 0x5
	.long	0xd2
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
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
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x5
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x4
	.file 6 "C:/MinGW61/lib/gcc/x86_64-w64-mingw32/13.2.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x6
	.file 7 "C:/MinGW61/x86_64-w64-mingw32/include/stdarg.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
	.file 8 "C:/MinGW61/x86_64-w64-mingw32/include/_mingw_stdarg.h"
	.byte	0x3
	.uleb128 0x8c
	.uleb128 0x8
	.file 9 "C:/MinGW61/x86_64-w64-mingw32/include/vadefs.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x9
	.file 10 "C:/MinGW61/x86_64-w64-mingw32/include/_mingw.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xa
	.file 11 "C:/MinGW61/x86_64-w64-mingw32/include/_mingw_mac.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.file 12 "C:/MinGW61/x86_64-w64-mingw32/include/_mingw_secapi.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uleb128 0x11a
	.uleb128 0x9
	.byte	0x4
	.file 13 "C:/MinGW61/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h"
	.byte	0x3
	.uleb128 0x295
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 14 "C:/MinGW61/lib/gcc/x86_64-w64-mingw32/13.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xe
	.file 15 "C:/MinGW61/x86_64-w64-mingw32/include/stddef.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xf
	.file 16 "C:/MinGW61/x86_64-w64-mingw32/include/crtdefs.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x10
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x3
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 17 "C:/MinGW61/x86_64-w64-mingw32/include/stdio.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x11
	.file 18 "C:/MinGW61/x86_64-w64-mingw32/include/corecrt_stdio_config.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x12
	.byte	0x4
	.file 19 "C:/MinGW61/x86_64-w64-mingw32/include/_mingw_off_t.h"
	.byte	0x3
	.uleb128 0x5b
	.uleb128 0x13
	.byte	0x4
	.file 20 "C:/MinGW61/x86_64-w64-mingw32/include/swprintf.inl"
	.byte	0x3
	.uleb128 0x5af
	.uleb128 0x14
	.byte	0x4
	.file 21 "C:/MinGW61/x86_64-w64-mingw32/include/sec_api/stdio_s.h"
	.byte	0x3
	.uleb128 0x669
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x5
	.file 22 "C:/MinGW61/x86_64-w64-mingw32/include/corecrt_wstdlib.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x16
	.byte	0x4
	.file 23 "C:/MinGW61/lib/gcc/x86_64-w64-mingw32/13.2.0/include/limits.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.file 24 "C:/MinGW61/lib/gcc/x86_64-w64-mingw32/13.2.0/include/syslimits.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x17
	.file 25 "C:/MinGW61/x86_64-w64-mingw32/include/limits.h"
	.byte	0x3
	.uleb128 0xcd
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 26 "C:/MinGW61/x86_64-w64-mingw32/include/sec_api/stdlib_s.h"
	.byte	0x3
	.uleb128 0x301
	.uleb128 0x1a
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 27 "C:/MinGW61/x86_64-w64-mingw32/include/malloc.h"
	.byte	0x3
	.uleb128 0x302
	.uleb128 0x1b
	.file 28 "C:/MinGW61/lib/gcc/x86_64-w64-mingw32/13.2.0/include/mm_malloc.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1c
	.file 29 "C:/MinGW61/x86_64-w64-mingw32/include/errno.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1
	.file 30 "C:/MinGW61/x86_64-w64-mingw32/include/sys/timeb.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x1e
	.file 31 "C:/MinGW61/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h"
	.byte	0x3
	.uleb128 0x87
	.uleb128 0x1f
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 32 "C:/MinGW61/x86_64-w64-mingw32/include/_timeval.h"
	.byte	0x3
	.uleb128 0x123
	.uleb128 0x20
	.byte	0x4
	.file 33 "C:/MinGW61/x86_64-w64-mingw32/include/pthread_time.h"
	.byte	0x3
	.uleb128 0x14e
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.file 34 "C:/MinGW61/lib/gcc/x86_64-w64-mingw32/13.2.0/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF2:
	.ascii "colms\0"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "C:\\AglasC-KURS\\022-struct\0"
.LASF0:
	.ascii "app.c\0"
	.ident	"GCC: (GNU) 13.2.0"
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	mvaddch;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	mvprintw;	.scl	2;	.type	32;	.endef
	.def	initscr;	.scl	2;	.type	32;	.endef
	.def	keypad;	.scl	2;	.type	32;	.endef
	.def	noecho;	.scl	2;	.type	32;	.endef
	.def	curs_set;	.scl	2;	.type	32;	.endef
	.def	getmaxy;	.scl	2;	.type	32;	.endef
	.def	getmaxx;	.scl	2;	.type	32;	.endef
	.def	wgetch;	.scl	2;	.type	32;	.endef
	.def	endwin;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.stdscr, "dr"
	.globl	.refptr.stdscr
	.linkonce	discard
.refptr.stdscr:
	.quad	stdscr
