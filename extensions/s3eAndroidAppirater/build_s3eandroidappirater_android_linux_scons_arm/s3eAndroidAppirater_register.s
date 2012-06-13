	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"s3eAndroidAppirater_register.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align	2
.LC0:
	.ascii	"ANDROIDAPPIRATER_VERBOSE\000"
	.align	2
.LC1:
	.ascii	"calling s3eAndroidAppirater func on main thread: Ap"
	.ascii	"piraterInit\000"
	.section	.text._ZL18AppiraterInit_wrapPKcS0_ii,"ax",%progbits
	.align	2
	.type	_ZL18AppiraterInit_wrapPKcS0_ii, %function
_ZL18AppiraterInit_wrapPKcS0_ii:
.LFB15:
	.file 1 "G:\\hungryhobo_source\\edk\\s3eandroidappirater\\source\\generic\\s3eAndroidAppirater_register.cpp"
	.loc 1 28 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	sub	sp, sp, #24
.LCFI1:
	.loc 1 30 0
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 28 0
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 29 0
	ldr	r3, .L4+4
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4+8
.LPIC1:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L4+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L2:
	.loc 1 30 0
	ldr	r3, .L4+16
	ldr	r3, [r4, r3]
	ldr	r2, [sp, #12]
	str	r2, [sp, #0]
	ldr	r2, [sp, #8]
	str	r2, [sp, #4]
	mov	r0, r3
	mov	r1, #4
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 31 0
	mov	r0, r3
	add	sp, sp, #24
	ldmfd	sp!, {r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	AppiraterInit(GOT)
.LFE15:
	.size	_ZL18AppiraterInit_wrapPKcS0_ii, .-_ZL18AppiraterInit_wrapPKcS0_ii
	.section	.rodata
	.align	2
.LC2:
	.ascii	"s3eAndroidAppirater\000"
	.section	.text._Z30s3eAndroidAppiraterRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z30s3eAndroidAppiraterRegisterExtv
	.hidden	_Z30s3eAndroidAppiraterRegisterExtv
	.type	_Z30s3eAndroidAppiraterRegisterExtv, %function
_Z30s3eAndroidAppiraterRegisterExtv:
.LFB16:
	.loc 1 38 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI2:
	sub	sp, sp, #28
.LCFI3:
.LBB2:
	.loc 1 51 0
	ldr	r3, .L8
.LPIC5:
	add	r3, pc, r3
	.loc 1 41 0
	ldr	r2, .L8+4
.LPIC4:
	add	r2, pc, r2
	str	r2, [sp, #20]
	.loc 1 46 0
	mov	r2, #0
	str	r2, [sp, #16]
	.loc 1 51 0
	add	r2, sp, #20
	add	ip, sp, #16
	ldr	r1, .L8+8
	ldr	r1, [r3, r1]
	str	r1, [sp, #0]
	ldr	r1, .L8+12
	ldr	r3, [r3, r1]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, .L8+16
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, r2
	mov	r2, #4
	mov	r3, ip
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 52 0
	add	sp, sp, #28
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+8)
	.word	_ZL18AppiraterInit_wrapPKcS0_ii-(.LPIC4+8)
	.word	_Z23s3eAndroidAppiraterInitv(GOT)
	.word	_Z28s3eAndroidAppiraterTerminatev(GOT)
	.word	.LC2-(.LPIC6+8)
.LFE16:
	.size	_Z30s3eAndroidAppiraterRegisterExtv, .-_Z30s3eAndroidAppiraterRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB17:
	.loc 1 71 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI4:
	.loc 1 72 0
	bl	_Z30s3eAndroidAppiraterRegisterExtv(PLT)
	.loc 1 73 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE17:
	.size	RegisterExt, .-RegisterExt
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB15
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB16
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB17
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "d:/marmalade/5.2/s3e/h/s3eTypes.h"
	.section	.debug_info
	.4byte	0x173
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4
	.4byte	.LASF19
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2
	.byte	0xe2
	.4byte	0x7d
	.uleb128 0x5
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF9
	.sleb128 1
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0xe6
	.4byte	0x64
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa1
	.uleb128 0xa
	.4byte	0x94
	.uleb128 0xb
	.4byte	0x88
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1b
	.4byte	0x7d
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST0
	.4byte	0xff
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1b
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1b
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x25
	.4byte	.LASF23
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST1
	.4byte	0x142
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x28
	.4byte	0x142
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2e
	.4byte	0x152
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.4byte	0x88
	.4byte	0x152
	.uleb128 0x12
	.4byte	0x91
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.4byte	0x48
	.4byte	0x162
	.uleb128 0x12
	.4byte	0x91
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x46
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST2
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x41
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x177
	.4byte	0xff
	.ascii	"s3eAndroidAppiraterRegisterExt\000"
	.4byte	0x162
	.ascii	"RegisterExt\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF14:
	.ascii	"iDays\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF17:
	.ascii	"flags\000"
.LASF8:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF9:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"AppiraterInit_wrap\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF23:
	.ascii	"_Z30s3eAndroidAppiraterRegisterExtv\000"
.LASF18:
	.ascii	"GNU C++ 4.4.3\000"
.LASF22:
	.ascii	"s3eAndroidAppiraterRegisterExt\000"
.LASF20:
	.ascii	"s3eResult\000"
.LASF11:
	.ascii	"char\000"
.LASF10:
	.ascii	"long int\000"
.LASF3:
	.ascii	"short int\000"
.LASF15:
	.ascii	"iLaunches\000"
.LASF5:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"RegisterExt\000"
.LASF12:
	.ascii	"cTitle\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"G:\\hungryhobo_source\\edk\\s3eandroidappirater\\so"
	.ascii	"urce\\generic\\s3eAndroidAppirater_register.cpp\000"
.LASF13:
	.ascii	"cMsg\000"
.LASF16:
	.ascii	"funcPtrs\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
