	.file	"app.c"
	.text
Ltext0:
	.comm	_map, 2700, 5
	.globl	_y
	.data
	.align 4
_y:
	.long	10
	.globl	_x
	.align 4
_x:
	.long	12
	.text
	.globl	_dungeon
	.def	_dungeon;	.scl	2;	.type	32;	.endef
_dungeon:
LFB10:
	.file 1 "app.c"
	.loc 1 9 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
LBB2:
	.loc 1 10 0
	movl	$0, -12(%ebp)
	jmp	L2
L5:
LBB3:
	.loc 1 12 0
	movl	$0, -16(%ebp)
	jmp	L3
L4:
	.loc 1 14 0 discriminator 3
	movl	-12(%ebp), %eax
	imull	$90, %eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$_map, %eax
	movb	$35, (%eax)
	.loc 1 15 0 discriminator 3
	movl	$35, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 12 0 discriminator 3
	addl	$1, -16(%ebp)
L3:
	.loc 1 12 0 is_stmt 0 discriminator 1
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L4
LBE3:
	.loc 1 10 0 is_stmt 1 discriminator 2
	addl	$1, -12(%ebp)
L2:
	.loc 1 10 0 is_stmt 0 discriminator 1
	movl	-12(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L5
LBE2:
LBB4:
	.loc 1 18 0 is_stmt 1
	movl	$7, -20(%ebp)
	jmp	L6
L9:
LBB5:
	.loc 1 20 0
	movl	$7, -24(%ebp)
	jmp	L7
L8:
	.loc 1 22 0 discriminator 3
	movl	-20(%ebp), %eax
	imull	$90, %eax, %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	addl	$_map, %eax
	movb	$32, (%eax)
	.loc 1 23 0 discriminator 3
	movl	$32, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 20 0 discriminator 3
	addl	$1, -24(%ebp)
L7:
	.loc 1 20 0 is_stmt 0 discriminator 1
	movl	12(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	-24(%ebp), %eax
	jge	L8
LBE5:
	.loc 1 18 0 is_stmt 1 discriminator 2
	addl	$1, -20(%ebp)
L6:
	.loc 1 18 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	-20(%ebp), %eax
	jge	L9
LBE4:
	.loc 1 26 0 is_stmt 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_movement
	.def	_movement;	.scl	2;	.type	32;	.endef
_movement:
LFB11:
	.loc 1 28 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 29 0
	cmpl	$259, 8(%ebp)
	jne	L11
	.loc 1 29 0 discriminator 1
	movl	_y, %eax
	leal	-1(%eax), %edx
	movl	_x, %eax
	imull	$90, %edx, %edx
	addl	%edx, %eax
	addl	$_map, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L11
	.loc 1 30 0
	movl	_y, %eax
	subl	$1, %eax
	movl	%eax, _y
	jmp	L12
L11:
	.loc 1 31 0
	cmpl	$258, 8(%ebp)
	jne	L13
	.loc 1 31 0 discriminator 1
	movl	_y, %eax
	leal	1(%eax), %edx
	movl	_x, %eax
	imull	$90, %edx, %edx
	addl	%edx, %eax
	addl	$_map, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L13
	.loc 1 32 0
	movl	_y, %eax
	addl	$1, %eax
	movl	%eax, _y
	jmp	L12
L13:
	.loc 1 33 0
	cmpl	$260, 8(%ebp)
	jne	L14
	.loc 1 33 0 discriminator 1
	movl	_y, %eax
	movl	_x, %edx
	subl	$1, %edx
	imull	$90, %eax, %eax
	addl	%edx, %eax
	addl	$_map, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L14
	.loc 1 34 0
	movl	_x, %eax
	subl	$1, %eax
	movl	%eax, _x
	jmp	L12
L14:
	.loc 1 35 0
	cmpl	$261, 8(%ebp)
	jne	L12
	.loc 1 35 0 discriminator 1
	movl	_y, %eax
	movl	_x, %edx
	addl	$1, %edx
	imull	$90, %eax, %eax
	addl	%edx, %eax
	addl	$_map, %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jne	L12
	.loc 1 36 0
	movl	_x, %eax
	addl	$1, %eax
	movl	%eax, _x
L12:
	.loc 1 38 0
	movl	_x, %edx
	movl	_y, %eax
	movl	$64, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_mvaddch
	.loc 1 39 0
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB12:
	.loc 1 41 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	.loc 1 41 0
	call	___main
LVL0:
	.loc 1 47 0
	call	_initscr
	.loc 1 48 0
	movl	_stdscr, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_keypad
	.loc 1 49 0
	call	_noecho
	.loc 1 50 0
	movl	$0, (%esp)
	call	_curs_set
	.loc 1 51 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxy
	movl	%eax, 24(%esp)
	.loc 1 51 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_getmaxx
	movl	%eax, 20(%esp)
L16:
	.loc 1 55 0 discriminator 1
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_dungeon
	.loc 1 56 0 discriminator 1
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_movement
	.loc 1 62 0 discriminator 1
	movl	_stdscr, %eax
	.loc 1 62 0 discriminator 1
	movl	%eax, (%esp)
	call	_wgetch
	movl	%eax, 28(%esp)
	cmpl	$27, 28(%esp)
	jne	L16
	.loc 1 64 0
	call	_endwin
	.loc 1 66 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 67 0
	movl	_stdscr, %eax
	movl	%eax, (%esp)
	call	_wgetch
	.loc 1 69 0
	movl	$0, %eax
	.loc 1 70 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
Letext0:
	.file 2 "c:/mingw/include/stdio.h"
	.file 3 "c:/mingw/include/curses.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x88c
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C11 6.3.0 -mtune=generic -march=i586 -g3\0"
	.byte	0xc
	.ascii "app.c\0"
	.ascii "C:\\AglasC-KURS\\015-ncurses-fanctions\0"
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
	.uleb128 0x7
	.long	0x75
	.long	0x756
	.uleb128 0xb
	.long	0x212
	.byte	0x1d
	.uleb128 0xb
	.long	0x212
	.byte	0x59
	.byte	0
	.uleb128 0x10
	.ascii "map\0"
	.byte	0x1
	.byte	0x4
	.long	0x740
	.uleb128 0x5
	.byte	0x3
	.long	_map
	.uleb128 0x10
	.ascii "y\0"
	.byte	0x1
	.byte	0x5
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_y
	.uleb128 0x10
	.ascii "x\0"
	.byte	0x1
	.byte	0x6
	.long	0x7d
	.uleb128 0x5
	.byte	0x3
	.long	_x
	.uleb128 0x11
	.ascii "main\0"
	.byte	0x1
	.byte	0x28
	.long	0x7d
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cb
	.uleb128 0x12
	.ascii "c\0"
	.byte	0x1
	.byte	0x2a
	.long	0x7d
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x12
	.ascii "rows\0"
	.byte	0x1
	.byte	0x2c
	.long	0x7d
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0x12
	.ascii "colms\0"
	.byte	0x1
	.byte	0x2d
	.long	0x7d
	.uleb128 0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0x13
	.ascii "movement\0"
	.byte	0x1
	.byte	0x1b
	.long	0x7d
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f6
	.uleb128 0x14
	.ascii "c\0"
	.byte	0x1
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.ascii "dungeon\0"
	.byte	0x1
	.byte	0x8
	.long	0x7d
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.ascii "rows\0"
	.byte	0x1
	.byte	0x8
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "colms\0"
	.byte	0x1
	.byte	0x8
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x860
	.uleb128 0x12
	.ascii "yy\0"
	.byte	0x1
	.byte	0xa
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x12
	.ascii "xx\0"
	.byte	0x1
	.byte	0xc
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	LBB4
	.long	LBE4-LBB4
	.uleb128 0x12
	.ascii "yy\0"
	.byte	0x1
	.byte	0x12
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x12
	.ascii "xx\0"
	.byte	0x1
	.byte	0x14
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x14
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
	.file 4 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x4
	.byte	0x4
	.file 5 "c:/mingw/lib/gcc/mingw32/6.3.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.file 6 "c:/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x6
	.file 7 "c:/mingw/include/msvcrtver.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x7
	.byte	0x4
	.file 8 "c:/mingw/include/w32api.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x8
	.file 9 "c:/mingw/include/sdkddkver.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x5
	.byte	0x4
	.file 10 "c:/mingw/include/sys/types.h"
	.byte	0x3
	.uleb128 0x5e
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_mvaddch;	.scl	2;	.type	32;	.endef
	.def	_initscr;	.scl	2;	.type	32;	.endef
	.def	_keypad;	.scl	2;	.type	32;	.endef
	.def	_noecho;	.scl	2;	.type	32;	.endef
	.def	_curs_set;	.scl	2;	.type	32;	.endef
	.def	_getmaxy;	.scl	2;	.type	32;	.endef
	.def	_getmaxx;	.scl	2;	.type	32;	.endef
	.def	_wgetch;	.scl	2;	.type	32;	.endef
	.def	_endwin;	.scl	2;	.type	32;	.endef
