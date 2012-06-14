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
	.section	.text._ZL18AppiraterInit_wrapPKcS0_iii,"ax",%progbits
	.align	2
	.type	_ZL18AppiraterInit_wrapPKcS0_iii, %function
_ZL18AppiraterInit_wrapPKcS0_iii:
.LFB15:
	.file 1 "C:\\marmalade\\6.0\\extensions\\s3eandroidappirater\\source\\generic\\s3eAndroidAppirater_register.cpp"
	.loc 1 28 0
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	sub	sp, sp, #32
.LCFI1:
	.loc 1 30 0
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 28 0
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	str	r2, [sp, #20]
	str	r3, [sp, #16]
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
	ldr	r2, [sp, #20]
	str	r2, [sp, #0]
	ldr	r2, [sp, #16]
	str	r2, [sp, #4]
	ldr	r2, [sp, #40]
	str	r2, [sp, #8]
	mov	r0, r3
	mov	r1, #5
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 31 0
	mov	r0, r3
	add	sp, sp, #32
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
	.size	_ZL18AppiraterInit_wrapPKcS0_iii, .-_ZL18AppiraterInit_wrapPKcS0_iii
	.section	.rodata
	.align	2
.LC2:
	.ascii	"calling s3eAndroidAppirater func on main thread: Ap"
	.ascii	"piraterEventOccured\000"
	.section	.text._ZL26AppiraterEventOccured_wrapv,"ax",%progbits
	.align	2
	.type	_ZL26AppiraterEventOccured_wrapv, %function
_ZL26AppiraterEventOccured_wrapv:
.LFB16:
	.loc 1 34 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 36 0
	ldr	r4, .L9
.LPIC7:
	add	r4, pc, r4
	.loc 1 35 0
	ldr	r3, .L9+4
.LPIC4:
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
	beq	.L7
	ldr	r3, .L9+8
.LPIC5:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L9+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L7:
	.loc 1 36 0
	ldr	r3, .L9+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 37 0
	mov	r0, r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	AppiraterEventOccured(GOT)
.LFE16:
	.size	_ZL26AppiraterEventOccured_wrapv, .-_ZL26AppiraterEventOccured_wrapv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"s3eAndroidAppirater\000"
	.section	.text._Z30s3eAndroidAppiraterRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z30s3eAndroidAppiraterRegisterExtv
	.hidden	_Z30s3eAndroidAppiraterRegisterExtv
	.type	_Z30s3eAndroidAppiraterRegisterExtv, %function
_Z30s3eAndroidAppiraterRegisterExtv:
.LFB17:
	.loc 1 45 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI3:
	sub	sp, sp, #36
.LCFI4:
.LBB2:
	.loc 1 59 0
	ldr	r3, .L13
.LPIC10:
	add	r3, pc, r3
	.loc 1 48 0
	ldr	r2, .L13+4
.LPIC8:
	add	r2, pc, r2
	str	r2, [sp, #24]
	.loc 1 49 0
	ldr	r2, .L13+8
.LPIC9:
	add	r2, pc, r2
	str	r2, [sp, #28]
	.loc 1 54 0
	mov	r2, #0
	str	r2, [sp, #16]
	mov	r2, #0
	str	r2, [sp, #20]
	.loc 1 59 0
	add	r2, sp, #24
	add	ip, sp, #16
	ldr	r1, .L13+12
	ldr	r1, [r3, r1]
	str	r1, [sp, #0]
	ldr	r1, .L13+16
	ldr	r3, [r3, r1]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, .L13+20
.LPIC11:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 60 0
	add	sp, sp, #36
	ldr	lr, [sp], #4
	bx	lr
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+8)
	.word	_ZL18AppiraterInit_wrapPKcS0_iii-(.LPIC8+8)
	.word	_ZL26AppiraterEventOccured_wrapv-(.LPIC9+8)
	.word	_Z23s3eAndroidAppiraterInitv(GOT)
	.word	_Z28s3eAndroidAppiraterTerminatev(GOT)
	.word	.LC3-(.LPIC11+8)
.LFE17:
	.size	_Z30s3eAndroidAppiraterRegisterExtv, .-_Z30s3eAndroidAppiraterRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB18:
	.loc 1 79 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI5:
	.loc 1 80 0
	bl	_Z30s3eAndroidAppiraterRegisterExtv(PLT)
	.loc 1 81 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE18:
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
	.uleb128 0x28
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
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
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
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB16
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB17
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB18
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../s3e/h/s3eTypes.h"
	.section	.debug_info
	.4byte	0x19c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.4byte	.LASF20
	.4byte	.LASF21
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
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2
	.byte	0xe2
	.4byte	0x81
	.uleb128 0x5
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF9
	.sleb128 1
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.byte	0xe6
	.4byte	0x68
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
	.4byte	0x4c
	.4byte	0xaf
	.uleb128 0xa
	.4byte	0x95
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb5
	.uleb128 0xc
	.4byte	0x98
	.uleb128 0xd
	.4byte	0x8c
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1b
	.4byte	0x81
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST0
	.4byte	0x121
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1b
	.4byte	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1b
	.4byte	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.4byte	0x81
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2c
	.4byte	.LASF26
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST2
	.4byte	0x17b
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2f
	.4byte	0x17b
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x36
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.4byte	0x8c
	.4byte	0x18b
	.uleb128 0xa
	.4byte	0x95
	.byte	0x1
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4e
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST3
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
	.uleb128 0x1b
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.4byte	0x1a0
	.4byte	0x138
	.ascii	"s3eAndroidAppiraterRegisterExt\000"
	.4byte	0x18b
	.ascii	"RegisterExt\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
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
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF14:
	.ascii	"iDays\000"
.LASF13:
	.ascii	"cAppName\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF18:
	.ascii	"flags\000"
.LASF8:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF9:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF21:
	.ascii	"c:\\\\marmalade\\\\6.0\\\\extensions\\\\s3eandroida"
	.ascii	"ppirater\\\\build_s3eandroidappirater_android_linux"
	.ascii	"_scons_arm\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF23:
	.ascii	"AppiraterInit_wrap\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF26:
	.ascii	"_Z30s3eAndroidAppiraterRegisterExtv\000"
.LASF19:
	.ascii	"GNU C++ 4.4.3\000"
.LASF25:
	.ascii	"s3eAndroidAppiraterRegisterExt\000"
.LASF22:
	.ascii	"s3eResult\000"
.LASF11:
	.ascii	"char\000"
.LASF20:
	.ascii	"C:\\marmalade\\6.0\\extensions\\s3eandroidappirater"
	.ascii	"\\source\\generic\\s3eAndroidAppirater_register.cpp"
	.ascii	"\000"
.LASF10:
	.ascii	"long int\000"
.LASF16:
	.ascii	"iEvents\000"
.LASF3:
	.ascii	"short int\000"
.LASF15:
	.ascii	"iLaunches\000"
.LASF5:
	.ascii	"long long int\000"
.LASF27:
	.ascii	"RegisterExt\000"
.LASF12:
	.ascii	"cTitle\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF17:
	.ascii	"funcPtrs\000"
.LASF24:
	.ascii	"AppiraterEventOccured_wrap\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
