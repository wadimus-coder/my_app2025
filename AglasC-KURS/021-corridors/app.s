	.file	"app.c"
	.text
.Ltext0:
	.file 0 "C:/AglasC-KURS/021-corridors" "app.c"
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
.LFB123:
	.file 1 "c:/mingw64/x86_64-w64-mingw32/include/time.h"
	.loc 1 246 71
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI0:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI1:
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 246 80
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__time64(%rip), %rax
	call	*%rax
.LVL0:
	.loc 1 246 96
	addq	$32, %rsp
	popq	%rbp
.LCFI2:
	ret
.LFE123:
	.seh_endproc
	.globl	ty
	.bss
	.align 4
ty:
	.space 4
	.globl	tx
	.align 4
tx:
	.space 4
	.globl	py
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
	.section .rdata,"dr"
.LC0:
	.ascii "Gold : %d\0"
	.text
	.globl	dungeon
	.def	dungeon;	.scl	2;	.type	32;	.endef
	.seh_proc	dungeon
dungeon:
.LFB134:
	.file 2 "app.c"
	.loc 2 19 1
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI3:
	pushq	%rbx
	.seh_pushreg	%rbx
.LCFI4:
	subq	$136, %rsp
	.seh_stackalloc	136
.LCFI5:
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
.LCFI6:
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movl	%edx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movq	%r9, 56(%rbp)
	.loc 2 18 48
	movl	48(%rbp), %ebx
	movslq	%ebx, %rax
	subq	$1, %rax
	.loc 2 18 5
	movq	%rax, -88(%rbp)
	movslq	%ebx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	.loc 2 21 11
	movl	$0, %ecx
	call	time
	.loc 2 21 5
	movl	%eax, %ecx
	call	srand
	.loc 2 23 9
	movl	r_placed(%rip), %eax
	.loc 2 23 8
	testl	%eax, %eax
	jne	.L4
.LBB2:
	.loc 2 34 24
	call	rand
	movl	%eax, %ecx
	.loc 2 34 31
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
	.loc 2 34 13
	leal	5(%rdx), %eax
	movl	%eax, -92(%rbp)
.LBB3:
	.loc 2 38 18
	movl	$0, -40(%rbp)
	.loc 2 38 9
	jmp	.L5
.L11:
.LBB4:
	.loc 2 40 22
	movl	$0, -44(%rbp)
	.loc 2 40 13
	jmp	.L6
.L10:
	.loc 2 43 20
	cmpl	$0, -40(%rbp)
	je	.L7
	.loc 2 43 41 discriminator 1
	movl	40(%rbp), %eax
	subl	$1, %eax
	.loc 2 43 28 discriminator 1
	cmpl	%eax, -40(%rbp)
	je	.L7
	.loc 2 43 45 discriminator 2
	cmpl	$0, -44(%rbp)
	je	.L7
	.loc 2 44 28
	movl	-44(%rbp), %eax
	cmpl	48(%rbp), %eax
	je	.L7
	.loc 2 44 42 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	40(%rbp), %eax
	jne	.L8
.L7:
	.loc 2 46 24
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 46 31
	movl	-44(%rbp), %eax
	cltq
	movb	$37, (%rdx,%rax)
	jmp	.L9
.L8:
	.loc 2 49 24
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 49 31
	movl	-44(%rbp), %eax
	cltq
	movb	$35, (%rdx,%rax)
.L9:
	.loc 2 40 42 discriminator 2
	addl	$1, -44(%rbp)
.L6:
	.loc 2 40 31 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	48(%rbp), %eax
	jle	.L10
.LBE4:
	.loc 2 38 37 discriminator 2
	addl	$1, -40(%rbp)
.L5:
	.loc 2 38 27 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	40(%rbp), %eax
	jle	.L11
.LBE3:
	.loc 2 53 15
	jmp	.L12
.L36:
.LBB5:
	.loc 2 55 17
	movl	$0, -48(%rbp)
.L22:
	.loc 2 59 27
	movb	$0, -33(%rbp)
	.loc 2 62 22
	call	rand
	.loc 2 62 37
	movl	40(%rbp), %edx
	leal	-3(%rdx), %ecx
	.loc 2 62 29
	cltd
	idivl	%ecx
	movl	%edx, %eax
	.loc 2 62 20
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	.loc 2 63 22
	call	rand
	.loc 2 63 38
	movl	48(%rbp), %edx
	leal	-3(%rdx), %ecx
	.loc 2 63 29
	cltd
	idivl	%ecx
	movl	%edx, %eax
	.loc 2 63 20
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	.loc 2 66 28
	call	rand
	movl	%eax, %ecx
	.loc 2 66 35
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
	.loc 2 66 26
	leal	5(%rdx), %eax
	movl	%eax, -12(%rbp)
	.loc 2 67 28
	call	rand
	movl	%eax, %ecx
	.loc 2 67 35
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
	.loc 2 67 26
	leal	8(%rdx), %eax
	movl	%eax, -16(%rbp)
	.loc 2 69 28
	addl	$1, -48(%rbp)
	.loc 2 71 20
	cmpl	$100, -48(%rbp)
	jle	.L13
	.loc 2 73 29
	movl	$3, -8(%rbp)
	.loc 2 73 24
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	.loc 2 74 41
	movl	$3, -16(%rbp)
	.loc 2 74 30
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 2 76 21
	jmp	.L14
.L13:
.LBB6:
	.loc 2 80 26
	movl	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
	.loc 2 80 17
	jmp	.L15
.L21:
.LBB7:
	.loc 2 82 30
	movl	-8(%rbp), %eax
	movl	%eax, -56(%rbp)
	.loc 2 82 21
	jmp	.L16
.L20:
	.loc 2 84 32
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 84 35
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 84 28
	cmpb	$37, %al
	je	.L17
	.loc 2 84 52 discriminator 1
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 84 55 discriminator 1
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 84 46 discriminator 1
	cmpb	$32, %al
	je	.L17
	.loc 2 85 35 discriminator 2
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	.loc 2 85 32 discriminator 2
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 85 39 discriminator 2
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 84 66 discriminator 2
	cmpb	$32, %al
	je	.L17
	.loc 2 85 59
	movl	-52(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	.loc 2 85 56
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 85 63
	movl	-56(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 85 50
	cmpb	$32, %al
	je	.L17
	.loc 2 86 32 discriminator 1
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 86 38 discriminator 1
	movl	-56(%rbp), %eax
	addl	$2, %eax
	.loc 2 86 35 discriminator 1
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 85 74 discriminator 1
	cmpb	$32, %al
	je	.L17
	.loc 2 86 56
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 86 62
	movl	-56(%rbp), %eax
	subl	$2, %eax
	.loc 2 86 59
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 86 50
	cmpb	$32, %al
	jne	.L18
.L17:
	.loc 2 89 39
	movb	$1, -33(%rbp)
	.loc 2 90 31
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	.loc 2 91 29
	jmp	.L19
.L18:
	.loc 2 82 59 discriminator 2
	addl	$1, -56(%rbp)
.L16:
	.loc 2 82 46 discriminator 1
	movl	-8(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	.loc 2 82 40 discriminator 1
	cmpl	%eax, -56(%rbp)
	jle	.L20
.L19:
.LBE7:
	.loc 2 80 55 discriminator 2
	addl	$1, -52(%rbp)
.L15:
	.loc 2 80 42 discriminator 1
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 2 80 36 discriminator 1
	cmpl	%eax, -52(%rbp)
	jle	.L21
.LBE6:
	.loc 2 98 30
	cmpb	$0, -33(%rbp)
	jne	.L22
.L14:
.LBB8:
	.loc 2 101 22
	movl	-4(%rbp), %eax
	movl	%eax, -60(%rbp)
	.loc 2 101 13
	jmp	.L23
.L28:
.LBB9:
	.loc 2 103 26
	movl	-8(%rbp), %eax
	movl	%eax, -64(%rbp)
	.loc 2 103 17
	jmp	.L24
.L27:
	.loc 2 105 28
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 105 31
	movl	-64(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 105 24
	cmpb	$37, %al
	jne	.L25
	.loc 2 107 27
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	.loc 2 108 25
	jmp	.L26
.L25:
	.loc 2 112 28 discriminator 2
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 112 35 discriminator 2
	movl	-64(%rbp), %eax
	cltq
	movb	$32, (%rdx,%rax)
	.loc 2 103 55 discriminator 2
	addl	$1, -64(%rbp)
.L24:
	.loc 2 103 42 discriminator 1
	movl	-8(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	.loc 2 103 36 discriminator 1
	cmpl	%eax, -64(%rbp)
	jle	.L27
.L26:
.LBE9:
	.loc 2 101 51 discriminator 2
	addl	$1, -60(%rbp)
.L23:
	.loc 2 101 38 discriminator 1
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	.loc 2 101 32 discriminator 1
	cmpl	%eax, -60(%rbp)
	jle	.L28
.LBE8:
	.loc 2 115 21
	movl	r_placed(%rip), %eax
	addl	$1, %eax
	movl	%eax, r_placed(%rip)
	.loc 2 119 26
	movl	r_placed(%rip), %eax
	.loc 2 119 16
	cmpl	$1, %eax
	jle	.L29
	.loc 2 121 32
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 2 122 32
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.L29:
	.loc 2 125 41
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	.loc 2 125 24
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 2 126 41
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	.loc 2 126 24
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	.loc 2 128 26
	movl	r_placed(%rip), %eax
	.loc 2 128 16
	cmpl	$1, %eax
	jle	.L12
.LBB10:
	.loc 2 131 29
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 2 131 17
	jmp	.L30
.L32:
	.loc 2 133 24
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 133 49
	movl	-32(%rbp), %eax
	cltq
	movb	$32, (%rdx,%rax)
	.loc 2 134 24
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L31
	.loc 2 135 31
	addl	$1, -68(%rbp)
	jmp	.L30
.L31:
	.loc 2 137 31
	subl	$1, -68(%rbp)
.L30:
	.loc 2 131 54 discriminator 1
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L32
.LBB11:
	.loc 2 140 26
	movl	-32(%rbp), %eax
	movl	%eax, -72(%rbp)
	.loc 2 140 17
	jmp	.L33
.L35:
	.loc 2 142 24
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 142 36
	movl	-72(%rbp), %eax
	cltq
	movb	$32, (%rdx,%rax)
	.loc 2 143 24
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.L34
	.loc 2 144 26
	addl	$1, -72(%rbp)
	jmp	.L33
.L34:
	.loc 2 146 26
	subl	$1, -72(%rbp)
.L33:
	.loc 2 140 48 discriminator 1
	movl	-72(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L35
.L12:
.LBE11:
.LBE10:
.LBE5:
	.loc 2 53 25
	movl	r_placed(%rip), %eax
	cmpl	%eax, -92(%rbp)
	jg	.L36
.L4:
.LBE2:
.LBB12:
	.loc 2 153 14
	movl	$0, -76(%rbp)
	.loc 2 153 5
	jmp	.L37
.L44:
.LBB13:
	.loc 2 155 18
	movl	$0, -80(%rbp)
	.loc 2 155 9
	jmp	.L38
.L43:
	.loc 2 158 16
	movl	-76(%rbp), %eax
	cmpl	40(%rbp), %eax
	jne	.L39
	.loc 2 159 17
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	$32, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L40
.L39:
	.loc 2 160 25
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 160 28
	movl	-80(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 160 21
	cmpb	$37, %al
	jne	.L41
	.loc 2 161 17
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	$37, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L40
.L41:
	.loc 2 162 25
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 162 28
	movl	-80(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 162 21
	cmpb	$32, %al
	jne	.L42
	.loc 2 163 17
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	$32, %r8d
	movl	%eax, %ecx
	call	mvaddch
	jmp	.L40
.L42:
	.loc 2 166 17
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	$35, %r8d
	movl	%eax, %ecx
	call	mvaddch
.L40:
	.loc 2 155 38 discriminator 2
	addl	$1, -80(%rbp)
.L38:
	.loc 2 155 27 discriminator 1
	movl	-80(%rbp), %eax
	cmpl	48(%rbp), %eax
	jle	.L43
.LBE13:
	.loc 2 153 33 discriminator 2
	addl	$1, -76(%rbp)
.L37:
	.loc 2 153 23 discriminator 1
	movl	-76(%rbp), %eax
	cmpl	40(%rbp), %eax
	jle	.L44
.LBE12:
	.loc 2 170 8
	cmpl	$259, 32(%rbp)
	jne	.L45
	.loc 2 170 30 discriminator 1
	movl	py(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	.loc 2 170 26 discriminator 1
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 170 34 discriminator 1
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 170 20 discriminator 1
	cmpb	$32, %al
	jne	.L45
	.loc 2 171 11
	movl	py(%rip), %eax
	subl	$1, %eax
	movl	%eax, py(%rip)
	jmp	.L46
.L45:
	.loc 2 172 13
	cmpl	$258, 32(%rbp)
	jne	.L47
	.loc 2 172 37 discriminator 1
	movl	py(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	.loc 2 172 33 discriminator 1
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 172 41 discriminator 1
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 172 27 discriminator 1
	cmpb	$32, %al
	jne	.L47
	.loc 2 173 11
	movl	py(%rip), %eax
	addl	$1, %eax
	movl	%eax, py(%rip)
	jmp	.L46
.L47:
	.loc 2 174 13
	cmpl	$260, 32(%rbp)
	jne	.L48
	.loc 2 174 33 discriminator 1
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 174 41 discriminator 1
	movl	px(%rip), %eax
	subl	$1, %eax
	.loc 2 174 37 discriminator 1
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 174 27 discriminator 1
	cmpb	$32, %al
	jne	.L48
	.loc 2 175 11
	movl	px(%rip), %eax
	subl	$1, %eax
	movl	%eax, px(%rip)
	jmp	.L46
.L48:
	.loc 2 176 13
	cmpl	$261, 32(%rbp)
	jne	.L46
	.loc 2 176 34 discriminator 1
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 176 42 discriminator 1
	movl	px(%rip), %eax
	addl	$1, %eax
	.loc 2 176 38 discriminator 1
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 176 28 discriminator 1
	cmpb	$32, %al
	jne	.L46
	.loc 2 177 11
	movl	px(%rip), %eax
	addl	$1, %eax
	movl	%eax, px(%rip)
.L46:
	.loc 2 179 9
	movzbl	t_placed(%rip), %eax
	xorl	$1, %eax
	.loc 2 179 8
	testb	%al, %al
	je	.L49
.L50:
	.loc 2 182 18 discriminator 3
	call	rand
	.loc 2 182 25 discriminator 3
	cltd
	idivl	40(%rbp)
	movl	%edx, %eax
	.loc 2 182 16 discriminator 3
	movl	%eax, ty(%rip)
	.loc 2 184 18 discriminator 3
	call	rand
	.loc 2 184 25 discriminator 3
	cltd
	idivl	48(%rbp)
	movl	%edx, %eax
	.loc 2 184 16 discriminator 3
	movl	%eax, tx(%rip)
	.loc 2 187 19 discriminator 3
	movl	ty(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 187 23 discriminator 3
	movl	tx(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 187 35 discriminator 3
	cmpb	$35, %al
	je	.L50
	.loc 2 187 41 discriminator 2
	movl	ty(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 187 45 discriminator 2
	movl	tx(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 187 35 discriminator 2
	cmpb	$37, %al
	je	.L50
.L49:
	.loc 2 188 14
	movb	$1, t_placed(%rip)
	.loc 2 190 9
	movzbl	p_placed(%rip), %eax
	xorl	$1, %eax
	.loc 2 190 8
	testb	%al, %al
	je	.L51
.L52:
	.loc 2 193 18 discriminator 3
	call	rand
	.loc 2 193 25 discriminator 3
	cltd
	idivl	40(%rbp)
	movl	%edx, %eax
	.loc 2 193 16 discriminator 3
	movl	%eax, py(%rip)
	.loc 2 194 18 discriminator 3
	call	rand
	.loc 2 194 25 discriminator 3
	cltd
	idivl	48(%rbp)
	movl	%edx, %eax
	.loc 2 194 16 discriminator 3
	movl	%eax, px(%rip)
	.loc 2 197 19 discriminator 3
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 197 23 discriminator 3
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 197 35 discriminator 3
	cmpb	$35, %al
	je	.L52
	.loc 2 197 41 discriminator 2
	movl	py(%rip), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rax, %rdx
	movq	56(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 197 45 discriminator 2
	movl	px(%rip), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 2 197 35 discriminator 2
	cmpb	$37, %al
	je	.L52
.L51:
	.loc 2 198 14
	movb	$1, p_placed(%rip)
	.loc 2 201 12
	movl	py(%rip), %edx
	movl	ty(%rip), %eax
	.loc 2 201 8
	cmpl	%eax, %edx
	jne	.L53
	.loc 2 201 24 discriminator 1
	movl	px(%rip), %edx
	movl	tx(%rip), %eax
	.loc 2 201 18 discriminator 1
	cmpl	%eax, %edx
	jne	.L53
	.loc 2 203 18
	movb	$0, t_placed(%rip)
	.loc 2 206 19
	call	rand
	movl	%eax, %ecx
	.loc 2 206 26
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
	.loc 2 206 31
	addl	$1, %edx
	.loc 2 206 16
	movl	p_gold(%rip), %eax
	addl	%edx, %eax
	movl	%eax, p_gold(%rip)
.L53:
	.loc 2 209 5
	movl	tx(%rip), %edx
	movl	ty(%rip), %eax
	movl	$116, %r8d
	movl	%eax, %ecx
	call	mvaddch
	.loc 2 210 5
	movl	px(%rip), %edx
	movl	py(%rip), %eax
	movl	$64, %r8d
	movl	%eax, %ecx
	call	mvaddch
	.loc 2 211 5
	movl	p_gold(%rip), %edx
	movl	40(%rbp), %eax
	movl	%edx, %r9d
	leaq	.LC0(%rip), %r8
	movl	$0, %edx
	movl	%eax, %ecx
	call	mvprintw
	.loc 2 212 12
	movl	$0, %eax
	.loc 2 213 1
	addq	$136, %rsp
	popq	%rbx
.LCFI7:
	popq	%rbp
.LCFI8:
	ret
.LFE134:
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB135:
	.loc 2 216 1
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI9:
	pushq	%r15
	.seh_pushreg	%r15
.LCFI10:
	pushq	%r14
	.seh_pushreg	%r14
.LCFI11:
	pushq	%r13
	.seh_pushreg	%r13
.LCFI12:
	pushq	%r12
	.seh_pushreg	%r12
.LCFI13:
	pushq	%rdi
	.seh_pushreg	%rdi
.LCFI14:
	pushq	%rsi
	.seh_pushreg	%rsi
.LCFI15:
	pushq	%rbx
	.seh_pushreg	%rbx
.LCFI16:
	subq	$120, %rsp
	.seh_stackalloc	120
.LCFI17:
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
.LCFI18:
	.seh_endprologue
	.loc 2 216 1
	call	__main
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 2 217 9
	movl	$0, -4(%rbp)
	.loc 2 222 5
	call	initscr
	.loc 2 223 5
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	keypad
	.loc 2 224 5
	call	noecho
	.loc 2 225 5
	movl	$0, %ecx
	call	curs_set
	.loc 2 226 6
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	getmaxy
	movl	%eax, -8(%rbp)
	.loc 2 226 6
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	getmaxx
	movl	%eax, -12(%rbp)
	.loc 2 227 5
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %r8d
	.loc 2 227 10
	movslq	%ecx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movslq	%ecx, %rax
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	movslq	%r8d, %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movslq	%ecx, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movslq	%r8d, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-64(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	%r11, %rdx
	imulq	%r14, %rdx
	movq	%r10, %rax
	imulq	%r15, %rax
	leaq	(%rdx,%rax), %r9
	movq	%r10, %rax
	mulq	%r14
	addq	%rdx, %r9
	movq	%r9, %rdx
	movslq	%ecx, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movslq	%r8d, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	movq	%r13, %rdx
	imulq	%rsi, %rdx
	movq	%rdi, %rax
	imulq	%r12, %rax
	leaq	(%rdx,%rax), %r9
	movq	%r12, %rax
	mulq	%rsi
	addq	%rdx, %r9
	movq	%r9, %rdx
	movslq	%ecx, %rdx
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
.L56:
	.loc 2 230 9 discriminator 1
	movl	-12(%rbp), %eax
	leal	-1(%rax), %r8d
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %r9
	movl	%eax, %ecx
	call	dungeon
	.loc 2 236 16 discriminator 1
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	wgetch
	movl	%eax, -4(%rbp)
	.loc 2 236 25 discriminator 1
	cmpl	$27, -4(%rbp)
	jne	.L56
	.loc 2 238 5
	call	endwin
	.loc 2 240 4
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	wgetch
	.loc 2 241 4
	movq	.refptr.stdscr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	wgetch
	.loc 2 243 12
	movl	$0, %eax
	movq	%rbx, %rsp
	.loc 2 244 1
	leaq	8(%rbp), %rsp
	popq	%rbx
.LCFI19:
	popq	%rsi
.LCFI20:
	popq	%rdi
.LCFI21:
	popq	%r12
.LCFI22:
	popq	%r13
.LCFI23:
	popq	%r14
.LCFI24:
	popq	%r15
.LCFI25:
	popq	%rbp
.LCFI26:
	ret
.LFE135:
	.seh_endproc
	.section	.debug_frame,"dr"
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.secrel32	.Lframe0
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.byte	0x4
	.long	.LCFI0-.LFB123
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.secrel32	.Lframe0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.byte	0x4
	.long	.LCFI3-.LFB134
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xc
	.uleb128 0x6
	.uleb128 0x20
	.byte	0x4
	.long	.LCFI7-.LCFI6
	.byte	0xc3
	.byte	0x4
	.long	.LCFI8-.LCFI7
	.byte	0xc6
	.byte	0x12
	.uleb128 0x7
	.sleb128 15
	.align 8
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.secrel32	.Lframe0
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.byte	0x4
	.long	.LCFI9-.LFB135
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x8f
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.long	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x28
	.byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.long	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x30
	.byte	0x8c
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x38
	.byte	0x85
	.uleb128 0x7
	.byte	0x4
	.long	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x40
	.byte	0x84
	.uleb128 0x8
	.byte	0x4
	.long	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x48
	.byte	0x83
	.uleb128 0x9
	.byte	0x4
	.long	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0xc0
	.byte	0x4
	.long	.LCFI18-.LCFI17
	.byte	0xc
	.uleb128 0x6
	.uleb128 0x50
	.byte	0x4
	.long	.LCFI19-.LCFI18
	.byte	0xc3
	.byte	0x4
	.long	.LCFI20-.LCFI19
	.byte	0xc4
	.byte	0x4
	.long	.LCFI21-.LCFI20
	.byte	0xc5
	.byte	0x4
	.long	.LCFI22-.LCFI21
	.byte	0xcc
	.byte	0x4
	.long	.LCFI23-.LCFI22
	.byte	0xcd
	.byte	0x4
	.long	.LCFI24-.LCFI23
	.byte	0xce
	.byte	0x4
	.long	.LCFI25-.LCFI24
	.byte	0xcf
	.byte	0x4
	.long	.LCFI26-.LCFI25
	.byte	0xc6
	.byte	0x12
	.uleb128 0x7
	.sleb128 7
	.align 8
.LEFDE4:
	.text
.Letext0:
	.file 3 "c:/mingw64/x86_64-w64-mingw32/include/corecrt.h"
	.file 4 "c:/mingw64/include/curses.h"
	.file 5 "c:/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x8b3
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x11
	.ascii "GNU C17 12.2.0 -mtune=generic -march=x86-64 -g3\0"
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
	.uleb128 0xf
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
	.uleb128 0xb
	.ascii "__time64_t\0"
	.byte	0x3
	.byte	0x7b
	.byte	0x21
	.long	0x85
	.uleb128 0xb
	.ascii "time_t\0"
	.byte	0x3
	.byte	0x8a
	.byte	0x14
	.long	0xbf
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0xb
	.ascii "bool\0"
	.byte	0x4
	.byte	0x55
	.byte	0x17
	.long	0x10d
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0xb
	.ascii "chtype\0"
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x132
	.uleb128 0xf
	.long	0x11e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x12
	.ascii "_win\0"
	.byte	0x68
	.byte	0x4
	.byte	0xec
	.byte	0x10
	.long	0x2e3
	.uleb128 0x2
	.ascii "_cury\0"
	.byte	0xee
	.byte	0x9
	.long	0xac
	.byte	0
	.uleb128 0x2
	.ascii "_curx\0"
	.byte	0xef
	.byte	0x9
	.long	0xac
	.byte	0x4
	.uleb128 0x2
	.ascii "_maxy\0"
	.byte	0xf0
	.byte	0x9
	.long	0xac
	.byte	0x8
	.uleb128 0x2
	.ascii "_maxx\0"
	.byte	0xf1
	.byte	0x9
	.long	0xac
	.byte	0xc
	.uleb128 0x2
	.ascii "_begy\0"
	.byte	0xf2
	.byte	0x9
	.long	0xac
	.byte	0x10
	.uleb128 0x2
	.ascii "_begx\0"
	.byte	0xf3
	.byte	0x9
	.long	0xac
	.byte	0x14
	.uleb128 0x2
	.ascii "_flags\0"
	.byte	0xf4
	.byte	0x9
	.long	0xac
	.byte	0x18
	.uleb128 0x2
	.ascii "_attrs\0"
	.byte	0xf5
	.byte	0xc
	.long	0x11e
	.byte	0x1c
	.uleb128 0x2
	.ascii "_bkgd\0"
	.byte	0xf6
	.byte	0xc
	.long	0x11e
	.byte	0x20
	.uleb128 0x2
	.ascii "_clear\0"
	.byte	0xf7
	.byte	0xa
	.long	0x100
	.byte	0x24
	.uleb128 0x2
	.ascii "_leaveit\0"
	.byte	0xf8
	.byte	0xa
	.long	0x100
	.byte	0x25
	.uleb128 0x2
	.ascii "_scroll\0"
	.byte	0xf9
	.byte	0xa
	.long	0x100
	.byte	0x26
	.uleb128 0x2
	.ascii "_nodelay\0"
	.byte	0xfa
	.byte	0xa
	.long	0x100
	.byte	0x27
	.uleb128 0x2
	.ascii "_immed\0"
	.byte	0xfb
	.byte	0xa
	.long	0x100
	.byte	0x28
	.uleb128 0x2
	.ascii "_sync\0"
	.byte	0xfc
	.byte	0xa
	.long	0x100
	.byte	0x29
	.uleb128 0x2
	.ascii "_use_keypad\0"
	.byte	0xfd
	.byte	0xa
	.long	0x100
	.byte	0x2a
	.uleb128 0x2
	.ascii "_y\0"
	.byte	0xfe
	.byte	0xe
	.long	0x2e3
	.byte	0x30
	.uleb128 0x2
	.ascii "_firstch\0"
	.byte	0xff
	.byte	0xa
	.long	0x2ed
	.byte	0x38
	.uleb128 0x8
	.ascii "_lastch\0"
	.word	0x100
	.byte	0xa
	.long	0x2ed
	.byte	0x40
	.uleb128 0x8
	.ascii "_tmarg\0"
	.word	0x101
	.byte	0x9
	.long	0xac
	.byte	0x48
	.uleb128 0x8
	.ascii "_bmarg\0"
	.word	0x102
	.byte	0x9
	.long	0xac
	.byte	0x4c
	.uleb128 0x8
	.ascii "_delayms\0"
	.word	0x103
	.byte	0x9
	.long	0xac
	.byte	0x50
	.uleb128 0x8
	.ascii "_parx\0"
	.word	0x104
	.byte	0x9
	.long	0xac
	.byte	0x54
	.uleb128 0x8
	.ascii "_pary\0"
	.word	0x104
	.byte	0x10
	.long	0xac
	.byte	0x58
	.uleb128 0x8
	.ascii "_parent\0"
	.word	0x105
	.byte	0x12
	.long	0x2f2
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.long	0x2e8
	.uleb128 0x5
	.long	0x11e
	.uleb128 0x5
	.long	0xac
	.uleb128 0x5
	.long	0x154
	.uleb128 0x13
	.ascii "WINDOW\0"
	.byte	0x4
	.word	0x106
	.byte	0x3
	.long	0x154
	.uleb128 0x5
	.long	0x2f7
	.uleb128 0x14
	.ascii "stdscr\0"
	.byte	0x4
	.word	0x154
	.byte	0x10
	.long	0x307
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x6
	.ascii "ty\0"
	.byte	0x8
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	ty
	.uleb128 0x6
	.ascii "tx\0"
	.byte	0x9
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	tx
	.uleb128 0x6
	.ascii "py\0"
	.byte	0xa
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	py
	.uleb128 0x6
	.ascii "px\0"
	.byte	0xb
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	px
	.uleb128 0x6
	.ascii "p_gold\0"
	.byte	0xd
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	p_gold
	.uleb128 0x6
	.ascii "t_placed\0"
	.byte	0xe
	.long	0x3ab
	.uleb128 0x9
	.byte	0x3
	.quad	t_placed
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0x6
	.ascii "p_placed\0"
	.byte	0xf
	.long	0x3ab
	.uleb128 0x9
	.byte	0x3
	.quad	p_placed
	.uleb128 0x6
	.ascii "r_placed\0"
	.byte	0x10
	.long	0xac
	.uleb128 0x9
	.byte	0x3
	.quad	r_placed
	.uleb128 0x10
	.long	0x5e
	.long	0x3fa
	.uleb128 0xe
	.long	0x6b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.ascii "endwin\0"
	.byte	0x4
	.word	0x391
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.ascii "wgetch\0"
	.word	0x452
	.long	0xac
	.long	0x422
	.uleb128 0x4
	.long	0x307
	.byte	0
	.uleb128 0x9
	.ascii "getmaxx\0"
	.word	0x4d8
	.long	0xac
	.long	0x43b
	.uleb128 0x4
	.long	0x307
	.byte	0
	.uleb128 0x9
	.ascii "getmaxy\0"
	.word	0x4d9
	.long	0xac
	.long	0x454
	.uleb128 0x4
	.long	0x307
	.byte	0
	.uleb128 0x9
	.ascii "curs_set\0"
	.word	0x384
	.long	0xac
	.long	0x46e
	.uleb128 0x4
	.long	0xac
	.byte	0
	.uleb128 0xc
	.ascii "noecho\0"
	.byte	0x4
	.word	0x3f1
	.byte	0x5
	.long	0xac
	.uleb128 0x9
	.ascii "keypad\0"
	.word	0x3b5
	.long	0xac
	.long	0x49b
	.uleb128 0x4
	.long	0x307
	.uleb128 0x4
	.long	0x100
	.byte	0
	.uleb128 0xc
	.ascii "initscr\0"
	.byte	0x4
	.word	0x3a8
	.byte	0x9
	.long	0x307
	.uleb128 0x15
	.ascii "_time64\0"
	.byte	0x1
	.byte	0xb5
	.byte	0x49
	.long	0xbf
	.long	0x4c6
	.uleb128 0x4
	.long	0x4c6
	.byte	0
	.uleb128 0x5
	.long	0xbf
	.uleb128 0x9
	.ascii "mvprintw\0"
	.word	0x3d0
	.long	0xac
	.long	0x4f0
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0x4f0
	.uleb128 0x16
	.byte	0
	.uleb128 0x5
	.long	0x66
	.uleb128 0x9
	.ascii "mvaddch\0"
	.word	0x3bb
	.long	0xac
	.long	0x518
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0xac
	.uleb128 0x4
	.long	0x12d
	.byte	0
	.uleb128 0xc
	.ascii "rand\0"
	.byte	0x5
	.word	0x1d6
	.byte	0x22
	.long	0xac
	.uleb128 0x17
	.ascii "srand\0"
	.byte	0x5
	.word	0x1d8
	.byte	0x23
	.long	0x53b
	.uleb128 0x4
	.long	0xe1
	.byte	0
	.uleb128 0x18
	.ascii "main\0"
	.byte	0x2
	.byte	0xd7
	.byte	0x5
	.long	0xac
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x59d
	.uleb128 0x1
	.ascii "c\0"
	.byte	0xd9
	.byte	0x9
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.ascii "rows\0"
	.byte	0xdb
	.byte	0x9
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.ascii "colms\0"
	.byte	0xdc
	.byte	0x9
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.ascii "map\0"
	.byte	0xe3
	.byte	0xa
	.long	0x59d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.long	0x5e
	.long	0x5bb
	.uleb128 0xe
	.long	0x6b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x6
	.uleb128 0xe
	.long	0x6b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.ascii "dungeon\0"
	.byte	0x2
	.byte	0x12
	.byte	0x5
	.long	0xac
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x86a
	.uleb128 0xa
	.ascii "c\0"
	.byte	0x2
	.byte	0x12
	.byte	0x11
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "rows\0"
	.byte	0x2
	.byte	0x12
	.byte	0x18
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.ascii "colms\0"
	.byte	0x2
	.byte	0x12
	.byte	0x22
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.ascii "map\0"
	.byte	0x2
	.byte	0x12
	.byte	0x30
	.long	0x86a
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x82b
	.uleb128 0x1
	.ascii "ry\0"
	.byte	0x1a
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.ascii "rx\0"
	.byte	0x1b
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.ascii "r_size_y\0"
	.byte	0x1c
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.ascii "r_size_x\0"
	.byte	0x1d
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.ascii "r_center_y\0"
	.byte	0x1e
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.ascii "r_center_x\0"
	.byte	0x1f
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.ascii "r_old_center_y\0"
	.byte	0x20
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.ascii "r_old_center_x\0"
	.byte	0x21
	.byte	0xd
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.ascii "room_num\0"
	.byte	0x22
	.byte	0xd
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1
	.ascii "collision\0"
	.byte	0x23
	.byte	0xd
	.long	0x3ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0xd
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x73a
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x26
	.byte	0x12
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x28
	.byte	0x16
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1
	.ascii "try_counter\0"
	.byte	0x37
	.byte	0x11
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x7a4
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x50
	.byte	0x1a
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x7
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x52
	.byte	0x1e
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0xd
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x7e6
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x65
	.byte	0x16
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x7
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x67
	.byte	0x1a
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1
	.ascii "path_y\0"
	.byte	0x82
	.byte	0x15
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x7
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x8c
	.byte	0x1a
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1
	.ascii "y\0"
	.byte	0x99
	.byte	0xe
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x7
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x1
	.ascii "x\0"
	.byte	0x9b
	.byte	0x12
	.long	0xac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x3e6
	.uleb128 0x1a
	.ascii "time\0"
	.byte	0x1
	.byte	0xf6
	.byte	0x33
	.long	0xd2
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b1
	.uleb128 0xa
	.ascii "_Time\0"
	.byte	0x1
	.byte	0xf6
	.byte	0x40
	.long	0x8b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.quad	.LVL0
	.long	0x4ac
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
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
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
	.file 6 "c:/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x6
	.file 7 "c:/mingw64/x86_64-w64-mingw32/include/stdarg.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
	.file 8 "c:/mingw64/x86_64-w64-mingw32/include/_mingw_stdarg.h"
	.byte	0x3
	.uleb128 0x8c
	.uleb128 0x8
	.file 9 "c:/mingw64/x86_64-w64-mingw32/include/vadefs.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x9
	.file 10 "c:/mingw64/x86_64-w64-mingw32/include/_mingw.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xa
	.file 11 "c:/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.file 12 "c:/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uleb128 0x121
	.uleb128 0x9
	.byte	0x4
	.file 13 "c:/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h"
	.byte	0x3
	.uleb128 0x26f
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 14 "c:/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xe
	.file 15 "c:/mingw64/x86_64-w64-mingw32/include/stddef.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xf
	.file 16 "c:/mingw64/x86_64-w64-mingw32/include/crtdefs.h"
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
	.file 17 "c:/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x11
	.file 18 "c:/mingw64/x86_64-w64-mingw32/include/corecrt_stdio_config.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x12
	.byte	0x4
	.file 19 "c:/mingw64/x86_64-w64-mingw32/include/_mingw_off_t.h"
	.byte	0x3
	.uleb128 0x5b
	.uleb128 0x13
	.byte	0x4
	.file 20 "c:/mingw64/x86_64-w64-mingw32/include/swprintf.inl"
	.byte	0x3
	.uleb128 0x56a
	.uleb128 0x14
	.byte	0x4
	.file 21 "c:/mingw64/x86_64-w64-mingw32/include/sec_api/stdio_s.h"
	.byte	0x3
	.uleb128 0x624
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
	.file 22 "c:/mingw64/x86_64-w64-mingw32/include/corecrt_wstdlib.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x16
	.byte	0x4
	.file 23 "c:/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/include-fixed/limits.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.file 24 "c:/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/include-fixed/syslimits.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x17
	.file 25 "c:/mingw64/x86_64-w64-mingw32/include/limits.h"
	.byte	0x3
	.uleb128 0xcb
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 26 "c:/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h"
	.byte	0x3
	.uleb128 0x2fd
	.uleb128 0x1a
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 27 "c:/mingw64/x86_64-w64-mingw32/include/malloc.h"
	.byte	0x3
	.uleb128 0x2fe
	.uleb128 0x1b
	.file 28 "c:/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/include/mm_malloc.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0x1c
	.file 29 "c:/mingw64/x86_64-w64-mingw32/include/errno.h"
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
	.file 30 "c:/mingw64/x86_64-w64-mingw32/include/sys/timeb.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x1e
	.file 31 "c:/mingw64/x86_64-w64-mingw32/include/sec_api/sys/timeb_s.h"
	.byte	0x3
	.uleb128 0x87
	.uleb128 0x1f
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 32 "c:/mingw64/x86_64-w64-mingw32/include/_timeval.h"
	.byte	0x3
	.uleb128 0x119
	.uleb128 0x20
	.byte	0x4
	.file 33 "c:/mingw64/x86_64-w64-mingw32/include/pthread_time.h"
	.byte	0x3
	.uleb128 0x144
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.file 34 "c:/mingw64/lib/gcc/x86_64-w64-mingw32/12.2.0/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF0:
	.ascii "app.c\0"
.LASF1:
	.ascii "C:\\AglasC-KURS\\021-corridors\0"
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 12.2.0"
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	mvaddch;	.scl	2;	.type	32;	.endef
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
