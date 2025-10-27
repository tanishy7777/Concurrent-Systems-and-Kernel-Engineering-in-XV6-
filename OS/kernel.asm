
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b4000 	.word	0x800b4000
   10408:	800ad120 	.word	0x800ad120

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b4000 	.word	0x800b4000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	800218d0 	.word	0x800218d0

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	80024734 	.word	0x80024734
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800b085c 	.word	0x800b085c

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000516 	bl	80021afc <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00047b 	bl	800218d0 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb000504 	bl	80021afc <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	8002b340 	.word	0x8002b340
80020720:	800b085c 	.word	0x800b085c
80020724:	8002b358 	.word	0x8002b358
80020728:	8002b36c 	.word	0x8002b36c

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb000429 	bl	800218d0 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000416 	bl	800218d0 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	8002b380 	.word	0x8002b380
800208a0:	8002b384 	.word	0x8002b384

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb001858 	bl	80026a4c <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	8002b390 	.word	0x8002b390
800209a0:	800ad120 	.word	0x800ad120
800209a4:	800ae644 	.word	0x800ae644
800209a8:	800ad154 	.word	0x800ad154

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb001832 	bl	80026a94 <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb001822 	bl	80026ac0 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb0015ea 	bl	800261f4 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb0017fb 	bl	80026ac0 <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003ff 	bl	80021afc <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800ad120 	.word	0x800ad120
80020b0c:	800ae644 	.word	0x800ae644
80020b10:	8002b398 	.word	0x8002b398

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb000f45 	bl	8002486c <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003da 	bl	80021afc <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000f2f 	bl	8002486c <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	8002b3ac 	.word	0x8002b3ac

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003c4 	bl	80021afc <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb0017a8 	bl	80026a94 <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb0015dd 	bl	800263f4 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb00178e 	bl	80026ac0 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	8002b3b4 	.word	0x8002b3b4
80020c94:	800ad120 	.word	0x800ad120
80020c98:	800ae644 	.word	0x800ae644

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ae85c 	.word	0x800ae85c

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ae85c 	.word	0x800ae85c

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ae85c 	.word	0x800ae85c

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb00171f 	bl	80026a4c <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	8002b3bc 	.word	0x8002b3bc
80020dd8:	800ae85c 	.word	0x800ae85c

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ae85c 	.word	0x800ae85c
80020f7c:	800ae89c 	.word	0x800ae89c
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002c1 	bl	80021afc <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ae85c 	.word	0x800ae85c
8002111c:	8002b3c4 	.word	0x8002b3c4
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb000252 	bl	80021afc <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ae85c 	.word	0x800ae85c
8002126c:	8002b3d4 	.word	0x8002b3d4
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb00020a 	bl	80021afc <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ae85c 	.word	0x800ae85c
80021360:	8002b3e4 	.word	0x8002b3e4

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ae85c 	.word	0x800ae85c
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb0001a9 	bl	80021afc <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb00158d 	bl	80026a94 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb001593 	bl	80026ac0 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	8002b3fc 	.word	0x8002b3fc
80021484:	800ae85c 	.word	0x800ae85c

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb000183 	bl	80021afc <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	8002b41c 	.word	0x8002b41c

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd010 	sub	sp, sp, #16
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a00000e 	beq	8002160c <kfree+0x8c>
800215d0:	e3a02001 	mov	r2, #1
800215d4:	e51b300c 	ldr	r3, [fp, #-12]
800215d8:	e1a03312 	lsl	r3, r2, r3
800215dc:	e2433001 	sub	r3, r3, #1
800215e0:	e1a02003 	mov	r2, r3
800215e4:	e51b3008 	ldr	r3, [fp, #-8]
800215e8:	e0033002 	and	r3, r3, r2
800215ec:	e58d3000 	str	r3, [sp]
800215f0:	e3a03006 	mov	r3, #6
800215f4:	e3a0200c 	mov	r2, #12
800215f8:	e51b100c 	ldr	r1, [fp, #-12]
800215fc:	e59f0030 	ldr	r0, [pc, #48]	@ 80021634 <kfree+0xb4>
80021600:	eb0000b2 	bl	800218d0 <cprintf>
80021604:	e59f002c 	ldr	r0, [pc, #44]	@ 80021638 <kfree+0xb8>
80021608:	eb00013b 	bl	80021afc <panic>
8002160c:	e59f0028 	ldr	r0, [pc, #40]	@ 8002163c <kfree+0xbc>
80021610:	eb00151f 	bl	80026a94 <acquire>
80021614:	e51b100c 	ldr	r1, [fp, #-12]
80021618:	e51b0008 	ldr	r0, [fp, #-8]
8002161c:	ebffff99 	bl	80021488 <_kfree>
80021620:	e59f0014 	ldr	r0, [pc, #20]	@ 8002163c <kfree+0xbc>
80021624:	eb001525 	bl	80026ac0 <release>
80021628:	e1a00000 	nop			@ (mov r0, r0)
8002162c:	e24bd004 	sub	sp, fp, #4
80021630:	e8bd8800 	pop	{fp, pc}
80021634:	8002b430 	.word	0x8002b430
80021638:	8002b458 	.word	0x8002b458
8002163c:	800ae85c 	.word	0x800ae85c

80021640 <free_page>:
80021640:	e92d4800 	push	{fp, lr}
80021644:	e28db004 	add	fp, sp, #4
80021648:	e24dd008 	sub	sp, sp, #8
8002164c:	e50b0008 	str	r0, [fp, #-8]
80021650:	e3a0100c 	mov	r1, #12
80021654:	e51b0008 	ldr	r0, [fp, #-8]
80021658:	ebffffc8 	bl	80021580 <kfree>
8002165c:	e1a00000 	nop			@ (mov r0, r0)
80021660:	e24bd004 	sub	sp, fp, #4
80021664:	e8bd8800 	pop	{fp, pc}

80021668 <alloc_page>:
80021668:	e92d4800 	push	{fp, lr}
8002166c:	e28db004 	add	fp, sp, #4
80021670:	e3a0000c 	mov	r0, #12
80021674:	ebffff6a 	bl	80021424 <kmalloc>
80021678:	e1a03000 	mov	r3, r0
8002167c:	e1a00003 	mov	r0, r3
80021680:	e8bd8800 	pop	{fp, pc}

80021684 <get_order>:
80021684:	e92d4800 	push	{fp, lr}
80021688:	e28db004 	add	fp, sp, #4
8002168c:	e24dd010 	sub	sp, sp, #16
80021690:	e50b0010 	str	r0, [fp, #-16]
80021694:	e51b3010 	ldr	r3, [fp, #-16]
80021698:	e2433001 	sub	r3, r3, #1
8002169c:	e50b3010 	str	r3, [fp, #-16]
800216a0:	e51b3010 	ldr	r3, [fp, #-16]
800216a4:	e1a030a3 	lsr	r3, r3, #1
800216a8:	e51b2010 	ldr	r2, [fp, #-16]
800216ac:	e1823003 	orr	r3, r2, r3
800216b0:	e50b3010 	str	r3, [fp, #-16]
800216b4:	e51b3010 	ldr	r3, [fp, #-16]
800216b8:	e1a03123 	lsr	r3, r3, #2
800216bc:	e51b2010 	ldr	r2, [fp, #-16]
800216c0:	e1823003 	orr	r3, r2, r3
800216c4:	e50b3010 	str	r3, [fp, #-16]
800216c8:	e51b3010 	ldr	r3, [fp, #-16]
800216cc:	e1a03223 	lsr	r3, r3, #4
800216d0:	e51b2010 	ldr	r2, [fp, #-16]
800216d4:	e1823003 	orr	r3, r2, r3
800216d8:	e50b3010 	str	r3, [fp, #-16]
800216dc:	e51b3010 	ldr	r3, [fp, #-16]
800216e0:	e1a03423 	lsr	r3, r3, #8
800216e4:	e51b2010 	ldr	r2, [fp, #-16]
800216e8:	e1823003 	orr	r3, r2, r3
800216ec:	e50b3010 	str	r3, [fp, #-16]
800216f0:	e51b3010 	ldr	r3, [fp, #-16]
800216f4:	e1a03823 	lsr	r3, r3, #16
800216f8:	e51b2010 	ldr	r2, [fp, #-16]
800216fc:	e1823003 	orr	r3, r2, r3
80021700:	e50b3010 	str	r3, [fp, #-16]
80021704:	e51b3010 	ldr	r3, [fp, #-16]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3010 	str	r3, [fp, #-16]
80021710:	e3a03000 	mov	r3, #0
80021714:	e50b3008 	str	r3, [fp, #-8]
80021718:	ea00000a 	b	80021748 <get_order+0xc4>
8002171c:	e3a02001 	mov	r2, #1
80021720:	e51b3008 	ldr	r3, [fp, #-8]
80021724:	e1a03312 	lsl	r3, r2, r3
80021728:	e1a02003 	mov	r2, r3
8002172c:	e51b3010 	ldr	r3, [fp, #-16]
80021730:	e0033002 	and	r3, r3, r2
80021734:	e3530000 	cmp	r3, #0
80021738:	1a000006 	bne	80021758 <get_order+0xd4>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e2833001 	add	r3, r3, #1
80021744:	e50b3008 	str	r3, [fp, #-8]
80021748:	e51b3008 	ldr	r3, [fp, #-8]
8002174c:	e353001f 	cmp	r3, #31
80021750:	9afffff1 	bls	8002171c <get_order+0x98>
80021754:	ea000000 	b	8002175c <get_order+0xd8>
80021758:	e1a00000 	nop			@ (mov r0, r0)
8002175c:	e51b3008 	ldr	r3, [fp, #-8]
80021760:	e3530005 	cmp	r3, #5
80021764:	8a000002 	bhi	80021774 <get_order+0xf0>
80021768:	e3a03006 	mov	r3, #6
8002176c:	e50b3008 	str	r3, [fp, #-8]
80021770:	ea000004 	b	80021788 <get_order+0x104>
80021774:	e51b3008 	ldr	r3, [fp, #-8]
80021778:	e353000c 	cmp	r3, #12
8002177c:	9a000001 	bls	80021788 <get_order+0x104>
80021780:	e59f0010 	ldr	r0, [pc, #16]	@ 80021798 <get_order+0x114>
80021784:	eb0000dc 	bl	80021afc <panic>
80021788:	e51b3008 	ldr	r3, [fp, #-8]
8002178c:	e1a00003 	mov	r0, r3
80021790:	e24bd004 	sub	sp, fp, #4
80021794:	e8bd8800 	pop	{fp, pc}
80021798:	8002b488 	.word	0x8002b488

8002179c <printint>:
8002179c:	e92d4800 	push	{fp, lr}
800217a0:	e28db004 	add	fp, sp, #4
800217a4:	e24dd028 	sub	sp, sp, #40	@ 0x28
800217a8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800217ac:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800217b0:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800217b4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800217b8:	e3530000 	cmp	r3, #0
800217bc:	0a00000a 	beq	800217ec <printint+0x50>
800217c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217c4:	e1a03fa3 	lsr	r3, r3, #31
800217c8:	e6ef3073 	uxtb	r3, r3
800217cc:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800217d0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800217d4:	e3530000 	cmp	r3, #0
800217d8:	0a000003 	beq	800217ec <printint+0x50>
800217dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217e0:	e2633000 	rsb	r3, r3, #0
800217e4:	e50b300c 	str	r3, [fp, #-12]
800217e8:	ea000001 	b	800217f4 <printint+0x58>
800217ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217f0:	e50b300c 	str	r3, [fp, #-12]
800217f4:	e3a03000 	mov	r3, #0
800217f8:	e50b3008 	str	r3, [fp, #-8]
800217fc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021800:	e51b300c 	ldr	r3, [fp, #-12]
80021804:	e1a01002 	mov	r1, r2
80021808:	e1a00003 	mov	r0, r3
8002180c:	eb002670 	bl	8002b1d4 <__aeabi_uidivmod>
80021810:	e1a03001 	mov	r3, r1
80021814:	e1a01003 	mov	r1, r3
80021818:	e51b3008 	ldr	r3, [fp, #-8]
8002181c:	e2832001 	add	r2, r3, #1
80021820:	e50b2008 	str	r2, [fp, #-8]
80021824:	e59f20a0 	ldr	r2, [pc, #160]	@ 800218cc <printint+0x130>
80021828:	e7d22001 	ldrb	r2, [r2, r1]
8002182c:	e2433004 	sub	r3, r3, #4
80021830:	e083300b 	add	r3, r3, fp
80021834:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021838:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002183c:	e1a01003 	mov	r1, r3
80021840:	e51b000c 	ldr	r0, [fp, #-12]
80021844:	eb002625 	bl	8002b0e0 <__udivsi3>
80021848:	e1a03000 	mov	r3, r0
8002184c:	e50b300c 	str	r3, [fp, #-12]
80021850:	e51b300c 	ldr	r3, [fp, #-12]
80021854:	e3530000 	cmp	r3, #0
80021858:	1affffe7 	bne	800217fc <printint+0x60>
8002185c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021860:	e3530000 	cmp	r3, #0
80021864:	0a00000e 	beq	800218a4 <printint+0x108>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2832001 	add	r2, r3, #1
80021870:	e50b2008 	str	r2, [fp, #-8]
80021874:	e2433004 	sub	r3, r3, #4
80021878:	e083300b 	add	r3, r3, fp
8002187c:	e3a0202d 	mov	r2, #45	@ 0x2d
80021880:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021884:	ea000006 	b	800218a4 <printint+0x108>
80021888:	e24b201c 	sub	r2, fp, #28
8002188c:	e51b3008 	ldr	r3, [fp, #-8]
80021890:	e0823003 	add	r3, r2, r3
80021894:	e5d33000 	ldrb	r3, [r3]
80021898:	e3a01000 	mov	r1, #0
8002189c:	e1a00003 	mov	r0, r3
800218a0:	eb0000ae 	bl	80021b60 <consputc>
800218a4:	e51b3008 	ldr	r3, [fp, #-8]
800218a8:	e2433001 	sub	r3, r3, #1
800218ac:	e50b3008 	str	r3, [fp, #-8]
800218b0:	e51b3008 	ldr	r3, [fp, #-8]
800218b4:	e3530000 	cmp	r3, #0
800218b8:	aafffff2 	bge	80021888 <printint+0xec>
800218bc:	e1a00000 	nop			@ (mov r0, r0)
800218c0:	e1a00000 	nop			@ (mov r0, r0)
800218c4:	e24bd004 	sub	sp, fp, #4
800218c8:	e8bd8800 	pop	{fp, pc}
800218cc:	8002d000 	.word	0x8002d000

800218d0 <cprintf>:
800218d0:	e92d000f 	push	{r0, r1, r2, r3}
800218d4:	e92d4800 	push	{fp, lr}
800218d8:	e28db004 	add	fp, sp, #4
800218dc:	e24dd018 	sub	sp, sp, #24
800218e0:	e59f3204 	ldr	r3, [pc, #516]	@ 80021aec <cprintf+0x21c>
800218e4:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218f0:	e3530000 	cmp	r3, #0
800218f4:	0a000001 	beq	80021900 <cprintf+0x30>
800218f8:	e59f01ec 	ldr	r0, [pc, #492]	@ 80021aec <cprintf+0x21c>
800218fc:	eb001464 	bl	80026a94 <acquire>
80021900:	e59b3004 	ldr	r3, [fp, #4]
80021904:	e3530000 	cmp	r3, #0
80021908:	1a000001 	bne	80021914 <cprintf+0x44>
8002190c:	e59f01dc 	ldr	r0, [pc, #476]	@ 80021af0 <cprintf+0x220>
80021910:	eb000079 	bl	80021afc <panic>
80021914:	e28b3008 	add	r3, fp, #8
80021918:	e50b300c 	str	r3, [fp, #-12]
8002191c:	e3a03000 	mov	r3, #0
80021920:	e50b3008 	str	r3, [fp, #-8]
80021924:	ea00005c 	b	80021a9c <cprintf+0x1cc>
80021928:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002192c:	e3530025 	cmp	r3, #37	@ 0x25
80021930:	0a000003 	beq	80021944 <cprintf+0x74>
80021934:	e3a01000 	mov	r1, #0
80021938:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002193c:	eb000087 	bl	80021b60 <consputc>
80021940:	ea000052 	b	80021a90 <cprintf+0x1c0>
80021944:	e59b2004 	ldr	r2, [fp, #4]
80021948:	e51b3008 	ldr	r3, [fp, #-8]
8002194c:	e2833001 	add	r3, r3, #1
80021950:	e50b3008 	str	r3, [fp, #-8]
80021954:	e51b3008 	ldr	r3, [fp, #-8]
80021958:	e0823003 	add	r3, r2, r3
8002195c:	e5d33000 	ldrb	r3, [r3]
80021960:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021968:	e3530000 	cmp	r3, #0
8002196c:	0a000053 	beq	80021ac0 <cprintf+0x1f0>
80021970:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021974:	e3530025 	cmp	r3, #37	@ 0x25
80021978:	0a000039 	beq	80021a64 <cprintf+0x194>
8002197c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021980:	e3530025 	cmp	r3, #37	@ 0x25
80021984:	ba00003a 	blt	80021a74 <cprintf+0x1a4>
80021988:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002198c:	e3530078 	cmp	r3, #120	@ 0x78
80021990:	ca000037 	bgt	80021a74 <cprintf+0x1a4>
80021994:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021998:	e3530064 	cmp	r3, #100	@ 0x64
8002199c:	ba000034 	blt	80021a74 <cprintf+0x1a4>
800219a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800219a4:	e2432064 	sub	r2, r3, #100	@ 0x64
800219a8:	e59f3144 	ldr	r3, [pc, #324]	@ 80021af4 <cprintf+0x224>
800219ac:	e3520014 	cmp	r2, #20
800219b0:	8a00002f 	bhi	80021a74 <cprintf+0x1a4>
800219b4:	e793f102 	ldr	pc, [r3, r2, lsl #2]
800219b8:	e1a00000 	nop			@ (mov r0, r0)
800219bc:	e51b300c 	ldr	r3, [fp, #-12]
800219c0:	e2832004 	add	r2, r3, #4
800219c4:	e50b200c 	str	r2, [fp, #-12]
800219c8:	e5933000 	ldr	r3, [r3]
800219cc:	e3a02001 	mov	r2, #1
800219d0:	e3a0100a 	mov	r1, #10
800219d4:	e1a00003 	mov	r0, r3
800219d8:	ebffff6f 	bl	8002179c <printint>
800219dc:	ea00002b 	b	80021a90 <cprintf+0x1c0>
800219e0:	e51b300c 	ldr	r3, [fp, #-12]
800219e4:	e2832004 	add	r2, r3, #4
800219e8:	e50b200c 	str	r2, [fp, #-12]
800219ec:	e5933000 	ldr	r3, [r3]
800219f0:	e3a02000 	mov	r2, #0
800219f4:	e3a01010 	mov	r1, #16
800219f8:	e1a00003 	mov	r0, r3
800219fc:	ebffff66 	bl	8002179c <printint>
80021a00:	ea000022 	b	80021a90 <cprintf+0x1c0>
80021a04:	e51b300c 	ldr	r3, [fp, #-12]
80021a08:	e2832004 	add	r2, r3, #4
80021a0c:	e50b200c 	str	r2, [fp, #-12]
80021a10:	e5933000 	ldr	r3, [r3]
80021a14:	e50b3010 	str	r3, [fp, #-16]
80021a18:	e51b3010 	ldr	r3, [fp, #-16]
80021a1c:	e3530000 	cmp	r3, #0
80021a20:	1a00000a 	bne	80021a50 <cprintf+0x180>
80021a24:	e59f30cc 	ldr	r3, [pc, #204]	@ 80021af8 <cprintf+0x228>
80021a28:	e50b3010 	str	r3, [fp, #-16]
80021a2c:	ea000007 	b	80021a50 <cprintf+0x180>
80021a30:	e51b3010 	ldr	r3, [fp, #-16]
80021a34:	e5d33000 	ldrb	r3, [r3]
80021a38:	e3a01000 	mov	r1, #0
80021a3c:	e1a00003 	mov	r0, r3
80021a40:	eb000046 	bl	80021b60 <consputc>
80021a44:	e51b3010 	ldr	r3, [fp, #-16]
80021a48:	e2833001 	add	r3, r3, #1
80021a4c:	e50b3010 	str	r3, [fp, #-16]
80021a50:	e51b3010 	ldr	r3, [fp, #-16]
80021a54:	e5d33000 	ldrb	r3, [r3]
80021a58:	e3530000 	cmp	r3, #0
80021a5c:	1afffff3 	bne	80021a30 <cprintf+0x160>
80021a60:	ea00000a 	b	80021a90 <cprintf+0x1c0>
80021a64:	e3a01000 	mov	r1, #0
80021a68:	e3a00025 	mov	r0, #37	@ 0x25
80021a6c:	eb00003b 	bl	80021b60 <consputc>
80021a70:	ea000006 	b	80021a90 <cprintf+0x1c0>
80021a74:	e3a01000 	mov	r1, #0
80021a78:	e3a00025 	mov	r0, #37	@ 0x25
80021a7c:	eb000037 	bl	80021b60 <consputc>
80021a80:	e3a01000 	mov	r1, #0
80021a84:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a88:	eb000034 	bl	80021b60 <consputc>
80021a8c:	e1a00000 	nop			@ (mov r0, r0)
80021a90:	e51b3008 	ldr	r3, [fp, #-8]
80021a94:	e2833001 	add	r3, r3, #1
80021a98:	e50b3008 	str	r3, [fp, #-8]
80021a9c:	e59b2004 	ldr	r2, [fp, #4]
80021aa0:	e51b3008 	ldr	r3, [fp, #-8]
80021aa4:	e0823003 	add	r3, r2, r3
80021aa8:	e5d33000 	ldrb	r3, [r3]
80021aac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021ab0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ab4:	e3530000 	cmp	r3, #0
80021ab8:	1affff9a 	bne	80021928 <cprintf+0x58>
80021abc:	ea000000 	b	80021ac4 <cprintf+0x1f4>
80021ac0:	e1a00000 	nop			@ (mov r0, r0)
80021ac4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ac8:	e3530000 	cmp	r3, #0
80021acc:	0a000001 	beq	80021ad8 <cprintf+0x208>
80021ad0:	e59f0014 	ldr	r0, [pc, #20]	@ 80021aec <cprintf+0x21c>
80021ad4:	eb0013f9 	bl	80026ac0 <release>
80021ad8:	e1a00000 	nop			@ (mov r0, r0)
80021adc:	e24bd004 	sub	sp, fp, #4
80021ae0:	e8bd4800 	pop	{fp, lr}
80021ae4:	e28dd010 	add	sp, sp, #16
80021ae8:	e12fff1e 	bx	lr
80021aec:	800ae8d8 	.word	0x800ae8d8
80021af0:	8002b498 	.word	0x8002b498
80021af4:	8002b4ac 	.word	0x8002b4ac
80021af8:	8002b4a4 	.word	0x8002b4a4

80021afc <panic>:
80021afc:	e92d4800 	push	{fp, lr}
80021b00:	e28db004 	add	fp, sp, #4
80021b04:	e24dd008 	sub	sp, sp, #8
80021b08:	e50b0008 	str	r0, [fp, #-8]
80021b0c:	ebfffa8b 	bl	80020540 <cli>
80021b10:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b50 <panic+0x54>
80021b14:	e3a02000 	mov	r2, #0
80021b18:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021b1c:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b54 <panic+0x58>
80021b20:	e5933000 	ldr	r3, [r3]
80021b24:	e5d33000 	ldrb	r3, [r3]
80021b28:	e1a01003 	mov	r1, r3
80021b2c:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b58 <panic+0x5c>
80021b30:	ebffff66 	bl	800218d0 <cprintf>
80021b34:	e51b0008 	ldr	r0, [fp, #-8]
80021b38:	ebfffb33 	bl	8002080c <show_callstk>
80021b3c:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b5c <panic+0x60>
80021b40:	e3a02001 	mov	r2, #1
80021b44:	e5832000 	str	r2, [r3]
80021b48:	e1a00000 	nop			@ (mov r0, r0)
80021b4c:	eafffffd 	b	80021b48 <panic+0x4c>
80021b50:	800ae8d8 	.word	0x800ae8d8
80021b54:	800b085c 	.word	0x800b085c
80021b58:	8002b500 	.word	0x8002b500
80021b5c:	800ae8d4 	.word	0x800ae8d4

80021b60 <consputc>:
80021b60:	e92d4800 	push	{fp, lr}
80021b64:	e28db004 	add	fp, sp, #4
80021b68:	e24dd010 	sub	sp, sp, #16
80021b6c:	e50b0010 	str	r0, [fp, #-16]
80021b70:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021b74:	e59f3160 	ldr	r3, [pc, #352]	@ 80021cdc <consputc+0x17c>
80021b78:	e5933000 	ldr	r3, [r3]
80021b7c:	e3530000 	cmp	r3, #0
80021b80:	0a000002 	beq	80021b90 <consputc+0x30>
80021b84:	ebfffa6d 	bl	80020540 <cli>
80021b88:	e1a00000 	nop			@ (mov r0, r0)
80021b8c:	eafffffd 	b	80021b88 <consputc+0x28>
80021b90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021b94:	e3530001 	cmp	r3, #1
80021b98:	1a000040 	bne	80021ca0 <consputc+0x140>
80021b9c:	e59f313c 	ldr	r3, [pc, #316]	@ 80021ce0 <consputc+0x180>
80021ba0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ba4:	e50b3008 	str	r3, [fp, #-8]
80021ba8:	e3a03000 	mov	r3, #0
80021bac:	e50b300c 	str	r3, [fp, #-12]
80021bb0:	ea000011 	b	80021bfc <consputc+0x9c>
80021bb4:	e51b100c 	ldr	r1, [fp, #-12]
80021bb8:	e2813001 	add	r3, r1, #1
80021bbc:	e50b300c 	str	r3, [fp, #-12]
80021bc0:	e51b3008 	ldr	r3, [fp, #-8]
80021bc4:	e2832001 	add	r2, r3, #1
80021bc8:	e50b2008 	str	r2, [fp, #-8]
80021bcc:	e2732000 	rsbs	r2, r3, #0
80021bd0:	e1a03b83 	lsl	r3, r3, #23
80021bd4:	e1a03ba3 	lsr	r3, r3, #23
80021bd8:	e1a02b82 	lsl	r2, r2, #23
80021bdc:	e1a02ba2 	lsr	r2, r2, #23
80021be0:	52623000 	rsbpl	r3, r2, #0
80021be4:	e59f20f8 	ldr	r2, [pc, #248]	@ 80021ce4 <consputc+0x184>
80021be8:	e7d21001 	ldrb	r1, [r2, r1]
80021bec:	e59f20ec 	ldr	r2, [pc, #236]	@ 80021ce0 <consputc+0x180>
80021bf0:	e0823003 	add	r3, r2, r3
80021bf4:	e1a02001 	mov	r2, r1
80021bf8:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021bfc:	e59f30e4 	ldr	r3, [pc, #228]	@ 80021ce8 <consputc+0x188>
80021c00:	e5933000 	ldr	r3, [r3]
80021c04:	e51b200c 	ldr	r2, [fp, #-12]
80021c08:	e1520003 	cmp	r2, r3
80021c0c:	aa000002 	bge	80021c1c <consputc+0xbc>
80021c10:	e51b300c 	ldr	r3, [fp, #-12]
80021c14:	e3530c02 	cmp	r3, #512	@ 0x200
80021c18:	baffffe5 	blt	80021bb4 <consputc+0x54>
80021c1c:	e51b3008 	ldr	r3, [fp, #-8]
80021c20:	e2832001 	add	r2, r3, #1
80021c24:	e50b2008 	str	r2, [fp, #-8]
80021c28:	e2732000 	rsbs	r2, r3, #0
80021c2c:	e1a03b83 	lsl	r3, r3, #23
80021c30:	e1a03ba3 	lsr	r3, r3, #23
80021c34:	e1a02b82 	lsl	r2, r2, #23
80021c38:	e1a02ba2 	lsr	r2, r2, #23
80021c3c:	52623000 	rsbpl	r3, r2, #0
80021c40:	e51b2010 	ldr	r2, [fp, #-16]
80021c44:	e6ef1072 	uxtb	r1, r2
80021c48:	e59f2090 	ldr	r2, [pc, #144]	@ 80021ce0 <consputc+0x180>
80021c4c:	e0823003 	add	r3, r2, r3
80021c50:	e1a02001 	mov	r2, r1
80021c54:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021c58:	e51b3008 	ldr	r3, [fp, #-8]
80021c5c:	e59f207c 	ldr	r2, [pc, #124]	@ 80021ce0 <consputc+0x180>
80021c60:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021c64:	e51b3008 	ldr	r3, [fp, #-8]
80021c68:	e59f2070 	ldr	r2, [pc, #112]	@ 80021ce0 <consputc+0x180>
80021c6c:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021c70:	e51b300c 	ldr	r3, [fp, #-12]
80021c74:	e2832001 	add	r2, r3, #1
80021c78:	e50b200c 	str	r2, [fp, #-12]
80021c7c:	e51b2010 	ldr	r2, [fp, #-16]
80021c80:	e6ef1072 	uxtb	r1, r2
80021c84:	e59f2058 	ldr	r2, [pc, #88]	@ 80021ce4 <consputc+0x184>
80021c88:	e7c21003 	strb	r1, [r2, r3]
80021c8c:	e59f3054 	ldr	r3, [pc, #84]	@ 80021ce8 <consputc+0x188>
80021c90:	e5933000 	ldr	r3, [r3]
80021c94:	e2833001 	add	r3, r3, #1
80021c98:	e59f2048 	ldr	r2, [pc, #72]	@ 80021ce8 <consputc+0x188>
80021c9c:	e5823000 	str	r3, [r2]
80021ca0:	e51b3010 	ldr	r3, [fp, #-16]
80021ca4:	e3530c01 	cmp	r3, #256	@ 0x100
80021ca8:	1a000006 	bne	80021cc8 <consputc+0x168>
80021cac:	e3a00008 	mov	r0, #8
80021cb0:	eb0024c9 	bl	8002afdc <uartputc>
80021cb4:	e3a00020 	mov	r0, #32
80021cb8:	eb0024c7 	bl	8002afdc <uartputc>
80021cbc:	e3a00008 	mov	r0, #8
80021cc0:	eb0024c5 	bl	8002afdc <uartputc>
80021cc4:	ea000001 	b	80021cd0 <consputc+0x170>
80021cc8:	e51b0010 	ldr	r0, [fp, #-16]
80021ccc:	eb0024c2 	bl	8002afdc <uartputc>
80021cd0:	e1a00000 	nop			@ (mov r0, r0)
80021cd4:	e24bd004 	sub	sp, fp, #4
80021cd8:	e8bd8800 	pop	{fp, pc}
80021cdc:	800ae8d4 	.word	0x800ae8d4
80021ce0:	800ae910 	.word	0x800ae910
80021ce4:	800aeb50 	.word	0x800aeb50
80021ce8:	800aed50 	.word	0x800aed50

80021cec <consoleintr>:
80021cec:	e92d4800 	push	{fp, lr}
80021cf0:	e28db004 	add	fp, sp, #4
80021cf4:	e24dd010 	sub	sp, sp, #16
80021cf8:	e50b0010 	str	r0, [fp, #-16]
80021cfc:	e59f01bc 	ldr	r0, [pc, #444]	@ 80021ec0 <consoleintr+0x1d4>
80021d00:	eb001363 	bl	80026a94 <acquire>
80021d04:	ea000062 	b	80021e94 <consoleintr+0x1a8>
80021d08:	e51b3008 	ldr	r3, [fp, #-8]
80021d0c:	e3530010 	cmp	r3, #16
80021d10:	0a000003 	beq	80021d24 <consoleintr+0x38>
80021d14:	e51b3008 	ldr	r3, [fp, #-8]
80021d18:	e3530015 	cmp	r3, #21
80021d1c:	0a00000a 	beq	80021d4c <consoleintr+0x60>
80021d20:	ea00001a 	b	80021d90 <consoleintr+0xa4>
80021d24:	eb0011f4 	bl	800264fc <procdump>
80021d28:	ea000059 	b	80021e94 <consoleintr+0x1a8>
80021d2c:	e59f318c 	ldr	r3, [pc, #396]	@ 80021ec0 <consoleintr+0x1d4>
80021d30:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d34:	e2433001 	sub	r3, r3, #1
80021d38:	e59f2180 	ldr	r2, [pc, #384]	@ 80021ec0 <consoleintr+0x1d4>
80021d3c:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021d40:	e3a01000 	mov	r1, #0
80021d44:	e3a00c01 	mov	r0, #256	@ 0x100
80021d48:	ebffff84 	bl	80021b60 <consputc>
80021d4c:	e59f316c 	ldr	r3, [pc, #364]	@ 80021ec0 <consoleintr+0x1d4>
80021d50:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d54:	e59f3164 	ldr	r3, [pc, #356]	@ 80021ec0 <consoleintr+0x1d4>
80021d58:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021d5c:	e1520003 	cmp	r2, r3
80021d60:	0a000048 	beq	80021e88 <consoleintr+0x19c>
80021d64:	e59f3154 	ldr	r3, [pc, #340]	@ 80021ec0 <consoleintr+0x1d4>
80021d68:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d6c:	e2433001 	sub	r3, r3, #1
80021d70:	e1a03b83 	lsl	r3, r3, #23
80021d74:	e1a03ba3 	lsr	r3, r3, #23
80021d78:	e59f2140 	ldr	r2, [pc, #320]	@ 80021ec0 <consoleintr+0x1d4>
80021d7c:	e0823003 	add	r3, r2, r3
80021d80:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021d84:	e353000a 	cmp	r3, #10
80021d88:	1affffe7 	bne	80021d2c <consoleintr+0x40>
80021d8c:	ea00003d 	b	80021e88 <consoleintr+0x19c>
80021d90:	e51b3008 	ldr	r3, [fp, #-8]
80021d94:	e3530000 	cmp	r3, #0
80021d98:	0a00003c 	beq	80021e90 <consoleintr+0x1a4>
80021d9c:	e59f311c 	ldr	r3, [pc, #284]	@ 80021ec0 <consoleintr+0x1d4>
80021da0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021da4:	e59f3114 	ldr	r3, [pc, #276]	@ 80021ec0 <consoleintr+0x1d4>
80021da8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021dac:	e0423003 	sub	r3, r2, r3
80021db0:	e3530c02 	cmp	r3, #512	@ 0x200
80021db4:	2a000035 	bcs	80021e90 <consoleintr+0x1a4>
80021db8:	e51b3008 	ldr	r3, [fp, #-8]
80021dbc:	e353000d 	cmp	r3, #13
80021dc0:	0a000001 	beq	80021dcc <consoleintr+0xe0>
80021dc4:	e51b3008 	ldr	r3, [fp, #-8]
80021dc8:	ea000000 	b	80021dd0 <consoleintr+0xe4>
80021dcc:	e3a0300a 	mov	r3, #10
80021dd0:	e50b3008 	str	r3, [fp, #-8]
80021dd4:	e59f30e4 	ldr	r3, [pc, #228]	@ 80021ec0 <consoleintr+0x1d4>
80021dd8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021ddc:	e2832001 	add	r2, r3, #1
80021de0:	e59f10d8 	ldr	r1, [pc, #216]	@ 80021ec0 <consoleintr+0x1d4>
80021de4:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021de8:	e1a03b83 	lsl	r3, r3, #23
80021dec:	e1a03ba3 	lsr	r3, r3, #23
80021df0:	e51b2008 	ldr	r2, [fp, #-8]
80021df4:	e6ef1072 	uxtb	r1, r2
80021df8:	e59f20c0 	ldr	r2, [pc, #192]	@ 80021ec0 <consoleintr+0x1d4>
80021dfc:	e0823003 	add	r3, r2, r3
80021e00:	e1a02001 	mov	r2, r1
80021e04:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021e08:	e51b3008 	ldr	r3, [fp, #-8]
80021e0c:	e3530009 	cmp	r3, #9
80021e10:	0a000002 	beq	80021e20 <consoleintr+0x134>
80021e14:	e3a01000 	mov	r1, #0
80021e18:	e51b0008 	ldr	r0, [fp, #-8]
80021e1c:	ebffff4f 	bl	80021b60 <consputc>
80021e20:	e51b3008 	ldr	r3, [fp, #-8]
80021e24:	e353000a 	cmp	r3, #10
80021e28:	0a00000f 	beq	80021e6c <consoleintr+0x180>
80021e2c:	e51b3008 	ldr	r3, [fp, #-8]
80021e30:	e3530009 	cmp	r3, #9
80021e34:	0a00000c 	beq	80021e6c <consoleintr+0x180>
80021e38:	e51b3008 	ldr	r3, [fp, #-8]
80021e3c:	e353007f 	cmp	r3, #127	@ 0x7f
80021e40:	0a000009 	beq	80021e6c <consoleintr+0x180>
80021e44:	e51b3008 	ldr	r3, [fp, #-8]
80021e48:	e3530004 	cmp	r3, #4
80021e4c:	0a000006 	beq	80021e6c <consoleintr+0x180>
80021e50:	e59f3068 	ldr	r3, [pc, #104]	@ 80021ec0 <consoleintr+0x1d4>
80021e54:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021e58:	e59f3060 	ldr	r3, [pc, #96]	@ 80021ec0 <consoleintr+0x1d4>
80021e5c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021e60:	e2833c02 	add	r3, r3, #512	@ 0x200
80021e64:	e1520003 	cmp	r2, r3
80021e68:	1a000008 	bne	80021e90 <consoleintr+0x1a4>
80021e6c:	e59f304c 	ldr	r3, [pc, #76]	@ 80021ec0 <consoleintr+0x1d4>
80021e70:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e74:	e59f2044 	ldr	r2, [pc, #68]	@ 80021ec0 <consoleintr+0x1d4>
80021e78:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021e7c:	e59f0040 	ldr	r0, [pc, #64]	@ 80021ec4 <consoleintr+0x1d8>
80021e80:	eb00115b 	bl	800263f4 <wakeup>
80021e84:	ea000001 	b	80021e90 <consoleintr+0x1a4>
80021e88:	e1a00000 	nop			@ (mov r0, r0)
80021e8c:	ea000000 	b	80021e94 <consoleintr+0x1a8>
80021e90:	e1a00000 	nop			@ (mov r0, r0)
80021e94:	e51b3010 	ldr	r3, [fp, #-16]
80021e98:	e12fff33 	blx	r3
80021e9c:	e50b0008 	str	r0, [fp, #-8]
80021ea0:	e51b3008 	ldr	r3, [fp, #-8]
80021ea4:	e3530000 	cmp	r3, #0
80021ea8:	aaffff96 	bge	80021d08 <consoleintr+0x1c>
80021eac:	e59f000c 	ldr	r0, [pc, #12]	@ 80021ec0 <consoleintr+0x1d4>
80021eb0:	eb001302 	bl	80026ac0 <release>
80021eb4:	e1a00000 	nop			@ (mov r0, r0)
80021eb8:	e24bd004 	sub	sp, fp, #4
80021ebc:	e8bd8800 	pop	{fp, pc}
80021ec0:	800ae910 	.word	0x800ae910
80021ec4:	800aeb44 	.word	0x800aeb44

80021ec8 <consoleread>:
80021ec8:	e92d4800 	push	{fp, lr}
80021ecc:	e28db004 	add	fp, sp, #4
80021ed0:	e24dd018 	sub	sp, sp, #24
80021ed4:	e50b0010 	str	r0, [fp, #-16]
80021ed8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021edc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021ee0:	e51b0010 	ldr	r0, [fp, #-16]
80021ee4:	eb00053c 	bl	800233dc <iunlock>
80021ee8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021eec:	e50b3008 	str	r3, [fp, #-8]
80021ef0:	e59f0128 	ldr	r0, [pc, #296]	@ 80022020 <consoleread+0x158>
80021ef4:	eb0012e6 	bl	80026a94 <acquire>
80021ef8:	ea000037 	b	80021fdc <consoleread+0x114>
80021efc:	e59f3120 	ldr	r3, [pc, #288]	@ 80022024 <consoleread+0x15c>
80021f00:	e5933000 	ldr	r3, [r3]
80021f04:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021f08:	e3530000 	cmp	r3, #0
80021f0c:	0a000005 	beq	80021f28 <consoleread+0x60>
80021f10:	e59f0108 	ldr	r0, [pc, #264]	@ 80022020 <consoleread+0x158>
80021f14:	eb0012e9 	bl	80026ac0 <release>
80021f18:	e51b0010 	ldr	r0, [fp, #-16]
80021f1c:	eb0004ca 	bl	8002324c <ilock>
80021f20:	e3e03000 	mvn	r3, #0
80021f24:	ea00003a 	b	80022014 <consoleread+0x14c>
80021f28:	e59f10f0 	ldr	r1, [pc, #240]	@ 80022020 <consoleread+0x158>
80021f2c:	e59f00f4 	ldr	r0, [pc, #244]	@ 80022028 <consoleread+0x160>
80021f30:	eb0010af 	bl	800261f4 <sleep>
80021f34:	e59f30e4 	ldr	r3, [pc, #228]	@ 80022020 <consoleread+0x158>
80021f38:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80021f3c:	e59f30dc 	ldr	r3, [pc, #220]	@ 80022020 <consoleread+0x158>
80021f40:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021f44:	e1520003 	cmp	r2, r3
80021f48:	0affffeb 	beq	80021efc <consoleread+0x34>
80021f4c:	e59f30cc 	ldr	r3, [pc, #204]	@ 80022020 <consoleread+0x158>
80021f50:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021f54:	e2832001 	add	r2, r3, #1
80021f58:	e59f10c0 	ldr	r1, [pc, #192]	@ 80022020 <consoleread+0x158>
80021f5c:	e5812234 	str	r2, [r1, #564]	@ 0x234
80021f60:	e1a03b83 	lsl	r3, r3, #23
80021f64:	e1a03ba3 	lsr	r3, r3, #23
80021f68:	e59f20b0 	ldr	r2, [pc, #176]	@ 80022020 <consoleread+0x158>
80021f6c:	e0823003 	add	r3, r2, r3
80021f70:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021f74:	e50b300c 	str	r3, [fp, #-12]
80021f78:	e51b300c 	ldr	r3, [fp, #-12]
80021f7c:	e3530004 	cmp	r3, #4
80021f80:	1a000009 	bne	80021fac <consoleread+0xe4>
80021f84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f88:	e51b2008 	ldr	r2, [fp, #-8]
80021f8c:	e1520003 	cmp	r2, r3
80021f90:	9a000015 	bls	80021fec <consoleread+0x124>
80021f94:	e59f3084 	ldr	r3, [pc, #132]	@ 80022020 <consoleread+0x158>
80021f98:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021f9c:	e2433001 	sub	r3, r3, #1
80021fa0:	e59f2078 	ldr	r2, [pc, #120]	@ 80022020 <consoleread+0x158>
80021fa4:	e5823234 	str	r3, [r2, #564]	@ 0x234
80021fa8:	ea00000f 	b	80021fec <consoleread+0x124>
80021fac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021fb0:	e2832001 	add	r2, r3, #1
80021fb4:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80021fb8:	e51b200c 	ldr	r2, [fp, #-12]
80021fbc:	e6ef2072 	uxtb	r2, r2
80021fc0:	e5c32000 	strb	r2, [r3]
80021fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fc8:	e2433001 	sub	r3, r3, #1
80021fcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021fd0:	e51b300c 	ldr	r3, [fp, #-12]
80021fd4:	e353000a 	cmp	r3, #10
80021fd8:	0a000005 	beq	80021ff4 <consoleread+0x12c>
80021fdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fe0:	e3530000 	cmp	r3, #0
80021fe4:	caffffd2 	bgt	80021f34 <consoleread+0x6c>
80021fe8:	ea000002 	b	80021ff8 <consoleread+0x130>
80021fec:	e1a00000 	nop			@ (mov r0, r0)
80021ff0:	ea000000 	b	80021ff8 <consoleread+0x130>
80021ff4:	e1a00000 	nop			@ (mov r0, r0)
80021ff8:	e59f0020 	ldr	r0, [pc, #32]	@ 80022020 <consoleread+0x158>
80021ffc:	eb0012af 	bl	80026ac0 <release>
80022000:	e51b0010 	ldr	r0, [fp, #-16]
80022004:	eb000490 	bl	8002324c <ilock>
80022008:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002200c:	e51b2008 	ldr	r2, [fp, #-8]
80022010:	e0423003 	sub	r3, r2, r3
80022014:	e1a00003 	mov	r0, r3
80022018:	e24bd004 	sub	sp, fp, #4
8002201c:	e8bd8800 	pop	{fp, pc}
80022020:	800ae910 	.word	0x800ae910
80022024:	800b32d4 	.word	0x800b32d4
80022028:	800aeb44 	.word	0x800aeb44

8002202c <consolewrite>:
8002202c:	e92d4800 	push	{fp, lr}
80022030:	e28db004 	add	fp, sp, #4
80022034:	e24dd018 	sub	sp, sp, #24
80022038:	e50b0010 	str	r0, [fp, #-16]
8002203c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022040:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022044:	e51b0010 	ldr	r0, [fp, #-16]
80022048:	eb0004e3 	bl	800233dc <iunlock>
8002204c:	e59f0064 	ldr	r0, [pc, #100]	@ 800220b8 <consolewrite+0x8c>
80022050:	eb00128f 	bl	80026a94 <acquire>
80022054:	e3a03000 	mov	r3, #0
80022058:	e50b3008 	str	r3, [fp, #-8]
8002205c:	ea000009 	b	80022088 <consolewrite+0x5c>
80022060:	e51b3008 	ldr	r3, [fp, #-8]
80022064:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022068:	e0823003 	add	r3, r2, r3
8002206c:	e5d33000 	ldrb	r3, [r3]
80022070:	e3a01000 	mov	r1, #0
80022074:	e1a00003 	mov	r0, r3
80022078:	ebfffeb8 	bl	80021b60 <consputc>
8002207c:	e51b3008 	ldr	r3, [fp, #-8]
80022080:	e2833001 	add	r3, r3, #1
80022084:	e50b3008 	str	r3, [fp, #-8]
80022088:	e51b2008 	ldr	r2, [fp, #-8]
8002208c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022090:	e1520003 	cmp	r2, r3
80022094:	bafffff1 	blt	80022060 <consolewrite+0x34>
80022098:	e59f0018 	ldr	r0, [pc, #24]	@ 800220b8 <consolewrite+0x8c>
8002209c:	eb001287 	bl	80026ac0 <release>
800220a0:	e51b0010 	ldr	r0, [fp, #-16]
800220a4:	eb000468 	bl	8002324c <ilock>
800220a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800220ac:	e1a00003 	mov	r0, r3
800220b0:	e24bd004 	sub	sp, fp, #4
800220b4:	e8bd8800 	pop	{fp, pc}
800220b8:	800ae8d8 	.word	0x800ae8d8

800220bc <consoleinit>:
800220bc:	e92d4800 	push	{fp, lr}
800220c0:	e28db004 	add	fp, sp, #4
800220c4:	e59f103c 	ldr	r1, [pc, #60]	@ 80022108 <consoleinit+0x4c>
800220c8:	e59f003c 	ldr	r0, [pc, #60]	@ 8002210c <consoleinit+0x50>
800220cc:	eb00125e 	bl	80026a4c <initlock>
800220d0:	e59f1038 	ldr	r1, [pc, #56]	@ 80022110 <consoleinit+0x54>
800220d4:	e59f0038 	ldr	r0, [pc, #56]	@ 80022114 <consoleinit+0x58>
800220d8:	eb00125b 	bl	80026a4c <initlock>
800220dc:	e59f3034 	ldr	r3, [pc, #52]	@ 80022118 <consoleinit+0x5c>
800220e0:	e59f2034 	ldr	r2, [pc, #52]	@ 8002211c <consoleinit+0x60>
800220e4:	e583200c 	str	r2, [r3, #12]
800220e8:	e59f3028 	ldr	r3, [pc, #40]	@ 80022118 <consoleinit+0x5c>
800220ec:	e59f202c 	ldr	r2, [pc, #44]	@ 80022120 <consoleinit+0x64>
800220f0:	e5832008 	str	r2, [r3, #8]
800220f4:	e59f3010 	ldr	r3, [pc, #16]	@ 8002210c <consoleinit+0x50>
800220f8:	e3a02001 	mov	r2, #1
800220fc:	e5832034 	str	r2, [r3, #52]	@ 0x34
80022100:	e1a00000 	nop			@ (mov r0, r0)
80022104:	e8bd8800 	pop	{fp, pc}
80022108:	8002b510 	.word	0x8002b510
8002210c:	800ae8d8 	.word	0x800ae8d8
80022110:	8002b518 	.word	0x8002b518
80022114:	800ae910 	.word	0x800ae910
80022118:	800aed54 	.word	0x800aed54
8002211c:	8002202c 	.word	0x8002202c
80022120:	80021ec8 	.word	0x80021ec8

80022124 <exec>:
80022124:	e92d4810 	push	{r4, fp, lr}
80022128:	e28db008 	add	fp, sp, #8
8002212c:	e24ddf49 	sub	sp, sp, #292	@ 0x124
80022130:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
80022134:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
80022138:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
8002213c:	eb000815 	bl	80024198 <namei>
80022140:	e50b0010 	str	r0, [fp, #-16]
80022144:	e51b3010 	ldr	r3, [fp, #-16]
80022148:	e3530000 	cmp	r3, #0
8002214c:	1a000001 	bne	80022158 <exec+0x34>
80022150:	e3e03000 	mvn	r3, #0
80022154:	ea000127 	b	800225f8 <exec+0x4d4>
80022158:	e51b0010 	ldr	r0, [fp, #-16]
8002215c:	eb00043a 	bl	8002324c <ilock>
80022160:	e24b106c 	sub	r1, fp, #108	@ 0x6c
80022164:	e3a03034 	mov	r3, #52	@ 0x34
80022168:	e3a02000 	mov	r2, #0
8002216c:	e51b0010 	ldr	r0, [fp, #-16]
80022170:	eb0005e1 	bl	800238fc <readi>
80022174:	e1a03000 	mov	r3, r0
80022178:	e3530033 	cmp	r3, #51	@ 0x33
8002217c:	9a0000fd 	bls	80022578 <exec+0x454>
80022180:	e51b306c 	ldr	r3, [fp, #-108]	@ 0xffffff94
80022184:	e59f2478 	ldr	r2, [pc, #1144]	@ 80022604 <exec+0x4e0>
80022188:	e1530002 	cmp	r3, r2
8002218c:	1a0000fb 	bne	80022580 <exec+0x45c>
80022190:	e3a03000 	mov	r3, #0
80022194:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022198:	eb001e45 	bl	80029ab4 <kpt_alloc>
8002219c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800221a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800221a4:	e3530000 	cmp	r3, #0
800221a8:	0a0000f6 	beq	80022588 <exec+0x464>
800221ac:	e3a03000 	mov	r3, #0
800221b0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800221b4:	e3a03000 	mov	r3, #0
800221b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800221bc:	e51b3050 	ldr	r3, [fp, #-80]	@ 0xffffffb0
800221c0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800221c4:	ea00002e 	b	80022284 <exec+0x160>
800221c8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800221cc:	e24b108c 	sub	r1, fp, #140	@ 0x8c
800221d0:	e3a03020 	mov	r3, #32
800221d4:	e51b0010 	ldr	r0, [fp, #-16]
800221d8:	eb0005c7 	bl	800238fc <readi>
800221dc:	e1a03000 	mov	r3, r0
800221e0:	e3530020 	cmp	r3, #32
800221e4:	1a0000e9 	bne	80022590 <exec+0x46c>
800221e8:	e51b308c 	ldr	r3, [fp, #-140]	@ 0xffffff74
800221ec:	e3530001 	cmp	r3, #1
800221f0:	1a00001c 	bne	80022268 <exec+0x144>
800221f4:	e51b2078 	ldr	r2, [fp, #-120]	@ 0xffffff88
800221f8:	e51b307c 	ldr	r3, [fp, #-124]	@ 0xffffff84
800221fc:	e1520003 	cmp	r2, r3
80022200:	3a0000e4 	bcc	80022598 <exec+0x474>
80022204:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
80022208:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
8002220c:	e0823003 	add	r3, r2, r3
80022210:	e1a02003 	mov	r2, r3
80022214:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80022218:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002221c:	eb001ffc 	bl	8002a214 <allocuvm>
80022220:	e1a03000 	mov	r3, r0
80022224:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022228:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002222c:	e3530000 	cmp	r3, #0
80022230:	0a0000da 	beq	800225a0 <exec+0x47c>
80022234:	e51b3084 	ldr	r3, [fp, #-132]	@ 0xffffff7c
80022238:	e1a01003 	mov	r1, r3
8002223c:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
80022240:	e51b307c 	ldr	r3, [fp, #-124]	@ 0xffffff84
80022244:	e58d3000 	str	r3, [sp]
80022248:	e1a03002 	mov	r3, r2
8002224c:	e51b2010 	ldr	r2, [fp, #-16]
80022250:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022254:	eb001ef6 	bl	80029e34 <loaduvm>
80022258:	e1a03000 	mov	r3, r0
8002225c:	e3530000 	cmp	r3, #0
80022260:	ba0000d0 	blt	800225a8 <exec+0x484>
80022264:	ea000000 	b	8002226c <exec+0x148>
80022268:	e1a00000 	nop			@ (mov r0, r0)
8002226c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022270:	e2833001 	add	r3, r3, #1
80022274:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80022278:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002227c:	e2833020 	add	r3, r3, #32
80022280:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022284:	e15b34b0 	ldrh	r3, [fp, #-64]	@ 0xffffffc0
80022288:	e1a02003 	mov	r2, r3
8002228c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022290:	e1530002 	cmp	r3, r2
80022294:	baffffcb 	blt	800221c8 <exec+0xa4>
80022298:	e51b0010 	ldr	r0, [fp, #-16]
8002229c:	eb0004ab 	bl	80023550 <iunlockput>
800222a0:	e3a03000 	mov	r3, #0
800222a4:	e50b3010 	str	r3, [fp, #-16]
800222a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800222ac:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800222b0:	e283300f 	add	r3, r3, #15
800222b4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800222b8:	e3c3300f 	bic	r3, r3, #15
800222bc:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800222c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800222c4:	e2833a02 	add	r3, r3, #8192	@ 0x2000
800222c8:	e1a02003 	mov	r2, r3
800222cc:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800222d0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222d4:	eb001fce 	bl	8002a214 <allocuvm>
800222d8:	e1a03000 	mov	r3, r0
800222dc:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800222e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800222e4:	e3530000 	cmp	r3, #0
800222e8:	0a0000b0 	beq	800225b0 <exec+0x48c>
800222ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800222f0:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
800222f4:	e1a01003 	mov	r1, r3
800222f8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222fc:	eb002090 	bl	8002a544 <clearpteu>
80022300:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022304:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022308:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002230c:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
80022310:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022314:	e59f32ec 	ldr	r3, [pc, #748]	@ 80022608 <exec+0x4e4>
80022318:	e5933000 	ldr	r3, [r3]
8002231c:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80022320:	e5832084 	str	r2, [r3, #132]	@ 0x84
80022324:	e3a03000 	mov	r3, #0
80022328:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002232c:	ea00002e 	b	800223ec <exec+0x2c8>
80022330:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022334:	e353001f 	cmp	r3, #31
80022338:	8a00009e 	bhi	800225b8 <exec+0x494>
8002233c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022340:	e1a03103 	lsl	r3, r3, #2
80022344:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022348:	e0823003 	add	r3, r2, r3
8002234c:	e5933000 	ldr	r3, [r3]
80022350:	e1a00003 	mov	r0, r3
80022354:	ebfff864 	bl	800204ec <strlen>
80022358:	e1a03000 	mov	r3, r0
8002235c:	e1a02003 	mov	r2, r3
80022360:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80022364:	e0433002 	sub	r3, r3, r2
80022368:	e2433001 	sub	r3, r3, #1
8002236c:	e3c33003 	bic	r3, r3, #3
80022370:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022374:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022378:	e1a03103 	lsl	r3, r3, #2
8002237c:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022380:	e0823003 	add	r3, r2, r3
80022384:	e5934000 	ldr	r4, [r3]
80022388:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002238c:	e1a03103 	lsl	r3, r3, #2
80022390:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022394:	e0823003 	add	r3, r2, r3
80022398:	e5933000 	ldr	r3, [r3]
8002239c:	e1a00003 	mov	r0, r3
800223a0:	ebfff851 	bl	800204ec <strlen>
800223a4:	e1a03000 	mov	r3, r0
800223a8:	e2833001 	add	r3, r3, #1
800223ac:	e1a02004 	mov	r2, r4
800223b0:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800223b4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800223b8:	eb0020f6 	bl	8002a798 <copyout>
800223bc:	e1a03000 	mov	r3, r0
800223c0:	e3530000 	cmp	r3, #0
800223c4:	ba00007d 	blt	800225c0 <exec+0x49c>
800223c8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223cc:	e1a03103 	lsl	r3, r3, #2
800223d0:	e243300c 	sub	r3, r3, #12
800223d4:	e083300b 	add	r3, r3, fp
800223d8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800223dc:	e5032110 	str	r2, [r3, #-272]	@ 0xfffffef0
800223e0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223e4:	e2833001 	add	r3, r3, #1
800223e8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800223ec:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800223f0:	e1a03103 	lsl	r3, r3, #2
800223f4:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800223f8:	e0823003 	add	r3, r2, r3
800223fc:	e5933000 	ldr	r3, [r3]
80022400:	e3530000 	cmp	r3, #0
80022404:	1affffc9 	bne	80022330 <exec+0x20c>
80022408:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002240c:	e1a03103 	lsl	r3, r3, #2
80022410:	e243300c 	sub	r3, r3, #12
80022414:	e083300b 	add	r3, r3, fp
80022418:	e3a02000 	mov	r2, #0
8002241c:	e5032110 	str	r2, [r3, #-272]	@ 0xfffffef0
80022420:	e59f31e0 	ldr	r3, [pc, #480]	@ 80022608 <exec+0x4e4>
80022424:	e5933000 	ldr	r3, [r3]
80022428:	e5933018 	ldr	r3, [r3, #24]
8002242c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022430:	e5832010 	str	r2, [r3, #16]
80022434:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022438:	e2833001 	add	r3, r3, #1
8002243c:	e1a02103 	lsl	r2, r3, #2
80022440:	e59f31c0 	ldr	r3, [pc, #448]	@ 80022608 <exec+0x4e4>
80022444:	e5933000 	ldr	r3, [r3]
80022448:	e5933018 	ldr	r3, [r3, #24]
8002244c:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022450:	e0412002 	sub	r2, r1, r2
80022454:	e5832014 	str	r2, [r3, #20]
80022458:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002245c:	e2833001 	add	r3, r3, #1
80022460:	e1a03103 	lsl	r3, r3, #2
80022464:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022468:	e0423003 	sub	r3, r2, r3
8002246c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022470:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022474:	e2833001 	add	r3, r3, #1
80022478:	e1a03103 	lsl	r3, r3, #2
8002247c:	e24b2f47 	sub	r2, fp, #284	@ 0x11c
80022480:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022484:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022488:	eb0020c2 	bl	8002a798 <copyout>
8002248c:	e1a03000 	mov	r3, r0
80022490:	e3530000 	cmp	r3, #0
80022494:	ba00004b 	blt	800225c8 <exec+0x4a4>
80022498:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
8002249c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800224a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800224a4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800224a8:	ea000009 	b	800224d4 <exec+0x3b0>
800224ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800224b0:	e5d33000 	ldrb	r3, [r3]
800224b4:	e353002f 	cmp	r3, #47	@ 0x2f
800224b8:	1a000002 	bne	800224c8 <exec+0x3a4>
800224bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800224c0:	e2833001 	add	r3, r3, #1
800224c4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800224c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800224cc:	e2833001 	add	r3, r3, #1
800224d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800224d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800224d8:	e5d33000 	ldrb	r3, [r3]
800224dc:	e3530000 	cmp	r3, #0
800224e0:	1afffff1 	bne	800224ac <exec+0x388>
800224e4:	e59f311c 	ldr	r3, [pc, #284]	@ 80022608 <exec+0x4e4>
800224e8:	e5933000 	ldr	r3, [r3]
800224ec:	e283306c 	add	r3, r3, #108	@ 0x6c
800224f0:	e3a02010 	mov	r2, #16
800224f4:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800224f8:	e1a00003 	mov	r0, r3
800224fc:	ebfff7d3 	bl	80020450 <safestrcpy>
80022500:	e59f3100 	ldr	r3, [pc, #256]	@ 80022608 <exec+0x4e4>
80022504:	e5933000 	ldr	r3, [r3]
80022508:	e5933004 	ldr	r3, [r3, #4]
8002250c:	e50b3038 	str	r3, [fp, #-56]	@ 0xffffffc8
80022510:	e59f30f0 	ldr	r3, [pc, #240]	@ 80022608 <exec+0x4e4>
80022514:	e5933000 	ldr	r3, [r3]
80022518:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002251c:	e5832004 	str	r2, [r3, #4]
80022520:	e59f30e0 	ldr	r3, [pc, #224]	@ 80022608 <exec+0x4e4>
80022524:	e5933000 	ldr	r3, [r3]
80022528:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
8002252c:	e5832000 	str	r2, [r3]
80022530:	e59f30d0 	ldr	r3, [pc, #208]	@ 80022608 <exec+0x4e4>
80022534:	e5933000 	ldr	r3, [r3]
80022538:	e5933018 	ldr	r3, [r3, #24]
8002253c:	e51b2054 	ldr	r2, [fp, #-84]	@ 0xffffffac
80022540:	e5832044 	str	r2, [r3, #68]	@ 0x44
80022544:	e59f30bc 	ldr	r3, [pc, #188]	@ 80022608 <exec+0x4e4>
80022548:	e5933000 	ldr	r3, [r3]
8002254c:	e5933018 	ldr	r3, [r3, #24]
80022550:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022554:	e5832000 	str	r2, [r3]
80022558:	e59f30a8 	ldr	r3, [pc, #168]	@ 80022608 <exec+0x4e4>
8002255c:	e5933000 	ldr	r3, [r3]
80022560:	e1a00003 	mov	r0, r3
80022564:	eb001df9 	bl	80029d50 <switchuvm>
80022568:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
8002256c:	eb001fc4 	bl	8002a484 <freevm>
80022570:	e3a03000 	mov	r3, #0
80022574:	ea00001f 	b	800225f8 <exec+0x4d4>
80022578:	e1a00000 	nop			@ (mov r0, r0)
8002257c:	ea000012 	b	800225cc <exec+0x4a8>
80022580:	e1a00000 	nop			@ (mov r0, r0)
80022584:	ea000010 	b	800225cc <exec+0x4a8>
80022588:	e1a00000 	nop			@ (mov r0, r0)
8002258c:	ea00000e 	b	800225cc <exec+0x4a8>
80022590:	e1a00000 	nop			@ (mov r0, r0)
80022594:	ea00000c 	b	800225cc <exec+0x4a8>
80022598:	e1a00000 	nop			@ (mov r0, r0)
8002259c:	ea00000a 	b	800225cc <exec+0x4a8>
800225a0:	e1a00000 	nop			@ (mov r0, r0)
800225a4:	ea000008 	b	800225cc <exec+0x4a8>
800225a8:	e1a00000 	nop			@ (mov r0, r0)
800225ac:	ea000006 	b	800225cc <exec+0x4a8>
800225b0:	e1a00000 	nop			@ (mov r0, r0)
800225b4:	ea000004 	b	800225cc <exec+0x4a8>
800225b8:	e1a00000 	nop			@ (mov r0, r0)
800225bc:	ea000002 	b	800225cc <exec+0x4a8>
800225c0:	e1a00000 	nop			@ (mov r0, r0)
800225c4:	ea000000 	b	800225cc <exec+0x4a8>
800225c8:	e1a00000 	nop			@ (mov r0, r0)
800225cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800225d0:	e3530000 	cmp	r3, #0
800225d4:	0a000001 	beq	800225e0 <exec+0x4bc>
800225d8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800225dc:	eb001fa8 	bl	8002a484 <freevm>
800225e0:	e51b3010 	ldr	r3, [fp, #-16]
800225e4:	e3530000 	cmp	r3, #0
800225e8:	0a000001 	beq	800225f4 <exec+0x4d0>
800225ec:	e51b0010 	ldr	r0, [fp, #-16]
800225f0:	eb0003d6 	bl	80023550 <iunlockput>
800225f4:	e3e03000 	mvn	r3, #0
800225f8:	e1a00003 	mov	r0, r3
800225fc:	e24bd008 	sub	sp, fp, #8
80022600:	e8bd8810 	pop	{r4, fp, pc}
80022604:	464c457f 	.word	0x464c457f
80022608:	800b32d4 	.word	0x800b32d4

8002260c <fileinit>:
8002260c:	e92d4800 	push	{fp, lr}
80022610:	e28db004 	add	fp, sp, #4
80022614:	e59f100c 	ldr	r1, [pc, #12]	@ 80022628 <fileinit+0x1c>
80022618:	e59f000c 	ldr	r0, [pc, #12]	@ 8002262c <fileinit+0x20>
8002261c:	eb00110a 	bl	80026a4c <initlock>
80022620:	e1a00000 	nop			@ (mov r0, r0)
80022624:	e8bd8800 	pop	{fp, pc}
80022628:	8002b520 	.word	0x8002b520
8002262c:	800aeda4 	.word	0x800aeda4

80022630 <filealloc>:
80022630:	e92d4800 	push	{fp, lr}
80022634:	e28db004 	add	fp, sp, #4
80022638:	e24dd008 	sub	sp, sp, #8
8002263c:	e59f006c 	ldr	r0, [pc, #108]	@ 800226b0 <filealloc+0x80>
80022640:	eb001113 	bl	80026a94 <acquire>
80022644:	e59f3068 	ldr	r3, [pc, #104]	@ 800226b4 <filealloc+0x84>
80022648:	e50b3008 	str	r3, [fp, #-8]
8002264c:	ea00000d 	b	80022688 <filealloc+0x58>
80022650:	e51b3008 	ldr	r3, [fp, #-8]
80022654:	e5933004 	ldr	r3, [r3, #4]
80022658:	e3530000 	cmp	r3, #0
8002265c:	1a000006 	bne	8002267c <filealloc+0x4c>
80022660:	e51b3008 	ldr	r3, [fp, #-8]
80022664:	e3a02001 	mov	r2, #1
80022668:	e5832004 	str	r2, [r3, #4]
8002266c:	e59f003c 	ldr	r0, [pc, #60]	@ 800226b0 <filealloc+0x80>
80022670:	eb001112 	bl	80026ac0 <release>
80022674:	e51b3008 	ldr	r3, [fp, #-8]
80022678:	ea000009 	b	800226a4 <filealloc+0x74>
8002267c:	e51b3008 	ldr	r3, [fp, #-8]
80022680:	e2833018 	add	r3, r3, #24
80022684:	e50b3008 	str	r3, [fp, #-8]
80022688:	e59f2028 	ldr	r2, [pc, #40]	@ 800226b8 <filealloc+0x88>
8002268c:	e51b3008 	ldr	r3, [fp, #-8]
80022690:	e1530002 	cmp	r3, r2
80022694:	3affffed 	bcc	80022650 <filealloc+0x20>
80022698:	e59f0010 	ldr	r0, [pc, #16]	@ 800226b0 <filealloc+0x80>
8002269c:	eb001107 	bl	80026ac0 <release>
800226a0:	e3a03000 	mov	r3, #0
800226a4:	e1a00003 	mov	r0, r3
800226a8:	e24bd004 	sub	sp, fp, #4
800226ac:	e8bd8800 	pop	{fp, pc}
800226b0:	800aeda4 	.word	0x800aeda4
800226b4:	800aedd8 	.word	0x800aedd8
800226b8:	800af738 	.word	0x800af738

800226bc <filedup>:
800226bc:	e92d4800 	push	{fp, lr}
800226c0:	e28db004 	add	fp, sp, #4
800226c4:	e24dd008 	sub	sp, sp, #8
800226c8:	e50b0008 	str	r0, [fp, #-8]
800226cc:	e59f0044 	ldr	r0, [pc, #68]	@ 80022718 <filedup+0x5c>
800226d0:	eb0010ef 	bl	80026a94 <acquire>
800226d4:	e51b3008 	ldr	r3, [fp, #-8]
800226d8:	e5933004 	ldr	r3, [r3, #4]
800226dc:	e3530000 	cmp	r3, #0
800226e0:	ca000001 	bgt	800226ec <filedup+0x30>
800226e4:	e59f0030 	ldr	r0, [pc, #48]	@ 8002271c <filedup+0x60>
800226e8:	ebfffd03 	bl	80021afc <panic>
800226ec:	e51b3008 	ldr	r3, [fp, #-8]
800226f0:	e5933004 	ldr	r3, [r3, #4]
800226f4:	e2832001 	add	r2, r3, #1
800226f8:	e51b3008 	ldr	r3, [fp, #-8]
800226fc:	e5832004 	str	r2, [r3, #4]
80022700:	e59f0010 	ldr	r0, [pc, #16]	@ 80022718 <filedup+0x5c>
80022704:	eb0010ed 	bl	80026ac0 <release>
80022708:	e51b3008 	ldr	r3, [fp, #-8]
8002270c:	e1a00003 	mov	r0, r3
80022710:	e24bd004 	sub	sp, fp, #4
80022714:	e8bd8800 	pop	{fp, pc}
80022718:	800aeda4 	.word	0x800aeda4
8002271c:	8002b528 	.word	0x8002b528

80022720 <fileclose>:
80022720:	e92d4800 	push	{fp, lr}
80022724:	e28db004 	add	fp, sp, #4
80022728:	e24dd020 	sub	sp, sp, #32
8002272c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022730:	e59f00d0 	ldr	r0, [pc, #208]	@ 80022808 <fileclose+0xe8>
80022734:	eb0010d6 	bl	80026a94 <acquire>
80022738:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002273c:	e5933004 	ldr	r3, [r3, #4]
80022740:	e3530000 	cmp	r3, #0
80022744:	ca000001 	bgt	80022750 <fileclose+0x30>
80022748:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002280c <fileclose+0xec>
8002274c:	ebfffcea 	bl	80021afc <panic>
80022750:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022754:	e5933004 	ldr	r3, [r3, #4]
80022758:	e2432001 	sub	r2, r3, #1
8002275c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022760:	e5832004 	str	r2, [r3, #4]
80022764:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022768:	e5933004 	ldr	r3, [r3, #4]
8002276c:	e3530000 	cmp	r3, #0
80022770:	da000002 	ble	80022780 <fileclose+0x60>
80022774:	e59f008c 	ldr	r0, [pc, #140]	@ 80022808 <fileclose+0xe8>
80022778:	eb0010d0 	bl	80026ac0 <release>
8002277c:	ea00001f 	b	80022800 <fileclose+0xe0>
80022780:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022784:	e24bc01c 	sub	ip, fp, #28
80022788:	e1a0e003 	mov	lr, r3
8002278c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80022790:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80022794:	e89e0003 	ldm	lr, {r0, r1}
80022798:	e88c0003 	stm	ip, {r0, r1}
8002279c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227a0:	e3a02000 	mov	r2, #0
800227a4:	e5832004 	str	r2, [r3, #4]
800227a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800227ac:	e3a02000 	mov	r2, #0
800227b0:	e5c32000 	strb	r2, [r3]
800227b4:	e59f004c 	ldr	r0, [pc, #76]	@ 80022808 <fileclose+0xe8>
800227b8:	eb0010c0 	bl	80026ac0 <release>
800227bc:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800227c0:	e3530001 	cmp	r3, #1
800227c4:	1a000005 	bne	800227e0 <fileclose+0xc0>
800227c8:	e51b3010 	ldr	r3, [fp, #-16]
800227cc:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
800227d0:	e1a01002 	mov	r1, r2
800227d4:	e1a00003 	mov	r0, r3
800227d8:	eb0008e9 	bl	80024b84 <pipeclose>
800227dc:	ea000007 	b	80022800 <fileclose+0xe0>
800227e0:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800227e4:	e3530002 	cmp	r3, #2
800227e8:	1a000004 	bne	80022800 <fileclose+0xe0>
800227ec:	eb000742 	bl	800244fc <begin_trans>
800227f0:	e51b300c 	ldr	r3, [fp, #-12]
800227f4:	e1a00003 	mov	r0, r3
800227f8:	eb000319 	bl	80023464 <iput>
800227fc:	eb000752 	bl	8002454c <commit_trans>
80022800:	e24bd004 	sub	sp, fp, #4
80022804:	e8bd8800 	pop	{fp, pc}
80022808:	800aeda4 	.word	0x800aeda4
8002280c:	8002b530 	.word	0x8002b530

80022810 <filestat>:
80022810:	e92d4800 	push	{fp, lr}
80022814:	e28db004 	add	fp, sp, #4
80022818:	e24dd008 	sub	sp, sp, #8
8002281c:	e50b0008 	str	r0, [fp, #-8]
80022820:	e50b100c 	str	r1, [fp, #-12]
80022824:	e51b3008 	ldr	r3, [fp, #-8]
80022828:	e5d33000 	ldrb	r3, [r3]
8002282c:	e3530002 	cmp	r3, #2
80022830:	1a00000e 	bne	80022870 <filestat+0x60>
80022834:	e51b3008 	ldr	r3, [fp, #-8]
80022838:	e5933010 	ldr	r3, [r3, #16]
8002283c:	e1a00003 	mov	r0, r3
80022840:	eb000281 	bl	8002324c <ilock>
80022844:	e51b3008 	ldr	r3, [fp, #-8]
80022848:	e5933010 	ldr	r3, [r3, #16]
8002284c:	e51b100c 	ldr	r1, [fp, #-12]
80022850:	e1a00003 	mov	r0, r3
80022854:	eb00040a 	bl	80023884 <stati>
80022858:	e51b3008 	ldr	r3, [fp, #-8]
8002285c:	e5933010 	ldr	r3, [r3, #16]
80022860:	e1a00003 	mov	r0, r3
80022864:	eb0002dc 	bl	800233dc <iunlock>
80022868:	e3a03000 	mov	r3, #0
8002286c:	ea000000 	b	80022874 <filestat+0x64>
80022870:	e3e03000 	mvn	r3, #0
80022874:	e1a00003 	mov	r0, r3
80022878:	e24bd004 	sub	sp, fp, #4
8002287c:	e8bd8800 	pop	{fp, pc}

80022880 <fileread>:
80022880:	e92d4800 	push	{fp, lr}
80022884:	e28db004 	add	fp, sp, #4
80022888:	e24dd018 	sub	sp, sp, #24
8002288c:	e50b0010 	str	r0, [fp, #-16]
80022890:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022894:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022898:	e51b3010 	ldr	r3, [fp, #-16]
8002289c:	e5d33008 	ldrb	r3, [r3, #8]
800228a0:	e3530000 	cmp	r3, #0
800228a4:	1a000001 	bne	800228b0 <fileread+0x30>
800228a8:	e3e03000 	mvn	r3, #0
800228ac:	ea00002c 	b	80022964 <fileread+0xe4>
800228b0:	e51b3010 	ldr	r3, [fp, #-16]
800228b4:	e5d33000 	ldrb	r3, [r3]
800228b8:	e3530001 	cmp	r3, #1
800228bc:	1a000007 	bne	800228e0 <fileread+0x60>
800228c0:	e51b3010 	ldr	r3, [fp, #-16]
800228c4:	e593300c 	ldr	r3, [r3, #12]
800228c8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800228cc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800228d0:	e1a00003 	mov	r0, r3
800228d4:	eb000924 	bl	80024d6c <piperead>
800228d8:	e1a03000 	mov	r3, r0
800228dc:	ea000020 	b	80022964 <fileread+0xe4>
800228e0:	e51b3010 	ldr	r3, [fp, #-16]
800228e4:	e5d33000 	ldrb	r3, [r3]
800228e8:	e3530002 	cmp	r3, #2
800228ec:	1a00001a 	bne	8002295c <fileread+0xdc>
800228f0:	e51b3010 	ldr	r3, [fp, #-16]
800228f4:	e5933010 	ldr	r3, [r3, #16]
800228f8:	e1a00003 	mov	r0, r3
800228fc:	eb000252 	bl	8002324c <ilock>
80022900:	e51b3010 	ldr	r3, [fp, #-16]
80022904:	e5930010 	ldr	r0, [r3, #16]
80022908:	e51b3010 	ldr	r3, [fp, #-16]
8002290c:	e5932014 	ldr	r2, [r3, #20]
80022910:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022914:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022918:	eb0003f7 	bl	800238fc <readi>
8002291c:	e50b0008 	str	r0, [fp, #-8]
80022920:	e51b3008 	ldr	r3, [fp, #-8]
80022924:	e3530000 	cmp	r3, #0
80022928:	da000005 	ble	80022944 <fileread+0xc4>
8002292c:	e51b3010 	ldr	r3, [fp, #-16]
80022930:	e5932014 	ldr	r2, [r3, #20]
80022934:	e51b3008 	ldr	r3, [fp, #-8]
80022938:	e0822003 	add	r2, r2, r3
8002293c:	e51b3010 	ldr	r3, [fp, #-16]
80022940:	e5832014 	str	r2, [r3, #20]
80022944:	e51b3010 	ldr	r3, [fp, #-16]
80022948:	e5933010 	ldr	r3, [r3, #16]
8002294c:	e1a00003 	mov	r0, r3
80022950:	eb0002a1 	bl	800233dc <iunlock>
80022954:	e51b3008 	ldr	r3, [fp, #-8]
80022958:	ea000001 	b	80022964 <fileread+0xe4>
8002295c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022970 <fileread+0xf0>
80022960:	ebfffc65 	bl	80021afc <panic>
80022964:	e1a00003 	mov	r0, r3
80022968:	e24bd004 	sub	sp, fp, #4
8002296c:	e8bd8800 	pop	{fp, pc}
80022970:	8002b53c 	.word	0x8002b53c

80022974 <filewrite>:
80022974:	e92d4800 	push	{fp, lr}
80022978:	e28db004 	add	fp, sp, #4
8002297c:	e24dd020 	sub	sp, sp, #32
80022980:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022984:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022988:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002298c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022990:	e5d33009 	ldrb	r3, [r3, #9]
80022994:	e3530000 	cmp	r3, #0
80022998:	1a000001 	bne	800229a4 <filewrite+0x30>
8002299c:	e3e03000 	mvn	r3, #0
800229a0:	ea000058 	b	80022b08 <filewrite+0x194>
800229a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229a8:	e5d33000 	ldrb	r3, [r3]
800229ac:	e3530001 	cmp	r3, #1
800229b0:	1a000007 	bne	800229d4 <filewrite+0x60>
800229b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229b8:	e593300c 	ldr	r3, [r3, #12]
800229bc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800229c0:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800229c4:	e1a00003 	mov	r0, r3
800229c8:	eb0008a0 	bl	80024c50 <pipewrite>
800229cc:	e1a03000 	mov	r3, r0
800229d0:	ea00004c 	b	80022b08 <filewrite+0x194>
800229d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229d8:	e5d33000 	ldrb	r3, [r3]
800229dc:	e3530002 	cmp	r3, #2
800229e0:	1a000046 	bne	80022b00 <filewrite+0x18c>
800229e4:	e3a03c06 	mov	r3, #1536	@ 0x600
800229e8:	e50b3010 	str	r3, [fp, #-16]
800229ec:	e3a03000 	mov	r3, #0
800229f0:	e50b3008 	str	r3, [fp, #-8]
800229f4:	ea000033 	b	80022ac8 <filewrite+0x154>
800229f8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800229fc:	e51b3008 	ldr	r3, [fp, #-8]
80022a00:	e0423003 	sub	r3, r2, r3
80022a04:	e50b300c 	str	r3, [fp, #-12]
80022a08:	e51b200c 	ldr	r2, [fp, #-12]
80022a0c:	e51b3010 	ldr	r3, [fp, #-16]
80022a10:	e1520003 	cmp	r2, r3
80022a14:	da000001 	ble	80022a20 <filewrite+0xac>
80022a18:	e51b3010 	ldr	r3, [fp, #-16]
80022a1c:	e50b300c 	str	r3, [fp, #-12]
80022a20:	eb0006b5 	bl	800244fc <begin_trans>
80022a24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a28:	e5933010 	ldr	r3, [r3, #16]
80022a2c:	e1a00003 	mov	r0, r3
80022a30:	eb000205 	bl	8002324c <ilock>
80022a34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a38:	e5930010 	ldr	r0, [r3, #16]
80022a3c:	e51b3008 	ldr	r3, [fp, #-8]
80022a40:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022a44:	e0821003 	add	r1, r2, r3
80022a48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a4c:	e5932014 	ldr	r2, [r3, #20]
80022a50:	e51b300c 	ldr	r3, [fp, #-12]
80022a54:	eb000423 	bl	80023ae8 <writei>
80022a58:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022a5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a60:	e3530000 	cmp	r3, #0
80022a64:	da000005 	ble	80022a80 <filewrite+0x10c>
80022a68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a6c:	e5932014 	ldr	r2, [r3, #20]
80022a70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a74:	e0822003 	add	r2, r2, r3
80022a78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a7c:	e5832014 	str	r2, [r3, #20]
80022a80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a84:	e5933010 	ldr	r3, [r3, #16]
80022a88:	e1a00003 	mov	r0, r3
80022a8c:	eb000252 	bl	800233dc <iunlock>
80022a90:	eb0006ad 	bl	8002454c <commit_trans>
80022a94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022a98:	e3530000 	cmp	r3, #0
80022a9c:	ba00000e 	blt	80022adc <filewrite+0x168>
80022aa0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022aa4:	e51b300c 	ldr	r3, [fp, #-12]
80022aa8:	e1520003 	cmp	r2, r3
80022aac:	0a000001 	beq	80022ab8 <filewrite+0x144>
80022ab0:	e59f005c 	ldr	r0, [pc, #92]	@ 80022b14 <filewrite+0x1a0>
80022ab4:	ebfffc10 	bl	80021afc <panic>
80022ab8:	e51b2008 	ldr	r2, [fp, #-8]
80022abc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ac0:	e0823003 	add	r3, r2, r3
80022ac4:	e50b3008 	str	r3, [fp, #-8]
80022ac8:	e51b2008 	ldr	r2, [fp, #-8]
80022acc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022ad0:	e1520003 	cmp	r2, r3
80022ad4:	baffffc7 	blt	800229f8 <filewrite+0x84>
80022ad8:	ea000000 	b	80022ae0 <filewrite+0x16c>
80022adc:	e1a00000 	nop			@ (mov r0, r0)
80022ae0:	e51b2008 	ldr	r2, [fp, #-8]
80022ae4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022ae8:	e1520003 	cmp	r2, r3
80022aec:	1a000001 	bne	80022af8 <filewrite+0x184>
80022af0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022af4:	ea000003 	b	80022b08 <filewrite+0x194>
80022af8:	e3e03000 	mvn	r3, #0
80022afc:	ea000001 	b	80022b08 <filewrite+0x194>
80022b00:	e59f0010 	ldr	r0, [pc, #16]	@ 80022b18 <filewrite+0x1a4>
80022b04:	ebfffbfc 	bl	80021afc <panic>
80022b08:	e1a00003 	mov	r0, r3
80022b0c:	e24bd004 	sub	sp, fp, #4
80022b10:	e8bd8800 	pop	{fp, pc}
80022b14:	8002b548 	.word	0x8002b548
80022b18:	8002b558 	.word	0x8002b558

80022b1c <readsb>:
80022b1c:	e92d4800 	push	{fp, lr}
80022b20:	e28db004 	add	fp, sp, #4
80022b24:	e24dd010 	sub	sp, sp, #16
80022b28:	e50b0010 	str	r0, [fp, #-16]
80022b2c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022b30:	e51b3010 	ldr	r3, [fp, #-16]
80022b34:	e3a01001 	mov	r1, #1
80022b38:	e1a00003 	mov	r0, r3
80022b3c:	ebfff7f4 	bl	80020b14 <bread>
80022b40:	e50b0008 	str	r0, [fp, #-8]
80022b44:	e51b3008 	ldr	r3, [fp, #-8]
80022b48:	e2833018 	add	r3, r3, #24
80022b4c:	e3a02010 	mov	r2, #16
80022b50:	e1a01003 	mov	r1, r3
80022b54:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022b58:	ebfff59a 	bl	800201c8 <memmove>
80022b5c:	e51b0008 	ldr	r0, [fp, #-8]
80022b60:	ebfff815 	bl	80020bbc <brelse>
80022b64:	e1a00000 	nop			@ (mov r0, r0)
80022b68:	e24bd004 	sub	sp, fp, #4
80022b6c:	e8bd8800 	pop	{fp, pc}

80022b70 <bzero>:
80022b70:	e92d4800 	push	{fp, lr}
80022b74:	e28db004 	add	fp, sp, #4
80022b78:	e24dd010 	sub	sp, sp, #16
80022b7c:	e50b0010 	str	r0, [fp, #-16]
80022b80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022b84:	e51b3010 	ldr	r3, [fp, #-16]
80022b88:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022b8c:	e1a01002 	mov	r1, r2
80022b90:	e1a00003 	mov	r0, r3
80022b94:	ebfff7de 	bl	80020b14 <bread>
80022b98:	e50b0008 	str	r0, [fp, #-8]
80022b9c:	e51b3008 	ldr	r3, [fp, #-8]
80022ba0:	e2833018 	add	r3, r3, #24
80022ba4:	e3a02c02 	mov	r2, #512	@ 0x200
80022ba8:	e3a01000 	mov	r1, #0
80022bac:	e1a00003 	mov	r0, r3
80022bb0:	ebfff512 	bl	80020000 <memset>
80022bb4:	e51b0008 	ldr	r0, [fp, #-8]
80022bb8:	eb00067b 	bl	800245ac <log_write>
80022bbc:	e51b0008 	ldr	r0, [fp, #-8]
80022bc0:	ebfff7fd 	bl	80020bbc <brelse>
80022bc4:	e1a00000 	nop			@ (mov r0, r0)
80022bc8:	e24bd004 	sub	sp, fp, #4
80022bcc:	e8bd8800 	pop	{fp, pc}

80022bd0 <balloc>:
80022bd0:	e92d4800 	push	{fp, lr}
80022bd4:	e28db004 	add	fp, sp, #4
80022bd8:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022bdc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022be0:	e3a03000 	mov	r3, #0
80022be4:	e50b3010 	str	r3, [fp, #-16]
80022be8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022bec:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022bf0:	e1a01002 	mov	r1, r2
80022bf4:	e1a00003 	mov	r0, r3
80022bf8:	ebffffc7 	bl	80022b1c <readsb>
80022bfc:	e3a03000 	mov	r3, #0
80022c00:	e50b3008 	str	r3, [fp, #-8]
80022c04:	ea000059 	b	80022d70 <balloc+0x1a0>
80022c08:	e51b3008 	ldr	r3, [fp, #-8]
80022c0c:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022c10:	e282200f 	add	r2, r2, #15
80022c14:	e3530000 	cmp	r3, #0
80022c18:	b1a03002 	movlt	r3, r2
80022c1c:	a1a03003 	movge	r3, r3
80022c20:	e1a03643 	asr	r3, r3, #12
80022c24:	e1a02003 	mov	r2, r3
80022c28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022c2c:	e1a031a3 	lsr	r3, r3, #3
80022c30:	e0823003 	add	r3, r2, r3
80022c34:	e2833003 	add	r3, r3, #3
80022c38:	e1a01003 	mov	r1, r3
80022c3c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c40:	ebfff7b3 	bl	80020b14 <bread>
80022c44:	e50b0010 	str	r0, [fp, #-16]
80022c48:	e3a03000 	mov	r3, #0
80022c4c:	e50b300c 	str	r3, [fp, #-12]
80022c50:	ea000037 	b	80022d34 <balloc+0x164>
80022c54:	e51b300c 	ldr	r3, [fp, #-12]
80022c58:	e2033007 	and	r3, r3, #7
80022c5c:	e3a02001 	mov	r2, #1
80022c60:	e1a03312 	lsl	r3, r2, r3
80022c64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022c68:	e51b300c 	ldr	r3, [fp, #-12]
80022c6c:	e2832007 	add	r2, r3, #7
80022c70:	e3530000 	cmp	r3, #0
80022c74:	b1a03002 	movlt	r3, r2
80022c78:	a1a03003 	movge	r3, r3
80022c7c:	e1a031c3 	asr	r3, r3, #3
80022c80:	e1a02003 	mov	r2, r3
80022c84:	e51b3010 	ldr	r3, [fp, #-16]
80022c88:	e0833002 	add	r3, r3, r2
80022c8c:	e5d33018 	ldrb	r3, [r3, #24]
80022c90:	e1a02003 	mov	r2, r3
80022c94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022c98:	e0033002 	and	r3, r3, r2
80022c9c:	e3530000 	cmp	r3, #0
80022ca0:	1a000020 	bne	80022d28 <balloc+0x158>
80022ca4:	e51b300c 	ldr	r3, [fp, #-12]
80022ca8:	e2832007 	add	r2, r3, #7
80022cac:	e3530000 	cmp	r3, #0
80022cb0:	b1a03002 	movlt	r3, r2
80022cb4:	a1a03003 	movge	r3, r3
80022cb8:	e1a031c3 	asr	r3, r3, #3
80022cbc:	e51b2010 	ldr	r2, [fp, #-16]
80022cc0:	e0822003 	add	r2, r2, r3
80022cc4:	e5d22018 	ldrb	r2, [r2, #24]
80022cc8:	e6af1072 	sxtb	r1, r2
80022ccc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022cd0:	e6af2072 	sxtb	r2, r2
80022cd4:	e1812002 	orr	r2, r1, r2
80022cd8:	e6af2072 	sxtb	r2, r2
80022cdc:	e6ef1072 	uxtb	r1, r2
80022ce0:	e51b2010 	ldr	r2, [fp, #-16]
80022ce4:	e0823003 	add	r3, r2, r3
80022ce8:	e1a02001 	mov	r2, r1
80022cec:	e5c32018 	strb	r2, [r3, #24]
80022cf0:	e51b0010 	ldr	r0, [fp, #-16]
80022cf4:	eb00062c 	bl	800245ac <log_write>
80022cf8:	e51b0010 	ldr	r0, [fp, #-16]
80022cfc:	ebfff7ae 	bl	80020bbc <brelse>
80022d00:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d04:	e51b2008 	ldr	r2, [fp, #-8]
80022d08:	e51b300c 	ldr	r3, [fp, #-12]
80022d0c:	e0823003 	add	r3, r2, r3
80022d10:	e1a01003 	mov	r1, r3
80022d14:	ebffff95 	bl	80022b70 <bzero>
80022d18:	e51b2008 	ldr	r2, [fp, #-8]
80022d1c:	e51b300c 	ldr	r3, [fp, #-12]
80022d20:	e0823003 	add	r3, r2, r3
80022d24:	ea000017 	b	80022d88 <balloc+0x1b8>
80022d28:	e51b300c 	ldr	r3, [fp, #-12]
80022d2c:	e2833001 	add	r3, r3, #1
80022d30:	e50b300c 	str	r3, [fp, #-12]
80022d34:	e51b300c 	ldr	r3, [fp, #-12]
80022d38:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022d3c:	aa000006 	bge	80022d5c <balloc+0x18c>
80022d40:	e51b2008 	ldr	r2, [fp, #-8]
80022d44:	e51b300c 	ldr	r3, [fp, #-12]
80022d48:	e0823003 	add	r3, r2, r3
80022d4c:	e1a02003 	mov	r2, r3
80022d50:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022d54:	e1520003 	cmp	r2, r3
80022d58:	3affffbd 	bcc	80022c54 <balloc+0x84>
80022d5c:	e51b0010 	ldr	r0, [fp, #-16]
80022d60:	ebfff795 	bl	80020bbc <brelse>
80022d64:	e51b3008 	ldr	r3, [fp, #-8]
80022d68:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022d6c:	e50b3008 	str	r3, [fp, #-8]
80022d70:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022d74:	e51b3008 	ldr	r3, [fp, #-8]
80022d78:	e1520003 	cmp	r2, r3
80022d7c:	8affffa1 	bhi	80022c08 <balloc+0x38>
80022d80:	e59f000c 	ldr	r0, [pc, #12]	@ 80022d94 <balloc+0x1c4>
80022d84:	ebfffb5c 	bl	80021afc <panic>
80022d88:	e1a00003 	mov	r0, r3
80022d8c:	e24bd004 	sub	sp, fp, #4
80022d90:	e8bd8800 	pop	{fp, pc}
80022d94:	8002b564 	.word	0x8002b564

80022d98 <bfree>:
80022d98:	e92d4800 	push	{fp, lr}
80022d9c:	e28db004 	add	fp, sp, #4
80022da0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022da4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022da8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022dac:	e24b3020 	sub	r3, fp, #32
80022db0:	e1a01003 	mov	r1, r3
80022db4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022db8:	ebffff57 	bl	80022b1c <readsb>
80022dbc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022dc0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022dc4:	e1a02623 	lsr	r2, r3, #12
80022dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022dcc:	e1a031a3 	lsr	r3, r3, #3
80022dd0:	e0823003 	add	r3, r2, r3
80022dd4:	e2833003 	add	r3, r3, #3
80022dd8:	e1a01003 	mov	r1, r3
80022ddc:	ebfff74c 	bl	80020b14 <bread>
80022de0:	e50b0008 	str	r0, [fp, #-8]
80022de4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022de8:	e1a03a03 	lsl	r3, r3, #20
80022dec:	e1a03a23 	lsr	r3, r3, #20
80022df0:	e50b300c 	str	r3, [fp, #-12]
80022df4:	e51b300c 	ldr	r3, [fp, #-12]
80022df8:	e2033007 	and	r3, r3, #7
80022dfc:	e3a02001 	mov	r2, #1
80022e00:	e1a03312 	lsl	r3, r2, r3
80022e04:	e50b3010 	str	r3, [fp, #-16]
80022e08:	e51b300c 	ldr	r3, [fp, #-12]
80022e0c:	e2832007 	add	r2, r3, #7
80022e10:	e3530000 	cmp	r3, #0
80022e14:	b1a03002 	movlt	r3, r2
80022e18:	a1a03003 	movge	r3, r3
80022e1c:	e1a031c3 	asr	r3, r3, #3
80022e20:	e1a02003 	mov	r2, r3
80022e24:	e51b3008 	ldr	r3, [fp, #-8]
80022e28:	e0833002 	add	r3, r3, r2
80022e2c:	e5d33018 	ldrb	r3, [r3, #24]
80022e30:	e1a02003 	mov	r2, r3
80022e34:	e51b3010 	ldr	r3, [fp, #-16]
80022e38:	e0033002 	and	r3, r3, r2
80022e3c:	e3530000 	cmp	r3, #0
80022e40:	1a000001 	bne	80022e4c <bfree+0xb4>
80022e44:	e59f0070 	ldr	r0, [pc, #112]	@ 80022ebc <bfree+0x124>
80022e48:	ebfffb2b 	bl	80021afc <panic>
80022e4c:	e51b300c 	ldr	r3, [fp, #-12]
80022e50:	e2832007 	add	r2, r3, #7
80022e54:	e3530000 	cmp	r3, #0
80022e58:	b1a03002 	movlt	r3, r2
80022e5c:	a1a03003 	movge	r3, r3
80022e60:	e1a031c3 	asr	r3, r3, #3
80022e64:	e51b2008 	ldr	r2, [fp, #-8]
80022e68:	e0822003 	add	r2, r2, r3
80022e6c:	e5d22018 	ldrb	r2, [r2, #24]
80022e70:	e6af1072 	sxtb	r1, r2
80022e74:	e51b2010 	ldr	r2, [fp, #-16]
80022e78:	e6af2072 	sxtb	r2, r2
80022e7c:	e1e02002 	mvn	r2, r2
80022e80:	e6af2072 	sxtb	r2, r2
80022e84:	e0022001 	and	r2, r2, r1
80022e88:	e6af2072 	sxtb	r2, r2
80022e8c:	e6ef1072 	uxtb	r1, r2
80022e90:	e51b2008 	ldr	r2, [fp, #-8]
80022e94:	e0823003 	add	r3, r2, r3
80022e98:	e1a02001 	mov	r2, r1
80022e9c:	e5c32018 	strb	r2, [r3, #24]
80022ea0:	e51b0008 	ldr	r0, [fp, #-8]
80022ea4:	eb0005c0 	bl	800245ac <log_write>
80022ea8:	e51b0008 	ldr	r0, [fp, #-8]
80022eac:	ebfff742 	bl	80020bbc <brelse>
80022eb0:	e1a00000 	nop			@ (mov r0, r0)
80022eb4:	e24bd004 	sub	sp, fp, #4
80022eb8:	e8bd8800 	pop	{fp, pc}
80022ebc:	8002b57c 	.word	0x8002b57c

80022ec0 <iinit>:
80022ec0:	e92d4800 	push	{fp, lr}
80022ec4:	e28db004 	add	fp, sp, #4
80022ec8:	e59f100c 	ldr	r1, [pc, #12]	@ 80022edc <iinit+0x1c>
80022ecc:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ee0 <iinit+0x20>
80022ed0:	eb000edd 	bl	80026a4c <initlock>
80022ed4:	e1a00000 	nop			@ (mov r0, r0)
80022ed8:	e8bd8800 	pop	{fp, pc}
80022edc:	8002b590 	.word	0x8002b590
80022ee0:	800af738 	.word	0x800af738

80022ee4 <ialloc>:
80022ee4:	e92d4800 	push	{fp, lr}
80022ee8:	e28db004 	add	fp, sp, #4
80022eec:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022ef0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022ef4:	e1a03001 	mov	r3, r1
80022ef8:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022efc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022f00:	e24b2020 	sub	r2, fp, #32
80022f04:	e1a01002 	mov	r1, r2
80022f08:	e1a00003 	mov	r0, r3
80022f0c:	ebffff02 	bl	80022b1c <readsb>
80022f10:	e3a03001 	mov	r3, #1
80022f14:	e50b3008 	str	r3, [fp, #-8]
80022f18:	ea000027 	b	80022fbc <ialloc+0xd8>
80022f1c:	e51b3008 	ldr	r3, [fp, #-8]
80022f20:	e1a031a3 	lsr	r3, r3, #3
80022f24:	e2833002 	add	r3, r3, #2
80022f28:	e1a01003 	mov	r1, r3
80022f2c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022f30:	ebfff6f7 	bl	80020b14 <bread>
80022f34:	e50b000c 	str	r0, [fp, #-12]
80022f38:	e51b300c 	ldr	r3, [fp, #-12]
80022f3c:	e2832018 	add	r2, r3, #24
80022f40:	e51b3008 	ldr	r3, [fp, #-8]
80022f44:	e2033007 	and	r3, r3, #7
80022f48:	e1a03303 	lsl	r3, r3, #6
80022f4c:	e0823003 	add	r3, r2, r3
80022f50:	e50b3010 	str	r3, [fp, #-16]
80022f54:	e51b3010 	ldr	r3, [fp, #-16]
80022f58:	e1d330f0 	ldrsh	r3, [r3]
80022f5c:	e3530000 	cmp	r3, #0
80022f60:	1a000010 	bne	80022fa8 <ialloc+0xc4>
80022f64:	e3a02040 	mov	r2, #64	@ 0x40
80022f68:	e3a01000 	mov	r1, #0
80022f6c:	e51b0010 	ldr	r0, [fp, #-16]
80022f70:	ebfff422 	bl	80020000 <memset>
80022f74:	e51b3010 	ldr	r3, [fp, #-16]
80022f78:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022f7c:	e1c320b0 	strh	r2, [r3]
80022f80:	e51b000c 	ldr	r0, [fp, #-12]
80022f84:	eb000588 	bl	800245ac <log_write>
80022f88:	e51b000c 	ldr	r0, [fp, #-12]
80022f8c:	ebfff70a 	bl	80020bbc <brelse>
80022f90:	e51b3008 	ldr	r3, [fp, #-8]
80022f94:	e1a01003 	mov	r1, r3
80022f98:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022f9c:	eb000048 	bl	800230c4 <iget>
80022fa0:	e1a03000 	mov	r3, r0
80022fa4:	ea00000a 	b	80022fd4 <ialloc+0xf0>
80022fa8:	e51b000c 	ldr	r0, [fp, #-12]
80022fac:	ebfff702 	bl	80020bbc <brelse>
80022fb0:	e51b3008 	ldr	r3, [fp, #-8]
80022fb4:	e2833001 	add	r3, r3, #1
80022fb8:	e50b3008 	str	r3, [fp, #-8]
80022fbc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022fc0:	e51b3008 	ldr	r3, [fp, #-8]
80022fc4:	e1520003 	cmp	r2, r3
80022fc8:	8affffd3 	bhi	80022f1c <ialloc+0x38>
80022fcc:	e59f000c 	ldr	r0, [pc, #12]	@ 80022fe0 <ialloc+0xfc>
80022fd0:	ebfffac9 	bl	80021afc <panic>
80022fd4:	e1a00003 	mov	r0, r3
80022fd8:	e24bd004 	sub	sp, fp, #4
80022fdc:	e8bd8800 	pop	{fp, pc}
80022fe0:	8002b598 	.word	0x8002b598

80022fe4 <iupdate>:
80022fe4:	e92d4800 	push	{fp, lr}
80022fe8:	e28db004 	add	fp, sp, #4
80022fec:	e24dd010 	sub	sp, sp, #16
80022ff0:	e50b0010 	str	r0, [fp, #-16]
80022ff4:	e51b3010 	ldr	r3, [fp, #-16]
80022ff8:	e5932000 	ldr	r2, [r3]
80022ffc:	e51b3010 	ldr	r3, [fp, #-16]
80023000:	e5933004 	ldr	r3, [r3, #4]
80023004:	e1a031a3 	lsr	r3, r3, #3
80023008:	e2833002 	add	r3, r3, #2
8002300c:	e1a01003 	mov	r1, r3
80023010:	e1a00002 	mov	r0, r2
80023014:	ebfff6be 	bl	80020b14 <bread>
80023018:	e50b0008 	str	r0, [fp, #-8]
8002301c:	e51b3008 	ldr	r3, [fp, #-8]
80023020:	e2832018 	add	r2, r3, #24
80023024:	e51b3010 	ldr	r3, [fp, #-16]
80023028:	e5933004 	ldr	r3, [r3, #4]
8002302c:	e2033007 	and	r3, r3, #7
80023030:	e1a03303 	lsl	r3, r3, #6
80023034:	e0823003 	add	r3, r2, r3
80023038:	e50b300c 	str	r3, [fp, #-12]
8002303c:	e51b3010 	ldr	r3, [fp, #-16]
80023040:	e1d321f0 	ldrsh	r2, [r3, #16]
80023044:	e51b300c 	ldr	r3, [fp, #-12]
80023048:	e1c320b0 	strh	r2, [r3]
8002304c:	e51b3010 	ldr	r3, [fp, #-16]
80023050:	e1d321f2 	ldrsh	r2, [r3, #18]
80023054:	e51b300c 	ldr	r3, [fp, #-12]
80023058:	e1c320b2 	strh	r2, [r3, #2]
8002305c:	e51b3010 	ldr	r3, [fp, #-16]
80023060:	e1d321f4 	ldrsh	r2, [r3, #20]
80023064:	e51b300c 	ldr	r3, [fp, #-12]
80023068:	e1c320b4 	strh	r2, [r3, #4]
8002306c:	e51b3010 	ldr	r3, [fp, #-16]
80023070:	e1d321f6 	ldrsh	r2, [r3, #22]
80023074:	e51b300c 	ldr	r3, [fp, #-12]
80023078:	e1c320b6 	strh	r2, [r3, #6]
8002307c:	e51b3010 	ldr	r3, [fp, #-16]
80023080:	e5932018 	ldr	r2, [r3, #24]
80023084:	e51b300c 	ldr	r3, [fp, #-12]
80023088:	e5832008 	str	r2, [r3, #8]
8002308c:	e51b300c 	ldr	r3, [fp, #-12]
80023090:	e283000c 	add	r0, r3, #12
80023094:	e51b3010 	ldr	r3, [fp, #-16]
80023098:	e283301c 	add	r3, r3, #28
8002309c:	e3a02034 	mov	r2, #52	@ 0x34
800230a0:	e1a01003 	mov	r1, r3
800230a4:	ebfff447 	bl	800201c8 <memmove>
800230a8:	e51b0008 	ldr	r0, [fp, #-8]
800230ac:	eb00053e 	bl	800245ac <log_write>
800230b0:	e51b0008 	ldr	r0, [fp, #-8]
800230b4:	ebfff6c0 	bl	80020bbc <brelse>
800230b8:	e1a00000 	nop			@ (mov r0, r0)
800230bc:	e24bd004 	sub	sp, fp, #4
800230c0:	e8bd8800 	pop	{fp, pc}

800230c4 <iget>:
800230c4:	e92d4800 	push	{fp, lr}
800230c8:	e28db004 	add	fp, sp, #4
800230cc:	e24dd010 	sub	sp, sp, #16
800230d0:	e50b0010 	str	r0, [fp, #-16]
800230d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800230d8:	e59f0114 	ldr	r0, [pc, #276]	@ 800231f4 <iget+0x130>
800230dc:	eb000e6c 	bl	80026a94 <acquire>
800230e0:	e3a03000 	mov	r3, #0
800230e4:	e50b300c 	str	r3, [fp, #-12]
800230e8:	e59f3108 	ldr	r3, [pc, #264]	@ 800231f8 <iget+0x134>
800230ec:	e50b3008 	str	r3, [fp, #-8]
800230f0:	ea000022 	b	80023180 <iget+0xbc>
800230f4:	e51b3008 	ldr	r3, [fp, #-8]
800230f8:	e5933008 	ldr	r3, [r3, #8]
800230fc:	e3530000 	cmp	r3, #0
80023100:	da000012 	ble	80023150 <iget+0x8c>
80023104:	e51b3008 	ldr	r3, [fp, #-8]
80023108:	e5933000 	ldr	r3, [r3]
8002310c:	e51b2010 	ldr	r2, [fp, #-16]
80023110:	e1520003 	cmp	r2, r3
80023114:	1a00000d 	bne	80023150 <iget+0x8c>
80023118:	e51b3008 	ldr	r3, [fp, #-8]
8002311c:	e5933004 	ldr	r3, [r3, #4]
80023120:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023124:	e1520003 	cmp	r2, r3
80023128:	1a000008 	bne	80023150 <iget+0x8c>
8002312c:	e51b3008 	ldr	r3, [fp, #-8]
80023130:	e5933008 	ldr	r3, [r3, #8]
80023134:	e2832001 	add	r2, r3, #1
80023138:	e51b3008 	ldr	r3, [fp, #-8]
8002313c:	e5832008 	str	r2, [r3, #8]
80023140:	e59f00ac 	ldr	r0, [pc, #172]	@ 800231f4 <iget+0x130>
80023144:	eb000e5d 	bl	80026ac0 <release>
80023148:	e51b3008 	ldr	r3, [fp, #-8]
8002314c:	ea000025 	b	800231e8 <iget+0x124>
80023150:	e51b300c 	ldr	r3, [fp, #-12]
80023154:	e3530000 	cmp	r3, #0
80023158:	1a000005 	bne	80023174 <iget+0xb0>
8002315c:	e51b3008 	ldr	r3, [fp, #-8]
80023160:	e5933008 	ldr	r3, [r3, #8]
80023164:	e3530000 	cmp	r3, #0
80023168:	1a000001 	bne	80023174 <iget+0xb0>
8002316c:	e51b3008 	ldr	r3, [fp, #-8]
80023170:	e50b300c 	str	r3, [fp, #-12]
80023174:	e51b3008 	ldr	r3, [fp, #-8]
80023178:	e2833050 	add	r3, r3, #80	@ 0x50
8002317c:	e50b3008 	str	r3, [fp, #-8]
80023180:	e51b3008 	ldr	r3, [fp, #-8]
80023184:	e59f2070 	ldr	r2, [pc, #112]	@ 800231fc <iget+0x138>
80023188:	e1530002 	cmp	r3, r2
8002318c:	3affffd8 	bcc	800230f4 <iget+0x30>
80023190:	e51b300c 	ldr	r3, [fp, #-12]
80023194:	e3530000 	cmp	r3, #0
80023198:	1a000001 	bne	800231a4 <iget+0xe0>
8002319c:	e59f005c 	ldr	r0, [pc, #92]	@ 80023200 <iget+0x13c>
800231a0:	ebfffa55 	bl	80021afc <panic>
800231a4:	e51b300c 	ldr	r3, [fp, #-12]
800231a8:	e50b3008 	str	r3, [fp, #-8]
800231ac:	e51b3008 	ldr	r3, [fp, #-8]
800231b0:	e51b2010 	ldr	r2, [fp, #-16]
800231b4:	e5832000 	str	r2, [r3]
800231b8:	e51b3008 	ldr	r3, [fp, #-8]
800231bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800231c0:	e5832004 	str	r2, [r3, #4]
800231c4:	e51b3008 	ldr	r3, [fp, #-8]
800231c8:	e3a02001 	mov	r2, #1
800231cc:	e5832008 	str	r2, [r3, #8]
800231d0:	e51b3008 	ldr	r3, [fp, #-8]
800231d4:	e3a02000 	mov	r2, #0
800231d8:	e583200c 	str	r2, [r3, #12]
800231dc:	e59f0010 	ldr	r0, [pc, #16]	@ 800231f4 <iget+0x130>
800231e0:	eb000e36 	bl	80026ac0 <release>
800231e4:	e51b3008 	ldr	r3, [fp, #-8]
800231e8:	e1a00003 	mov	r0, r3
800231ec:	e24bd004 	sub	sp, fp, #4
800231f0:	e8bd8800 	pop	{fp, pc}
800231f4:	800af738 	.word	0x800af738
800231f8:	800af76c 	.word	0x800af76c
800231fc:	800b070c 	.word	0x800b070c
80023200:	8002b5ac 	.word	0x8002b5ac

80023204 <idup>:
80023204:	e92d4800 	push	{fp, lr}
80023208:	e28db004 	add	fp, sp, #4
8002320c:	e24dd008 	sub	sp, sp, #8
80023210:	e50b0008 	str	r0, [fp, #-8]
80023214:	e59f002c 	ldr	r0, [pc, #44]	@ 80023248 <idup+0x44>
80023218:	eb000e1d 	bl	80026a94 <acquire>
8002321c:	e51b3008 	ldr	r3, [fp, #-8]
80023220:	e5933008 	ldr	r3, [r3, #8]
80023224:	e2832001 	add	r2, r3, #1
80023228:	e51b3008 	ldr	r3, [fp, #-8]
8002322c:	e5832008 	str	r2, [r3, #8]
80023230:	e59f0010 	ldr	r0, [pc, #16]	@ 80023248 <idup+0x44>
80023234:	eb000e21 	bl	80026ac0 <release>
80023238:	e51b3008 	ldr	r3, [fp, #-8]
8002323c:	e1a00003 	mov	r0, r3
80023240:	e24bd004 	sub	sp, fp, #4
80023244:	e8bd8800 	pop	{fp, pc}
80023248:	800af738 	.word	0x800af738

8002324c <ilock>:
8002324c:	e92d4800 	push	{fp, lr}
80023250:	e28db004 	add	fp, sp, #4
80023254:	e24dd010 	sub	sp, sp, #16
80023258:	e50b0010 	str	r0, [fp, #-16]
8002325c:	e51b3010 	ldr	r3, [fp, #-16]
80023260:	e3530000 	cmp	r3, #0
80023264:	0a000003 	beq	80023278 <ilock+0x2c>
80023268:	e51b3010 	ldr	r3, [fp, #-16]
8002326c:	e5933008 	ldr	r3, [r3, #8]
80023270:	e3530000 	cmp	r3, #0
80023274:	ca000001 	bgt	80023280 <ilock+0x34>
80023278:	e59f0150 	ldr	r0, [pc, #336]	@ 800233d0 <ilock+0x184>
8002327c:	ebfffa1e 	bl	80021afc <panic>
80023280:	e59f014c 	ldr	r0, [pc, #332]	@ 800233d4 <ilock+0x188>
80023284:	eb000e02 	bl	80026a94 <acquire>
80023288:	ea000002 	b	80023298 <ilock+0x4c>
8002328c:	e59f1140 	ldr	r1, [pc, #320]	@ 800233d4 <ilock+0x188>
80023290:	e51b0010 	ldr	r0, [fp, #-16]
80023294:	eb000bd6 	bl	800261f4 <sleep>
80023298:	e51b3010 	ldr	r3, [fp, #-16]
8002329c:	e593300c 	ldr	r3, [r3, #12]
800232a0:	e2033001 	and	r3, r3, #1
800232a4:	e3530000 	cmp	r3, #0
800232a8:	1afffff7 	bne	8002328c <ilock+0x40>
800232ac:	e51b3010 	ldr	r3, [fp, #-16]
800232b0:	e593300c 	ldr	r3, [r3, #12]
800232b4:	e3832001 	orr	r2, r3, #1
800232b8:	e51b3010 	ldr	r3, [fp, #-16]
800232bc:	e583200c 	str	r2, [r3, #12]
800232c0:	e59f010c 	ldr	r0, [pc, #268]	@ 800233d4 <ilock+0x188>
800232c4:	eb000dfd 	bl	80026ac0 <release>
800232c8:	e51b3010 	ldr	r3, [fp, #-16]
800232cc:	e593300c 	ldr	r3, [r3, #12]
800232d0:	e2033002 	and	r3, r3, #2
800232d4:	e3530000 	cmp	r3, #0
800232d8:	1a000039 	bne	800233c4 <ilock+0x178>
800232dc:	e51b3010 	ldr	r3, [fp, #-16]
800232e0:	e5932000 	ldr	r2, [r3]
800232e4:	e51b3010 	ldr	r3, [fp, #-16]
800232e8:	e5933004 	ldr	r3, [r3, #4]
800232ec:	e1a031a3 	lsr	r3, r3, #3
800232f0:	e2833002 	add	r3, r3, #2
800232f4:	e1a01003 	mov	r1, r3
800232f8:	e1a00002 	mov	r0, r2
800232fc:	ebfff604 	bl	80020b14 <bread>
80023300:	e50b0008 	str	r0, [fp, #-8]
80023304:	e51b3008 	ldr	r3, [fp, #-8]
80023308:	e2832018 	add	r2, r3, #24
8002330c:	e51b3010 	ldr	r3, [fp, #-16]
80023310:	e5933004 	ldr	r3, [r3, #4]
80023314:	e2033007 	and	r3, r3, #7
80023318:	e1a03303 	lsl	r3, r3, #6
8002331c:	e0823003 	add	r3, r2, r3
80023320:	e50b300c 	str	r3, [fp, #-12]
80023324:	e51b300c 	ldr	r3, [fp, #-12]
80023328:	e1d320f0 	ldrsh	r2, [r3]
8002332c:	e51b3010 	ldr	r3, [fp, #-16]
80023330:	e1c321b0 	strh	r2, [r3, #16]
80023334:	e51b300c 	ldr	r3, [fp, #-12]
80023338:	e1d320f2 	ldrsh	r2, [r3, #2]
8002333c:	e51b3010 	ldr	r3, [fp, #-16]
80023340:	e1c321b2 	strh	r2, [r3, #18]
80023344:	e51b300c 	ldr	r3, [fp, #-12]
80023348:	e1d320f4 	ldrsh	r2, [r3, #4]
8002334c:	e51b3010 	ldr	r3, [fp, #-16]
80023350:	e1c321b4 	strh	r2, [r3, #20]
80023354:	e51b300c 	ldr	r3, [fp, #-12]
80023358:	e1d320f6 	ldrsh	r2, [r3, #6]
8002335c:	e51b3010 	ldr	r3, [fp, #-16]
80023360:	e1c321b6 	strh	r2, [r3, #22]
80023364:	e51b300c 	ldr	r3, [fp, #-12]
80023368:	e5932008 	ldr	r2, [r3, #8]
8002336c:	e51b3010 	ldr	r3, [fp, #-16]
80023370:	e5832018 	str	r2, [r3, #24]
80023374:	e51b3010 	ldr	r3, [fp, #-16]
80023378:	e283001c 	add	r0, r3, #28
8002337c:	e51b300c 	ldr	r3, [fp, #-12]
80023380:	e283300c 	add	r3, r3, #12
80023384:	e3a02034 	mov	r2, #52	@ 0x34
80023388:	e1a01003 	mov	r1, r3
8002338c:	ebfff38d 	bl	800201c8 <memmove>
80023390:	e51b0008 	ldr	r0, [fp, #-8]
80023394:	ebfff608 	bl	80020bbc <brelse>
80023398:	e51b3010 	ldr	r3, [fp, #-16]
8002339c:	e593300c 	ldr	r3, [r3, #12]
800233a0:	e3832002 	orr	r2, r3, #2
800233a4:	e51b3010 	ldr	r3, [fp, #-16]
800233a8:	e583200c 	str	r2, [r3, #12]
800233ac:	e51b3010 	ldr	r3, [fp, #-16]
800233b0:	e1d331f0 	ldrsh	r3, [r3, #16]
800233b4:	e3530000 	cmp	r3, #0
800233b8:	1a000001 	bne	800233c4 <ilock+0x178>
800233bc:	e59f0014 	ldr	r0, [pc, #20]	@ 800233d8 <ilock+0x18c>
800233c0:	ebfff9cd 	bl	80021afc <panic>
800233c4:	e1a00000 	nop			@ (mov r0, r0)
800233c8:	e24bd004 	sub	sp, fp, #4
800233cc:	e8bd8800 	pop	{fp, pc}
800233d0:	8002b5bc 	.word	0x8002b5bc
800233d4:	800af738 	.word	0x800af738
800233d8:	8002b5c4 	.word	0x8002b5c4

800233dc <iunlock>:
800233dc:	e92d4800 	push	{fp, lr}
800233e0:	e28db004 	add	fp, sp, #4
800233e4:	e24dd008 	sub	sp, sp, #8
800233e8:	e50b0008 	str	r0, [fp, #-8]
800233ec:	e51b3008 	ldr	r3, [fp, #-8]
800233f0:	e3530000 	cmp	r3, #0
800233f4:	0a000008 	beq	8002341c <iunlock+0x40>
800233f8:	e51b3008 	ldr	r3, [fp, #-8]
800233fc:	e593300c 	ldr	r3, [r3, #12]
80023400:	e2033001 	and	r3, r3, #1
80023404:	e3530000 	cmp	r3, #0
80023408:	0a000003 	beq	8002341c <iunlock+0x40>
8002340c:	e51b3008 	ldr	r3, [fp, #-8]
80023410:	e5933008 	ldr	r3, [r3, #8]
80023414:	e3530000 	cmp	r3, #0
80023418:	ca000001 	bgt	80023424 <iunlock+0x48>
8002341c:	e59f0038 	ldr	r0, [pc, #56]	@ 8002345c <iunlock+0x80>
80023420:	ebfff9b5 	bl	80021afc <panic>
80023424:	e59f0034 	ldr	r0, [pc, #52]	@ 80023460 <iunlock+0x84>
80023428:	eb000d99 	bl	80026a94 <acquire>
8002342c:	e51b3008 	ldr	r3, [fp, #-8]
80023430:	e593300c 	ldr	r3, [r3, #12]
80023434:	e3c32001 	bic	r2, r3, #1
80023438:	e51b3008 	ldr	r3, [fp, #-8]
8002343c:	e583200c 	str	r2, [r3, #12]
80023440:	e51b0008 	ldr	r0, [fp, #-8]
80023444:	eb000bea 	bl	800263f4 <wakeup>
80023448:	e59f0010 	ldr	r0, [pc, #16]	@ 80023460 <iunlock+0x84>
8002344c:	eb000d9b 	bl	80026ac0 <release>
80023450:	e1a00000 	nop			@ (mov r0, r0)
80023454:	e24bd004 	sub	sp, fp, #4
80023458:	e8bd8800 	pop	{fp, pc}
8002345c:	8002b5d4 	.word	0x8002b5d4
80023460:	800af738 	.word	0x800af738

80023464 <iput>:
80023464:	e92d4800 	push	{fp, lr}
80023468:	e28db004 	add	fp, sp, #4
8002346c:	e24dd008 	sub	sp, sp, #8
80023470:	e50b0008 	str	r0, [fp, #-8]
80023474:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023548 <iput+0xe4>
80023478:	eb000d85 	bl	80026a94 <acquire>
8002347c:	e51b3008 	ldr	r3, [fp, #-8]
80023480:	e5933008 	ldr	r3, [r3, #8]
80023484:	e3530001 	cmp	r3, #1
80023488:	1a000024 	bne	80023520 <iput+0xbc>
8002348c:	e51b3008 	ldr	r3, [fp, #-8]
80023490:	e593300c 	ldr	r3, [r3, #12]
80023494:	e2033002 	and	r3, r3, #2
80023498:	e3530000 	cmp	r3, #0
8002349c:	0a00001f 	beq	80023520 <iput+0xbc>
800234a0:	e51b3008 	ldr	r3, [fp, #-8]
800234a4:	e1d331f6 	ldrsh	r3, [r3, #22]
800234a8:	e3530000 	cmp	r3, #0
800234ac:	1a00001b 	bne	80023520 <iput+0xbc>
800234b0:	e51b3008 	ldr	r3, [fp, #-8]
800234b4:	e593300c 	ldr	r3, [r3, #12]
800234b8:	e2033001 	and	r3, r3, #1
800234bc:	e3530000 	cmp	r3, #0
800234c0:	0a000001 	beq	800234cc <iput+0x68>
800234c4:	e59f0080 	ldr	r0, [pc, #128]	@ 8002354c <iput+0xe8>
800234c8:	ebfff98b 	bl	80021afc <panic>
800234cc:	e51b3008 	ldr	r3, [fp, #-8]
800234d0:	e593300c 	ldr	r3, [r3, #12]
800234d4:	e3832001 	orr	r2, r3, #1
800234d8:	e51b3008 	ldr	r3, [fp, #-8]
800234dc:	e583200c 	str	r2, [r3, #12]
800234e0:	e59f0060 	ldr	r0, [pc, #96]	@ 80023548 <iput+0xe4>
800234e4:	eb000d75 	bl	80026ac0 <release>
800234e8:	e51b0008 	ldr	r0, [fp, #-8]
800234ec:	eb00007f 	bl	800236f0 <itrunc>
800234f0:	e51b3008 	ldr	r3, [fp, #-8]
800234f4:	e3a02000 	mov	r2, #0
800234f8:	e1c321b0 	strh	r2, [r3, #16]
800234fc:	e51b0008 	ldr	r0, [fp, #-8]
80023500:	ebfffeb7 	bl	80022fe4 <iupdate>
80023504:	e59f003c 	ldr	r0, [pc, #60]	@ 80023548 <iput+0xe4>
80023508:	eb000d61 	bl	80026a94 <acquire>
8002350c:	e51b3008 	ldr	r3, [fp, #-8]
80023510:	e3a02000 	mov	r2, #0
80023514:	e583200c 	str	r2, [r3, #12]
80023518:	e51b0008 	ldr	r0, [fp, #-8]
8002351c:	eb000bb4 	bl	800263f4 <wakeup>
80023520:	e51b3008 	ldr	r3, [fp, #-8]
80023524:	e5933008 	ldr	r3, [r3, #8]
80023528:	e2432001 	sub	r2, r3, #1
8002352c:	e51b3008 	ldr	r3, [fp, #-8]
80023530:	e5832008 	str	r2, [r3, #8]
80023534:	e59f000c 	ldr	r0, [pc, #12]	@ 80023548 <iput+0xe4>
80023538:	eb000d60 	bl	80026ac0 <release>
8002353c:	e1a00000 	nop			@ (mov r0, r0)
80023540:	e24bd004 	sub	sp, fp, #4
80023544:	e8bd8800 	pop	{fp, pc}
80023548:	800af738 	.word	0x800af738
8002354c:	8002b5dc 	.word	0x8002b5dc

80023550 <iunlockput>:
80023550:	e92d4800 	push	{fp, lr}
80023554:	e28db004 	add	fp, sp, #4
80023558:	e24dd008 	sub	sp, sp, #8
8002355c:	e50b0008 	str	r0, [fp, #-8]
80023560:	e51b0008 	ldr	r0, [fp, #-8]
80023564:	ebffff9c 	bl	800233dc <iunlock>
80023568:	e51b0008 	ldr	r0, [fp, #-8]
8002356c:	ebffffbc 	bl	80023464 <iput>
80023570:	e1a00000 	nop			@ (mov r0, r0)
80023574:	e24bd004 	sub	sp, fp, #4
80023578:	e8bd8800 	pop	{fp, pc}

8002357c <bmap>:
8002357c:	e92d4800 	push	{fp, lr}
80023580:	e28db004 	add	fp, sp, #4
80023584:	e24dd018 	sub	sp, sp, #24
80023588:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002358c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80023590:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023594:	e353000b 	cmp	r3, #11
80023598:	8a000017 	bhi	800235fc <bmap+0x80>
8002359c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800235a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235a4:	e2833006 	add	r3, r3, #6
800235a8:	e1a03103 	lsl	r3, r3, #2
800235ac:	e0823003 	add	r3, r2, r3
800235b0:	e5933004 	ldr	r3, [r3, #4]
800235b4:	e50b3008 	str	r3, [fp, #-8]
800235b8:	e51b3008 	ldr	r3, [fp, #-8]
800235bc:	e3530000 	cmp	r3, #0
800235c0:	1a00000b 	bne	800235f4 <bmap+0x78>
800235c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235c8:	e5933000 	ldr	r3, [r3]
800235cc:	e1a00003 	mov	r0, r3
800235d0:	ebfffd7e 	bl	80022bd0 <balloc>
800235d4:	e50b0008 	str	r0, [fp, #-8]
800235d8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800235dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235e0:	e2833006 	add	r3, r3, #6
800235e4:	e1a03103 	lsl	r3, r3, #2
800235e8:	e0823003 	add	r3, r2, r3
800235ec:	e51b2008 	ldr	r2, [fp, #-8]
800235f0:	e5832004 	str	r2, [r3, #4]
800235f4:	e51b3008 	ldr	r3, [fp, #-8]
800235f8:	ea000038 	b	800236e0 <bmap+0x164>
800235fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023600:	e243300c 	sub	r3, r3, #12
80023604:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80023608:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002360c:	e353007f 	cmp	r3, #127	@ 0x7f
80023610:	8a000030 	bhi	800236d8 <bmap+0x15c>
80023614:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023618:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002361c:	e50b3008 	str	r3, [fp, #-8]
80023620:	e51b3008 	ldr	r3, [fp, #-8]
80023624:	e3530000 	cmp	r3, #0
80023628:	1a000007 	bne	8002364c <bmap+0xd0>
8002362c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023630:	e5933000 	ldr	r3, [r3]
80023634:	e1a00003 	mov	r0, r3
80023638:	ebfffd64 	bl	80022bd0 <balloc>
8002363c:	e50b0008 	str	r0, [fp, #-8]
80023640:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023644:	e51b2008 	ldr	r2, [fp, #-8]
80023648:	e583204c 	str	r2, [r3, #76]	@ 0x4c
8002364c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023650:	e5933000 	ldr	r3, [r3]
80023654:	e51b1008 	ldr	r1, [fp, #-8]
80023658:	e1a00003 	mov	r0, r3
8002365c:	ebfff52c 	bl	80020b14 <bread>
80023660:	e50b000c 	str	r0, [fp, #-12]
80023664:	e51b300c 	ldr	r3, [fp, #-12]
80023668:	e2833018 	add	r3, r3, #24
8002366c:	e50b3010 	str	r3, [fp, #-16]
80023670:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023674:	e1a03103 	lsl	r3, r3, #2
80023678:	e51b2010 	ldr	r2, [fp, #-16]
8002367c:	e0823003 	add	r3, r2, r3
80023680:	e5933000 	ldr	r3, [r3]
80023684:	e50b3008 	str	r3, [fp, #-8]
80023688:	e51b3008 	ldr	r3, [fp, #-8]
8002368c:	e3530000 	cmp	r3, #0
80023690:	1a00000c 	bne	800236c8 <bmap+0x14c>
80023694:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023698:	e5933000 	ldr	r3, [r3]
8002369c:	e1a00003 	mov	r0, r3
800236a0:	ebfffd4a 	bl	80022bd0 <balloc>
800236a4:	e50b0008 	str	r0, [fp, #-8]
800236a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800236ac:	e1a03103 	lsl	r3, r3, #2
800236b0:	e51b2010 	ldr	r2, [fp, #-16]
800236b4:	e0823003 	add	r3, r2, r3
800236b8:	e51b2008 	ldr	r2, [fp, #-8]
800236bc:	e5832000 	str	r2, [r3]
800236c0:	e51b000c 	ldr	r0, [fp, #-12]
800236c4:	eb0003b8 	bl	800245ac <log_write>
800236c8:	e51b000c 	ldr	r0, [fp, #-12]
800236cc:	ebfff53a 	bl	80020bbc <brelse>
800236d0:	e51b3008 	ldr	r3, [fp, #-8]
800236d4:	ea000001 	b	800236e0 <bmap+0x164>
800236d8:	e59f000c 	ldr	r0, [pc, #12]	@ 800236ec <bmap+0x170>
800236dc:	ebfff906 	bl	80021afc <panic>
800236e0:	e1a00003 	mov	r0, r3
800236e4:	e24bd004 	sub	sp, fp, #4
800236e8:	e8bd8800 	pop	{fp, pc}
800236ec:	8002b5e8 	.word	0x8002b5e8

800236f0 <itrunc>:
800236f0:	e92d4800 	push	{fp, lr}
800236f4:	e28db004 	add	fp, sp, #4
800236f8:	e24dd018 	sub	sp, sp, #24
800236fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023700:	e3a03000 	mov	r3, #0
80023704:	e50b3008 	str	r3, [fp, #-8]
80023708:	ea00001c 	b	80023780 <itrunc+0x90>
8002370c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023710:	e51b3008 	ldr	r3, [fp, #-8]
80023714:	e2833006 	add	r3, r3, #6
80023718:	e1a03103 	lsl	r3, r3, #2
8002371c:	e0823003 	add	r3, r2, r3
80023720:	e5933004 	ldr	r3, [r3, #4]
80023724:	e3530000 	cmp	r3, #0
80023728:	0a000011 	beq	80023774 <itrunc+0x84>
8002372c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023730:	e5933000 	ldr	r3, [r3]
80023734:	e1a00003 	mov	r0, r3
80023738:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002373c:	e51b3008 	ldr	r3, [fp, #-8]
80023740:	e2833006 	add	r3, r3, #6
80023744:	e1a03103 	lsl	r3, r3, #2
80023748:	e0823003 	add	r3, r2, r3
8002374c:	e5933004 	ldr	r3, [r3, #4]
80023750:	e1a01003 	mov	r1, r3
80023754:	ebfffd8f 	bl	80022d98 <bfree>
80023758:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002375c:	e51b3008 	ldr	r3, [fp, #-8]
80023760:	e2833006 	add	r3, r3, #6
80023764:	e1a03103 	lsl	r3, r3, #2
80023768:	e0823003 	add	r3, r2, r3
8002376c:	e3a02000 	mov	r2, #0
80023770:	e5832004 	str	r2, [r3, #4]
80023774:	e51b3008 	ldr	r3, [fp, #-8]
80023778:	e2833001 	add	r3, r3, #1
8002377c:	e50b3008 	str	r3, [fp, #-8]
80023780:	e51b3008 	ldr	r3, [fp, #-8]
80023784:	e353000b 	cmp	r3, #11
80023788:	daffffdf 	ble	8002370c <itrunc+0x1c>
8002378c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023790:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023794:	e3530000 	cmp	r3, #0
80023798:	0a000031 	beq	80023864 <itrunc+0x174>
8002379c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237a0:	e5932000 	ldr	r2, [r3]
800237a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237a8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800237ac:	e1a01003 	mov	r1, r3
800237b0:	e1a00002 	mov	r0, r2
800237b4:	ebfff4d6 	bl	80020b14 <bread>
800237b8:	e50b0010 	str	r0, [fp, #-16]
800237bc:	e51b3010 	ldr	r3, [fp, #-16]
800237c0:	e2833018 	add	r3, r3, #24
800237c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800237c8:	e3a03000 	mov	r3, #0
800237cc:	e50b300c 	str	r3, [fp, #-12]
800237d0:	ea000013 	b	80023824 <itrunc+0x134>
800237d4:	e51b300c 	ldr	r3, [fp, #-12]
800237d8:	e1a03103 	lsl	r3, r3, #2
800237dc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800237e0:	e0823003 	add	r3, r2, r3
800237e4:	e5933000 	ldr	r3, [r3]
800237e8:	e3530000 	cmp	r3, #0
800237ec:	0a000009 	beq	80023818 <itrunc+0x128>
800237f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800237f4:	e5933000 	ldr	r3, [r3]
800237f8:	e1a00003 	mov	r0, r3
800237fc:	e51b300c 	ldr	r3, [fp, #-12]
80023800:	e1a03103 	lsl	r3, r3, #2
80023804:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023808:	e0823003 	add	r3, r2, r3
8002380c:	e5933000 	ldr	r3, [r3]
80023810:	e1a01003 	mov	r1, r3
80023814:	ebfffd5f 	bl	80022d98 <bfree>
80023818:	e51b300c 	ldr	r3, [fp, #-12]
8002381c:	e2833001 	add	r3, r3, #1
80023820:	e50b300c 	str	r3, [fp, #-12]
80023824:	e51b300c 	ldr	r3, [fp, #-12]
80023828:	e353007f 	cmp	r3, #127	@ 0x7f
8002382c:	9affffe8 	bls	800237d4 <itrunc+0xe4>
80023830:	e51b0010 	ldr	r0, [fp, #-16]
80023834:	ebfff4e0 	bl	80020bbc <brelse>
80023838:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002383c:	e5933000 	ldr	r3, [r3]
80023840:	e1a02003 	mov	r2, r3
80023844:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023848:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002384c:	e1a01003 	mov	r1, r3
80023850:	e1a00002 	mov	r0, r2
80023854:	ebfffd4f 	bl	80022d98 <bfree>
80023858:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002385c:	e3a02000 	mov	r2, #0
80023860:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023864:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023868:	e3a02000 	mov	r2, #0
8002386c:	e5832018 	str	r2, [r3, #24]
80023870:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023874:	ebfffdda 	bl	80022fe4 <iupdate>
80023878:	e1a00000 	nop			@ (mov r0, r0)
8002387c:	e24bd004 	sub	sp, fp, #4
80023880:	e8bd8800 	pop	{fp, pc}

80023884 <stati>:
80023884:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023888:	e28db000 	add	fp, sp, #0
8002388c:	e24dd00c 	sub	sp, sp, #12
80023890:	e50b0008 	str	r0, [fp, #-8]
80023894:	e50b100c 	str	r1, [fp, #-12]
80023898:	e51b3008 	ldr	r3, [fp, #-8]
8002389c:	e5933000 	ldr	r3, [r3]
800238a0:	e1a02003 	mov	r2, r3
800238a4:	e51b300c 	ldr	r3, [fp, #-12]
800238a8:	e5832004 	str	r2, [r3, #4]
800238ac:	e51b3008 	ldr	r3, [fp, #-8]
800238b0:	e5932004 	ldr	r2, [r3, #4]
800238b4:	e51b300c 	ldr	r3, [fp, #-12]
800238b8:	e5832008 	str	r2, [r3, #8]
800238bc:	e51b3008 	ldr	r3, [fp, #-8]
800238c0:	e1d321f0 	ldrsh	r2, [r3, #16]
800238c4:	e51b300c 	ldr	r3, [fp, #-12]
800238c8:	e1c320b0 	strh	r2, [r3]
800238cc:	e51b3008 	ldr	r3, [fp, #-8]
800238d0:	e1d321f6 	ldrsh	r2, [r3, #22]
800238d4:	e51b300c 	ldr	r3, [fp, #-12]
800238d8:	e1c320bc 	strh	r2, [r3, #12]
800238dc:	e51b3008 	ldr	r3, [fp, #-8]
800238e0:	e5932018 	ldr	r2, [r3, #24]
800238e4:	e51b300c 	ldr	r3, [fp, #-12]
800238e8:	e5832010 	str	r2, [r3, #16]
800238ec:	e1a00000 	nop			@ (mov r0, r0)
800238f0:	e28bd000 	add	sp, fp, #0
800238f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800238f8:	e12fff1e 	bx	lr

800238fc <readi>:
800238fc:	e92d4810 	push	{r4, fp, lr}
80023900:	e28db008 	add	fp, sp, #8
80023904:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023908:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002390c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023910:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023914:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023918:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002391c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023920:	e3530003 	cmp	r3, #3
80023924:	1a00001b 	bne	80023998 <readi+0x9c>
80023928:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002392c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023930:	e3530000 	cmp	r3, #0
80023934:	ba00000a 	blt	80023964 <readi+0x68>
80023938:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002393c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023940:	e3530009 	cmp	r3, #9
80023944:	ca000006 	bgt	80023964 <readi+0x68>
80023948:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002394c:	e1d331f2 	ldrsh	r3, [r3, #18]
80023950:	e1a02003 	mov	r2, r3
80023954:	e59f3188 	ldr	r3, [pc, #392]	@ 80023ae4 <readi+0x1e8>
80023958:	e7933182 	ldr	r3, [r3, r2, lsl #3]
8002395c:	e3530000 	cmp	r3, #0
80023960:	1a000001 	bne	8002396c <readi+0x70>
80023964:	e3e03000 	mvn	r3, #0
80023968:	ea00005a 	b	80023ad8 <readi+0x1dc>
8002396c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023970:	e1d331f2 	ldrsh	r3, [r3, #18]
80023974:	e1a02003 	mov	r2, r3
80023978:	e59f3164 	ldr	r3, [pc, #356]	@ 80023ae4 <readi+0x1e8>
8002397c:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023980:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023984:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023988:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002398c:	e12fff33 	blx	r3
80023990:	e1a03000 	mov	r3, r0
80023994:	ea00004f 	b	80023ad8 <readi+0x1dc>
80023998:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002399c:	e5933018 	ldr	r3, [r3, #24]
800239a0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239a4:	e1520003 	cmp	r2, r3
800239a8:	8a000005 	bhi	800239c4 <readi+0xc8>
800239ac:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800239b4:	e0823003 	add	r3, r2, r3
800239b8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239bc:	e1520003 	cmp	r2, r3
800239c0:	9a000001 	bls	800239cc <readi+0xd0>
800239c4:	e3e03000 	mvn	r3, #0
800239c8:	ea000042 	b	80023ad8 <readi+0x1dc>
800239cc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239d0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800239d4:	e0822003 	add	r2, r2, r3
800239d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239dc:	e5933018 	ldr	r3, [r3, #24]
800239e0:	e1520003 	cmp	r2, r3
800239e4:	9a000004 	bls	800239fc <readi+0x100>
800239e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239ec:	e5932018 	ldr	r2, [r3, #24]
800239f0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800239f4:	e0423003 	sub	r3, r2, r3
800239f8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800239fc:	e3a03000 	mov	r3, #0
80023a00:	e50b3010 	str	r3, [fp, #-16]
80023a04:	ea00002e 	b	80023ac4 <readi+0x1c8>
80023a08:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a0c:	e5934000 	ldr	r4, [r3]
80023a10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a14:	e1a034a3 	lsr	r3, r3, #9
80023a18:	e1a01003 	mov	r1, r3
80023a1c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023a20:	ebfffed5 	bl	8002357c <bmap>
80023a24:	e1a03000 	mov	r3, r0
80023a28:	e1a01003 	mov	r1, r3
80023a2c:	e1a00004 	mov	r0, r4
80023a30:	ebfff437 	bl	80020b14 <bread>
80023a34:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023a38:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a3c:	e1a03b83 	lsl	r3, r3, #23
80023a40:	e1a03ba3 	lsr	r3, r3, #23
80023a44:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023a48:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023a4c:	e51b3010 	ldr	r3, [fp, #-16]
80023a50:	e0413003 	sub	r3, r1, r3
80023a54:	e1520003 	cmp	r2, r3
80023a58:	31a03002 	movcc	r3, r2
80023a5c:	21a03003 	movcs	r3, r3
80023a60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023a64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023a68:	e2832018 	add	r2, r3, #24
80023a6c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023a70:	e1a03b83 	lsl	r3, r3, #23
80023a74:	e1a03ba3 	lsr	r3, r3, #23
80023a78:	e0823003 	add	r3, r2, r3
80023a7c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023a80:	e1a01003 	mov	r1, r3
80023a84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023a88:	ebfff1ce 	bl	800201c8 <memmove>
80023a8c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023a90:	ebfff449 	bl	80020bbc <brelse>
80023a94:	e51b2010 	ldr	r2, [fp, #-16]
80023a98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023a9c:	e0823003 	add	r3, r2, r3
80023aa0:	e50b3010 	str	r3, [fp, #-16]
80023aa4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023aa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023aac:	e0823003 	add	r3, r2, r3
80023ab0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023ab4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023ab8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023abc:	e0823003 	add	r3, r2, r3
80023ac0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023ac4:	e51b2010 	ldr	r2, [fp, #-16]
80023ac8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023acc:	e1520003 	cmp	r2, r3
80023ad0:	3affffcc 	bcc	80023a08 <readi+0x10c>
80023ad4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ad8:	e1a00003 	mov	r0, r3
80023adc:	e24bd008 	sub	sp, fp, #8
80023ae0:	e8bd8810 	pop	{r4, fp, pc}
80023ae4:	800aed54 	.word	0x800aed54

80023ae8 <writei>:
80023ae8:	e92d4810 	push	{r4, fp, lr}
80023aec:	e28db008 	add	fp, sp, #8
80023af0:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023af4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023af8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023afc:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023b00:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023b04:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b08:	e1d331f0 	ldrsh	r3, [r3, #16]
80023b0c:	e3530003 	cmp	r3, #3
80023b10:	1a00001d 	bne	80023b8c <writei+0xa4>
80023b14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b18:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b1c:	e3530000 	cmp	r3, #0
80023b20:	ba00000b 	blt	80023b54 <writei+0x6c>
80023b24:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b28:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b2c:	e3530009 	cmp	r3, #9
80023b30:	ca000007 	bgt	80023b54 <writei+0x6c>
80023b34:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b38:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b3c:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023d00 <writei+0x218>
80023b40:	e1a03183 	lsl	r3, r3, #3
80023b44:	e0823003 	add	r3, r2, r3
80023b48:	e5933004 	ldr	r3, [r3, #4]
80023b4c:	e3530000 	cmp	r3, #0
80023b50:	1a000001 	bne	80023b5c <writei+0x74>
80023b54:	e3e03000 	mvn	r3, #0
80023b58:	ea000065 	b	80023cf4 <writei+0x20c>
80023b5c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b60:	e1d331f2 	ldrsh	r3, [r3, #18]
80023b64:	e59f2194 	ldr	r2, [pc, #404]	@ 80023d00 <writei+0x218>
80023b68:	e1a03183 	lsl	r3, r3, #3
80023b6c:	e0823003 	add	r3, r2, r3
80023b70:	e5933004 	ldr	r3, [r3, #4]
80023b74:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023b78:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023b7c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b80:	e12fff33 	blx	r3
80023b84:	e1a03000 	mov	r3, r0
80023b88:	ea000059 	b	80023cf4 <writei+0x20c>
80023b8c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b90:	e5933018 	ldr	r3, [r3, #24]
80023b94:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b98:	e1520003 	cmp	r2, r3
80023b9c:	8a000005 	bhi	80023bb8 <writei+0xd0>
80023ba0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ba4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ba8:	e0823003 	add	r3, r2, r3
80023bac:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bb0:	e1520003 	cmp	r2, r3
80023bb4:	9a000001 	bls	80023bc0 <writei+0xd8>
80023bb8:	e3e03000 	mvn	r3, #0
80023bbc:	ea00004c 	b	80023cf4 <writei+0x20c>
80023bc0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bc4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bc8:	e0823003 	add	r3, r2, r3
80023bcc:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023bd0:	9a000001 	bls	80023bdc <writei+0xf4>
80023bd4:	e3e03000 	mvn	r3, #0
80023bd8:	ea000045 	b	80023cf4 <writei+0x20c>
80023bdc:	e3a03000 	mov	r3, #0
80023be0:	e50b3010 	str	r3, [fp, #-16]
80023be4:	ea000030 	b	80023cac <writei+0x1c4>
80023be8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bec:	e5934000 	ldr	r4, [r3]
80023bf0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023bf4:	e1a034a3 	lsr	r3, r3, #9
80023bf8:	e1a01003 	mov	r1, r3
80023bfc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c00:	ebfffe5d 	bl	8002357c <bmap>
80023c04:	e1a03000 	mov	r3, r0
80023c08:	e1a01003 	mov	r1, r3
80023c0c:	e1a00004 	mov	r0, r4
80023c10:	ebfff3bf 	bl	80020b14 <bread>
80023c14:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023c18:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c1c:	e1a03b83 	lsl	r3, r3, #23
80023c20:	e1a03ba3 	lsr	r3, r3, #23
80023c24:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023c28:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023c2c:	e51b3010 	ldr	r3, [fp, #-16]
80023c30:	e0413003 	sub	r3, r1, r3
80023c34:	e1520003 	cmp	r2, r3
80023c38:	31a03002 	movcc	r3, r2
80023c3c:	21a03003 	movcs	r3, r3
80023c40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023c44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023c48:	e2832018 	add	r2, r3, #24
80023c4c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c50:	e1a03b83 	lsl	r3, r3, #23
80023c54:	e1a03ba3 	lsr	r3, r3, #23
80023c58:	e0823003 	add	r3, r2, r3
80023c5c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023c60:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023c64:	e1a00003 	mov	r0, r3
80023c68:	ebfff156 	bl	800201c8 <memmove>
80023c6c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023c70:	eb00024d 	bl	800245ac <log_write>
80023c74:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023c78:	ebfff3cf 	bl	80020bbc <brelse>
80023c7c:	e51b2010 	ldr	r2, [fp, #-16]
80023c80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c84:	e0823003 	add	r3, r2, r3
80023c88:	e50b3010 	str	r3, [fp, #-16]
80023c8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023c94:	e0823003 	add	r3, r2, r3
80023c98:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023c9c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ca4:	e0823003 	add	r3, r2, r3
80023ca8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023cac:	e51b2010 	ldr	r2, [fp, #-16]
80023cb0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cb4:	e1520003 	cmp	r2, r3
80023cb8:	3affffca 	bcc	80023be8 <writei+0x100>
80023cbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cc0:	e3530000 	cmp	r3, #0
80023cc4:	0a000009 	beq	80023cf0 <writei+0x208>
80023cc8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ccc:	e5933018 	ldr	r3, [r3, #24]
80023cd0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023cd4:	e1520003 	cmp	r2, r3
80023cd8:	9a000004 	bls	80023cf0 <writei+0x208>
80023cdc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ce0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ce4:	e5832018 	str	r2, [r3, #24]
80023ce8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023cec:	ebfffcbc 	bl	80022fe4 <iupdate>
80023cf0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cf4:	e1a00003 	mov	r0, r3
80023cf8:	e24bd008 	sub	sp, fp, #8
80023cfc:	e8bd8810 	pop	{r4, fp, pc}
80023d00:	800aed54 	.word	0x800aed54

80023d04 <namecmp>:
80023d04:	e92d4800 	push	{fp, lr}
80023d08:	e28db004 	add	fp, sp, #4
80023d0c:	e24dd008 	sub	sp, sp, #8
80023d10:	e50b0008 	str	r0, [fp, #-8]
80023d14:	e50b100c 	str	r1, [fp, #-12]
80023d18:	e3a0200e 	mov	r2, #14
80023d1c:	e51b100c 	ldr	r1, [fp, #-12]
80023d20:	e51b0008 	ldr	r0, [fp, #-8]
80023d24:	ebfff174 	bl	800202fc <strncmp>
80023d28:	e1a03000 	mov	r3, r0
80023d2c:	e1a00003 	mov	r0, r3
80023d30:	e24bd004 	sub	sp, fp, #4
80023d34:	e8bd8800 	pop	{fp, pc}

80023d38 <dirlookup>:
80023d38:	e92d4800 	push	{fp, lr}
80023d3c:	e28db004 	add	fp, sp, #4
80023d40:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023d44:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d48:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d4c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023d50:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d54:	e1d331f0 	ldrsh	r3, [r3, #16]
80023d58:	e3530001 	cmp	r3, #1
80023d5c:	0a000001 	beq	80023d68 <dirlookup+0x30>
80023d60:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023e38 <dirlookup+0x100>
80023d64:	ebfff764 	bl	80021afc <panic>
80023d68:	e3a03000 	mov	r3, #0
80023d6c:	e50b3008 	str	r3, [fp, #-8]
80023d70:	ea000027 	b	80023e14 <dirlookup+0xdc>
80023d74:	e24b101c 	sub	r1, fp, #28
80023d78:	e3a03010 	mov	r3, #16
80023d7c:	e51b2008 	ldr	r2, [fp, #-8]
80023d80:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d84:	ebfffedc 	bl	800238fc <readi>
80023d88:	e1a03000 	mov	r3, r0
80023d8c:	e3530010 	cmp	r3, #16
80023d90:	0a000001 	beq	80023d9c <dirlookup+0x64>
80023d94:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023e3c <dirlookup+0x104>
80023d98:	ebfff757 	bl	80021afc <panic>
80023d9c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023da0:	e3530000 	cmp	r3, #0
80023da4:	0a000016 	beq	80023e04 <dirlookup+0xcc>
80023da8:	e24b301c 	sub	r3, fp, #28
80023dac:	e2833002 	add	r3, r3, #2
80023db0:	e1a01003 	mov	r1, r3
80023db4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023db8:	ebffffd1 	bl	80023d04 <namecmp>
80023dbc:	e1a03000 	mov	r3, r0
80023dc0:	e3530000 	cmp	r3, #0
80023dc4:	1a00000f 	bne	80023e08 <dirlookup+0xd0>
80023dc8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023dcc:	e3530000 	cmp	r3, #0
80023dd0:	0a000002 	beq	80023de0 <dirlookup+0xa8>
80023dd4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023dd8:	e51b2008 	ldr	r2, [fp, #-8]
80023ddc:	e5832000 	str	r2, [r3]
80023de0:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023de4:	e50b300c 	str	r3, [fp, #-12]
80023de8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dec:	e5933000 	ldr	r3, [r3]
80023df0:	e51b100c 	ldr	r1, [fp, #-12]
80023df4:	e1a00003 	mov	r0, r3
80023df8:	ebfffcb1 	bl	800230c4 <iget>
80023dfc:	e1a03000 	mov	r3, r0
80023e00:	ea000009 	b	80023e2c <dirlookup+0xf4>
80023e04:	e1a00000 	nop			@ (mov r0, r0)
80023e08:	e51b3008 	ldr	r3, [fp, #-8]
80023e0c:	e2833010 	add	r3, r3, #16
80023e10:	e50b3008 	str	r3, [fp, #-8]
80023e14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e18:	e5933018 	ldr	r3, [r3, #24]
80023e1c:	e51b2008 	ldr	r2, [fp, #-8]
80023e20:	e1520003 	cmp	r2, r3
80023e24:	3affffd2 	bcc	80023d74 <dirlookup+0x3c>
80023e28:	e3a03000 	mov	r3, #0
80023e2c:	e1a00003 	mov	r0, r3
80023e30:	e24bd004 	sub	sp, fp, #4
80023e34:	e8bd8800 	pop	{fp, pc}
80023e38:	8002b5fc 	.word	0x8002b5fc
80023e3c:	8002b610 	.word	0x8002b610

80023e40 <dirlink>:
80023e40:	e92d4800 	push	{fp, lr}
80023e44:	e28db004 	add	fp, sp, #4
80023e48:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023e4c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023e50:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023e54:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023e58:	e3a02000 	mov	r2, #0
80023e5c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023e60:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e64:	ebffffb3 	bl	80023d38 <dirlookup>
80023e68:	e50b000c 	str	r0, [fp, #-12]
80023e6c:	e51b300c 	ldr	r3, [fp, #-12]
80023e70:	e3530000 	cmp	r3, #0
80023e74:	0a000003 	beq	80023e88 <dirlink+0x48>
80023e78:	e51b000c 	ldr	r0, [fp, #-12]
80023e7c:	ebfffd78 	bl	80023464 <iput>
80023e80:	e3e03000 	mvn	r3, #0
80023e84:	ea00002d 	b	80023f40 <dirlink+0x100>
80023e88:	e3a03000 	mov	r3, #0
80023e8c:	e50b3008 	str	r3, [fp, #-8]
80023e90:	ea00000f 	b	80023ed4 <dirlink+0x94>
80023e94:	e51b2008 	ldr	r2, [fp, #-8]
80023e98:	e24b101c 	sub	r1, fp, #28
80023e9c:	e3a03010 	mov	r3, #16
80023ea0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ea4:	ebfffe94 	bl	800238fc <readi>
80023ea8:	e1a03000 	mov	r3, r0
80023eac:	e3530010 	cmp	r3, #16
80023eb0:	0a000001 	beq	80023ebc <dirlink+0x7c>
80023eb4:	e59f0090 	ldr	r0, [pc, #144]	@ 80023f4c <dirlink+0x10c>
80023eb8:	ebfff70f 	bl	80021afc <panic>
80023ebc:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023ec0:	e3530000 	cmp	r3, #0
80023ec4:	0a000008 	beq	80023eec <dirlink+0xac>
80023ec8:	e51b3008 	ldr	r3, [fp, #-8]
80023ecc:	e2833010 	add	r3, r3, #16
80023ed0:	e50b3008 	str	r3, [fp, #-8]
80023ed4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ed8:	e5932018 	ldr	r2, [r3, #24]
80023edc:	e51b3008 	ldr	r3, [fp, #-8]
80023ee0:	e1520003 	cmp	r2, r3
80023ee4:	8affffea 	bhi	80023e94 <dirlink+0x54>
80023ee8:	ea000000 	b	80023ef0 <dirlink+0xb0>
80023eec:	e1a00000 	nop			@ (mov r0, r0)
80023ef0:	e24b301c 	sub	r3, fp, #28
80023ef4:	e2833002 	add	r3, r3, #2
80023ef8:	e3a0200e 	mov	r2, #14
80023efc:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023f00:	e1a00003 	mov	r0, r3
80023f04:	ebfff128 	bl	800203ac <strncpy>
80023f08:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023f0c:	e6ff3073 	uxth	r3, r3
80023f10:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023f14:	e51b2008 	ldr	r2, [fp, #-8]
80023f18:	e24b101c 	sub	r1, fp, #28
80023f1c:	e3a03010 	mov	r3, #16
80023f20:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f24:	ebfffeef 	bl	80023ae8 <writei>
80023f28:	e1a03000 	mov	r3, r0
80023f2c:	e3530010 	cmp	r3, #16
80023f30:	0a000001 	beq	80023f3c <dirlink+0xfc>
80023f34:	e59f0014 	ldr	r0, [pc, #20]	@ 80023f50 <dirlink+0x110>
80023f38:	ebfff6ef 	bl	80021afc <panic>
80023f3c:	e3a03000 	mov	r3, #0
80023f40:	e1a00003 	mov	r0, r3
80023f44:	e24bd004 	sub	sp, fp, #4
80023f48:	e8bd8800 	pop	{fp, pc}
80023f4c:	8002b610 	.word	0x8002b610
80023f50:	8002b620 	.word	0x8002b620

80023f54 <skipelem>:
80023f54:	e92d4800 	push	{fp, lr}
80023f58:	e28db004 	add	fp, sp, #4
80023f5c:	e24dd010 	sub	sp, sp, #16
80023f60:	e50b0010 	str	r0, [fp, #-16]
80023f64:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023f68:	ea000002 	b	80023f78 <skipelem+0x24>
80023f6c:	e51b3010 	ldr	r3, [fp, #-16]
80023f70:	e2833001 	add	r3, r3, #1
80023f74:	e50b3010 	str	r3, [fp, #-16]
80023f78:	e51b3010 	ldr	r3, [fp, #-16]
80023f7c:	e5d33000 	ldrb	r3, [r3]
80023f80:	e353002f 	cmp	r3, #47	@ 0x2f
80023f84:	0afffff8 	beq	80023f6c <skipelem+0x18>
80023f88:	e51b3010 	ldr	r3, [fp, #-16]
80023f8c:	e5d33000 	ldrb	r3, [r3]
80023f90:	e3530000 	cmp	r3, #0
80023f94:	1a000001 	bne	80023fa0 <skipelem+0x4c>
80023f98:	e3a03000 	mov	r3, #0
80023f9c:	ea00002c 	b	80024054 <skipelem+0x100>
80023fa0:	e51b3010 	ldr	r3, [fp, #-16]
80023fa4:	e50b3008 	str	r3, [fp, #-8]
80023fa8:	ea000002 	b	80023fb8 <skipelem+0x64>
80023fac:	e51b3010 	ldr	r3, [fp, #-16]
80023fb0:	e2833001 	add	r3, r3, #1
80023fb4:	e50b3010 	str	r3, [fp, #-16]
80023fb8:	e51b3010 	ldr	r3, [fp, #-16]
80023fbc:	e5d33000 	ldrb	r3, [r3]
80023fc0:	e353002f 	cmp	r3, #47	@ 0x2f
80023fc4:	0a000003 	beq	80023fd8 <skipelem+0x84>
80023fc8:	e51b3010 	ldr	r3, [fp, #-16]
80023fcc:	e5d33000 	ldrb	r3, [r3]
80023fd0:	e3530000 	cmp	r3, #0
80023fd4:	1afffff4 	bne	80023fac <skipelem+0x58>
80023fd8:	e51b2010 	ldr	r2, [fp, #-16]
80023fdc:	e51b3008 	ldr	r3, [fp, #-8]
80023fe0:	e0423003 	sub	r3, r2, r3
80023fe4:	e50b300c 	str	r3, [fp, #-12]
80023fe8:	e51b300c 	ldr	r3, [fp, #-12]
80023fec:	e353000d 	cmp	r3, #13
80023ff0:	da000004 	ble	80024008 <skipelem+0xb4>
80023ff4:	e3a0200e 	mov	r2, #14
80023ff8:	e51b1008 	ldr	r1, [fp, #-8]
80023ffc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024000:	ebfff070 	bl	800201c8 <memmove>
80024004:	ea00000d 	b	80024040 <skipelem+0xec>
80024008:	e51b300c 	ldr	r3, [fp, #-12]
8002400c:	e1a02003 	mov	r2, r3
80024010:	e51b1008 	ldr	r1, [fp, #-8]
80024014:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024018:	ebfff06a 	bl	800201c8 <memmove>
8002401c:	e51b300c 	ldr	r3, [fp, #-12]
80024020:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024024:	e0823003 	add	r3, r2, r3
80024028:	e3a02000 	mov	r2, #0
8002402c:	e5c32000 	strb	r2, [r3]
80024030:	ea000002 	b	80024040 <skipelem+0xec>
80024034:	e51b3010 	ldr	r3, [fp, #-16]
80024038:	e2833001 	add	r3, r3, #1
8002403c:	e50b3010 	str	r3, [fp, #-16]
80024040:	e51b3010 	ldr	r3, [fp, #-16]
80024044:	e5d33000 	ldrb	r3, [r3]
80024048:	e353002f 	cmp	r3, #47	@ 0x2f
8002404c:	0afffff8 	beq	80024034 <skipelem+0xe0>
80024050:	e51b3010 	ldr	r3, [fp, #-16]
80024054:	e1a00003 	mov	r0, r3
80024058:	e24bd004 	sub	sp, fp, #4
8002405c:	e8bd8800 	pop	{fp, pc}

80024060 <namex>:
80024060:	e92d4800 	push	{fp, lr}
80024064:	e28db004 	add	fp, sp, #4
80024068:	e24dd018 	sub	sp, sp, #24
8002406c:	e50b0010 	str	r0, [fp, #-16]
80024070:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024074:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024078:	e51b3010 	ldr	r3, [fp, #-16]
8002407c:	e5d33000 	ldrb	r3, [r3]
80024080:	e353002f 	cmp	r3, #47	@ 0x2f
80024084:	1a000004 	bne	8002409c <namex+0x3c>
80024088:	e3a01001 	mov	r1, #1
8002408c:	e3a00001 	mov	r0, #1
80024090:	ebfffc0b 	bl	800230c4 <iget>
80024094:	e50b0008 	str	r0, [fp, #-8]
80024098:	ea00002b 	b	8002414c <namex+0xec>
8002409c:	e59f30f0 	ldr	r3, [pc, #240]	@ 80024194 <namex+0x134>
800240a0:	e5933000 	ldr	r3, [r3]
800240a4:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800240a8:	e1a00003 	mov	r0, r3
800240ac:	ebfffc54 	bl	80023204 <idup>
800240b0:	e50b0008 	str	r0, [fp, #-8]
800240b4:	ea000024 	b	8002414c <namex+0xec>
800240b8:	e51b0008 	ldr	r0, [fp, #-8]
800240bc:	ebfffc62 	bl	8002324c <ilock>
800240c0:	e51b3008 	ldr	r3, [fp, #-8]
800240c4:	e1d331f0 	ldrsh	r3, [r3, #16]
800240c8:	e3530001 	cmp	r3, #1
800240cc:	0a000003 	beq	800240e0 <namex+0x80>
800240d0:	e51b0008 	ldr	r0, [fp, #-8]
800240d4:	ebfffd1d 	bl	80023550 <iunlockput>
800240d8:	e3a03000 	mov	r3, #0
800240dc:	ea000029 	b	80024188 <namex+0x128>
800240e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800240e4:	e3530000 	cmp	r3, #0
800240e8:	0a000007 	beq	8002410c <namex+0xac>
800240ec:	e51b3010 	ldr	r3, [fp, #-16]
800240f0:	e5d33000 	ldrb	r3, [r3]
800240f4:	e3530000 	cmp	r3, #0
800240f8:	1a000003 	bne	8002410c <namex+0xac>
800240fc:	e51b0008 	ldr	r0, [fp, #-8]
80024100:	ebfffcb5 	bl	800233dc <iunlock>
80024104:	e51b3008 	ldr	r3, [fp, #-8]
80024108:	ea00001e 	b	80024188 <namex+0x128>
8002410c:	e3a02000 	mov	r2, #0
80024110:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024114:	e51b0008 	ldr	r0, [fp, #-8]
80024118:	ebffff06 	bl	80023d38 <dirlookup>
8002411c:	e50b000c 	str	r0, [fp, #-12]
80024120:	e51b300c 	ldr	r3, [fp, #-12]
80024124:	e3530000 	cmp	r3, #0
80024128:	1a000003 	bne	8002413c <namex+0xdc>
8002412c:	e51b0008 	ldr	r0, [fp, #-8]
80024130:	ebfffd06 	bl	80023550 <iunlockput>
80024134:	e3a03000 	mov	r3, #0
80024138:	ea000012 	b	80024188 <namex+0x128>
8002413c:	e51b0008 	ldr	r0, [fp, #-8]
80024140:	ebfffd02 	bl	80023550 <iunlockput>
80024144:	e51b300c 	ldr	r3, [fp, #-12]
80024148:	e50b3008 	str	r3, [fp, #-8]
8002414c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024150:	e51b0010 	ldr	r0, [fp, #-16]
80024154:	ebffff7e 	bl	80023f54 <skipelem>
80024158:	e50b0010 	str	r0, [fp, #-16]
8002415c:	e51b3010 	ldr	r3, [fp, #-16]
80024160:	e3530000 	cmp	r3, #0
80024164:	1affffd3 	bne	800240b8 <namex+0x58>
80024168:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002416c:	e3530000 	cmp	r3, #0
80024170:	0a000003 	beq	80024184 <namex+0x124>
80024174:	e51b0008 	ldr	r0, [fp, #-8]
80024178:	ebfffcb9 	bl	80023464 <iput>
8002417c:	e3a03000 	mov	r3, #0
80024180:	ea000000 	b	80024188 <namex+0x128>
80024184:	e51b3008 	ldr	r3, [fp, #-8]
80024188:	e1a00003 	mov	r0, r3
8002418c:	e24bd004 	sub	sp, fp, #4
80024190:	e8bd8800 	pop	{fp, pc}
80024194:	800b32d4 	.word	0x800b32d4

80024198 <namei>:
80024198:	e92d4800 	push	{fp, lr}
8002419c:	e28db004 	add	fp, sp, #4
800241a0:	e24dd018 	sub	sp, sp, #24
800241a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800241a8:	e24b3014 	sub	r3, fp, #20
800241ac:	e1a02003 	mov	r2, r3
800241b0:	e3a01000 	mov	r1, #0
800241b4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800241b8:	ebffffa8 	bl	80024060 <namex>
800241bc:	e1a03000 	mov	r3, r0
800241c0:	e1a00003 	mov	r0, r3
800241c4:	e24bd004 	sub	sp, fp, #4
800241c8:	e8bd8800 	pop	{fp, pc}

800241cc <nameiparent>:
800241cc:	e92d4800 	push	{fp, lr}
800241d0:	e28db004 	add	fp, sp, #4
800241d4:	e24dd008 	sub	sp, sp, #8
800241d8:	e50b0008 	str	r0, [fp, #-8]
800241dc:	e50b100c 	str	r1, [fp, #-12]
800241e0:	e51b200c 	ldr	r2, [fp, #-12]
800241e4:	e3a01001 	mov	r1, #1
800241e8:	e51b0008 	ldr	r0, [fp, #-8]
800241ec:	ebffff9b 	bl	80024060 <namex>
800241f0:	e1a03000 	mov	r3, r0
800241f4:	e1a00003 	mov	r0, r3
800241f8:	e24bd004 	sub	sp, fp, #4
800241fc:	e8bd8800 	pop	{fp, pc}

80024200 <initlog>:
80024200:	e92d4800 	push	{fp, lr}
80024204:	e28db004 	add	fp, sp, #4
80024208:	e24dd010 	sub	sp, sp, #16
8002420c:	e59f1058 	ldr	r1, [pc, #88]	@ 8002426c <initlog+0x6c>
80024210:	e59f0058 	ldr	r0, [pc, #88]	@ 80024270 <initlog+0x70>
80024214:	eb000a0c 	bl	80026a4c <initlock>
80024218:	e24b3014 	sub	r3, fp, #20
8002421c:	e1a01003 	mov	r1, r3
80024220:	e3a00001 	mov	r0, #1
80024224:	ebfffa3c 	bl	80022b1c <readsb>
80024228:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002422c:	e51b3008 	ldr	r3, [fp, #-8]
80024230:	e0423003 	sub	r3, r2, r3
80024234:	e1a02003 	mov	r2, r3
80024238:	e59f3030 	ldr	r3, [pc, #48]	@ 80024270 <initlog+0x70>
8002423c:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024240:	e51b3008 	ldr	r3, [fp, #-8]
80024244:	e1a02003 	mov	r2, r3
80024248:	e59f3020 	ldr	r3, [pc, #32]	@ 80024270 <initlog+0x70>
8002424c:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024250:	e59f3018 	ldr	r3, [pc, #24]	@ 80024270 <initlog+0x70>
80024254:	e3a02001 	mov	r2, #1
80024258:	e5832040 	str	r2, [r3, #64]	@ 0x40
8002425c:	eb00009b 	bl	800244d0 <recover_from_log>
80024260:	e1a00000 	nop			@ (mov r0, r0)
80024264:	e24bd004 	sub	sp, fp, #4
80024268:	e8bd8800 	pop	{fp, pc}
8002426c:	8002b628 	.word	0x8002b628
80024270:	800b070c 	.word	0x800b070c

80024274 <install_trans>:
80024274:	e92d4800 	push	{fp, lr}
80024278:	e28db004 	add	fp, sp, #4
8002427c:	e24dd010 	sub	sp, sp, #16
80024280:	e3a03000 	mov	r3, #0
80024284:	e50b3008 	str	r3, [fp, #-8]
80024288:	ea000026 	b	80024328 <install_trans+0xb4>
8002428c:	e59f30b8 	ldr	r3, [pc, #184]	@ 8002434c <install_trans+0xd8>
80024290:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024294:	e1a00003 	mov	r0, r3
80024298:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002434c <install_trans+0xd8>
8002429c:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800242a0:	e51b3008 	ldr	r3, [fp, #-8]
800242a4:	e0823003 	add	r3, r2, r3
800242a8:	e2833001 	add	r3, r3, #1
800242ac:	e1a01003 	mov	r1, r3
800242b0:	ebfff217 	bl	80020b14 <bread>
800242b4:	e50b000c 	str	r0, [fp, #-12]
800242b8:	e59f308c 	ldr	r3, [pc, #140]	@ 8002434c <install_trans+0xd8>
800242bc:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800242c0:	e1a00003 	mov	r0, r3
800242c4:	e59f2080 	ldr	r2, [pc, #128]	@ 8002434c <install_trans+0xd8>
800242c8:	e51b3008 	ldr	r3, [fp, #-8]
800242cc:	e2833010 	add	r3, r3, #16
800242d0:	e1a03103 	lsl	r3, r3, #2
800242d4:	e0823003 	add	r3, r2, r3
800242d8:	e5933008 	ldr	r3, [r3, #8]
800242dc:	e1a01003 	mov	r1, r3
800242e0:	ebfff20b 	bl	80020b14 <bread>
800242e4:	e50b0010 	str	r0, [fp, #-16]
800242e8:	e51b3010 	ldr	r3, [fp, #-16]
800242ec:	e2830018 	add	r0, r3, #24
800242f0:	e51b300c 	ldr	r3, [fp, #-12]
800242f4:	e2833018 	add	r3, r3, #24
800242f8:	e3a02c02 	mov	r2, #512	@ 0x200
800242fc:	e1a01003 	mov	r1, r3
80024300:	ebffefb0 	bl	800201c8 <memmove>
80024304:	e51b0010 	ldr	r0, [fp, #-16]
80024308:	ebfff215 	bl	80020b64 <bwrite>
8002430c:	e51b000c 	ldr	r0, [fp, #-12]
80024310:	ebfff229 	bl	80020bbc <brelse>
80024314:	e51b0010 	ldr	r0, [fp, #-16]
80024318:	ebfff227 	bl	80020bbc <brelse>
8002431c:	e51b3008 	ldr	r3, [fp, #-8]
80024320:	e2833001 	add	r3, r3, #1
80024324:	e50b3008 	str	r3, [fp, #-8]
80024328:	e59f301c 	ldr	r3, [pc, #28]	@ 8002434c <install_trans+0xd8>
8002432c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024330:	e51b2008 	ldr	r2, [fp, #-8]
80024334:	e1520003 	cmp	r2, r3
80024338:	baffffd3 	blt	8002428c <install_trans+0x18>
8002433c:	e1a00000 	nop			@ (mov r0, r0)
80024340:	e1a00000 	nop			@ (mov r0, r0)
80024344:	e24bd004 	sub	sp, fp, #4
80024348:	e8bd8800 	pop	{fp, pc}
8002434c:	800b070c 	.word	0x800b070c

80024350 <read_head>:
80024350:	e92d4800 	push	{fp, lr}
80024354:	e28db004 	add	fp, sp, #4
80024358:	e24dd010 	sub	sp, sp, #16
8002435c:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024408 <read_head+0xb8>
80024360:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024364:	e1a02003 	mov	r2, r3
80024368:	e59f3098 	ldr	r3, [pc, #152]	@ 80024408 <read_head+0xb8>
8002436c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024370:	e1a01003 	mov	r1, r3
80024374:	e1a00002 	mov	r0, r2
80024378:	ebfff1e5 	bl	80020b14 <bread>
8002437c:	e50b000c 	str	r0, [fp, #-12]
80024380:	e51b300c 	ldr	r3, [fp, #-12]
80024384:	e2833018 	add	r3, r3, #24
80024388:	e50b3010 	str	r3, [fp, #-16]
8002438c:	e51b3010 	ldr	r3, [fp, #-16]
80024390:	e5933000 	ldr	r3, [r3]
80024394:	e59f206c 	ldr	r2, [pc, #108]	@ 80024408 <read_head+0xb8>
80024398:	e5823044 	str	r3, [r2, #68]	@ 0x44
8002439c:	e3a03000 	mov	r3, #0
800243a0:	e50b3008 	str	r3, [fp, #-8]
800243a4:	ea00000d 	b	800243e0 <read_head+0x90>
800243a8:	e51b2010 	ldr	r2, [fp, #-16]
800243ac:	e51b3008 	ldr	r3, [fp, #-8]
800243b0:	e1a03103 	lsl	r3, r3, #2
800243b4:	e0823003 	add	r3, r2, r3
800243b8:	e5932004 	ldr	r2, [r3, #4]
800243bc:	e59f1044 	ldr	r1, [pc, #68]	@ 80024408 <read_head+0xb8>
800243c0:	e51b3008 	ldr	r3, [fp, #-8]
800243c4:	e2833010 	add	r3, r3, #16
800243c8:	e1a03103 	lsl	r3, r3, #2
800243cc:	e0813003 	add	r3, r1, r3
800243d0:	e5832008 	str	r2, [r3, #8]
800243d4:	e51b3008 	ldr	r3, [fp, #-8]
800243d8:	e2833001 	add	r3, r3, #1
800243dc:	e50b3008 	str	r3, [fp, #-8]
800243e0:	e59f3020 	ldr	r3, [pc, #32]	@ 80024408 <read_head+0xb8>
800243e4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800243e8:	e51b2008 	ldr	r2, [fp, #-8]
800243ec:	e1520003 	cmp	r2, r3
800243f0:	baffffec 	blt	800243a8 <read_head+0x58>
800243f4:	e51b000c 	ldr	r0, [fp, #-12]
800243f8:	ebfff1ef 	bl	80020bbc <brelse>
800243fc:	e1a00000 	nop			@ (mov r0, r0)
80024400:	e24bd004 	sub	sp, fp, #4
80024404:	e8bd8800 	pop	{fp, pc}
80024408:	800b070c 	.word	0x800b070c

8002440c <write_head>:
8002440c:	e92d4800 	push	{fp, lr}
80024410:	e28db004 	add	fp, sp, #4
80024414:	e24dd010 	sub	sp, sp, #16
80024418:	e59f30ac 	ldr	r3, [pc, #172]	@ 800244cc <write_head+0xc0>
8002441c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024420:	e1a02003 	mov	r2, r3
80024424:	e59f30a0 	ldr	r3, [pc, #160]	@ 800244cc <write_head+0xc0>
80024428:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002442c:	e1a01003 	mov	r1, r3
80024430:	e1a00002 	mov	r0, r2
80024434:	ebfff1b6 	bl	80020b14 <bread>
80024438:	e50b000c 	str	r0, [fp, #-12]
8002443c:	e51b300c 	ldr	r3, [fp, #-12]
80024440:	e2833018 	add	r3, r3, #24
80024444:	e50b3010 	str	r3, [fp, #-16]
80024448:	e59f307c 	ldr	r3, [pc, #124]	@ 800244cc <write_head+0xc0>
8002444c:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024450:	e51b3010 	ldr	r3, [fp, #-16]
80024454:	e5832000 	str	r2, [r3]
80024458:	e3a03000 	mov	r3, #0
8002445c:	e50b3008 	str	r3, [fp, #-8]
80024460:	ea00000d 	b	8002449c <write_head+0x90>
80024464:	e59f2060 	ldr	r2, [pc, #96]	@ 800244cc <write_head+0xc0>
80024468:	e51b3008 	ldr	r3, [fp, #-8]
8002446c:	e2833010 	add	r3, r3, #16
80024470:	e1a03103 	lsl	r3, r3, #2
80024474:	e0823003 	add	r3, r2, r3
80024478:	e5932008 	ldr	r2, [r3, #8]
8002447c:	e51b1010 	ldr	r1, [fp, #-16]
80024480:	e51b3008 	ldr	r3, [fp, #-8]
80024484:	e1a03103 	lsl	r3, r3, #2
80024488:	e0813003 	add	r3, r1, r3
8002448c:	e5832004 	str	r2, [r3, #4]
80024490:	e51b3008 	ldr	r3, [fp, #-8]
80024494:	e2833001 	add	r3, r3, #1
80024498:	e50b3008 	str	r3, [fp, #-8]
8002449c:	e59f3028 	ldr	r3, [pc, #40]	@ 800244cc <write_head+0xc0>
800244a0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800244a4:	e51b2008 	ldr	r2, [fp, #-8]
800244a8:	e1520003 	cmp	r2, r3
800244ac:	baffffec 	blt	80024464 <write_head+0x58>
800244b0:	e51b000c 	ldr	r0, [fp, #-12]
800244b4:	ebfff1aa 	bl	80020b64 <bwrite>
800244b8:	e51b000c 	ldr	r0, [fp, #-12]
800244bc:	ebfff1be 	bl	80020bbc <brelse>
800244c0:	e1a00000 	nop			@ (mov r0, r0)
800244c4:	e24bd004 	sub	sp, fp, #4
800244c8:	e8bd8800 	pop	{fp, pc}
800244cc:	800b070c 	.word	0x800b070c

800244d0 <recover_from_log>:
800244d0:	e92d4800 	push	{fp, lr}
800244d4:	e28db004 	add	fp, sp, #4
800244d8:	ebffff9c 	bl	80024350 <read_head>
800244dc:	ebffff64 	bl	80024274 <install_trans>
800244e0:	e59f3010 	ldr	r3, [pc, #16]	@ 800244f8 <recover_from_log+0x28>
800244e4:	e3a02000 	mov	r2, #0
800244e8:	e5832044 	str	r2, [r3, #68]	@ 0x44
800244ec:	ebffffc6 	bl	8002440c <write_head>
800244f0:	e1a00000 	nop			@ (mov r0, r0)
800244f4:	e8bd8800 	pop	{fp, pc}
800244f8:	800b070c 	.word	0x800b070c

800244fc <begin_trans>:
800244fc:	e92d4800 	push	{fp, lr}
80024500:	e28db004 	add	fp, sp, #4
80024504:	e59f003c 	ldr	r0, [pc, #60]	@ 80024548 <begin_trans+0x4c>
80024508:	eb000961 	bl	80026a94 <acquire>
8002450c:	ea000002 	b	8002451c <begin_trans+0x20>
80024510:	e59f1030 	ldr	r1, [pc, #48]	@ 80024548 <begin_trans+0x4c>
80024514:	e59f002c 	ldr	r0, [pc, #44]	@ 80024548 <begin_trans+0x4c>
80024518:	eb000735 	bl	800261f4 <sleep>
8002451c:	e59f3024 	ldr	r3, [pc, #36]	@ 80024548 <begin_trans+0x4c>
80024520:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80024524:	e3530000 	cmp	r3, #0
80024528:	1afffff8 	bne	80024510 <begin_trans+0x14>
8002452c:	e59f3014 	ldr	r3, [pc, #20]	@ 80024548 <begin_trans+0x4c>
80024530:	e3a02001 	mov	r2, #1
80024534:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024538:	e59f0008 	ldr	r0, [pc, #8]	@ 80024548 <begin_trans+0x4c>
8002453c:	eb00095f 	bl	80026ac0 <release>
80024540:	e1a00000 	nop			@ (mov r0, r0)
80024544:	e8bd8800 	pop	{fp, pc}
80024548:	800b070c 	.word	0x800b070c

8002454c <commit_trans>:
8002454c:	e92d4800 	push	{fp, lr}
80024550:	e28db004 	add	fp, sp, #4
80024554:	e59f304c 	ldr	r3, [pc, #76]	@ 800245a8 <commit_trans+0x5c>
80024558:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002455c:	e3530000 	cmp	r3, #0
80024560:	da000005 	ble	8002457c <commit_trans+0x30>
80024564:	ebffffa8 	bl	8002440c <write_head>
80024568:	ebffff41 	bl	80024274 <install_trans>
8002456c:	e59f3034 	ldr	r3, [pc, #52]	@ 800245a8 <commit_trans+0x5c>
80024570:	e3a02000 	mov	r2, #0
80024574:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024578:	ebffffa3 	bl	8002440c <write_head>
8002457c:	e59f0024 	ldr	r0, [pc, #36]	@ 800245a8 <commit_trans+0x5c>
80024580:	eb000943 	bl	80026a94 <acquire>
80024584:	e59f301c 	ldr	r3, [pc, #28]	@ 800245a8 <commit_trans+0x5c>
80024588:	e3a02000 	mov	r2, #0
8002458c:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024590:	e59f0010 	ldr	r0, [pc, #16]	@ 800245a8 <commit_trans+0x5c>
80024594:	eb000796 	bl	800263f4 <wakeup>
80024598:	e59f0008 	ldr	r0, [pc, #8]	@ 800245a8 <commit_trans+0x5c>
8002459c:	eb000947 	bl	80026ac0 <release>
800245a0:	e1a00000 	nop			@ (mov r0, r0)
800245a4:	e8bd8800 	pop	{fp, pc}
800245a8:	800b070c 	.word	0x800b070c

800245ac <log_write>:
800245ac:	e92d4800 	push	{fp, lr}
800245b0:	e28db004 	add	fp, sp, #4
800245b4:	e24dd010 	sub	sp, sp, #16
800245b8:	e50b0010 	str	r0, [fp, #-16]
800245bc:	e59f3164 	ldr	r3, [pc, #356]	@ 80024728 <log_write+0x17c>
800245c0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245c4:	e3530009 	cmp	r3, #9
800245c8:	ca000006 	bgt	800245e8 <log_write+0x3c>
800245cc:	e59f3154 	ldr	r3, [pc, #340]	@ 80024728 <log_write+0x17c>
800245d0:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800245d4:	e59f314c 	ldr	r3, [pc, #332]	@ 80024728 <log_write+0x17c>
800245d8:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800245dc:	e2433001 	sub	r3, r3, #1
800245e0:	e1520003 	cmp	r2, r3
800245e4:	ba000001 	blt	800245f0 <log_write+0x44>
800245e8:	e59f013c 	ldr	r0, [pc, #316]	@ 8002472c <log_write+0x180>
800245ec:	ebfff542 	bl	80021afc <panic>
800245f0:	e59f3130 	ldr	r3, [pc, #304]	@ 80024728 <log_write+0x17c>
800245f4:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800245f8:	e3530000 	cmp	r3, #0
800245fc:	1a000001 	bne	80024608 <log_write+0x5c>
80024600:	e59f0128 	ldr	r0, [pc, #296]	@ 80024730 <log_write+0x184>
80024604:	ebfff53c 	bl	80021afc <panic>
80024608:	e3a03000 	mov	r3, #0
8002460c:	e50b3008 	str	r3, [fp, #-8]
80024610:	ea00000d 	b	8002464c <log_write+0xa0>
80024614:	e59f210c 	ldr	r2, [pc, #268]	@ 80024728 <log_write+0x17c>
80024618:	e51b3008 	ldr	r3, [fp, #-8]
8002461c:	e2833010 	add	r3, r3, #16
80024620:	e1a03103 	lsl	r3, r3, #2
80024624:	e0823003 	add	r3, r2, r3
80024628:	e5933008 	ldr	r3, [r3, #8]
8002462c:	e1a02003 	mov	r2, r3
80024630:	e51b3010 	ldr	r3, [fp, #-16]
80024634:	e5933008 	ldr	r3, [r3, #8]
80024638:	e1520003 	cmp	r2, r3
8002463c:	0a000008 	beq	80024664 <log_write+0xb8>
80024640:	e51b3008 	ldr	r3, [fp, #-8]
80024644:	e2833001 	add	r3, r3, #1
80024648:	e50b3008 	str	r3, [fp, #-8]
8002464c:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024728 <log_write+0x17c>
80024650:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024654:	e51b2008 	ldr	r2, [fp, #-8]
80024658:	e1520003 	cmp	r2, r3
8002465c:	baffffec 	blt	80024614 <log_write+0x68>
80024660:	ea000000 	b	80024668 <log_write+0xbc>
80024664:	e1a00000 	nop			@ (mov r0, r0)
80024668:	e51b3010 	ldr	r3, [fp, #-16]
8002466c:	e5933008 	ldr	r3, [r3, #8]
80024670:	e1a01003 	mov	r1, r3
80024674:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024728 <log_write+0x17c>
80024678:	e51b3008 	ldr	r3, [fp, #-8]
8002467c:	e2833010 	add	r3, r3, #16
80024680:	e1a03103 	lsl	r3, r3, #2
80024684:	e0823003 	add	r3, r2, r3
80024688:	e5831008 	str	r1, [r3, #8]
8002468c:	e51b3010 	ldr	r3, [fp, #-16]
80024690:	e5930004 	ldr	r0, [r3, #4]
80024694:	e59f308c 	ldr	r3, [pc, #140]	@ 80024728 <log_write+0x17c>
80024698:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
8002469c:	e51b3008 	ldr	r3, [fp, #-8]
800246a0:	e0823003 	add	r3, r2, r3
800246a4:	e2833001 	add	r3, r3, #1
800246a8:	e1a01003 	mov	r1, r3
800246ac:	ebfff118 	bl	80020b14 <bread>
800246b0:	e50b000c 	str	r0, [fp, #-12]
800246b4:	e51b300c 	ldr	r3, [fp, #-12]
800246b8:	e2830018 	add	r0, r3, #24
800246bc:	e51b3010 	ldr	r3, [fp, #-16]
800246c0:	e2833018 	add	r3, r3, #24
800246c4:	e3a02c02 	mov	r2, #512	@ 0x200
800246c8:	e1a01003 	mov	r1, r3
800246cc:	ebffeebd 	bl	800201c8 <memmove>
800246d0:	e51b000c 	ldr	r0, [fp, #-12]
800246d4:	ebfff122 	bl	80020b64 <bwrite>
800246d8:	e51b000c 	ldr	r0, [fp, #-12]
800246dc:	ebfff136 	bl	80020bbc <brelse>
800246e0:	e59f3040 	ldr	r3, [pc, #64]	@ 80024728 <log_write+0x17c>
800246e4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246e8:	e51b2008 	ldr	r2, [fp, #-8]
800246ec:	e1520003 	cmp	r2, r3
800246f0:	1a000004 	bne	80024708 <log_write+0x15c>
800246f4:	e59f302c 	ldr	r3, [pc, #44]	@ 80024728 <log_write+0x17c>
800246f8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246fc:	e2833001 	add	r3, r3, #1
80024700:	e59f2020 	ldr	r2, [pc, #32]	@ 80024728 <log_write+0x17c>
80024704:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024708:	e51b3010 	ldr	r3, [fp, #-16]
8002470c:	e5933000 	ldr	r3, [r3]
80024710:	e3832004 	orr	r2, r3, #4
80024714:	e51b3010 	ldr	r3, [fp, #-16]
80024718:	e5832000 	str	r2, [r3]
8002471c:	e1a00000 	nop			@ (mov r0, r0)
80024720:	e24bd004 	sub	sp, fp, #4
80024724:	e8bd8800 	pop	{fp, pc}
80024728:	800b070c 	.word	0x800b070c
8002472c:	8002b62c 	.word	0x8002b62c
80024730:	8002b644 	.word	0x8002b644

80024734 <kmain>:
80024734:	e92d4800 	push	{fp, lr}
80024738:	e28db004 	add	fp, sp, #4
8002473c:	e24dd008 	sub	sp, sp, #8
80024740:	e59f30a8 	ldr	r3, [pc, #168]	@ 800247f0 <kmain+0xbc>
80024744:	e59f20a8 	ldr	r2, [pc, #168]	@ 800247f4 <kmain+0xc0>
80024748:	e5832000 	str	r2, [r3]
8002474c:	e59f00a4 	ldr	r0, [pc, #164]	@ 800247f8 <kmain+0xc4>
80024750:	eb0019e2 	bl	8002aee0 <uart_init>
80024754:	e59f30a0 	ldr	r3, [pc, #160]	@ 800247fc <kmain+0xc8>
80024758:	e50b3008 	str	r3, [fp, #-8]
8002475c:	eb00148c 	bl	80029994 <init_vmm>
80024760:	e59f3098 	ldr	r3, [pc, #152]	@ 80024800 <kmain+0xcc>
80024764:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024768:	e2833003 	add	r3, r3, #3
8002476c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024770:	e3c33003 	bic	r3, r3, #3
80024774:	e51b1008 	ldr	r1, [fp, #-8]
80024778:	e1a00003 	mov	r0, r3
8002477c:	eb0014b8 	bl	80029a64 <kpt_freerange>
80024780:	e51b3008 	ldr	r3, [fp, #-8]
80024784:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024788:	e59f1074 	ldr	r1, [pc, #116]	@ 80024804 <kmain+0xd0>
8002478c:	e1a00003 	mov	r0, r3
80024790:	eb0014b3 	bl	80029a64 <kpt_freerange>
80024794:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024798:	e3a00601 	mov	r0, #1048576	@ 0x100000
8002479c:	eb00183b 	bl	8002a890 <paging_init>
800247a0:	ebfff184 	bl	80020db8 <kmem_init>
800247a4:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
800247a8:	e59f0054 	ldr	r0, [pc, #84]	@ 80024804 <kmain+0xd0>
800247ac:	ebfff18a 	bl	80020ddc <kmem_init2>
800247b0:	eb00137b 	bl	800295a4 <trap_init>
800247b4:	e59f004c 	ldr	r0, [pc, #76]	@ 80024808 <kmain+0xd4>
800247b8:	eb0018d4 	bl	8002ab10 <pic_init>
800247bc:	eb0019f8 	bl	8002afa4 <uart_enable_rx>
800247c0:	ebfff63d 	bl	800220bc <consoleinit>
800247c4:	eb0001c2 	bl	80024ed4 <pinit>
800247c8:	eb0001ca 	bl	80024ef8 <sinit>
800247cc:	ebfff03f 	bl	800208d0 <binit>
800247d0:	ebfff78d 	bl	8002260c <fileinit>
800247d4:	ebfff9b9 	bl	80022ec0 <iinit>
800247d8:	eb00000b 	bl	8002480c <ideinit>
800247dc:	e3a0000a 	mov	r0, #10
800247e0:	eb00195d 	bl	8002ad5c <timer_init>
800247e4:	ebffef63 	bl	80020578 <sti>
800247e8:	eb000404 	bl	80025800 <userinit>
800247ec:	eb000603 	bl	80026000 <lottery_scheduler>
800247f0:	800b085c 	.word	0x800b085c
800247f4:	800b077c 	.word	0x800b077c
800247f8:	901f1000 	.word	0x901f1000
800247fc:	800f0000 	.word	0x800f0000
80024800:	800b4000 	.word	0x800b4000
80024804:	80100000 	.word	0x80100000
80024808:	90140000 	.word	0x90140000

8002480c <ideinit>:
8002480c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024810:	e28db000 	add	fp, sp, #0
80024814:	e59f3028 	ldr	r3, [pc, #40]	@ 80024844 <ideinit+0x38>
80024818:	e59f2028 	ldr	r2, [pc, #40]	@ 80024848 <ideinit+0x3c>
8002481c:	e5832000 	str	r2, [r3]
80024820:	e59f3024 	ldr	r3, [pc, #36]	@ 8002484c <ideinit+0x40>
80024824:	e1a034a3 	lsr	r3, r3, #9
80024828:	e1a02003 	mov	r2, r3
8002482c:	e59f301c 	ldr	r3, [pc, #28]	@ 80024850 <ideinit+0x44>
80024830:	e5832000 	str	r2, [r3]
80024834:	e1a00000 	nop			@ (mov r0, r0)
80024838:	e28bd000 	add	sp, fp, #0
8002483c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024840:	e12fff1e 	bx	lr
80024844:	800b0864 	.word	0x800b0864
80024848:	8002d120 	.word	0x8002d120
8002484c:	00080000 	.word	0x00080000
80024850:	800b0860 	.word	0x800b0860

80024854 <ideintr>:
80024854:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024858:	e28db000 	add	fp, sp, #0
8002485c:	e1a00000 	nop			@ (mov r0, r0)
80024860:	e28bd000 	add	sp, fp, #0
80024864:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024868:	e12fff1e 	bx	lr

8002486c <iderw>:
8002486c:	e92d4800 	push	{fp, lr}
80024870:	e28db004 	add	fp, sp, #4
80024874:	e24dd010 	sub	sp, sp, #16
80024878:	e50b0010 	str	r0, [fp, #-16]
8002487c:	e51b3010 	ldr	r3, [fp, #-16]
80024880:	e5933000 	ldr	r3, [r3]
80024884:	e2033001 	and	r3, r3, #1
80024888:	e3530000 	cmp	r3, #0
8002488c:	1a000001 	bne	80024898 <iderw+0x2c>
80024890:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024984 <iderw+0x118>
80024894:	ebfff498 	bl	80021afc <panic>
80024898:	e51b3010 	ldr	r3, [fp, #-16]
8002489c:	e5933000 	ldr	r3, [r3]
800248a0:	e2033006 	and	r3, r3, #6
800248a4:	e3530002 	cmp	r3, #2
800248a8:	1a000001 	bne	800248b4 <iderw+0x48>
800248ac:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024988 <iderw+0x11c>
800248b0:	ebfff491 	bl	80021afc <panic>
800248b4:	e51b3010 	ldr	r3, [fp, #-16]
800248b8:	e5933004 	ldr	r3, [r3, #4]
800248bc:	e3530001 	cmp	r3, #1
800248c0:	0a000001 	beq	800248cc <iderw+0x60>
800248c4:	e59f00c0 	ldr	r0, [pc, #192]	@ 8002498c <iderw+0x120>
800248c8:	ebfff48b 	bl	80021afc <panic>
800248cc:	e51b3010 	ldr	r3, [fp, #-16]
800248d0:	e5933008 	ldr	r3, [r3, #8]
800248d4:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024990 <iderw+0x124>
800248d8:	e5922000 	ldr	r2, [r2]
800248dc:	e1530002 	cmp	r3, r2
800248e0:	3a000001 	bcc	800248ec <iderw+0x80>
800248e4:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024994 <iderw+0x128>
800248e8:	ebfff483 	bl	80021afc <panic>
800248ec:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024998 <iderw+0x12c>
800248f0:	e5932000 	ldr	r2, [r3]
800248f4:	e51b3010 	ldr	r3, [fp, #-16]
800248f8:	e5933008 	ldr	r3, [r3, #8]
800248fc:	e1a03483 	lsl	r3, r3, #9
80024900:	e0823003 	add	r3, r2, r3
80024904:	e50b3008 	str	r3, [fp, #-8]
80024908:	e51b3010 	ldr	r3, [fp, #-16]
8002490c:	e5933000 	ldr	r3, [r3]
80024910:	e2033004 	and	r3, r3, #4
80024914:	e3530000 	cmp	r3, #0
80024918:	0a00000b 	beq	8002494c <iderw+0xe0>
8002491c:	e51b3010 	ldr	r3, [fp, #-16]
80024920:	e5933000 	ldr	r3, [r3]
80024924:	e3c32004 	bic	r2, r3, #4
80024928:	e51b3010 	ldr	r3, [fp, #-16]
8002492c:	e5832000 	str	r2, [r3]
80024930:	e51b3010 	ldr	r3, [fp, #-16]
80024934:	e2833018 	add	r3, r3, #24
80024938:	e3a02c02 	mov	r2, #512	@ 0x200
8002493c:	e1a01003 	mov	r1, r3
80024940:	e51b0008 	ldr	r0, [fp, #-8]
80024944:	ebffee1f 	bl	800201c8 <memmove>
80024948:	ea000005 	b	80024964 <iderw+0xf8>
8002494c:	e51b3010 	ldr	r3, [fp, #-16]
80024950:	e2833018 	add	r3, r3, #24
80024954:	e3a02c02 	mov	r2, #512	@ 0x200
80024958:	e51b1008 	ldr	r1, [fp, #-8]
8002495c:	e1a00003 	mov	r0, r3
80024960:	ebffee18 	bl	800201c8 <memmove>
80024964:	e51b3010 	ldr	r3, [fp, #-16]
80024968:	e5933000 	ldr	r3, [r3]
8002496c:	e3832002 	orr	r2, r3, #2
80024970:	e51b3010 	ldr	r3, [fp, #-16]
80024974:	e5832000 	str	r2, [r3]
80024978:	e1a00000 	nop			@ (mov r0, r0)
8002497c:	e24bd004 	sub	sp, fp, #4
80024980:	e8bd8800 	pop	{fp, pc}
80024984:	8002b65c 	.word	0x8002b65c
80024988:	8002b670 	.word	0x8002b670
8002498c:	8002b688 	.word	0x8002b688
80024990:	800b0860 	.word	0x800b0860
80024994:	8002b6a8 	.word	0x8002b6a8
80024998:	800b0864 	.word	0x800b0864

8002499c <pipealloc>:
8002499c:	e92d4800 	push	{fp, lr}
800249a0:	e28db004 	add	fp, sp, #4
800249a4:	e24dd010 	sub	sp, sp, #16
800249a8:	e50b0010 	str	r0, [fp, #-16]
800249ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800249b0:	e3a03000 	mov	r3, #0
800249b4:	e50b3008 	str	r3, [fp, #-8]
800249b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249bc:	e3a02000 	mov	r2, #0
800249c0:	e5832000 	str	r2, [r3]
800249c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249c8:	e5932000 	ldr	r2, [r3]
800249cc:	e51b3010 	ldr	r3, [fp, #-16]
800249d0:	e5832000 	str	r2, [r3]
800249d4:	ebfff715 	bl	80022630 <filealloc>
800249d8:	e1a02000 	mov	r2, r0
800249dc:	e51b3010 	ldr	r3, [fp, #-16]
800249e0:	e5832000 	str	r2, [r3]
800249e4:	e51b3010 	ldr	r3, [fp, #-16]
800249e8:	e5933000 	ldr	r3, [r3]
800249ec:	e3530000 	cmp	r3, #0
800249f0:	0a000042 	beq	80024b00 <pipealloc+0x164>
800249f4:	ebfff70d 	bl	80022630 <filealloc>
800249f8:	e1a02000 	mov	r2, r0
800249fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a00:	e5832000 	str	r2, [r3]
80024a04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a08:	e5933000 	ldr	r3, [r3]
80024a0c:	e3530000 	cmp	r3, #0
80024a10:	0a00003a 	beq	80024b00 <pipealloc+0x164>
80024a14:	e3a00f91 	mov	r0, #580	@ 0x244
80024a18:	ebfff319 	bl	80021684 <get_order>
80024a1c:	e1a03000 	mov	r3, r0
80024a20:	e1a00003 	mov	r0, r3
80024a24:	ebfff27e 	bl	80021424 <kmalloc>
80024a28:	e50b0008 	str	r0, [fp, #-8]
80024a2c:	e51b3008 	ldr	r3, [fp, #-8]
80024a30:	e3530000 	cmp	r3, #0
80024a34:	0a000033 	beq	80024b08 <pipealloc+0x16c>
80024a38:	e51b3008 	ldr	r3, [fp, #-8]
80024a3c:	e3a02001 	mov	r2, #1
80024a40:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024a44:	e51b3008 	ldr	r3, [fp, #-8]
80024a48:	e3a02001 	mov	r2, #1
80024a4c:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024a50:	e51b3008 	ldr	r3, [fp, #-8]
80024a54:	e3a02000 	mov	r2, #0
80024a58:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024a5c:	e51b3008 	ldr	r3, [fp, #-8]
80024a60:	e3a02000 	mov	r2, #0
80024a64:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024a68:	e51b3008 	ldr	r3, [fp, #-8]
80024a6c:	e59f110c 	ldr	r1, [pc, #268]	@ 80024b80 <pipealloc+0x1e4>
80024a70:	e1a00003 	mov	r0, r3
80024a74:	eb0007f4 	bl	80026a4c <initlock>
80024a78:	e51b3010 	ldr	r3, [fp, #-16]
80024a7c:	e5933000 	ldr	r3, [r3]
80024a80:	e3a02001 	mov	r2, #1
80024a84:	e5c32000 	strb	r2, [r3]
80024a88:	e51b3010 	ldr	r3, [fp, #-16]
80024a8c:	e5933000 	ldr	r3, [r3]
80024a90:	e3a02001 	mov	r2, #1
80024a94:	e5c32008 	strb	r2, [r3, #8]
80024a98:	e51b3010 	ldr	r3, [fp, #-16]
80024a9c:	e5933000 	ldr	r3, [r3]
80024aa0:	e3a02000 	mov	r2, #0
80024aa4:	e5c32009 	strb	r2, [r3, #9]
80024aa8:	e51b3010 	ldr	r3, [fp, #-16]
80024aac:	e5933000 	ldr	r3, [r3]
80024ab0:	e51b2008 	ldr	r2, [fp, #-8]
80024ab4:	e583200c 	str	r2, [r3, #12]
80024ab8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024abc:	e5933000 	ldr	r3, [r3]
80024ac0:	e3a02001 	mov	r2, #1
80024ac4:	e5c32000 	strb	r2, [r3]
80024ac8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024acc:	e5933000 	ldr	r3, [r3]
80024ad0:	e3a02000 	mov	r2, #0
80024ad4:	e5c32008 	strb	r2, [r3, #8]
80024ad8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024adc:	e5933000 	ldr	r3, [r3]
80024ae0:	e3a02001 	mov	r2, #1
80024ae4:	e5c32009 	strb	r2, [r3, #9]
80024ae8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024aec:	e5933000 	ldr	r3, [r3]
80024af0:	e51b2008 	ldr	r2, [fp, #-8]
80024af4:	e583200c 	str	r2, [r3, #12]
80024af8:	e3a03000 	mov	r3, #0
80024afc:	ea00001c 	b	80024b74 <pipealloc+0x1d8>
80024b00:	e1a00000 	nop			@ (mov r0, r0)
80024b04:	ea000000 	b	80024b0c <pipealloc+0x170>
80024b08:	e1a00000 	nop			@ (mov r0, r0)
80024b0c:	e51b3008 	ldr	r3, [fp, #-8]
80024b10:	e3530000 	cmp	r3, #0
80024b14:	0a000005 	beq	80024b30 <pipealloc+0x194>
80024b18:	e3a00f91 	mov	r0, #580	@ 0x244
80024b1c:	ebfff2d8 	bl	80021684 <get_order>
80024b20:	e1a03000 	mov	r3, r0
80024b24:	e1a01003 	mov	r1, r3
80024b28:	e51b0008 	ldr	r0, [fp, #-8]
80024b2c:	ebfff293 	bl	80021580 <kfree>
80024b30:	e51b3010 	ldr	r3, [fp, #-16]
80024b34:	e5933000 	ldr	r3, [r3]
80024b38:	e3530000 	cmp	r3, #0
80024b3c:	0a000003 	beq	80024b50 <pipealloc+0x1b4>
80024b40:	e51b3010 	ldr	r3, [fp, #-16]
80024b44:	e5933000 	ldr	r3, [r3]
80024b48:	e1a00003 	mov	r0, r3
80024b4c:	ebfff6f3 	bl	80022720 <fileclose>
80024b50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b54:	e5933000 	ldr	r3, [r3]
80024b58:	e3530000 	cmp	r3, #0
80024b5c:	0a000003 	beq	80024b70 <pipealloc+0x1d4>
80024b60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024b64:	e5933000 	ldr	r3, [r3]
80024b68:	e1a00003 	mov	r0, r3
80024b6c:	ebfff6eb 	bl	80022720 <fileclose>
80024b70:	e3e03000 	mvn	r3, #0
80024b74:	e1a00003 	mov	r0, r3
80024b78:	e24bd004 	sub	sp, fp, #4
80024b7c:	e8bd8800 	pop	{fp, pc}
80024b80:	8002b6c4 	.word	0x8002b6c4

80024b84 <pipeclose>:
80024b84:	e92d4800 	push	{fp, lr}
80024b88:	e28db004 	add	fp, sp, #4
80024b8c:	e24dd008 	sub	sp, sp, #8
80024b90:	e50b0008 	str	r0, [fp, #-8]
80024b94:	e50b100c 	str	r1, [fp, #-12]
80024b98:	e51b3008 	ldr	r3, [fp, #-8]
80024b9c:	e1a00003 	mov	r0, r3
80024ba0:	eb0007bb 	bl	80026a94 <acquire>
80024ba4:	e51b300c 	ldr	r3, [fp, #-12]
80024ba8:	e3530000 	cmp	r3, #0
80024bac:	0a000007 	beq	80024bd0 <pipeclose+0x4c>
80024bb0:	e51b3008 	ldr	r3, [fp, #-8]
80024bb4:	e3a02000 	mov	r2, #0
80024bb8:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024bbc:	e51b3008 	ldr	r3, [fp, #-8]
80024bc0:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024bc4:	e1a00003 	mov	r0, r3
80024bc8:	eb000609 	bl	800263f4 <wakeup>
80024bcc:	ea000006 	b	80024bec <pipeclose+0x68>
80024bd0:	e51b3008 	ldr	r3, [fp, #-8]
80024bd4:	e3a02000 	mov	r2, #0
80024bd8:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024bdc:	e51b3008 	ldr	r3, [fp, #-8]
80024be0:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024be4:	e1a00003 	mov	r0, r3
80024be8:	eb000601 	bl	800263f4 <wakeup>
80024bec:	e51b3008 	ldr	r3, [fp, #-8]
80024bf0:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024bf4:	e3530000 	cmp	r3, #0
80024bf8:	1a00000d 	bne	80024c34 <pipeclose+0xb0>
80024bfc:	e51b3008 	ldr	r3, [fp, #-8]
80024c00:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024c04:	e3530000 	cmp	r3, #0
80024c08:	1a000009 	bne	80024c34 <pipeclose+0xb0>
80024c0c:	e51b3008 	ldr	r3, [fp, #-8]
80024c10:	e1a00003 	mov	r0, r3
80024c14:	eb0007a9 	bl	80026ac0 <release>
80024c18:	e3a00f91 	mov	r0, #580	@ 0x244
80024c1c:	ebfff298 	bl	80021684 <get_order>
80024c20:	e1a03000 	mov	r3, r0
80024c24:	e1a01003 	mov	r1, r3
80024c28:	e51b0008 	ldr	r0, [fp, #-8]
80024c2c:	ebfff253 	bl	80021580 <kfree>
80024c30:	ea000003 	b	80024c44 <pipeclose+0xc0>
80024c34:	e51b3008 	ldr	r3, [fp, #-8]
80024c38:	e1a00003 	mov	r0, r3
80024c3c:	eb00079f 	bl	80026ac0 <release>
80024c40:	e1a00000 	nop			@ (mov r0, r0)
80024c44:	e1a00000 	nop			@ (mov r0, r0)
80024c48:	e24bd004 	sub	sp, fp, #4
80024c4c:	e8bd8800 	pop	{fp, pc}

80024c50 <pipewrite>:
80024c50:	e92d4800 	push	{fp, lr}
80024c54:	e28db004 	add	fp, sp, #4
80024c58:	e24dd018 	sub	sp, sp, #24
80024c5c:	e50b0010 	str	r0, [fp, #-16]
80024c60:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024c64:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024c68:	e51b3010 	ldr	r3, [fp, #-16]
80024c6c:	e1a00003 	mov	r0, r3
80024c70:	eb000787 	bl	80026a94 <acquire>
80024c74:	e3a03000 	mov	r3, #0
80024c78:	e50b3008 	str	r3, [fp, #-8]
80024c7c:	ea00002b 	b	80024d30 <pipewrite+0xe0>
80024c80:	e51b3010 	ldr	r3, [fp, #-16]
80024c84:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024c88:	e3530000 	cmp	r3, #0
80024c8c:	1a000004 	bne	80024ca4 <pipewrite+0x54>
80024c90:	e51b3010 	ldr	r3, [fp, #-16]
80024c94:	e1a00003 	mov	r0, r3
80024c98:	eb000788 	bl	80026ac0 <release>
80024c9c:	e3e03000 	mvn	r3, #0
80024ca0:	ea00002e 	b	80024d60 <pipewrite+0x110>
80024ca4:	e51b3010 	ldr	r3, [fp, #-16]
80024ca8:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024cac:	e1a00003 	mov	r0, r3
80024cb0:	eb0005cf 	bl	800263f4 <wakeup>
80024cb4:	e51b3010 	ldr	r3, [fp, #-16]
80024cb8:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024cbc:	e51b2010 	ldr	r2, [fp, #-16]
80024cc0:	e1a01002 	mov	r1, r2
80024cc4:	e1a00003 	mov	r0, r3
80024cc8:	eb000549 	bl	800261f4 <sleep>
80024ccc:	e51b3010 	ldr	r3, [fp, #-16]
80024cd0:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024cd4:	e51b3010 	ldr	r3, [fp, #-16]
80024cd8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024cdc:	e2833c02 	add	r3, r3, #512	@ 0x200
80024ce0:	e1520003 	cmp	r2, r3
80024ce4:	0affffe5 	beq	80024c80 <pipewrite+0x30>
80024ce8:	e51b3008 	ldr	r3, [fp, #-8]
80024cec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024cf0:	e0822003 	add	r2, r2, r3
80024cf4:	e51b3010 	ldr	r3, [fp, #-16]
80024cf8:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024cfc:	e2830001 	add	r0, r3, #1
80024d00:	e51b1010 	ldr	r1, [fp, #-16]
80024d04:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024d08:	e1a03b83 	lsl	r3, r3, #23
80024d0c:	e1a03ba3 	lsr	r3, r3, #23
80024d10:	e5d21000 	ldrb	r1, [r2]
80024d14:	e51b2010 	ldr	r2, [fp, #-16]
80024d18:	e0823003 	add	r3, r2, r3
80024d1c:	e1a02001 	mov	r2, r1
80024d20:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024d24:	e51b3008 	ldr	r3, [fp, #-8]
80024d28:	e2833001 	add	r3, r3, #1
80024d2c:	e50b3008 	str	r3, [fp, #-8]
80024d30:	e51b2008 	ldr	r2, [fp, #-8]
80024d34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d38:	e1520003 	cmp	r2, r3
80024d3c:	baffffe2 	blt	80024ccc <pipewrite+0x7c>
80024d40:	e51b3010 	ldr	r3, [fp, #-16]
80024d44:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d48:	e1a00003 	mov	r0, r3
80024d4c:	eb0005a8 	bl	800263f4 <wakeup>
80024d50:	e51b3010 	ldr	r3, [fp, #-16]
80024d54:	e1a00003 	mov	r0, r3
80024d58:	eb000758 	bl	80026ac0 <release>
80024d5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d60:	e1a00003 	mov	r0, r3
80024d64:	e24bd004 	sub	sp, fp, #4
80024d68:	e8bd8800 	pop	{fp, pc}

80024d6c <piperead>:
80024d6c:	e92d4800 	push	{fp, lr}
80024d70:	e28db004 	add	fp, sp, #4
80024d74:	e24dd018 	sub	sp, sp, #24
80024d78:	e50b0010 	str	r0, [fp, #-16]
80024d7c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024d80:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024d84:	e51b3010 	ldr	r3, [fp, #-16]
80024d88:	e1a00003 	mov	r0, r3
80024d8c:	eb000740 	bl	80026a94 <acquire>
80024d90:	ea00000f 	b	80024dd4 <piperead+0x68>
80024d94:	e59f310c 	ldr	r3, [pc, #268]	@ 80024ea8 <piperead+0x13c>
80024d98:	e5933000 	ldr	r3, [r3]
80024d9c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024da0:	e3530000 	cmp	r3, #0
80024da4:	0a000004 	beq	80024dbc <piperead+0x50>
80024da8:	e51b3010 	ldr	r3, [fp, #-16]
80024dac:	e1a00003 	mov	r0, r3
80024db0:	eb000742 	bl	80026ac0 <release>
80024db4:	e3e03000 	mvn	r3, #0
80024db8:	ea000037 	b	80024e9c <piperead+0x130>
80024dbc:	e51b3010 	ldr	r3, [fp, #-16]
80024dc0:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024dc4:	e51b2010 	ldr	r2, [fp, #-16]
80024dc8:	e1a01002 	mov	r1, r2
80024dcc:	e1a00003 	mov	r0, r3
80024dd0:	eb000507 	bl	800261f4 <sleep>
80024dd4:	e51b3010 	ldr	r3, [fp, #-16]
80024dd8:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024ddc:	e51b3010 	ldr	r3, [fp, #-16]
80024de0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024de4:	e1520003 	cmp	r2, r3
80024de8:	1a000003 	bne	80024dfc <piperead+0x90>
80024dec:	e51b3010 	ldr	r3, [fp, #-16]
80024df0:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024df4:	e3530000 	cmp	r3, #0
80024df8:	1affffe5 	bne	80024d94 <piperead+0x28>
80024dfc:	e3a03000 	mov	r3, #0
80024e00:	e50b3008 	str	r3, [fp, #-8]
80024e04:	ea000016 	b	80024e64 <piperead+0xf8>
80024e08:	e51b3010 	ldr	r3, [fp, #-16]
80024e0c:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024e10:	e51b3010 	ldr	r3, [fp, #-16]
80024e14:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024e18:	e1520003 	cmp	r2, r3
80024e1c:	0a000015 	beq	80024e78 <piperead+0x10c>
80024e20:	e51b3010 	ldr	r3, [fp, #-16]
80024e24:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024e28:	e2831001 	add	r1, r3, #1
80024e2c:	e51b2010 	ldr	r2, [fp, #-16]
80024e30:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024e34:	e1a03b83 	lsl	r3, r3, #23
80024e38:	e1a03ba3 	lsr	r3, r3, #23
80024e3c:	e51b2008 	ldr	r2, [fp, #-8]
80024e40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024e44:	e0812002 	add	r2, r1, r2
80024e48:	e51b1010 	ldr	r1, [fp, #-16]
80024e4c:	e0813003 	add	r3, r1, r3
80024e50:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024e54:	e5c23000 	strb	r3, [r2]
80024e58:	e51b3008 	ldr	r3, [fp, #-8]
80024e5c:	e2833001 	add	r3, r3, #1
80024e60:	e50b3008 	str	r3, [fp, #-8]
80024e64:	e51b2008 	ldr	r2, [fp, #-8]
80024e68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024e6c:	e1520003 	cmp	r2, r3
80024e70:	baffffe4 	blt	80024e08 <piperead+0x9c>
80024e74:	ea000000 	b	80024e7c <piperead+0x110>
80024e78:	e1a00000 	nop			@ (mov r0, r0)
80024e7c:	e51b3010 	ldr	r3, [fp, #-16]
80024e80:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024e84:	e1a00003 	mov	r0, r3
80024e88:	eb000559 	bl	800263f4 <wakeup>
80024e8c:	e51b3010 	ldr	r3, [fp, #-16]
80024e90:	e1a00003 	mov	r0, r3
80024e94:	eb000709 	bl	80026ac0 <release>
80024e98:	e51b3008 	ldr	r3, [fp, #-8]
80024e9c:	e1a00003 	mov	r0, r3
80024ea0:	e24bd004 	sub	sp, fp, #4
80024ea4:	e8bd8800 	pop	{fp, pc}
80024ea8:	800b32d4 	.word	0x800b32d4

80024eac <v2p>:
80024eac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024eb0:	e28db000 	add	fp, sp, #0
80024eb4:	e24dd00c 	sub	sp, sp, #12
80024eb8:	e50b0008 	str	r0, [fp, #-8]
80024ebc:	e51b3008 	ldr	r3, [fp, #-8]
80024ec0:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80024ec4:	e1a00003 	mov	r0, r3
80024ec8:	e28bd000 	add	sp, fp, #0
80024ecc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024ed0:	e12fff1e 	bx	lr

80024ed4 <pinit>:
80024ed4:	e92d4800 	push	{fp, lr}
80024ed8:	e28db004 	add	fp, sp, #4
80024edc:	e59f100c 	ldr	r1, [pc, #12]	@ 80024ef0 <pinit+0x1c>
80024ee0:	e59f000c 	ldr	r0, [pc, #12]	@ 80024ef4 <pinit+0x20>
80024ee4:	eb0006d8 	bl	80026a4c <initlock>
80024ee8:	e1a00000 	nop			@ (mov r0, r0)
80024eec:	e8bd8800 	pop	{fp, pc}
80024ef0:	8002b6cc 	.word	0x8002b6cc
80024ef4:	800b0d9c 	.word	0x800b0d9c

80024ef8 <sinit>:
80024ef8:	e92d4800 	push	{fp, lr}
80024efc:	e28db004 	add	fp, sp, #4
80024f00:	e59f100c 	ldr	r1, [pc, #12]	@ 80024f14 <sinit+0x1c>
80024f04:	e59f000c 	ldr	r0, [pc, #12]	@ 80024f18 <sinit+0x20>
80024f08:	eb0006cf 	bl	80026a4c <initlock>
80024f0c:	e1a00000 	nop			@ (mov r0, r0)
80024f10:	e8bd8800 	pop	{fp, pc}
80024f14:	8002b6d4 	.word	0x8002b6d4
80024f18:	800b0868 	.word	0x800b0868

80024f1c <rand>:
80024f1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024f20:	e28db000 	add	fp, sp, #0
80024f24:	e59f3034 	ldr	r3, [pc, #52]	@ 80024f60 <rand+0x44>
80024f28:	e5933000 	ldr	r3, [r3]
80024f2c:	e59f2030 	ldr	r2, [pc, #48]	@ 80024f64 <rand+0x48>
80024f30:	e0030392 	mul	r3, r2, r3
80024f34:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80024f38:	e2833039 	add	r3, r3, #57	@ 0x39
80024f3c:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80024f40:	e59f2018 	ldr	r2, [pc, #24]	@ 80024f60 <rand+0x44>
80024f44:	e5823000 	str	r3, [r2]
80024f48:	e59f3010 	ldr	r3, [pc, #16]	@ 80024f60 <rand+0x44>
80024f4c:	e5933000 	ldr	r3, [r3]
80024f50:	e1a00003 	mov	r0, r3
80024f54:	e28bd000 	add	sp, fp, #0
80024f58:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024f5c:	e12fff1e 	bx	lr
80024f60:	800b32d8 	.word	0x800b32d8
80024f64:	41c64e6d 	.word	0x41c64e6d

80024f68 <getIndexStat>:
80024f68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024f6c:	e28db000 	add	fp, sp, #0
80024f70:	e24dd014 	sub	sp, sp, #20
80024f74:	e50b0010 	str	r0, [fp, #-16]
80024f78:	e3a03000 	mov	r3, #0
80024f7c:	e50b3008 	str	r3, [fp, #-8]
80024f80:	ea000015 	b	80024fdc <getIndexStat+0x74>
80024f84:	e59f2070 	ldr	r2, [pc, #112]	@ 80024ffc <getIndexStat+0x94>
80024f88:	e51b3008 	ldr	r3, [fp, #-8]
80024f8c:	e283300c 	add	r3, r3, #12
80024f90:	e1a03103 	lsl	r3, r3, #2
80024f94:	e0823003 	add	r3, r2, r3
80024f98:	e5933004 	ldr	r3, [r3, #4]
80024f9c:	e3530001 	cmp	r3, #1
80024fa0:	1a00000a 	bne	80024fd0 <getIndexStat+0x68>
80024fa4:	e59f2050 	ldr	r2, [pc, #80]	@ 80024ffc <getIndexStat+0x94>
80024fa8:	e51b3008 	ldr	r3, [fp, #-8]
80024fac:	e283304c 	add	r3, r3, #76	@ 0x4c
80024fb0:	e1a03103 	lsl	r3, r3, #2
80024fb4:	e0823003 	add	r3, r2, r3
80024fb8:	e5933004 	ldr	r3, [r3, #4]
80024fbc:	e51b2010 	ldr	r2, [fp, #-16]
80024fc0:	e1520003 	cmp	r2, r3
80024fc4:	1a000001 	bne	80024fd0 <getIndexStat+0x68>
80024fc8:	e51b3008 	ldr	r3, [fp, #-8]
80024fcc:	ea000006 	b	80024fec <getIndexStat+0x84>
80024fd0:	e51b3008 	ldr	r3, [fp, #-8]
80024fd4:	e2833001 	add	r3, r3, #1
80024fd8:	e50b3008 	str	r3, [fp, #-8]
80024fdc:	e51b3008 	ldr	r3, [fp, #-8]
80024fe0:	e353003f 	cmp	r3, #63	@ 0x3f
80024fe4:	daffffe6 	ble	80024f84 <getIndexStat+0x1c>
80024fe8:	e3e03000 	mvn	r3, #0
80024fec:	e1a00003 	mov	r0, r3
80024ff0:	e28bd000 	add	sp, fp, #0
80024ff4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024ff8:	e12fff1e 	bx	lr
80024ffc:	800b0868 	.word	0x800b0868

80025000 <procStatRemover>:
80025000:	e92d4800 	push	{fp, lr}
80025004:	e28db004 	add	fp, sp, #4
80025008:	e24dd010 	sub	sp, sp, #16
8002500c:	e50b0010 	str	r0, [fp, #-16]
80025010:	e59f0050 	ldr	r0, [pc, #80]	@ 80025068 <procStatRemover+0x68>
80025014:	eb00069e 	bl	80026a94 <acquire>
80025018:	e51b0010 	ldr	r0, [fp, #-16]
8002501c:	ebffffd1 	bl	80024f68 <getIndexStat>
80025020:	e50b0008 	str	r0, [fp, #-8]
80025024:	e51b3008 	ldr	r3, [fp, #-8]
80025028:	e3730001 	cmn	r3, #1
8002502c:	1a000001 	bne	80025038 <procStatRemover+0x38>
80025030:	e59f0034 	ldr	r0, [pc, #52]	@ 8002506c <procStatRemover+0x6c>
80025034:	ebfff2b0 	bl	80021afc <panic>
80025038:	e59f2028 	ldr	r2, [pc, #40]	@ 80025068 <procStatRemover+0x68>
8002503c:	e51b3008 	ldr	r3, [fp, #-8]
80025040:	e283300c 	add	r3, r3, #12
80025044:	e1a03103 	lsl	r3, r3, #2
80025048:	e0823003 	add	r3, r2, r3
8002504c:	e3a02000 	mov	r2, #0
80025050:	e5832004 	str	r2, [r3, #4]
80025054:	e59f000c 	ldr	r0, [pc, #12]	@ 80025068 <procStatRemover+0x68>
80025058:	eb000698 	bl	80026ac0 <release>
8002505c:	e1a00000 	nop			@ (mov r0, r0)
80025060:	e24bd004 	sub	sp, fp, #4
80025064:	e8bd8800 	pop	{fp, pc}
80025068:	800b0868 	.word	0x800b0868
8002506c:	8002b6dc 	.word	0x8002b6dc

80025070 <hold_lottery>:
80025070:	e92d4800 	push	{fp, lr}
80025074:	e28db004 	add	fp, sp, #4
80025078:	e24dd020 	sub	sp, sp, #32
8002507c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025080:	ebffffa5 	bl	80024f1c <rand>
80025084:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80025088:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002508c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025090:	e1a01002 	mov	r1, r2
80025094:	e1a00003 	mov	r0, r3
80025098:	eb00184d 	bl	8002b1d4 <__aeabi_uidivmod>
8002509c:	e1a03001 	mov	r3, r1
800250a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800250a4:	e3a03000 	mov	r3, #0
800250a8:	e50b3008 	str	r3, [fp, #-8]
800250ac:	e3a03000 	mov	r3, #0
800250b0:	e50b3010 	str	r3, [fp, #-16]
800250b4:	e59f3200 	ldr	r3, [pc, #512]	@ 800252bc <hold_lottery+0x24c>
800250b8:	e50b300c 	str	r3, [fp, #-12]
800250bc:	ea000076 	b	8002529c <hold_lottery+0x22c>
800250c0:	e51b300c 	ldr	r3, [fp, #-12]
800250c4:	e5d3300c 	ldrb	r3, [r3, #12]
800250c8:	e3530002 	cmp	r3, #2
800250cc:	1a00001b 	bne	80025140 <hold_lottery+0xd0>
800250d0:	e51b300c 	ldr	r3, [fp, #-12]
800250d4:	e59f21e0 	ldr	r2, [pc, #480]	@ 800252bc <hold_lottery+0x24c>
800250d8:	e0433002 	sub	r3, r3, r2
800250dc:	e1a02143 	asr	r2, r3, #2
800250e0:	e1a03002 	mov	r3, r2
800250e4:	e1a03083 	lsl	r3, r3, #1
800250e8:	e0833002 	add	r3, r3, r2
800250ec:	e1a01183 	lsl	r1, r3, #3
800250f0:	e0833001 	add	r3, r3, r1
800250f4:	e1a03103 	lsl	r3, r3, #2
800250f8:	e0833002 	add	r3, r3, r2
800250fc:	e1a02303 	lsl	r2, r3, #6
80025100:	e0833002 	add	r3, r3, r2
80025104:	e1a02903 	lsl	r2, r3, #18
80025108:	e0422003 	sub	r2, r2, r3
8002510c:	e2623000 	rsb	r3, r2, #0
80025110:	e1a02003 	mov	r2, r3
80025114:	e59f11a4 	ldr	r1, [pc, #420]	@ 800252c0 <hold_lottery+0x250>
80025118:	e2823f43 	add	r3, r2, #268	@ 0x10c
8002511c:	e1a03103 	lsl	r3, r3, #2
80025120:	e0813003 	add	r3, r1, r3
80025124:	e5933004 	ldr	r3, [r3, #4]
80025128:	e2831001 	add	r1, r3, #1
8002512c:	e59f018c 	ldr	r0, [pc, #396]	@ 800252c0 <hold_lottery+0x250>
80025130:	e2823f43 	add	r3, r2, #268	@ 0x10c
80025134:	e1a03103 	lsl	r3, r3, #2
80025138:	e0803003 	add	r3, r0, r3
8002513c:	e5831004 	str	r1, [r3, #4]
80025140:	e51b300c 	ldr	r3, [fp, #-12]
80025144:	e5d3300c 	ldrb	r3, [r3, #12]
80025148:	e3530003 	cmp	r3, #3
8002514c:	1a00004e 	bne	8002528c <hold_lottery+0x21c>
80025150:	e51b300c 	ldr	r3, [fp, #-12]
80025154:	e59f2160 	ldr	r2, [pc, #352]	@ 800252bc <hold_lottery+0x24c>
80025158:	e0433002 	sub	r3, r3, r2
8002515c:	e1a02143 	asr	r2, r3, #2
80025160:	e1a03002 	mov	r3, r2
80025164:	e1a03083 	lsl	r3, r3, #1
80025168:	e0833002 	add	r3, r3, r2
8002516c:	e1a01183 	lsl	r1, r3, #3
80025170:	e0833001 	add	r3, r3, r1
80025174:	e1a03103 	lsl	r3, r3, #2
80025178:	e0833002 	add	r3, r3, r2
8002517c:	e1a02303 	lsl	r2, r3, #6
80025180:	e0833002 	add	r3, r3, r2
80025184:	e1a02903 	lsl	r2, r3, #18
80025188:	e0422003 	sub	r2, r2, r3
8002518c:	e2623000 	rsb	r3, r2, #0
80025190:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025194:	e59f2124 	ldr	r2, [pc, #292]	@ 800252c0 <hold_lottery+0x250>
80025198:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002519c:	e283308c 	add	r3, r3, #140	@ 0x8c
800251a0:	e1a03103 	lsl	r3, r3, #2
800251a4:	e0823003 	add	r3, r2, r3
800251a8:	e5933004 	ldr	r3, [r3, #4]
800251ac:	e51b2008 	ldr	r2, [fp, #-8]
800251b0:	e0823003 	add	r3, r2, r3
800251b4:	e50b3008 	str	r3, [fp, #-8]
800251b8:	e59f2100 	ldr	r2, [pc, #256]	@ 800252c0 <hold_lottery+0x250>
800251bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800251c0:	e2833f43 	add	r3, r3, #268	@ 0x10c
800251c4:	e1a03103 	lsl	r3, r3, #2
800251c8:	e0823003 	add	r3, r2, r3
800251cc:	e5933004 	ldr	r3, [r3, #4]
800251d0:	e3530000 	cmp	r3, #0
800251d4:	da000015 	ble	80025230 <hold_lottery+0x1c0>
800251d8:	e59f20e0 	ldr	r2, [pc, #224]	@ 800252c0 <hold_lottery+0x250>
800251dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800251e0:	e283308c 	add	r3, r3, #140	@ 0x8c
800251e4:	e1a03103 	lsl	r3, r3, #2
800251e8:	e0823003 	add	r3, r2, r3
800251ec:	e5933004 	ldr	r3, [r3, #4]
800251f0:	e51b2008 	ldr	r2, [fp, #-8]
800251f4:	e0823003 	add	r3, r2, r3
800251f8:	e50b3008 	str	r3, [fp, #-8]
800251fc:	e59f20bc 	ldr	r2, [pc, #188]	@ 800252c0 <hold_lottery+0x250>
80025200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025204:	e2833f43 	add	r3, r3, #268	@ 0x10c
80025208:	e1a03103 	lsl	r3, r3, #2
8002520c:	e0823003 	add	r3, r2, r3
80025210:	e5933004 	ldr	r3, [r3, #4]
80025214:	e2432001 	sub	r2, r3, #1
80025218:	e59f10a0 	ldr	r1, [pc, #160]	@ 800252c0 <hold_lottery+0x250>
8002521c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025220:	e2833f43 	add	r3, r3, #268	@ 0x10c
80025224:	e1a03103 	lsl	r3, r3, #2
80025228:	e0813003 	add	r3, r1, r3
8002522c:	e5832004 	str	r2, [r3, #4]
80025230:	e51b3008 	ldr	r3, [fp, #-8]
80025234:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80025238:	e1520003 	cmp	r2, r3
8002523c:	2a000013 	bcs	80025290 <hold_lottery+0x220>
80025240:	e51b3010 	ldr	r3, [fp, #-16]
80025244:	e3530000 	cmp	r3, #0
80025248:	1a000010 	bne	80025290 <hold_lottery+0x220>
8002524c:	e59f206c 	ldr	r2, [pc, #108]	@ 800252c0 <hold_lottery+0x250>
80025250:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025254:	e28330cc 	add	r3, r3, #204	@ 0xcc
80025258:	e1a03103 	lsl	r3, r3, #2
8002525c:	e0823003 	add	r3, r2, r3
80025260:	e5933004 	ldr	r3, [r3, #4]
80025264:	e2832001 	add	r2, r3, #1
80025268:	e59f1050 	ldr	r1, [pc, #80]	@ 800252c0 <hold_lottery+0x250>
8002526c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025270:	e28330cc 	add	r3, r3, #204	@ 0xcc
80025274:	e1a03103 	lsl	r3, r3, #2
80025278:	e0813003 	add	r3, r1, r3
8002527c:	e5832004 	str	r2, [r3, #4]
80025280:	e51b300c 	ldr	r3, [fp, #-12]
80025284:	e50b3010 	str	r3, [fp, #-16]
80025288:	ea000000 	b	80025290 <hold_lottery+0x220>
8002528c:	e1a00000 	nop			@ (mov r0, r0)
80025290:	e51b300c 	ldr	r3, [fp, #-12]
80025294:	e2833094 	add	r3, r3, #148	@ 0x94
80025298:	e50b300c 	str	r3, [fp, #-12]
8002529c:	e51b300c 	ldr	r3, [fp, #-12]
800252a0:	e59f201c 	ldr	r2, [pc, #28]	@ 800252c4 <hold_lottery+0x254>
800252a4:	e1530002 	cmp	r3, r2
800252a8:	3affff84 	bcc	800250c0 <hold_lottery+0x50>
800252ac:	e51b3010 	ldr	r3, [fp, #-16]
800252b0:	e1a00003 	mov	r0, r3
800252b4:	e24bd004 	sub	sp, fp, #4
800252b8:	e8bd8800 	pop	{fp, pc}
800252bc:	800b0dd0 	.word	0x800b0dd0
800252c0:	800b0868 	.word	0x800b0868
800252c4:	800b32d0 	.word	0x800b32d0

800252c8 <lottery>:
800252c8:	e92d4800 	push	{fp, lr}
800252cc:	e28db004 	add	fp, sp, #4
800252d0:	e24dd010 	sub	sp, sp, #16
800252d4:	e3a03000 	mov	r3, #0
800252d8:	e50b300c 	str	r3, [fp, #-12]
800252dc:	e59f0194 	ldr	r0, [pc, #404]	@ 80025478 <lottery+0x1b0>
800252e0:	eb0005eb 	bl	80026a94 <acquire>
800252e4:	e59f3190 	ldr	r3, [pc, #400]	@ 8002547c <lottery+0x1b4>
800252e8:	e50b3008 	str	r3, [fp, #-8]
800252ec:	ea00004d 	b	80025428 <lottery+0x160>
800252f0:	e51b3008 	ldr	r3, [fp, #-8]
800252f4:	e5d3300c 	ldrb	r3, [r3, #12]
800252f8:	e3530003 	cmp	r3, #3
800252fc:	1a000046 	bne	8002541c <lottery+0x154>
80025300:	e51b3008 	ldr	r3, [fp, #-8]
80025304:	e59f2170 	ldr	r2, [pc, #368]	@ 8002547c <lottery+0x1b4>
80025308:	e0433002 	sub	r3, r3, r2
8002530c:	e1a02143 	asr	r2, r3, #2
80025310:	e1a03002 	mov	r3, r2
80025314:	e1a03083 	lsl	r3, r3, #1
80025318:	e0833002 	add	r3, r3, r2
8002531c:	e1a01183 	lsl	r1, r3, #3
80025320:	e0833001 	add	r3, r3, r1
80025324:	e1a03103 	lsl	r3, r3, #2
80025328:	e0833002 	add	r3, r3, r2
8002532c:	e1a02303 	lsl	r2, r3, #6
80025330:	e0833002 	add	r3, r3, r2
80025334:	e1a02903 	lsl	r2, r3, #18
80025338:	e0422003 	sub	r2, r2, r3
8002533c:	e2623000 	rsb	r3, r2, #0
80025340:	e59f2130 	ldr	r2, [pc, #304]	@ 80025478 <lottery+0x1b0>
80025344:	e283308c 	add	r3, r3, #140	@ 0x8c
80025348:	e1a03103 	lsl	r3, r3, #2
8002534c:	e0823003 	add	r3, r2, r3
80025350:	e5933004 	ldr	r3, [r3, #4]
80025354:	e51b200c 	ldr	r2, [fp, #-12]
80025358:	e0823003 	add	r3, r2, r3
8002535c:	e50b300c 	str	r3, [fp, #-12]
80025360:	e51b3008 	ldr	r3, [fp, #-8]
80025364:	e59f2110 	ldr	r2, [pc, #272]	@ 8002547c <lottery+0x1b4>
80025368:	e0433002 	sub	r3, r3, r2
8002536c:	e1a02143 	asr	r2, r3, #2
80025370:	e1a03002 	mov	r3, r2
80025374:	e1a03083 	lsl	r3, r3, #1
80025378:	e0833002 	add	r3, r3, r2
8002537c:	e1a01183 	lsl	r1, r3, #3
80025380:	e0833001 	add	r3, r3, r1
80025384:	e1a03103 	lsl	r3, r3, #2
80025388:	e0833002 	add	r3, r3, r2
8002538c:	e1a02303 	lsl	r2, r3, #6
80025390:	e0833002 	add	r3, r3, r2
80025394:	e1a02903 	lsl	r2, r3, #18
80025398:	e0422003 	sub	r2, r2, r3
8002539c:	e2623000 	rsb	r3, r2, #0
800253a0:	e59f20d0 	ldr	r2, [pc, #208]	@ 80025478 <lottery+0x1b0>
800253a4:	e2833f43 	add	r3, r3, #268	@ 0x10c
800253a8:	e1a03103 	lsl	r3, r3, #2
800253ac:	e0823003 	add	r3, r2, r3
800253b0:	e5933004 	ldr	r3, [r3, #4]
800253b4:	e3530000 	cmp	r3, #0
800253b8:	da000017 	ble	8002541c <lottery+0x154>
800253bc:	e51b3008 	ldr	r3, [fp, #-8]
800253c0:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002547c <lottery+0x1b4>
800253c4:	e0433002 	sub	r3, r3, r2
800253c8:	e1a02143 	asr	r2, r3, #2
800253cc:	e1a03002 	mov	r3, r2
800253d0:	e1a03083 	lsl	r3, r3, #1
800253d4:	e0833002 	add	r3, r3, r2
800253d8:	e1a01183 	lsl	r1, r3, #3
800253dc:	e0833001 	add	r3, r3, r1
800253e0:	e1a03103 	lsl	r3, r3, #2
800253e4:	e0833002 	add	r3, r3, r2
800253e8:	e1a02303 	lsl	r2, r3, #6
800253ec:	e0833002 	add	r3, r3, r2
800253f0:	e1a02903 	lsl	r2, r3, #18
800253f4:	e0422003 	sub	r2, r2, r3
800253f8:	e2623000 	rsb	r3, r2, #0
800253fc:	e59f2074 	ldr	r2, [pc, #116]	@ 80025478 <lottery+0x1b0>
80025400:	e283308c 	add	r3, r3, #140	@ 0x8c
80025404:	e1a03103 	lsl	r3, r3, #2
80025408:	e0823003 	add	r3, r2, r3
8002540c:	e5933004 	ldr	r3, [r3, #4]
80025410:	e51b200c 	ldr	r2, [fp, #-12]
80025414:	e0823003 	add	r3, r2, r3
80025418:	e50b300c 	str	r3, [fp, #-12]
8002541c:	e51b3008 	ldr	r3, [fp, #-8]
80025420:	e2833094 	add	r3, r3, #148	@ 0x94
80025424:	e50b3008 	str	r3, [fp, #-8]
80025428:	e51b3008 	ldr	r3, [fp, #-8]
8002542c:	e59f204c 	ldr	r2, [pc, #76]	@ 80025480 <lottery+0x1b8>
80025430:	e1530002 	cmp	r3, r2
80025434:	3affffad 	bcc	800252f0 <lottery+0x28>
80025438:	e51b300c 	ldr	r3, [fp, #-12]
8002543c:	e3530000 	cmp	r3, #0
80025440:	ca000003 	bgt	80025454 <lottery+0x18c>
80025444:	e59f002c 	ldr	r0, [pc, #44]	@ 80025478 <lottery+0x1b0>
80025448:	eb00059c 	bl	80026ac0 <release>
8002544c:	e3a03000 	mov	r3, #0
80025450:	ea000005 	b	8002546c <lottery+0x1a4>
80025454:	e51b000c 	ldr	r0, [fp, #-12]
80025458:	ebffff04 	bl	80025070 <hold_lottery>
8002545c:	e50b0010 	str	r0, [fp, #-16]
80025460:	e59f0010 	ldr	r0, [pc, #16]	@ 80025478 <lottery+0x1b0>
80025464:	eb000595 	bl	80026ac0 <release>
80025468:	e51b3010 	ldr	r3, [fp, #-16]
8002546c:	e1a00003 	mov	r0, r3
80025470:	e24bd004 	sub	sp, fp, #4
80025474:	e8bd8800 	pop	{fp, pc}
80025478:	800b0868 	.word	0x800b0868
8002547c:	800b0dd0 	.word	0x800b0dd0
80025480:	800b32d0 	.word	0x800b32d0

80025484 <allocproc>:
80025484:	e92d4800 	push	{fp, lr}
80025488:	e28db004 	add	fp, sp, #4
8002548c:	e24dd020 	sub	sp, sp, #32
80025490:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025494:	e59f0330 	ldr	r0, [pc, #816]	@ 800257cc <allocproc+0x348>
80025498:	eb00057d 	bl	80026a94 <acquire>
8002549c:	e59f332c 	ldr	r3, [pc, #812]	@ 800257d0 <allocproc+0x34c>
800254a0:	e50b3008 	str	r3, [fp, #-8]
800254a4:	ea000006 	b	800254c4 <allocproc+0x40>
800254a8:	e51b3008 	ldr	r3, [fp, #-8]
800254ac:	e5d3300c 	ldrb	r3, [r3, #12]
800254b0:	e3530000 	cmp	r3, #0
800254b4:	0a00000a 	beq	800254e4 <allocproc+0x60>
800254b8:	e51b3008 	ldr	r3, [fp, #-8]
800254bc:	e2833094 	add	r3, r3, #148	@ 0x94
800254c0:	e50b3008 	str	r3, [fp, #-8]
800254c4:	e51b3008 	ldr	r3, [fp, #-8]
800254c8:	e59f2304 	ldr	r2, [pc, #772]	@ 800257d4 <allocproc+0x350>
800254cc:	e1530002 	cmp	r3, r2
800254d0:	3afffff4 	bcc	800254a8 <allocproc+0x24>
800254d4:	e59f02f0 	ldr	r0, [pc, #752]	@ 800257cc <allocproc+0x348>
800254d8:	eb000578 	bl	80026ac0 <release>
800254dc:	e3a03000 	mov	r3, #0
800254e0:	ea0000b6 	b	800257c0 <allocproc+0x33c>
800254e4:	e1a00000 	nop			@ (mov r0, r0)
800254e8:	e51b3008 	ldr	r3, [fp, #-8]
800254ec:	e3a02001 	mov	r2, #1
800254f0:	e5c3200c 	strb	r2, [r3, #12]
800254f4:	e59f32dc 	ldr	r3, [pc, #732]	@ 800257d8 <allocproc+0x354>
800254f8:	e5933000 	ldr	r3, [r3]
800254fc:	e2832001 	add	r2, r3, #1
80025500:	e59f12d0 	ldr	r1, [pc, #720]	@ 800257d8 <allocproc+0x354>
80025504:	e5812000 	str	r2, [r1]
80025508:	e51b2008 	ldr	r2, [fp, #-8]
8002550c:	e5823010 	str	r3, [r2, #16]
80025510:	e51b3008 	ldr	r3, [fp, #-8]
80025514:	e3a02000 	mov	r2, #0
80025518:	e583207c 	str	r2, [r3, #124]	@ 0x7c
8002551c:	e59f02a8 	ldr	r0, [pc, #680]	@ 800257cc <allocproc+0x348>
80025520:	eb000566 	bl	80026ac0 <release>
80025524:	ebfff04f 	bl	80021668 <alloc_page>
80025528:	e50b000c 	str	r0, [fp, #-12]
8002552c:	e51b300c 	ldr	r3, [fp, #-12]
80025530:	e3530000 	cmp	r3, #0
80025534:	1a000004 	bne	8002554c <allocproc+0xc8>
80025538:	e51b3008 	ldr	r3, [fp, #-8]
8002553c:	e3a02000 	mov	r2, #0
80025540:	e5c3200c 	strb	r2, [r3, #12]
80025544:	e3a03000 	mov	r3, #0
80025548:	ea00009c 	b	800257c0 <allocproc+0x33c>
8002554c:	e51b3008 	ldr	r3, [fp, #-8]
80025550:	e51b200c 	ldr	r2, [fp, #-12]
80025554:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025558:	e51b3008 	ldr	r3, [fp, #-8]
8002555c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025560:	e50b3010 	str	r3, [fp, #-16]
80025564:	e51b3008 	ldr	r3, [fp, #-8]
80025568:	e5932010 	ldr	r2, [r3, #16]
8002556c:	e51b3010 	ldr	r3, [fp, #-16]
80025570:	e5832000 	str	r2, [r3]
80025574:	e59f0260 	ldr	r0, [pc, #608]	@ 800257dc <allocproc+0x358>
80025578:	eb000545 	bl	80026a94 <acquire>
8002557c:	e51b3008 	ldr	r3, [fp, #-8]
80025580:	e59f2248 	ldr	r2, [pc, #584]	@ 800257d0 <allocproc+0x34c>
80025584:	e0433002 	sub	r3, r3, r2
80025588:	e1a02143 	asr	r2, r3, #2
8002558c:	e1a03002 	mov	r3, r2
80025590:	e1a03083 	lsl	r3, r3, #1
80025594:	e0833002 	add	r3, r3, r2
80025598:	e1a01183 	lsl	r1, r3, #3
8002559c:	e0833001 	add	r3, r3, r1
800255a0:	e1a03103 	lsl	r3, r3, #2
800255a4:	e0833002 	add	r3, r3, r2
800255a8:	e1a02303 	lsl	r2, r3, #6
800255ac:	e0833002 	add	r3, r3, r2
800255b0:	e1a02903 	lsl	r2, r3, #18
800255b4:	e0422003 	sub	r2, r2, r3
800255b8:	e2623000 	rsb	r3, r2, #0
800255bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800255c0:	e59f2214 	ldr	r2, [pc, #532]	@ 800257dc <allocproc+0x358>
800255c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800255c8:	e283300c 	add	r3, r3, #12
800255cc:	e1a03103 	lsl	r3, r3, #2
800255d0:	e0823003 	add	r3, r2, r3
800255d4:	e3a02001 	mov	r2, #1
800255d8:	e5832004 	str	r2, [r3, #4]
800255dc:	e51b3008 	ldr	r3, [fp, #-8]
800255e0:	e5932010 	ldr	r2, [r3, #16]
800255e4:	e59f11f0 	ldr	r1, [pc, #496]	@ 800257dc <allocproc+0x358>
800255e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800255ec:	e283304c 	add	r3, r3, #76	@ 0x4c
800255f0:	e1a03103 	lsl	r3, r3, #2
800255f4:	e0813003 	add	r3, r1, r3
800255f8:	e5832004 	str	r2, [r3, #4]
800255fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80025600:	e3530000 	cmp	r3, #0
80025604:	1a000007 	bne	80025628 <allocproc+0x1a4>
80025608:	e59f21cc 	ldr	r2, [pc, #460]	@ 800257dc <allocproc+0x358>
8002560c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025610:	e283308c 	add	r3, r3, #140	@ 0x8c
80025614:	e1a03103 	lsl	r3, r3, #2
80025618:	e0823003 	add	r3, r2, r3
8002561c:	e3a02001 	mov	r2, #1
80025620:	e5832004 	str	r2, [r3, #4]
80025624:	ea000013 	b	80025678 <allocproc+0x1f4>
80025628:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002562c:	ebfffe4d 	bl	80024f68 <getIndexStat>
80025630:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80025634:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025638:	e3730001 	cmn	r3, #1
8002563c:	1a000001 	bne	80025648 <allocproc+0x1c4>
80025640:	e59f0198 	ldr	r0, [pc, #408]	@ 800257e0 <allocproc+0x35c>
80025644:	ebfff12c 	bl	80021afc <panic>
80025648:	e59f218c 	ldr	r2, [pc, #396]	@ 800257dc <allocproc+0x358>
8002564c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025650:	e283308c 	add	r3, r3, #140	@ 0x8c
80025654:	e1a03103 	lsl	r3, r3, #2
80025658:	e0823003 	add	r3, r2, r3
8002565c:	e5932004 	ldr	r2, [r3, #4]
80025660:	e59f1174 	ldr	r1, [pc, #372]	@ 800257dc <allocproc+0x358>
80025664:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025668:	e283308c 	add	r3, r3, #140	@ 0x8c
8002566c:	e1a03103 	lsl	r3, r3, #2
80025670:	e0813003 	add	r3, r1, r3
80025674:	e5832004 	str	r2, [r3, #4]
80025678:	e59f215c 	ldr	r2, [pc, #348]	@ 800257dc <allocproc+0x358>
8002567c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025680:	e28330cc 	add	r3, r3, #204	@ 0xcc
80025684:	e1a03103 	lsl	r3, r3, #2
80025688:	e0823003 	add	r3, r2, r3
8002568c:	e3a02000 	mov	r2, #0
80025690:	e5832004 	str	r2, [r3, #4]
80025694:	e59f2140 	ldr	r2, [pc, #320]	@ 800257dc <allocproc+0x358>
80025698:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002569c:	e2833f43 	add	r3, r3, #268	@ 0x10c
800256a0:	e1a03103 	lsl	r3, r3, #2
800256a4:	e0823003 	add	r3, r2, r3
800256a8:	e3a02000 	mov	r2, #0
800256ac:	e5832004 	str	r2, [r3, #4]
800256b0:	e59f0124 	ldr	r0, [pc, #292]	@ 800257dc <allocproc+0x358>
800256b4:	eb000501 	bl	80026ac0 <release>
800256b8:	ebffefea 	bl	80021668 <alloc_page>
800256bc:	e1a02000 	mov	r2, r0
800256c0:	e51b3008 	ldr	r3, [fp, #-8]
800256c4:	e5832008 	str	r2, [r3, #8]
800256c8:	e51b3008 	ldr	r3, [fp, #-8]
800256cc:	e5933008 	ldr	r3, [r3, #8]
800256d0:	e3530000 	cmp	r3, #0
800256d4:	1a00000f 	bne	80025718 <allocproc+0x294>
800256d8:	e51b3008 	ldr	r3, [fp, #-8]
800256dc:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
800256e0:	e1a00003 	mov	r0, r3
800256e4:	ebffefd5 	bl	80021640 <free_page>
800256e8:	e51b3008 	ldr	r3, [fp, #-8]
800256ec:	e3a02000 	mov	r2, #0
800256f0:	e5832088 	str	r2, [r3, #136]	@ 0x88
800256f4:	e51b3008 	ldr	r3, [fp, #-8]
800256f8:	e3a02000 	mov	r2, #0
800256fc:	e5c3200c 	strb	r2, [r3, #12]
80025700:	e51b3008 	ldr	r3, [fp, #-8]
80025704:	e5933010 	ldr	r3, [r3, #16]
80025708:	e1a00003 	mov	r0, r3
8002570c:	ebfffe3b 	bl	80025000 <procStatRemover>
80025710:	e3a03000 	mov	r3, #0
80025714:	ea000029 	b	800257c0 <allocproc+0x33c>
80025718:	e51b3008 	ldr	r3, [fp, #-8]
8002571c:	e5933008 	ldr	r3, [r3, #8]
80025720:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80025724:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025728:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002572c:	e2433048 	sub	r3, r3, #72	@ 0x48
80025730:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025734:	e51b3008 	ldr	r3, [fp, #-8]
80025738:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002573c:	e5832018 	str	r2, [r3, #24]
80025740:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025744:	e2433004 	sub	r3, r3, #4
80025748:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002574c:	e59f2090 	ldr	r2, [pc, #144]	@ 800257e4 <allocproc+0x360>
80025750:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025754:	e5832000 	str	r2, [r3]
80025758:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002575c:	e2433004 	sub	r3, r3, #4
80025760:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025764:	e51b3008 	ldr	r3, [fp, #-8]
80025768:	e5933008 	ldr	r3, [r3, #8]
8002576c:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80025770:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80025774:	e5832000 	str	r2, [r3]
80025778:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002577c:	e2433028 	sub	r3, r3, #40	@ 0x28
80025780:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80025784:	e51b3008 	ldr	r3, [fp, #-8]
80025788:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002578c:	e583201c 	str	r2, [r3, #28]
80025790:	e51b3008 	ldr	r3, [fp, #-8]
80025794:	e593301c 	ldr	r3, [r3, #28]
80025798:	e3a02028 	mov	r2, #40	@ 0x28
8002579c:	e3a01000 	mov	r1, #0
800257a0:	e1a00003 	mov	r0, r3
800257a4:	ebffea15 	bl	80020000 <memset>
800257a8:	e59f2038 	ldr	r2, [pc, #56]	@ 800257e8 <allocproc+0x364>
800257ac:	e51b3008 	ldr	r3, [fp, #-8]
800257b0:	e593301c 	ldr	r3, [r3, #28]
800257b4:	e2822004 	add	r2, r2, #4
800257b8:	e5832024 	str	r2, [r3, #36]	@ 0x24
800257bc:	e51b3008 	ldr	r3, [fp, #-8]
800257c0:	e1a00003 	mov	r0, r3
800257c4:	e24bd004 	sub	sp, fp, #4
800257c8:	e8bd8800 	pop	{fp, pc}
800257cc:	800b0d9c 	.word	0x800b0d9c
800257d0:	800b0dd0 	.word	0x800b0dd0
800257d4:	800b32d0 	.word	0x800b32d0
800257d8:	8002d014 	.word	0x8002d014
800257dc:	800b0868 	.word	0x800b0868
800257e0:	8002b6f8 	.word	0x8002b6f8
800257e4:	80029070 	.word	0x80029070
800257e8:	800261b4 	.word	0x800261b4

800257ec <error_init>:
800257ec:	e92d4800 	push	{fp, lr}
800257f0:	e28db004 	add	fp, sp, #4
800257f4:	e59f0000 	ldr	r0, [pc]	@ 800257fc <error_init+0x10>
800257f8:	ebfff0bf 	bl	80021afc <panic>
800257fc:	8002b71c 	.word	0x8002b71c

80025800 <userinit>:
80025800:	e92d4810 	push	{r4, fp, lr}
80025804:	e28db008 	add	fp, sp, #8
80025808:	e24dd014 	sub	sp, sp, #20
8002580c:	e3a00000 	mov	r0, #0
80025810:	ebffff1b 	bl	80025484 <allocproc>
80025814:	e50b0010 	str	r0, [fp, #-16]
80025818:	e59f2134 	ldr	r2, [pc, #308]	@ 80025954 <userinit+0x154>
8002581c:	e51b3010 	ldr	r3, [fp, #-16]
80025820:	e5823000 	str	r3, [r2]
80025824:	eb0010a2 	bl	80029ab4 <kpt_alloc>
80025828:	e1a02000 	mov	r2, r0
8002582c:	e51b3010 	ldr	r3, [fp, #-16]
80025830:	e5832004 	str	r2, [r3, #4]
80025834:	e51b3010 	ldr	r3, [fp, #-16]
80025838:	e5933004 	ldr	r3, [r3, #4]
8002583c:	e3530000 	cmp	r3, #0
80025840:	1a000001 	bne	8002584c <userinit+0x4c>
80025844:	e59f010c 	ldr	r0, [pc, #268]	@ 80025958 <userinit+0x158>
80025848:	ebfff0ab 	bl	80021afc <panic>
8002584c:	e51b3010 	ldr	r3, [fp, #-16]
80025850:	e5933004 	ldr	r3, [r3, #4]
80025854:	e59f2100 	ldr	r2, [pc, #256]	@ 8002595c <userinit+0x15c>
80025858:	e59f1100 	ldr	r1, [pc, #256]	@ 80025960 <userinit+0x160>
8002585c:	e1a00003 	mov	r0, r3
80025860:	eb001151 	bl	80029dac <inituvm>
80025864:	e51b3010 	ldr	r3, [fp, #-16]
80025868:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002586c:	e5832000 	str	r2, [r3]
80025870:	e51b3010 	ldr	r3, [fp, #-16]
80025874:	e5934004 	ldr	r4, [r3, #4]
80025878:	e51b3010 	ldr	r3, [fp, #-16]
8002587c:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025880:	e1a00003 	mov	r0, r3
80025884:	ebfffd88 	bl	80024eac <v2p>
80025888:	e1a03000 	mov	r3, r0
8002588c:	e3a02002 	mov	r2, #2
80025890:	e58d2000 	str	r2, [sp]
80025894:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025898:	e59f10c4 	ldr	r1, [pc, #196]	@ 80025964 <userinit+0x164>
8002589c:	e1a00004 	mov	r0, r4
800258a0:	eb0010df 	bl	80029c24 <mappages>
800258a4:	e51b3010 	ldr	r3, [fp, #-16]
800258a8:	e5933018 	ldr	r3, [r3, #24]
800258ac:	e3a02048 	mov	r2, #72	@ 0x48
800258b0:	e3a01000 	mov	r1, #0
800258b4:	e1a00003 	mov	r0, r3
800258b8:	ebffe9d0 	bl	80020000 <memset>
800258bc:	e51b3010 	ldr	r3, [fp, #-16]
800258c0:	e5933018 	ldr	r3, [r3, #24]
800258c4:	e59f209c 	ldr	r2, [pc, #156]	@ 80025968 <userinit+0x168>
800258c8:	e5832008 	str	r2, [r3, #8]
800258cc:	e51b3010 	ldr	r3, [fp, #-16]
800258d0:	e5934018 	ldr	r4, [r3, #24]
800258d4:	ebffeb35 	bl	800205b0 <spsr_usr>
800258d8:	e1a03000 	mov	r3, r0
800258dc:	e584300c 	str	r3, [r4, #12]
800258e0:	e51b3010 	ldr	r3, [fp, #-16]
800258e4:	e5933018 	ldr	r3, [r3, #24]
800258e8:	e3a02a01 	mov	r2, #4096	@ 0x1000
800258ec:	e5832000 	str	r2, [r3]
800258f0:	e51b3010 	ldr	r3, [fp, #-16]
800258f4:	e5933018 	ldr	r3, [r3, #24]
800258f8:	e3a02000 	mov	r2, #0
800258fc:	e5832004 	str	r2, [r3, #4]
80025900:	e51b3010 	ldr	r3, [fp, #-16]
80025904:	e5933018 	ldr	r3, [r3, #24]
80025908:	e3a02000 	mov	r2, #0
8002590c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025910:	e51b3010 	ldr	r3, [fp, #-16]
80025914:	e283306c 	add	r3, r3, #108	@ 0x6c
80025918:	e3a02010 	mov	r2, #16
8002591c:	e59f1048 	ldr	r1, [pc, #72]	@ 8002596c <userinit+0x16c>
80025920:	e1a00003 	mov	r0, r3
80025924:	ebffeac9 	bl	80020450 <safestrcpy>
80025928:	e59f0040 	ldr	r0, [pc, #64]	@ 80025970 <userinit+0x170>
8002592c:	ebfffa19 	bl	80024198 <namei>
80025930:	e1a02000 	mov	r2, r0
80025934:	e51b3010 	ldr	r3, [fp, #-16]
80025938:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002593c:	e51b3010 	ldr	r3, [fp, #-16]
80025940:	e3a02003 	mov	r2, #3
80025944:	e5c3200c 	strb	r2, [r3, #12]
80025948:	e1a00000 	nop			@ (mov r0, r0)
8002594c:	e24bd008 	sub	sp, fp, #8
80025950:	e8bd8810 	pop	{r4, fp, pc}
80025954:	800b32d0 	.word	0x800b32d0
80025958:	8002b73c 	.word	0x8002b73c
8002595c:	00000034 	.word	0x00000034
80025960:	8002d0ec 	.word	0x8002d0ec
80025964:	0ffff000 	.word	0x0ffff000
80025968:	800257ec 	.word	0x800257ec
8002596c:	8002b758 	.word	0x8002b758
80025970:	8002b764 	.word	0x8002b764

80025974 <growproc>:
80025974:	e92d4800 	push	{fp, lr}
80025978:	e28db004 	add	fp, sp, #4
8002597c:	e24dd010 	sub	sp, sp, #16
80025980:	e50b0010 	str	r0, [fp, #-16]
80025984:	e59f3040 	ldr	r3, [pc, #64]	@ 800259cc <growproc+0x58>
80025988:	e5933000 	ldr	r3, [r3]
8002598c:	e5933000 	ldr	r3, [r3]
80025990:	e50b3008 	str	r3, [fp, #-8]
80025994:	e51b1010 	ldr	r1, [fp, #-16]
80025998:	e59f302c 	ldr	r3, [pc, #44]	@ 800259cc <growproc+0x58>
8002599c:	e5933000 	ldr	r3, [r3]
800259a0:	e51b2008 	ldr	r2, [fp, #-8]
800259a4:	e0812002 	add	r2, r1, r2
800259a8:	e5832000 	str	r2, [r3]
800259ac:	e59f3018 	ldr	r3, [pc, #24]	@ 800259cc <growproc+0x58>
800259b0:	e5933000 	ldr	r3, [r3]
800259b4:	e1a00003 	mov	r0, r3
800259b8:	eb0010e4 	bl	80029d50 <switchuvm>
800259bc:	e3a03000 	mov	r3, #0
800259c0:	e1a00003 	mov	r0, r3
800259c4:	e24bd004 	sub	sp, fp, #4
800259c8:	e8bd8800 	pop	{fp, pc}
800259cc:	800b32d4 	.word	0x800b32d4

800259d0 <fork>:
800259d0:	e92d4810 	push	{r4, fp, lr}
800259d4:	e28db008 	add	fp, sp, #8
800259d8:	e24dd01c 	sub	sp, sp, #28
800259dc:	e59f3228 	ldr	r3, [pc, #552]	@ 80025c0c <fork+0x23c>
800259e0:	e5933000 	ldr	r3, [r3]
800259e4:	e5933010 	ldr	r3, [r3, #16]
800259e8:	e1a00003 	mov	r0, r3
800259ec:	ebfffea4 	bl	80025484 <allocproc>
800259f0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800259f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800259f8:	e3530000 	cmp	r3, #0
800259fc:	1a000001 	bne	80025a08 <fork+0x38>
80025a00:	e3e03000 	mvn	r3, #0
80025a04:	ea00007d 	b	80025c00 <fork+0x230>
80025a08:	e59f31fc 	ldr	r3, [pc, #508]	@ 80025c0c <fork+0x23c>
80025a0c:	e5933000 	ldr	r3, [r3]
80025a10:	e5932004 	ldr	r2, [r3, #4]
80025a14:	e59f31f0 	ldr	r3, [pc, #496]	@ 80025c0c <fork+0x23c>
80025a18:	e5933000 	ldr	r3, [r3]
80025a1c:	e5933000 	ldr	r3, [r3]
80025a20:	e1a01003 	mov	r1, r3
80025a24:	e1a00002 	mov	r0, r2
80025a28:	eb0012de 	bl	8002a5a8 <copyuvm>
80025a2c:	e1a02000 	mov	r2, r0
80025a30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a34:	e5832004 	str	r2, [r3, #4]
80025a38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a3c:	e5933004 	ldr	r3, [r3, #4]
80025a40:	e3530000 	cmp	r3, #0
80025a44:	1a000016 	bne	80025aa4 <fork+0xd4>
80025a48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a4c:	e5933008 	ldr	r3, [r3, #8]
80025a50:	e1a00003 	mov	r0, r3
80025a54:	ebffeef9 	bl	80021640 <free_page>
80025a58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a5c:	e3a02000 	mov	r2, #0
80025a60:	e5832008 	str	r2, [r3, #8]
80025a64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a68:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025a6c:	e1a00003 	mov	r0, r3
80025a70:	ebffeef2 	bl	80021640 <free_page>
80025a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a78:	e3a02000 	mov	r2, #0
80025a7c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025a80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a84:	e3a02000 	mov	r2, #0
80025a88:	e5c3200c 	strb	r2, [r3, #12]
80025a8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025a90:	e5933010 	ldr	r3, [r3, #16]
80025a94:	e1a00003 	mov	r0, r3
80025a98:	ebfffd58 	bl	80025000 <procStatRemover>
80025a9c:	e3e03000 	mvn	r3, #0
80025aa0:	ea000056 	b	80025c00 <fork+0x230>
80025aa4:	e59f3160 	ldr	r3, [pc, #352]	@ 80025c0c <fork+0x23c>
80025aa8:	e5933000 	ldr	r3, [r3]
80025aac:	e5932000 	ldr	r2, [r3]
80025ab0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ab4:	e5832000 	str	r2, [r3]
80025ab8:	e59f314c 	ldr	r3, [pc, #332]	@ 80025c0c <fork+0x23c>
80025abc:	e5932000 	ldr	r2, [r3]
80025ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ac4:	e5832014 	str	r2, [r3, #20]
80025ac8:	e59f313c 	ldr	r3, [pc, #316]	@ 80025c0c <fork+0x23c>
80025acc:	e5933000 	ldr	r3, [r3]
80025ad0:	e5932018 	ldr	r2, [r3, #24]
80025ad4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025ad8:	e5933018 	ldr	r3, [r3, #24]
80025adc:	e1a00003 	mov	r0, r3
80025ae0:	e1a01002 	mov	r1, r2
80025ae4:	e3a03048 	mov	r3, #72	@ 0x48
80025ae8:	e1a02003 	mov	r2, r3
80025aec:	ebffe9f4 	bl	800202c4 <memcpy>
80025af0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025af4:	e5934004 	ldr	r4, [r3, #4]
80025af8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025afc:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025b00:	e1a00003 	mov	r0, r3
80025b04:	ebfffce8 	bl	80024eac <v2p>
80025b08:	e1a03000 	mov	r3, r0
80025b0c:	e3a02002 	mov	r2, #2
80025b10:	e58d2000 	str	r2, [sp]
80025b14:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025b18:	e59f10f0 	ldr	r1, [pc, #240]	@ 80025c10 <fork+0x240>
80025b1c:	e1a00004 	mov	r0, r4
80025b20:	eb00103f 	bl	80029c24 <mappages>
80025b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025b28:	e5933018 	ldr	r3, [r3, #24]
80025b2c:	e3a02000 	mov	r2, #0
80025b30:	e5832010 	str	r2, [r3, #16]
80025b34:	e3a03000 	mov	r3, #0
80025b38:	e50b3010 	str	r3, [fp, #-16]
80025b3c:	ea000015 	b	80025b98 <fork+0x1c8>
80025b40:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025c0c <fork+0x23c>
80025b44:	e5933000 	ldr	r3, [r3]
80025b48:	e51b2010 	ldr	r2, [fp, #-16]
80025b4c:	e282200a 	add	r2, r2, #10
80025b50:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b54:	e3530000 	cmp	r3, #0
80025b58:	0a00000b 	beq	80025b8c <fork+0x1bc>
80025b5c:	e59f30a8 	ldr	r3, [pc, #168]	@ 80025c0c <fork+0x23c>
80025b60:	e5933000 	ldr	r3, [r3]
80025b64:	e51b2010 	ldr	r2, [fp, #-16]
80025b68:	e282200a 	add	r2, r2, #10
80025b6c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b70:	e1a00003 	mov	r0, r3
80025b74:	ebfff2d0 	bl	800226bc <filedup>
80025b78:	e1a01000 	mov	r1, r0
80025b7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025b80:	e51b2010 	ldr	r2, [fp, #-16]
80025b84:	e282200a 	add	r2, r2, #10
80025b88:	e7831102 	str	r1, [r3, r2, lsl #2]
80025b8c:	e51b3010 	ldr	r3, [fp, #-16]
80025b90:	e2833001 	add	r3, r3, #1
80025b94:	e50b3010 	str	r3, [fp, #-16]
80025b98:	e51b3010 	ldr	r3, [fp, #-16]
80025b9c:	e353000f 	cmp	r3, #15
80025ba0:	daffffe6 	ble	80025b40 <fork+0x170>
80025ba4:	e59f3060 	ldr	r3, [pc, #96]	@ 80025c0c <fork+0x23c>
80025ba8:	e5933000 	ldr	r3, [r3]
80025bac:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025bb0:	e1a00003 	mov	r0, r3
80025bb4:	ebfff592 	bl	80023204 <idup>
80025bb8:	e1a02000 	mov	r2, r0
80025bbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025bc0:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025bc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025bc8:	e5933010 	ldr	r3, [r3, #16]
80025bcc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025bd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025bd4:	e3a02003 	mov	r2, #3
80025bd8:	e5c3200c 	strb	r2, [r3, #12]
80025bdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025be0:	e283006c 	add	r0, r3, #108	@ 0x6c
80025be4:	e59f3020 	ldr	r3, [pc, #32]	@ 80025c0c <fork+0x23c>
80025be8:	e5933000 	ldr	r3, [r3]
80025bec:	e283306c 	add	r3, r3, #108	@ 0x6c
80025bf0:	e3a02010 	mov	r2, #16
80025bf4:	e1a01003 	mov	r1, r3
80025bf8:	ebffea14 	bl	80020450 <safestrcpy>
80025bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025c00:	e1a00003 	mov	r0, r3
80025c04:	e24bd008 	sub	sp, fp, #8
80025c08:	e8bd8810 	pop	{r4, fp, pc}
80025c0c:	800b32d4 	.word	0x800b32d4
80025c10:	0ffff000 	.word	0x0ffff000

80025c14 <exit>:
80025c14:	e92d4800 	push	{fp, lr}
80025c18:	e28db004 	add	fp, sp, #4
80025c1c:	e24dd010 	sub	sp, sp, #16
80025c20:	e59f3180 	ldr	r3, [pc, #384]	@ 80025da8 <exit+0x194>
80025c24:	e5933000 	ldr	r3, [r3]
80025c28:	e50b3010 	str	r3, [fp, #-16]
80025c2c:	e51b3010 	ldr	r3, [fp, #-16]
80025c30:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80025c34:	e3530000 	cmp	r3, #0
80025c38:	1a000057 	bne	80025d9c <exit+0x188>
80025c3c:	e59f3164 	ldr	r3, [pc, #356]	@ 80025da8 <exit+0x194>
80025c40:	e5932000 	ldr	r2, [r3]
80025c44:	e59f3160 	ldr	r3, [pc, #352]	@ 80025dac <exit+0x198>
80025c48:	e5933000 	ldr	r3, [r3]
80025c4c:	e1520003 	cmp	r2, r3
80025c50:	1a000001 	bne	80025c5c <exit+0x48>
80025c54:	e59f0154 	ldr	r0, [pc, #340]	@ 80025db0 <exit+0x19c>
80025c58:	ebffefa7 	bl	80021afc <panic>
80025c5c:	e3a03000 	mov	r3, #0
80025c60:	e50b300c 	str	r3, [fp, #-12]
80025c64:	ea000016 	b	80025cc4 <exit+0xb0>
80025c68:	e59f3138 	ldr	r3, [pc, #312]	@ 80025da8 <exit+0x194>
80025c6c:	e5933000 	ldr	r3, [r3]
80025c70:	e51b200c 	ldr	r2, [fp, #-12]
80025c74:	e282200a 	add	r2, r2, #10
80025c78:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025c7c:	e3530000 	cmp	r3, #0
80025c80:	0a00000c 	beq	80025cb8 <exit+0xa4>
80025c84:	e59f311c 	ldr	r3, [pc, #284]	@ 80025da8 <exit+0x194>
80025c88:	e5933000 	ldr	r3, [r3]
80025c8c:	e51b200c 	ldr	r2, [fp, #-12]
80025c90:	e282200a 	add	r2, r2, #10
80025c94:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025c98:	e1a00003 	mov	r0, r3
80025c9c:	ebfff29f 	bl	80022720 <fileclose>
80025ca0:	e59f3100 	ldr	r3, [pc, #256]	@ 80025da8 <exit+0x194>
80025ca4:	e5933000 	ldr	r3, [r3]
80025ca8:	e51b200c 	ldr	r2, [fp, #-12]
80025cac:	e282200a 	add	r2, r2, #10
80025cb0:	e3a01000 	mov	r1, #0
80025cb4:	e7831102 	str	r1, [r3, r2, lsl #2]
80025cb8:	e51b300c 	ldr	r3, [fp, #-12]
80025cbc:	e2833001 	add	r3, r3, #1
80025cc0:	e50b300c 	str	r3, [fp, #-12]
80025cc4:	e51b300c 	ldr	r3, [fp, #-12]
80025cc8:	e353000f 	cmp	r3, #15
80025ccc:	daffffe5 	ble	80025c68 <exit+0x54>
80025cd0:	e59f30d0 	ldr	r3, [pc, #208]	@ 80025da8 <exit+0x194>
80025cd4:	e5933000 	ldr	r3, [r3]
80025cd8:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025cdc:	e1a00003 	mov	r0, r3
80025ce0:	ebfff5df 	bl	80023464 <iput>
80025ce4:	e59f30bc 	ldr	r3, [pc, #188]	@ 80025da8 <exit+0x194>
80025ce8:	e5933000 	ldr	r3, [r3]
80025cec:	e3a02000 	mov	r2, #0
80025cf0:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025cf4:	e59f00b8 	ldr	r0, [pc, #184]	@ 80025db4 <exit+0x1a0>
80025cf8:	eb000365 	bl	80026a94 <acquire>
80025cfc:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025da8 <exit+0x194>
80025d00:	e5933000 	ldr	r3, [r3]
80025d04:	e5933014 	ldr	r3, [r3, #20]
80025d08:	e1a00003 	mov	r0, r3
80025d0c:	eb00016c 	bl	800262c4 <wakeup1>
80025d10:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025db8 <exit+0x1a4>
80025d14:	e50b3008 	str	r3, [fp, #-8]
80025d18:	ea000014 	b	80025d70 <exit+0x15c>
80025d1c:	e51b3008 	ldr	r3, [fp, #-8]
80025d20:	e5932014 	ldr	r2, [r3, #20]
80025d24:	e59f307c 	ldr	r3, [pc, #124]	@ 80025da8 <exit+0x194>
80025d28:	e5933000 	ldr	r3, [r3]
80025d2c:	e1520003 	cmp	r2, r3
80025d30:	1a00000b 	bne	80025d64 <exit+0x150>
80025d34:	e59f3070 	ldr	r3, [pc, #112]	@ 80025dac <exit+0x198>
80025d38:	e5932000 	ldr	r2, [r3]
80025d3c:	e51b3008 	ldr	r3, [fp, #-8]
80025d40:	e5832014 	str	r2, [r3, #20]
80025d44:	e51b3008 	ldr	r3, [fp, #-8]
80025d48:	e5d3300c 	ldrb	r3, [r3, #12]
80025d4c:	e3530005 	cmp	r3, #5
80025d50:	1a000003 	bne	80025d64 <exit+0x150>
80025d54:	e59f3050 	ldr	r3, [pc, #80]	@ 80025dac <exit+0x198>
80025d58:	e5933000 	ldr	r3, [r3]
80025d5c:	e1a00003 	mov	r0, r3
80025d60:	eb000157 	bl	800262c4 <wakeup1>
80025d64:	e51b3008 	ldr	r3, [fp, #-8]
80025d68:	e2833094 	add	r3, r3, #148	@ 0x94
80025d6c:	e50b3008 	str	r3, [fp, #-8]
80025d70:	e51b3008 	ldr	r3, [fp, #-8]
80025d74:	e59f2040 	ldr	r2, [pc, #64]	@ 80025dbc <exit+0x1a8>
80025d78:	e1530002 	cmp	r3, r2
80025d7c:	3affffe6 	bcc	80025d1c <exit+0x108>
80025d80:	e59f3020 	ldr	r3, [pc, #32]	@ 80025da8 <exit+0x194>
80025d84:	e5933000 	ldr	r3, [r3]
80025d88:	e3a02005 	mov	r2, #5
80025d8c:	e5c3200c 	strb	r2, [r3, #12]
80025d90:	eb0000bf 	bl	80026094 <sched>
80025d94:	e59f0024 	ldr	r0, [pc, #36]	@ 80025dc0 <exit+0x1ac>
80025d98:	ebffef57 	bl	80021afc <panic>
80025d9c:	e1a00000 	nop			@ (mov r0, r0)
80025da0:	e24bd004 	sub	sp, fp, #4
80025da4:	e8bd8800 	pop	{fp, pc}
80025da8:	800b32d4 	.word	0x800b32d4
80025dac:	800b32d0 	.word	0x800b32d0
80025db0:	8002b768 	.word	0x8002b768
80025db4:	800b0d9c 	.word	0x800b0d9c
80025db8:	800b0dd0 	.word	0x800b0dd0
80025dbc:	800b32d0 	.word	0x800b32d0
80025dc0:	8002b778 	.word	0x8002b778

80025dc4 <wait>:
80025dc4:	e92d4800 	push	{fp, lr}
80025dc8:	e28db004 	add	fp, sp, #4
80025dcc:	e24dd010 	sub	sp, sp, #16
80025dd0:	e59f0150 	ldr	r0, [pc, #336]	@ 80025f28 <wait+0x164>
80025dd4:	eb00032e 	bl	80026a94 <acquire>
80025dd8:	e3a03000 	mov	r3, #0
80025ddc:	e50b300c 	str	r3, [fp, #-12]
80025de0:	e59f3144 	ldr	r3, [pc, #324]	@ 80025f2c <wait+0x168>
80025de4:	e50b3008 	str	r3, [fp, #-8]
80025de8:	ea000035 	b	80025ec4 <wait+0x100>
80025dec:	e51b3008 	ldr	r3, [fp, #-8]
80025df0:	e5932014 	ldr	r2, [r3, #20]
80025df4:	e59f3134 	ldr	r3, [pc, #308]	@ 80025f30 <wait+0x16c>
80025df8:	e5933000 	ldr	r3, [r3]
80025dfc:	e1520003 	cmp	r2, r3
80025e00:	1a00002b 	bne	80025eb4 <wait+0xf0>
80025e04:	e3a03001 	mov	r3, #1
80025e08:	e50b300c 	str	r3, [fp, #-12]
80025e0c:	e51b3008 	ldr	r3, [fp, #-8]
80025e10:	e5d3300c 	ldrb	r3, [r3, #12]
80025e14:	e3530005 	cmp	r3, #5
80025e18:	1a000026 	bne	80025eb8 <wait+0xf4>
80025e1c:	e51b3008 	ldr	r3, [fp, #-8]
80025e20:	e5933010 	ldr	r3, [r3, #16]
80025e24:	e50b3010 	str	r3, [fp, #-16]
80025e28:	e51b3008 	ldr	r3, [fp, #-8]
80025e2c:	e5933008 	ldr	r3, [r3, #8]
80025e30:	e1a00003 	mov	r0, r3
80025e34:	ebffee01 	bl	80021640 <free_page>
80025e38:	e51b3008 	ldr	r3, [fp, #-8]
80025e3c:	e3a02000 	mov	r2, #0
80025e40:	e5832008 	str	r2, [r3, #8]
80025e44:	e51b3008 	ldr	r3, [fp, #-8]
80025e48:	e5933004 	ldr	r3, [r3, #4]
80025e4c:	e1a00003 	mov	r0, r3
80025e50:	eb00118b 	bl	8002a484 <freevm>
80025e54:	e51b3008 	ldr	r3, [fp, #-8]
80025e58:	e3a02000 	mov	r2, #0
80025e5c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025e60:	e51b3008 	ldr	r3, [fp, #-8]
80025e64:	e3a02000 	mov	r2, #0
80025e68:	e5c3200c 	strb	r2, [r3, #12]
80025e6c:	e51b3008 	ldr	r3, [fp, #-8]
80025e70:	e3a02000 	mov	r2, #0
80025e74:	e5832010 	str	r2, [r3, #16]
80025e78:	e51b3008 	ldr	r3, [fp, #-8]
80025e7c:	e3a02000 	mov	r2, #0
80025e80:	e5832014 	str	r2, [r3, #20]
80025e84:	e51b3008 	ldr	r3, [fp, #-8]
80025e88:	e3a02000 	mov	r2, #0
80025e8c:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80025e90:	e51b3008 	ldr	r3, [fp, #-8]
80025e94:	e3a02000 	mov	r2, #0
80025e98:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025e9c:	e59f0084 	ldr	r0, [pc, #132]	@ 80025f28 <wait+0x164>
80025ea0:	eb000306 	bl	80026ac0 <release>
80025ea4:	e51b0010 	ldr	r0, [fp, #-16]
80025ea8:	ebfffc54 	bl	80025000 <procStatRemover>
80025eac:	e51b3010 	ldr	r3, [fp, #-16]
80025eb0:	ea000019 	b	80025f1c <wait+0x158>
80025eb4:	e1a00000 	nop			@ (mov r0, r0)
80025eb8:	e51b3008 	ldr	r3, [fp, #-8]
80025ebc:	e2833094 	add	r3, r3, #148	@ 0x94
80025ec0:	e50b3008 	str	r3, [fp, #-8]
80025ec4:	e51b3008 	ldr	r3, [fp, #-8]
80025ec8:	e59f2064 	ldr	r2, [pc, #100]	@ 80025f34 <wait+0x170>
80025ecc:	e1530002 	cmp	r3, r2
80025ed0:	3affffc5 	bcc	80025dec <wait+0x28>
80025ed4:	e51b300c 	ldr	r3, [fp, #-12]
80025ed8:	e3530000 	cmp	r3, #0
80025edc:	0a000004 	beq	80025ef4 <wait+0x130>
80025ee0:	e59f3048 	ldr	r3, [pc, #72]	@ 80025f30 <wait+0x16c>
80025ee4:	e5933000 	ldr	r3, [r3]
80025ee8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025eec:	e3530000 	cmp	r3, #0
80025ef0:	0a000003 	beq	80025f04 <wait+0x140>
80025ef4:	e59f002c 	ldr	r0, [pc, #44]	@ 80025f28 <wait+0x164>
80025ef8:	eb0002f0 	bl	80026ac0 <release>
80025efc:	e3e03000 	mvn	r3, #0
80025f00:	ea000005 	b	80025f1c <wait+0x158>
80025f04:	e59f3024 	ldr	r3, [pc, #36]	@ 80025f30 <wait+0x16c>
80025f08:	e5933000 	ldr	r3, [r3]
80025f0c:	e59f1014 	ldr	r1, [pc, #20]	@ 80025f28 <wait+0x164>
80025f10:	e1a00003 	mov	r0, r3
80025f14:	eb0000b6 	bl	800261f4 <sleep>
80025f18:	eaffffae 	b	80025dd8 <wait+0x14>
80025f1c:	e1a00003 	mov	r0, r3
80025f20:	e24bd004 	sub	sp, fp, #4
80025f24:	e8bd8800 	pop	{fp, pc}
80025f28:	800b0d9c 	.word	0x800b0d9c
80025f2c:	800b0dd0 	.word	0x800b0dd0
80025f30:	800b32d4 	.word	0x800b32d4
80025f34:	800b32d0 	.word	0x800b32d0

80025f38 <scheduler>:
80025f38:	e92d4800 	push	{fp, lr}
80025f3c:	e28db004 	add	fp, sp, #4
80025f40:	e24dd008 	sub	sp, sp, #8
80025f44:	ebffe98b 	bl	80020578 <sti>
80025f48:	e59f009c 	ldr	r0, [pc, #156]	@ 80025fec <scheduler+0xb4>
80025f4c:	eb0002d0 	bl	80026a94 <acquire>
80025f50:	e59f3098 	ldr	r3, [pc, #152]	@ 80025ff0 <scheduler+0xb8>
80025f54:	e50b3008 	str	r3, [fp, #-8]
80025f58:	ea00001c 	b	80025fd0 <scheduler+0x98>
80025f5c:	e51b3008 	ldr	r3, [fp, #-8]
80025f60:	e5d3300c 	ldrb	r3, [r3, #12]
80025f64:	e3530003 	cmp	r3, #3
80025f68:	1a000014 	bne	80025fc0 <scheduler+0x88>
80025f6c:	e59f2080 	ldr	r2, [pc, #128]	@ 80025ff4 <scheduler+0xbc>
80025f70:	e51b3008 	ldr	r3, [fp, #-8]
80025f74:	e5823000 	str	r3, [r2]
80025f78:	e51b0008 	ldr	r0, [fp, #-8]
80025f7c:	eb000f73 	bl	80029d50 <switchuvm>
80025f80:	e51b3008 	ldr	r3, [fp, #-8]
80025f84:	e3a02004 	mov	r2, #4
80025f88:	e5c3200c 	strb	r2, [r3, #12]
80025f8c:	e59f3064 	ldr	r3, [pc, #100]	@ 80025ff8 <scheduler+0xc0>
80025f90:	e5933000 	ldr	r3, [r3]
80025f94:	e2832004 	add	r2, r3, #4
80025f98:	e59f3054 	ldr	r3, [pc, #84]	@ 80025ff4 <scheduler+0xbc>
80025f9c:	e5933000 	ldr	r3, [r3]
80025fa0:	e593301c 	ldr	r3, [r3, #28]
80025fa4:	e1a01003 	mov	r1, r3
80025fa8:	e1a00002 	mov	r0, r2
80025fac:	eb0002d8 	bl	80026b14 <swtch>
80025fb0:	e59f303c 	ldr	r3, [pc, #60]	@ 80025ff4 <scheduler+0xbc>
80025fb4:	e3a02000 	mov	r2, #0
80025fb8:	e5832000 	str	r2, [r3]
80025fbc:	ea000000 	b	80025fc4 <scheduler+0x8c>
80025fc0:	e1a00000 	nop			@ (mov r0, r0)
80025fc4:	e51b3008 	ldr	r3, [fp, #-8]
80025fc8:	e2833094 	add	r3, r3, #148	@ 0x94
80025fcc:	e50b3008 	str	r3, [fp, #-8]
80025fd0:	e51b3008 	ldr	r3, [fp, #-8]
80025fd4:	e59f2020 	ldr	r2, [pc, #32]	@ 80025ffc <scheduler+0xc4>
80025fd8:	e1530002 	cmp	r3, r2
80025fdc:	3affffde 	bcc	80025f5c <scheduler+0x24>
80025fe0:	e59f0004 	ldr	r0, [pc, #4]	@ 80025fec <scheduler+0xb4>
80025fe4:	eb0002b5 	bl	80026ac0 <release>
80025fe8:	eaffffd5 	b	80025f44 <scheduler+0xc>
80025fec:	800b0d9c 	.word	0x800b0d9c
80025ff0:	800b0dd0 	.word	0x800b0dd0
80025ff4:	800b32d4 	.word	0x800b32d4
80025ff8:	800b085c 	.word	0x800b085c
80025ffc:	800b32d0 	.word	0x800b32d0

80026000 <lottery_scheduler>:
80026000:	e92d4800 	push	{fp, lr}
80026004:	e28db004 	add	fp, sp, #4
80026008:	e24dd008 	sub	sp, sp, #8
8002600c:	ebffe959 	bl	80020578 <sti>
80026010:	e59f0070 	ldr	r0, [pc, #112]	@ 80026088 <lottery_scheduler+0x88>
80026014:	eb00029e 	bl	80026a94 <acquire>
80026018:	ebfffcaa 	bl	800252c8 <lottery>
8002601c:	e50b0008 	str	r0, [fp, #-8]
80026020:	e51b3008 	ldr	r3, [fp, #-8]
80026024:	e3530000 	cmp	r3, #0
80026028:	0a000013 	beq	8002607c <lottery_scheduler+0x7c>
8002602c:	e59f2058 	ldr	r2, [pc, #88]	@ 8002608c <lottery_scheduler+0x8c>
80026030:	e51b3008 	ldr	r3, [fp, #-8]
80026034:	e5823000 	str	r3, [r2]
80026038:	e51b0008 	ldr	r0, [fp, #-8]
8002603c:	eb000f43 	bl	80029d50 <switchuvm>
80026040:	e51b3008 	ldr	r3, [fp, #-8]
80026044:	e3a02004 	mov	r2, #4
80026048:	e5c3200c 	strb	r2, [r3, #12]
8002604c:	e59f303c 	ldr	r3, [pc, #60]	@ 80026090 <lottery_scheduler+0x90>
80026050:	e5933000 	ldr	r3, [r3]
80026054:	e2832004 	add	r2, r3, #4
80026058:	e59f302c 	ldr	r3, [pc, #44]	@ 8002608c <lottery_scheduler+0x8c>
8002605c:	e5933000 	ldr	r3, [r3]
80026060:	e593301c 	ldr	r3, [r3, #28]
80026064:	e1a01003 	mov	r1, r3
80026068:	e1a00002 	mov	r0, r2
8002606c:	eb0002a8 	bl	80026b14 <swtch>
80026070:	e59f3014 	ldr	r3, [pc, #20]	@ 8002608c <lottery_scheduler+0x8c>
80026074:	e3a02000 	mov	r2, #0
80026078:	e5832000 	str	r2, [r3]
8002607c:	e59f0004 	ldr	r0, [pc, #4]	@ 80026088 <lottery_scheduler+0x88>
80026080:	eb00028e 	bl	80026ac0 <release>
80026084:	eaffffe0 	b	8002600c <lottery_scheduler+0xc>
80026088:	800b0d9c 	.word	0x800b0d9c
8002608c:	800b32d4 	.word	0x800b32d4
80026090:	800b085c 	.word	0x800b085c

80026094 <sched>:
80026094:	e92d4800 	push	{fp, lr}
80026098:	e28db004 	add	fp, sp, #4
8002609c:	e24dd008 	sub	sp, sp, #8
800260a0:	e59f00b4 	ldr	r0, [pc, #180]	@ 8002615c <sched+0xc8>
800260a4:	eb000290 	bl	80026aec <holding>
800260a8:	e1a03000 	mov	r3, r0
800260ac:	e3530000 	cmp	r3, #0
800260b0:	1a000001 	bne	800260bc <sched+0x28>
800260b4:	e59f00a4 	ldr	r0, [pc, #164]	@ 80026160 <sched+0xcc>
800260b8:	ebffee8f 	bl	80021afc <panic>
800260bc:	e59f30a0 	ldr	r3, [pc, #160]	@ 80026164 <sched+0xd0>
800260c0:	e5933000 	ldr	r3, [r3]
800260c4:	e593300c 	ldr	r3, [r3, #12]
800260c8:	e3530001 	cmp	r3, #1
800260cc:	0a000001 	beq	800260d8 <sched+0x44>
800260d0:	e59f0090 	ldr	r0, [pc, #144]	@ 80026168 <sched+0xd4>
800260d4:	ebffee88 	bl	80021afc <panic>
800260d8:	e59f308c 	ldr	r3, [pc, #140]	@ 8002616c <sched+0xd8>
800260dc:	e5933000 	ldr	r3, [r3]
800260e0:	e5d3300c 	ldrb	r3, [r3, #12]
800260e4:	e3530004 	cmp	r3, #4
800260e8:	1a000001 	bne	800260f4 <sched+0x60>
800260ec:	e59f007c 	ldr	r0, [pc, #124]	@ 80026170 <sched+0xdc>
800260f0:	ebffee81 	bl	80021afc <panic>
800260f4:	ebffe93d 	bl	800205f0 <int_enabled>
800260f8:	e1a03000 	mov	r3, r0
800260fc:	e3530000 	cmp	r3, #0
80026100:	0a000001 	beq	8002610c <sched+0x78>
80026104:	e59f0068 	ldr	r0, [pc, #104]	@ 80026174 <sched+0xe0>
80026108:	ebffee7b 	bl	80021afc <panic>
8002610c:	e59f3050 	ldr	r3, [pc, #80]	@ 80026164 <sched+0xd0>
80026110:	e5933000 	ldr	r3, [r3]
80026114:	e5933010 	ldr	r3, [r3, #16]
80026118:	e50b3008 	str	r3, [fp, #-8]
8002611c:	e59f3048 	ldr	r3, [pc, #72]	@ 8002616c <sched+0xd8>
80026120:	e5933000 	ldr	r3, [r3]
80026124:	e283201c 	add	r2, r3, #28
80026128:	e59f3034 	ldr	r3, [pc, #52]	@ 80026164 <sched+0xd0>
8002612c:	e5933000 	ldr	r3, [r3]
80026130:	e5933004 	ldr	r3, [r3, #4]
80026134:	e1a01003 	mov	r1, r3
80026138:	e1a00002 	mov	r0, r2
8002613c:	eb000274 	bl	80026b14 <swtch>
80026140:	e59f301c 	ldr	r3, [pc, #28]	@ 80026164 <sched+0xd0>
80026144:	e5933000 	ldr	r3, [r3]
80026148:	e51b2008 	ldr	r2, [fp, #-8]
8002614c:	e5832010 	str	r2, [r3, #16]
80026150:	e1a00000 	nop			@ (mov r0, r0)
80026154:	e24bd004 	sub	sp, fp, #4
80026158:	e8bd8800 	pop	{fp, pc}
8002615c:	800b0d9c 	.word	0x800b0d9c
80026160:	8002b784 	.word	0x8002b784
80026164:	800b085c 	.word	0x800b085c
80026168:	8002b798 	.word	0x8002b798
8002616c:	800b32d4 	.word	0x800b32d4
80026170:	8002b7a4 	.word	0x8002b7a4
80026174:	8002b7b4 	.word	0x8002b7b4

80026178 <yield>:
80026178:	e92d4800 	push	{fp, lr}
8002617c:	e28db004 	add	fp, sp, #4
80026180:	e59f0024 	ldr	r0, [pc, #36]	@ 800261ac <yield+0x34>
80026184:	eb000242 	bl	80026a94 <acquire>
80026188:	e59f3020 	ldr	r3, [pc, #32]	@ 800261b0 <yield+0x38>
8002618c:	e5933000 	ldr	r3, [r3]
80026190:	e3a02003 	mov	r2, #3
80026194:	e5c3200c 	strb	r2, [r3, #12]
80026198:	ebffffbd 	bl	80026094 <sched>
8002619c:	e59f0008 	ldr	r0, [pc, #8]	@ 800261ac <yield+0x34>
800261a0:	eb000246 	bl	80026ac0 <release>
800261a4:	e1a00000 	nop			@ (mov r0, r0)
800261a8:	e8bd8800 	pop	{fp, pc}
800261ac:	800b0d9c 	.word	0x800b0d9c
800261b0:	800b32d4 	.word	0x800b32d4

800261b4 <forkret>:
800261b4:	e92d4800 	push	{fp, lr}
800261b8:	e28db004 	add	fp, sp, #4
800261bc:	e59f0028 	ldr	r0, [pc, #40]	@ 800261ec <forkret+0x38>
800261c0:	eb00023e 	bl	80026ac0 <release>
800261c4:	e59f3024 	ldr	r3, [pc, #36]	@ 800261f0 <forkret+0x3c>
800261c8:	e5933000 	ldr	r3, [r3]
800261cc:	e3530000 	cmp	r3, #0
800261d0:	0a000003 	beq	800261e4 <forkret+0x30>
800261d4:	e59f3014 	ldr	r3, [pc, #20]	@ 800261f0 <forkret+0x3c>
800261d8:	e3a02000 	mov	r2, #0
800261dc:	e5832000 	str	r2, [r3]
800261e0:	ebfff806 	bl	80024200 <initlog>
800261e4:	e1a00000 	nop			@ (mov r0, r0)
800261e8:	e8bd8800 	pop	{fp, pc}
800261ec:	800b0d9c 	.word	0x800b0d9c
800261f0:	8002d018 	.word	0x8002d018

800261f4 <sleep>:
800261f4:	e92d4800 	push	{fp, lr}
800261f8:	e28db004 	add	fp, sp, #4
800261fc:	e24dd008 	sub	sp, sp, #8
80026200:	e50b0008 	str	r0, [fp, #-8]
80026204:	e50b100c 	str	r1, [fp, #-12]
80026208:	e59f30a4 	ldr	r3, [pc, #164]	@ 800262b4 <sleep+0xc0>
8002620c:	e5933000 	ldr	r3, [r3]
80026210:	e3530000 	cmp	r3, #0
80026214:	1a000001 	bne	80026220 <sleep+0x2c>
80026218:	e59f0098 	ldr	r0, [pc, #152]	@ 800262b8 <sleep+0xc4>
8002621c:	ebffee36 	bl	80021afc <panic>
80026220:	e51b300c 	ldr	r3, [fp, #-12]
80026224:	e3530000 	cmp	r3, #0
80026228:	1a000001 	bne	80026234 <sleep+0x40>
8002622c:	e59f0088 	ldr	r0, [pc, #136]	@ 800262bc <sleep+0xc8>
80026230:	ebffee31 	bl	80021afc <panic>
80026234:	e51b300c 	ldr	r3, [fp, #-12]
80026238:	e59f2080 	ldr	r2, [pc, #128]	@ 800262c0 <sleep+0xcc>
8002623c:	e1530002 	cmp	r3, r2
80026240:	0a000003 	beq	80026254 <sleep+0x60>
80026244:	e59f0074 	ldr	r0, [pc, #116]	@ 800262c0 <sleep+0xcc>
80026248:	eb000211 	bl	80026a94 <acquire>
8002624c:	e51b000c 	ldr	r0, [fp, #-12]
80026250:	eb00021a 	bl	80026ac0 <release>
80026254:	e59f3058 	ldr	r3, [pc, #88]	@ 800262b4 <sleep+0xc0>
80026258:	e5933000 	ldr	r3, [r3]
8002625c:	e51b2008 	ldr	r2, [fp, #-8]
80026260:	e5832020 	str	r2, [r3, #32]
80026264:	e59f3048 	ldr	r3, [pc, #72]	@ 800262b4 <sleep+0xc0>
80026268:	e5933000 	ldr	r3, [r3]
8002626c:	e3a02002 	mov	r2, #2
80026270:	e5c3200c 	strb	r2, [r3, #12]
80026274:	ebffff86 	bl	80026094 <sched>
80026278:	e59f3034 	ldr	r3, [pc, #52]	@ 800262b4 <sleep+0xc0>
8002627c:	e5933000 	ldr	r3, [r3]
80026280:	e3a02000 	mov	r2, #0
80026284:	e5832020 	str	r2, [r3, #32]
80026288:	e51b300c 	ldr	r3, [fp, #-12]
8002628c:	e59f202c 	ldr	r2, [pc, #44]	@ 800262c0 <sleep+0xcc>
80026290:	e1530002 	cmp	r3, r2
80026294:	0a000003 	beq	800262a8 <sleep+0xb4>
80026298:	e59f0020 	ldr	r0, [pc, #32]	@ 800262c0 <sleep+0xcc>
8002629c:	eb000207 	bl	80026ac0 <release>
800262a0:	e51b000c 	ldr	r0, [fp, #-12]
800262a4:	eb0001fa 	bl	80026a94 <acquire>
800262a8:	e1a00000 	nop			@ (mov r0, r0)
800262ac:	e24bd004 	sub	sp, fp, #4
800262b0:	e8bd8800 	pop	{fp, pc}
800262b4:	800b32d4 	.word	0x800b32d4
800262b8:	8002b7c8 	.word	0x8002b7c8
800262bc:	8002b7d0 	.word	0x8002b7d0
800262c0:	800b0d9c 	.word	0x800b0d9c

800262c4 <wakeup1>:
800262c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800262c8:	e28db000 	add	fp, sp, #0
800262cc:	e24dd014 	sub	sp, sp, #20
800262d0:	e50b0010 	str	r0, [fp, #-16]
800262d4:	e59f3064 	ldr	r3, [pc, #100]	@ 80026340 <wakeup1+0x7c>
800262d8:	e50b3008 	str	r3, [fp, #-8]
800262dc:	ea00000e 	b	8002631c <wakeup1+0x58>
800262e0:	e51b3008 	ldr	r3, [fp, #-8]
800262e4:	e5d3300c 	ldrb	r3, [r3, #12]
800262e8:	e3530002 	cmp	r3, #2
800262ec:	1a000007 	bne	80026310 <wakeup1+0x4c>
800262f0:	e51b3008 	ldr	r3, [fp, #-8]
800262f4:	e5933020 	ldr	r3, [r3, #32]
800262f8:	e51b2010 	ldr	r2, [fp, #-16]
800262fc:	e1520003 	cmp	r2, r3
80026300:	1a000002 	bne	80026310 <wakeup1+0x4c>
80026304:	e51b3008 	ldr	r3, [fp, #-8]
80026308:	e3a02003 	mov	r2, #3
8002630c:	e5c3200c 	strb	r2, [r3, #12]
80026310:	e51b3008 	ldr	r3, [fp, #-8]
80026314:	e2833094 	add	r3, r3, #148	@ 0x94
80026318:	e50b3008 	str	r3, [fp, #-8]
8002631c:	e51b3008 	ldr	r3, [fp, #-8]
80026320:	e59f201c 	ldr	r2, [pc, #28]	@ 80026344 <wakeup1+0x80>
80026324:	e1530002 	cmp	r3, r2
80026328:	3affffec 	bcc	800262e0 <wakeup1+0x1c>
8002632c:	e1a00000 	nop			@ (mov r0, r0)
80026330:	e1a00000 	nop			@ (mov r0, r0)
80026334:	e28bd000 	add	sp, fp, #0
80026338:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002633c:	e12fff1e 	bx	lr
80026340:	800b0dd0 	.word	0x800b0dd0
80026344:	800b32d0 	.word	0x800b32d0

80026348 <wakeup2>:
80026348:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002634c:	e28db000 	add	fp, sp, #0
80026350:	e24dd014 	sub	sp, sp, #20
80026354:	e50b0010 	str	r0, [fp, #-16]
80026358:	e59f308c 	ldr	r3, [pc, #140]	@ 800263ec <wakeup2+0xa4>
8002635c:	e50b3008 	str	r3, [fp, #-8]
80026360:	ea000018 	b	800263c8 <wakeup2+0x80>
80026364:	e51b3008 	ldr	r3, [fp, #-8]
80026368:	e5d3300c 	ldrb	r3, [r3, #12]
8002636c:	e3530002 	cmp	r3, #2
80026370:	1a000011 	bne	800263bc <wakeup2+0x74>
80026374:	e51b3008 	ldr	r3, [fp, #-8]
80026378:	e5933020 	ldr	r3, [r3, #32]
8002637c:	e51b2010 	ldr	r2, [fp, #-16]
80026380:	e1520003 	cmp	r2, r3
80026384:	1a00000c 	bne	800263bc <wakeup2+0x74>
80026388:	e51b3008 	ldr	r3, [fp, #-8]
8002638c:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80026390:	e3530000 	cmp	r3, #0
80026394:	da000005 	ble	800263b0 <wakeup2+0x68>
80026398:	e51b3008 	ldr	r3, [fp, #-8]
8002639c:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800263a0:	e2432001 	sub	r2, r3, #1
800263a4:	e51b3008 	ldr	r3, [fp, #-8]
800263a8:	e5832080 	str	r2, [r3, #128]	@ 0x80
800263ac:	ea000002 	b	800263bc <wakeup2+0x74>
800263b0:	e51b3008 	ldr	r3, [fp, #-8]
800263b4:	e3a02003 	mov	r2, #3
800263b8:	e5c3200c 	strb	r2, [r3, #12]
800263bc:	e51b3008 	ldr	r3, [fp, #-8]
800263c0:	e2833094 	add	r3, r3, #148	@ 0x94
800263c4:	e50b3008 	str	r3, [fp, #-8]
800263c8:	e51b3008 	ldr	r3, [fp, #-8]
800263cc:	e59f201c 	ldr	r2, [pc, #28]	@ 800263f0 <wakeup2+0xa8>
800263d0:	e1530002 	cmp	r3, r2
800263d4:	3affffe2 	bcc	80026364 <wakeup2+0x1c>
800263d8:	e1a00000 	nop			@ (mov r0, r0)
800263dc:	e1a00000 	nop			@ (mov r0, r0)
800263e0:	e28bd000 	add	sp, fp, #0
800263e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800263e8:	e12fff1e 	bx	lr
800263ec:	800b0dd0 	.word	0x800b0dd0
800263f0:	800b32d0 	.word	0x800b32d0

800263f4 <wakeup>:
800263f4:	e92d4800 	push	{fp, lr}
800263f8:	e28db004 	add	fp, sp, #4
800263fc:	e24dd008 	sub	sp, sp, #8
80026400:	e50b0008 	str	r0, [fp, #-8]
80026404:	e59f0038 	ldr	r0, [pc, #56]	@ 80026444 <wakeup+0x50>
80026408:	eb0001a1 	bl	80026a94 <acquire>
8002640c:	e51b3008 	ldr	r3, [fp, #-8]
80026410:	e59f2030 	ldr	r2, [pc, #48]	@ 80026448 <wakeup+0x54>
80026414:	e1530002 	cmp	r3, r2
80026418:	1a000002 	bne	80026428 <wakeup+0x34>
8002641c:	e51b0008 	ldr	r0, [fp, #-8]
80026420:	ebffffc8 	bl	80026348 <wakeup2>
80026424:	ea000001 	b	80026430 <wakeup+0x3c>
80026428:	e51b0008 	ldr	r0, [fp, #-8]
8002642c:	ebffffa4 	bl	800262c4 <wakeup1>
80026430:	e59f000c 	ldr	r0, [pc, #12]	@ 80026444 <wakeup+0x50>
80026434:	eb0001a1 	bl	80026ac0 <release>
80026438:	e1a00000 	nop			@ (mov r0, r0)
8002643c:	e24bd004 	sub	sp, fp, #4
80026440:	e8bd8800 	pop	{fp, pc}
80026444:	800b0d9c 	.word	0x800b0d9c
80026448:	800b3414 	.word	0x800b3414

8002644c <kill>:
8002644c:	e92d4800 	push	{fp, lr}
80026450:	e28db004 	add	fp, sp, #4
80026454:	e24dd010 	sub	sp, sp, #16
80026458:	e50b0010 	str	r0, [fp, #-16]
8002645c:	e59f008c 	ldr	r0, [pc, #140]	@ 800264f0 <kill+0xa4>
80026460:	eb00018b 	bl	80026a94 <acquire>
80026464:	e59f3088 	ldr	r3, [pc, #136]	@ 800264f4 <kill+0xa8>
80026468:	e50b3008 	str	r3, [fp, #-8]
8002646c:	ea000015 	b	800264c8 <kill+0x7c>
80026470:	e51b3008 	ldr	r3, [fp, #-8]
80026474:	e5933010 	ldr	r3, [r3, #16]
80026478:	e51b2010 	ldr	r2, [fp, #-16]
8002647c:	e1520003 	cmp	r2, r3
80026480:	1a00000d 	bne	800264bc <kill+0x70>
80026484:	e51b3008 	ldr	r3, [fp, #-8]
80026488:	e3a02001 	mov	r2, #1
8002648c:	e5832024 	str	r2, [r3, #36]	@ 0x24
80026490:	e51b3008 	ldr	r3, [fp, #-8]
80026494:	e5d3300c 	ldrb	r3, [r3, #12]
80026498:	e3530002 	cmp	r3, #2
8002649c:	1a000002 	bne	800264ac <kill+0x60>
800264a0:	e51b3008 	ldr	r3, [fp, #-8]
800264a4:	e3a02003 	mov	r2, #3
800264a8:	e5c3200c 	strb	r2, [r3, #12]
800264ac:	e59f003c 	ldr	r0, [pc, #60]	@ 800264f0 <kill+0xa4>
800264b0:	eb000182 	bl	80026ac0 <release>
800264b4:	e3a03000 	mov	r3, #0
800264b8:	ea000009 	b	800264e4 <kill+0x98>
800264bc:	e51b3008 	ldr	r3, [fp, #-8]
800264c0:	e2833094 	add	r3, r3, #148	@ 0x94
800264c4:	e50b3008 	str	r3, [fp, #-8]
800264c8:	e51b3008 	ldr	r3, [fp, #-8]
800264cc:	e59f2024 	ldr	r2, [pc, #36]	@ 800264f8 <kill+0xac>
800264d0:	e1530002 	cmp	r3, r2
800264d4:	3affffe5 	bcc	80026470 <kill+0x24>
800264d8:	e59f0010 	ldr	r0, [pc, #16]	@ 800264f0 <kill+0xa4>
800264dc:	eb000177 	bl	80026ac0 <release>
800264e0:	e3e03000 	mvn	r3, #0
800264e4:	e1a00003 	mov	r0, r3
800264e8:	e24bd004 	sub	sp, fp, #4
800264ec:	e8bd8800 	pop	{fp, pc}
800264f0:	800b0d9c 	.word	0x800b0d9c
800264f4:	800b0dd0 	.word	0x800b0dd0
800264f8:	800b32d0 	.word	0x800b32d0

800264fc <procdump>:
800264fc:	e92d4800 	push	{fp, lr}
80026500:	e28db004 	add	fp, sp, #4
80026504:	e24dd008 	sub	sp, sp, #8
80026508:	e59f30b8 	ldr	r3, [pc, #184]	@ 800265c8 <procdump+0xcc>
8002650c:	e50b3008 	str	r3, [fp, #-8]
80026510:	ea000023 	b	800265a4 <procdump+0xa8>
80026514:	e51b3008 	ldr	r3, [fp, #-8]
80026518:	e5d3300c 	ldrb	r3, [r3, #12]
8002651c:	e3530000 	cmp	r3, #0
80026520:	0a00001b 	beq	80026594 <procdump+0x98>
80026524:	e51b3008 	ldr	r3, [fp, #-8]
80026528:	e5d3300c 	ldrb	r3, [r3, #12]
8002652c:	e3530005 	cmp	r3, #5
80026530:	8a00000d 	bhi	8002656c <procdump+0x70>
80026534:	e51b3008 	ldr	r3, [fp, #-8]
80026538:	e5d3300c 	ldrb	r3, [r3, #12]
8002653c:	e1a02003 	mov	r2, r3
80026540:	e59f3084 	ldr	r3, [pc, #132]	@ 800265cc <procdump+0xd0>
80026544:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026548:	e3530000 	cmp	r3, #0
8002654c:	0a000006 	beq	8002656c <procdump+0x70>
80026550:	e51b3008 	ldr	r3, [fp, #-8]
80026554:	e5d3300c 	ldrb	r3, [r3, #12]
80026558:	e1a02003 	mov	r2, r3
8002655c:	e59f3068 	ldr	r3, [pc, #104]	@ 800265cc <procdump+0xd0>
80026560:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026564:	e50b300c 	str	r3, [fp, #-12]
80026568:	ea000001 	b	80026574 <procdump+0x78>
8002656c:	e59f305c 	ldr	r3, [pc, #92]	@ 800265d0 <procdump+0xd4>
80026570:	e50b300c 	str	r3, [fp, #-12]
80026574:	e51b3008 	ldr	r3, [fp, #-8]
80026578:	e5931010 	ldr	r1, [r3, #16]
8002657c:	e51b3008 	ldr	r3, [fp, #-8]
80026580:	e283306c 	add	r3, r3, #108	@ 0x6c
80026584:	e51b200c 	ldr	r2, [fp, #-12]
80026588:	e59f0044 	ldr	r0, [pc, #68]	@ 800265d4 <procdump+0xd8>
8002658c:	ebffeccf 	bl	800218d0 <cprintf>
80026590:	ea000000 	b	80026598 <procdump+0x9c>
80026594:	e1a00000 	nop			@ (mov r0, r0)
80026598:	e51b3008 	ldr	r3, [fp, #-8]
8002659c:	e2833094 	add	r3, r3, #148	@ 0x94
800265a0:	e50b3008 	str	r3, [fp, #-8]
800265a4:	e51b3008 	ldr	r3, [fp, #-8]
800265a8:	e59f2028 	ldr	r2, [pc, #40]	@ 800265d8 <procdump+0xdc>
800265ac:	e1530002 	cmp	r3, r2
800265b0:	3affffd7 	bcc	80026514 <procdump+0x18>
800265b4:	e59f0020 	ldr	r0, [pc, #32]	@ 800265dc <procdump+0xe0>
800265b8:	ebffe893 	bl	8002080c <show_callstk>
800265bc:	e1a00000 	nop			@ (mov r0, r0)
800265c0:	e24bd004 	sub	sp, fp, #4
800265c4:	e8bd8800 	pop	{fp, pc}
800265c8:	800b0dd0 	.word	0x800b0dd0
800265cc:	8002d01c 	.word	0x8002d01c
800265d0:	8002b7e4 	.word	0x8002b7e4
800265d4:	8002b7e8 	.word	0x8002b7e8
800265d8:	800b32d0 	.word	0x800b32d0
800265dc:	8002b7f4 	.word	0x8002b7f4

800265e0 <disproc>:
800265e0:	e92d4800 	push	{fp, lr}
800265e4:	e28db004 	add	fp, sp, #4
800265e8:	e24dd018 	sub	sp, sp, #24
800265ec:	e59f00fc 	ldr	r0, [pc, #252]	@ 800266f0 <disproc+0x110>
800265f0:	ebffecb6 	bl	800218d0 <cprintf>
800265f4:	e59f30f8 	ldr	r3, [pc, #248]	@ 800266f4 <disproc+0x114>
800265f8:	e50b3008 	str	r3, [fp, #-8]
800265fc:	ea000033 	b	800266d0 <disproc+0xf0>
80026600:	e51b3008 	ldr	r3, [fp, #-8]
80026604:	e5d3300c 	ldrb	r3, [r3, #12]
80026608:	e3530000 	cmp	r3, #0
8002660c:	0a00002b 	beq	800266c0 <disproc+0xe0>
80026610:	e51b3008 	ldr	r3, [fp, #-8]
80026614:	e5d3300c 	ldrb	r3, [r3, #12]
80026618:	e3530005 	cmp	r3, #5
8002661c:	8a00000d 	bhi	80026658 <disproc+0x78>
80026620:	e51b3008 	ldr	r3, [fp, #-8]
80026624:	e5d3300c 	ldrb	r3, [r3, #12]
80026628:	e1a02003 	mov	r2, r3
8002662c:	e59f30c4 	ldr	r3, [pc, #196]	@ 800266f8 <disproc+0x118>
80026630:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026634:	e3530000 	cmp	r3, #0
80026638:	0a000006 	beq	80026658 <disproc+0x78>
8002663c:	e51b3008 	ldr	r3, [fp, #-8]
80026640:	e5d3300c 	ldrb	r3, [r3, #12]
80026644:	e1a02003 	mov	r2, r3
80026648:	e59f30a8 	ldr	r3, [pc, #168]	@ 800266f8 <disproc+0x118>
8002664c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026650:	e50b300c 	str	r3, [fp, #-12]
80026654:	ea000001 	b	80026660 <disproc+0x80>
80026658:	e59f309c 	ldr	r3, [pc, #156]	@ 800266fc <disproc+0x11c>
8002665c:	e50b300c 	str	r3, [fp, #-12]
80026660:	e51b3008 	ldr	r3, [fp, #-8]
80026664:	e5933010 	ldr	r3, [r3, #16]
80026668:	e3530001 	cmp	r3, #1
8002666c:	0a000003 	beq	80026680 <disproc+0xa0>
80026670:	e51b3008 	ldr	r3, [fp, #-8]
80026674:	e5933014 	ldr	r3, [r3, #20]
80026678:	e5933010 	ldr	r3, [r3, #16]
8002667c:	ea000000 	b	80026684 <disproc+0xa4>
80026680:	e3a03000 	mov	r3, #0
80026684:	e50b3010 	str	r3, [fp, #-16]
80026688:	e51b3008 	ldr	r3, [fp, #-8]
8002668c:	e5931010 	ldr	r1, [r3, #16]
80026690:	e51b3008 	ldr	r3, [fp, #-8]
80026694:	e283206c 	add	r2, r3, #108	@ 0x6c
80026698:	e51b3008 	ldr	r3, [fp, #-8]
8002669c:	e593307c 	ldr	r3, [r3, #124]	@ 0x7c
800266a0:	e58d3004 	str	r3, [sp, #4]
800266a4:	e51b300c 	ldr	r3, [fp, #-12]
800266a8:	e58d3000 	str	r3, [sp]
800266ac:	e1a03002 	mov	r3, r2
800266b0:	e51b2010 	ldr	r2, [fp, #-16]
800266b4:	e59f0044 	ldr	r0, [pc, #68]	@ 80026700 <disproc+0x120>
800266b8:	ebffec84 	bl	800218d0 <cprintf>
800266bc:	ea000000 	b	800266c4 <disproc+0xe4>
800266c0:	e1a00000 	nop			@ (mov r0, r0)
800266c4:	e51b3008 	ldr	r3, [fp, #-8]
800266c8:	e2833094 	add	r3, r3, #148	@ 0x94
800266cc:	e50b3008 	str	r3, [fp, #-8]
800266d0:	e51b3008 	ldr	r3, [fp, #-8]
800266d4:	e59f2028 	ldr	r2, [pc, #40]	@ 80026704 <disproc+0x124>
800266d8:	e1530002 	cmp	r3, r2
800266dc:	3affffc7 	bcc	80026600 <disproc+0x20>
800266e0:	e1a00000 	nop			@ (mov r0, r0)
800266e4:	e1a00000 	nop			@ (mov r0, r0)
800266e8:	e24bd004 	sub	sp, fp, #4
800266ec:	e8bd8800 	pop	{fp, pc}
800266f0:	8002b800 	.word	0x8002b800
800266f4:	800b0dd0 	.word	0x800b0dd0
800266f8:	8002d034 	.word	0x8002d034
800266fc:	8002b7e4 	.word	0x8002b7e4
80026700:	8002b824 	.word	0x8002b824
80026704:	800b32d0 	.word	0x800b32d0

80026708 <srand>:
80026708:	e92d4800 	push	{fp, lr}
8002670c:	e28db004 	add	fp, sp, #4
80026710:	e24dd008 	sub	sp, sp, #8
80026714:	e50b0008 	str	r0, [fp, #-8]
80026718:	e59f2024 	ldr	r2, [pc, #36]	@ 80026744 <srand+0x3c>
8002671c:	e51b3008 	ldr	r3, [fp, #-8]
80026720:	e5823000 	str	r3, [r2]
80026724:	e59f3018 	ldr	r3, [pc, #24]	@ 80026744 <srand+0x3c>
80026728:	e5933000 	ldr	r3, [r3]
8002672c:	e1a01003 	mov	r1, r3
80026730:	e59f0010 	ldr	r0, [pc, #16]	@ 80026748 <srand+0x40>
80026734:	ebffec65 	bl	800218d0 <cprintf>
80026738:	e1a00000 	nop			@ (mov r0, r0)
8002673c:	e24bd004 	sub	sp, fp, #4
80026740:	e8bd8800 	pop	{fp, pc}
80026744:	800b32d8 	.word	0x800b32d8
80026748:	8002b838 	.word	0x8002b838

8002674c <setticket>:
8002674c:	e92d4800 	push	{fp, lr}
80026750:	e28db004 	add	fp, sp, #4
80026754:	e24dd010 	sub	sp, sp, #16
80026758:	e50b0010 	str	r0, [fp, #-16]
8002675c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026760:	e51b3010 	ldr	r3, [fp, #-16]
80026764:	e3530000 	cmp	r3, #0
80026768:	ca000003 	bgt	8002677c <setticket+0x30>
8002676c:	e59f010c 	ldr	r0, [pc, #268]	@ 80026880 <setticket+0x134>
80026770:	ebffec56 	bl	800218d0 <cprintf>
80026774:	e3e03000 	mvn	r3, #0
80026778:	ea00003d 	b	80026874 <setticket+0x128>
8002677c:	e3a03000 	mov	r3, #0
80026780:	e50b3008 	str	r3, [fp, #-8]
80026784:	ea00001b 	b	800267f8 <setticket+0xac>
80026788:	e59f20f4 	ldr	r2, [pc, #244]	@ 80026884 <setticket+0x138>
8002678c:	e51b3008 	ldr	r3, [fp, #-8]
80026790:	e283300c 	add	r3, r3, #12
80026794:	e1a03103 	lsl	r3, r3, #2
80026798:	e0823003 	add	r3, r2, r3
8002679c:	e5933004 	ldr	r3, [r3, #4]
800267a0:	e3530001 	cmp	r3, #1
800267a4:	1a000008 	bne	800267cc <setticket+0x80>
800267a8:	e59f20d4 	ldr	r2, [pc, #212]	@ 80026884 <setticket+0x138>
800267ac:	e51b3008 	ldr	r3, [fp, #-8]
800267b0:	e283304c 	add	r3, r3, #76	@ 0x4c
800267b4:	e1a03103 	lsl	r3, r3, #2
800267b8:	e0823003 	add	r3, r2, r3
800267bc:	e5933004 	ldr	r3, [r3, #4]
800267c0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800267c4:	e1520003 	cmp	r2, r3
800267c8:	0a00000e 	beq	80026808 <setticket+0xbc>
800267cc:	e51b3008 	ldr	r3, [fp, #-8]
800267d0:	e353003f 	cmp	r3, #63	@ 0x3f
800267d4:	1a000004 	bne	800267ec <setticket+0xa0>
800267d8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800267dc:	e59f00a4 	ldr	r0, [pc, #164]	@ 80026888 <setticket+0x13c>
800267e0:	ebffec3a 	bl	800218d0 <cprintf>
800267e4:	e3e03000 	mvn	r3, #0
800267e8:	ea000021 	b	80026874 <setticket+0x128>
800267ec:	e51b3008 	ldr	r3, [fp, #-8]
800267f0:	e2833001 	add	r3, r3, #1
800267f4:	e50b3008 	str	r3, [fp, #-8]
800267f8:	e51b3008 	ldr	r3, [fp, #-8]
800267fc:	e353003f 	cmp	r3, #63	@ 0x3f
80026800:	daffffe0 	ble	80026788 <setticket+0x3c>
80026804:	ea000000 	b	8002680c <setticket+0xc0>
80026808:	e1a00000 	nop			@ (mov r0, r0)
8002680c:	e59f0070 	ldr	r0, [pc, #112]	@ 80026884 <setticket+0x138>
80026810:	eb00009f 	bl	80026a94 <acquire>
80026814:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80026818:	ebfff9d2 	bl	80024f68 <getIndexStat>
8002681c:	e50b000c 	str	r0, [fp, #-12]
80026820:	e51b300c 	ldr	r3, [fp, #-12]
80026824:	e3730001 	cmn	r3, #1
80026828:	1a000003 	bne	8002683c <setticket+0xf0>
8002682c:	e59f0050 	ldr	r0, [pc, #80]	@ 80026884 <setticket+0x138>
80026830:	eb0000a2 	bl	80026ac0 <release>
80026834:	e59f0050 	ldr	r0, [pc, #80]	@ 8002688c <setticket+0x140>
80026838:	ebffecaf 	bl	80021afc <panic>
8002683c:	e59f2040 	ldr	r2, [pc, #64]	@ 80026884 <setticket+0x138>
80026840:	e51b300c 	ldr	r3, [fp, #-12]
80026844:	e283308c 	add	r3, r3, #140	@ 0x8c
80026848:	e1a03103 	lsl	r3, r3, #2
8002684c:	e0823003 	add	r3, r2, r3
80026850:	e51b2010 	ldr	r2, [fp, #-16]
80026854:	e5832004 	str	r2, [r3, #4]
80026858:	e59f0024 	ldr	r0, [pc, #36]	@ 80026884 <setticket+0x138>
8002685c:	eb000097 	bl	80026ac0 <release>
80026860:	e51b2010 	ldr	r2, [fp, #-16]
80026864:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026868:	e59f0020 	ldr	r0, [pc, #32]	@ 80026890 <setticket+0x144>
8002686c:	ebffec17 	bl	800218d0 <cprintf>
80026870:	e3a03000 	mov	r3, #0
80026874:	e1a00003 	mov	r0, r3
80026878:	e24bd004 	sub	sp, fp, #4
8002687c:	e8bd8800 	pop	{fp, pc}
80026880:	8002b850 	.word	0x8002b850
80026884:	800b0868 	.word	0x800b0868
80026888:	8002b87c 	.word	0x8002b87c
8002688c:	8002b6dc 	.word	0x8002b6dc
80026890:	8002b89c 	.word	0x8002b89c

80026894 <getpinfo>:
80026894:	e92d4800 	push	{fp, lr}
80026898:	e28db004 	add	fp, sp, #4
8002689c:	e24dd008 	sub	sp, sp, #8
800268a0:	e50b0008 	str	r0, [fp, #-8]
800268a4:	e51b3008 	ldr	r3, [fp, #-8]
800268a8:	e3530000 	cmp	r3, #0
800268ac:	1a000003 	bne	800268c0 <getpinfo+0x2c>
800268b0:	e59f0038 	ldr	r0, [pc, #56]	@ 800268f0 <getpinfo+0x5c>
800268b4:	ebffec05 	bl	800218d0 <cprintf>
800268b8:	e3e03000 	mvn	r3, #0
800268bc:	ea000008 	b	800268e4 <getpinfo+0x50>
800268c0:	e51b3008 	ldr	r3, [fp, #-8]
800268c4:	e5932000 	ldr	r2, [r3]
800268c8:	e59f3024 	ldr	r3, [pc, #36]	@ 800268f4 <getpinfo+0x60>
800268cc:	e1a00002 	mov	r0, r2
800268d0:	e2833034 	add	r3, r3, #52	@ 0x34
800268d4:	e3a02c05 	mov	r2, #1280	@ 0x500
800268d8:	e1a01003 	mov	r1, r3
800268dc:	ebffe678 	bl	800202c4 <memcpy>
800268e0:	e3a03000 	mov	r3, #0
800268e4:	e1a00003 	mov	r0, r3
800268e8:	e24bd004 	sub	sp, fp, #4
800268ec:	e8bd8800 	pop	{fp, pc}
800268f0:	8002b8c8 	.word	0x8002b8c8
800268f4:	800b0868 	.word	0x800b0868

800268f8 <printPages>:
800268f8:	e92d4800 	push	{fp, lr}
800268fc:	e28db004 	add	fp, sp, #4
80026900:	e24dd010 	sub	sp, sp, #16
80026904:	e3a03000 	mov	r3, #0
80026908:	e50b3008 	str	r3, [fp, #-8]
8002690c:	e3a03000 	mov	r3, #0
80026910:	e50b300c 	str	r3, [fp, #-12]
80026914:	e59f011c 	ldr	r0, [pc, #284]	@ 80026a38 <printPages+0x140>
80026918:	ebffebec 	bl	800218d0 <cprintf>
8002691c:	e51b3008 	ldr	r3, [fp, #-8]
80026920:	e3530009 	cmp	r3, #9
80026924:	ca00001b 	bgt	80026998 <printPages+0xa0>
80026928:	e51b300c 	ldr	r3, [fp, #-12]
8002692c:	e373010e 	cmn	r3, #-2147483645	@ 0x80000003
80026930:	ca000018 	bgt	80026998 <printPages+0xa0>
80026934:	e59f3100 	ldr	r3, [pc, #256]	@ 80026a3c <printPages+0x144>
80026938:	e5933000 	ldr	r3, [r3]
8002693c:	e5933004 	ldr	r3, [r3, #4]
80026940:	e51b100c 	ldr	r1, [fp, #-12]
80026944:	e3a02000 	mov	r2, #0
80026948:	e1a00003 	mov	r0, r3
8002694c:	eb000c7e 	bl	80029b4c <walkpgdir>
80026950:	e50b0010 	str	r0, [fp, #-16]
80026954:	e51b3010 	ldr	r3, [fp, #-16]
80026958:	e5933000 	ldr	r3, [r3]
8002695c:	e3530000 	cmp	r3, #0
80026960:	0a000008 	beq	80026988 <printPages+0x90>
80026964:	e51b3010 	ldr	r3, [fp, #-16]
80026968:	e5932000 	ldr	r2, [r3]
8002696c:	e51b300c 	ldr	r3, [fp, #-12]
80026970:	e51b1008 	ldr	r1, [fp, #-8]
80026974:	e59f00c4 	ldr	r0, [pc, #196]	@ 80026a40 <printPages+0x148>
80026978:	ebffebd4 	bl	800218d0 <cprintf>
8002697c:	e51b3008 	ldr	r3, [fp, #-8]
80026980:	e2833001 	add	r3, r3, #1
80026984:	e50b3008 	str	r3, [fp, #-8]
80026988:	e51b300c 	ldr	r3, [fp, #-12]
8002698c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80026990:	e50b300c 	str	r3, [fp, #-12]
80026994:	eaffffe0 	b	8002691c <printPages+0x24>
80026998:	e3a03000 	mov	r3, #0
8002699c:	e50b3008 	str	r3, [fp, #-8]
800269a0:	e3e03106 	mvn	r3, #-2147483647	@ 0x80000001
800269a4:	e50b300c 	str	r3, [fp, #-12]
800269a8:	e59f0094 	ldr	r0, [pc, #148]	@ 80026a44 <printPages+0x14c>
800269ac:	ebffebc7 	bl	800218d0 <cprintf>
800269b0:	e51b3008 	ldr	r3, [fp, #-8]
800269b4:	e3530009 	cmp	r3, #9
800269b8:	ca00001b 	bgt	80026a2c <printPages+0x134>
800269bc:	e51b300c 	ldr	r3, [fp, #-12]
800269c0:	e3530000 	cmp	r3, #0
800269c4:	da000018 	ble	80026a2c <printPages+0x134>
800269c8:	e59f306c 	ldr	r3, [pc, #108]	@ 80026a3c <printPages+0x144>
800269cc:	e5933000 	ldr	r3, [r3]
800269d0:	e5933004 	ldr	r3, [r3, #4]
800269d4:	e51b100c 	ldr	r1, [fp, #-12]
800269d8:	e3a02000 	mov	r2, #0
800269dc:	e1a00003 	mov	r0, r3
800269e0:	eb000c59 	bl	80029b4c <walkpgdir>
800269e4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800269e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800269ec:	e5933000 	ldr	r3, [r3]
800269f0:	e3530000 	cmp	r3, #0
800269f4:	0a000008 	beq	80026a1c <printPages+0x124>
800269f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800269fc:	e5932000 	ldr	r2, [r3]
80026a00:	e51b300c 	ldr	r3, [fp, #-12]
80026a04:	e51b1008 	ldr	r1, [fp, #-8]
80026a08:	e59f0038 	ldr	r0, [pc, #56]	@ 80026a48 <printPages+0x150>
80026a0c:	ebffebaf 	bl	800218d0 <cprintf>
80026a10:	e51b3008 	ldr	r3, [fp, #-8]
80026a14:	e2833001 	add	r3, r3, #1
80026a18:	e50b3008 	str	r3, [fp, #-8]
80026a1c:	e51b300c 	ldr	r3, [fp, #-12]
80026a20:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
80026a24:	e50b300c 	str	r3, [fp, #-12]
80026a28:	eaffffe0 	b	800269b0 <printPages+0xb8>
80026a2c:	e1a00000 	nop			@ (mov r0, r0)
80026a30:	e24bd004 	sub	sp, fp, #4
80026a34:	e8bd8800 	pop	{fp, pc}
80026a38:	8002b8d8 	.word	0x8002b8d8
80026a3c:	800b32d4 	.word	0x800b32d4
80026a40:	8002b8e8 	.word	0x8002b8e8
80026a44:	8002b900 	.word	0x8002b900
80026a48:	8002b910 	.word	0x8002b910

80026a4c <initlock>:
80026a4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026a50:	e28db000 	add	fp, sp, #0
80026a54:	e24dd00c 	sub	sp, sp, #12
80026a58:	e50b0008 	str	r0, [fp, #-8]
80026a5c:	e50b100c 	str	r1, [fp, #-12]
80026a60:	e51b3008 	ldr	r3, [fp, #-8]
80026a64:	e51b200c 	ldr	r2, [fp, #-12]
80026a68:	e5832004 	str	r2, [r3, #4]
80026a6c:	e51b3008 	ldr	r3, [fp, #-8]
80026a70:	e3a02000 	mov	r2, #0
80026a74:	e5832000 	str	r2, [r3]
80026a78:	e51b3008 	ldr	r3, [fp, #-8]
80026a7c:	e3a02000 	mov	r2, #0
80026a80:	e5832008 	str	r2, [r3, #8]
80026a84:	e1a00000 	nop			@ (mov r0, r0)
80026a88:	e28bd000 	add	sp, fp, #0
80026a8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026a90:	e12fff1e 	bx	lr

80026a94 <acquire>:
80026a94:	e92d4800 	push	{fp, lr}
80026a98:	e28db004 	add	fp, sp, #4
80026a9c:	e24dd008 	sub	sp, sp, #8
80026aa0:	e50b0008 	str	r0, [fp, #-8]
80026aa4:	ebffe6e0 	bl	8002062c <pushcli>
80026aa8:	e51b3008 	ldr	r3, [fp, #-8]
80026aac:	e3a02001 	mov	r2, #1
80026ab0:	e5832000 	str	r2, [r3]
80026ab4:	e1a00000 	nop			@ (mov r0, r0)
80026ab8:	e24bd004 	sub	sp, fp, #4
80026abc:	e8bd8800 	pop	{fp, pc}

80026ac0 <release>:
80026ac0:	e92d4800 	push	{fp, lr}
80026ac4:	e28db004 	add	fp, sp, #4
80026ac8:	e24dd008 	sub	sp, sp, #8
80026acc:	e50b0008 	str	r0, [fp, #-8]
80026ad0:	e51b3008 	ldr	r3, [fp, #-8]
80026ad4:	e3a02000 	mov	r2, #0
80026ad8:	e5832000 	str	r2, [r3]
80026adc:	ebffe6e7 	bl	80020680 <popcli>
80026ae0:	e1a00000 	nop			@ (mov r0, r0)
80026ae4:	e24bd004 	sub	sp, fp, #4
80026ae8:	e8bd8800 	pop	{fp, pc}

80026aec <holding>:
80026aec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026af0:	e28db000 	add	fp, sp, #0
80026af4:	e24dd00c 	sub	sp, sp, #12
80026af8:	e50b0008 	str	r0, [fp, #-8]
80026afc:	e51b3008 	ldr	r3, [fp, #-8]
80026b00:	e5933000 	ldr	r3, [r3]
80026b04:	e1a00003 	mov	r0, r3
80026b08:	e28bd000 	add	sp, fp, #0
80026b0c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026b10:	e12fff1e 	bx	lr

80026b14 <swtch>:
80026b14:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026b18:	e580d000 	str	sp, [r0]
80026b1c:	e1a0d001 	mov	sp, r1
80026b20:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80026b24:	e12fff1e 	bx	lr

80026b28 <fetchint>:
80026b28:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026b2c:	e28db000 	add	fp, sp, #0
80026b30:	e24dd00c 	sub	sp, sp, #12
80026b34:	e50b0008 	str	r0, [fp, #-8]
80026b38:	e50b100c 	str	r1, [fp, #-12]
80026b3c:	e59f3058 	ldr	r3, [pc, #88]	@ 80026b9c <fetchint+0x74>
80026b40:	e5933000 	ldr	r3, [r3]
80026b44:	e5933000 	ldr	r3, [r3]
80026b48:	e51b2008 	ldr	r2, [fp, #-8]
80026b4c:	e1520003 	cmp	r2, r3
80026b50:	2a000006 	bcs	80026b70 <fetchint+0x48>
80026b54:	e51b3008 	ldr	r3, [fp, #-8]
80026b58:	e2832004 	add	r2, r3, #4
80026b5c:	e59f3038 	ldr	r3, [pc, #56]	@ 80026b9c <fetchint+0x74>
80026b60:	e5933000 	ldr	r3, [r3]
80026b64:	e5933000 	ldr	r3, [r3]
80026b68:	e1520003 	cmp	r2, r3
80026b6c:	9a000001 	bls	80026b78 <fetchint+0x50>
80026b70:	e3e03000 	mvn	r3, #0
80026b74:	ea000004 	b	80026b8c <fetchint+0x64>
80026b78:	e51b3008 	ldr	r3, [fp, #-8]
80026b7c:	e5932000 	ldr	r2, [r3]
80026b80:	e51b300c 	ldr	r3, [fp, #-12]
80026b84:	e5832000 	str	r2, [r3]
80026b88:	e3a03000 	mov	r3, #0
80026b8c:	e1a00003 	mov	r0, r3
80026b90:	e28bd000 	add	sp, fp, #0
80026b94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026b98:	e12fff1e 	bx	lr
80026b9c:	800b32d4 	.word	0x800b32d4

80026ba0 <fetchstr>:
80026ba0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026ba4:	e28db000 	add	fp, sp, #0
80026ba8:	e24dd014 	sub	sp, sp, #20
80026bac:	e50b0010 	str	r0, [fp, #-16]
80026bb0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026bb4:	e59f3098 	ldr	r3, [pc, #152]	@ 80026c54 <fetchstr+0xb4>
80026bb8:	e5933000 	ldr	r3, [r3]
80026bbc:	e5933000 	ldr	r3, [r3]
80026bc0:	e51b2010 	ldr	r2, [fp, #-16]
80026bc4:	e1520003 	cmp	r2, r3
80026bc8:	3a000001 	bcc	80026bd4 <fetchstr+0x34>
80026bcc:	e3e03000 	mvn	r3, #0
80026bd0:	ea00001b 	b	80026c44 <fetchstr+0xa4>
80026bd4:	e51b2010 	ldr	r2, [fp, #-16]
80026bd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026bdc:	e5832000 	str	r2, [r3]
80026be0:	e59f306c 	ldr	r3, [pc, #108]	@ 80026c54 <fetchstr+0xb4>
80026be4:	e5933000 	ldr	r3, [r3]
80026be8:	e5933000 	ldr	r3, [r3]
80026bec:	e50b300c 	str	r3, [fp, #-12]
80026bf0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026bf4:	e5933000 	ldr	r3, [r3]
80026bf8:	e50b3008 	str	r3, [fp, #-8]
80026bfc:	ea00000b 	b	80026c30 <fetchstr+0x90>
80026c00:	e51b3008 	ldr	r3, [fp, #-8]
80026c04:	e5d33000 	ldrb	r3, [r3]
80026c08:	e3530000 	cmp	r3, #0
80026c0c:	1a000004 	bne	80026c24 <fetchstr+0x84>
80026c10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026c14:	e5933000 	ldr	r3, [r3]
80026c18:	e51b2008 	ldr	r2, [fp, #-8]
80026c1c:	e0423003 	sub	r3, r2, r3
80026c20:	ea000007 	b	80026c44 <fetchstr+0xa4>
80026c24:	e51b3008 	ldr	r3, [fp, #-8]
80026c28:	e2833001 	add	r3, r3, #1
80026c2c:	e50b3008 	str	r3, [fp, #-8]
80026c30:	e51b2008 	ldr	r2, [fp, #-8]
80026c34:	e51b300c 	ldr	r3, [fp, #-12]
80026c38:	e1520003 	cmp	r2, r3
80026c3c:	3affffef 	bcc	80026c00 <fetchstr+0x60>
80026c40:	e3e03000 	mvn	r3, #0
80026c44:	e1a00003 	mov	r0, r3
80026c48:	e28bd000 	add	sp, fp, #0
80026c4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026c50:	e12fff1e 	bx	lr
80026c54:	800b32d4 	.word	0x800b32d4

80026c58 <argint>:
80026c58:	e92d4800 	push	{fp, lr}
80026c5c:	e28db004 	add	fp, sp, #4
80026c60:	e24dd008 	sub	sp, sp, #8
80026c64:	e50b0008 	str	r0, [fp, #-8]
80026c68:	e50b100c 	str	r1, [fp, #-12]
80026c6c:	e51b3008 	ldr	r3, [fp, #-8]
80026c70:	e3530003 	cmp	r3, #3
80026c74:	da000001 	ble	80026c80 <argint+0x28>
80026c78:	e59f003c 	ldr	r0, [pc, #60]	@ 80026cbc <argint+0x64>
80026c7c:	ebffeb9e 	bl	80021afc <panic>
80026c80:	e59f3038 	ldr	r3, [pc, #56]	@ 80026cc0 <argint+0x68>
80026c84:	e5933000 	ldr	r3, [r3]
80026c88:	e5933018 	ldr	r3, [r3, #24]
80026c8c:	e2832014 	add	r2, r3, #20
80026c90:	e51b3008 	ldr	r3, [fp, #-8]
80026c94:	e1a03103 	lsl	r3, r3, #2
80026c98:	e0823003 	add	r3, r2, r3
80026c9c:	e5933000 	ldr	r3, [r3]
80026ca0:	e1a02003 	mov	r2, r3
80026ca4:	e51b300c 	ldr	r3, [fp, #-12]
80026ca8:	e5832000 	str	r2, [r3]
80026cac:	e3a03000 	mov	r3, #0
80026cb0:	e1a00003 	mov	r0, r3
80026cb4:	e24bd004 	sub	sp, fp, #4
80026cb8:	e8bd8800 	pop	{fp, pc}
80026cbc:	8002b958 	.word	0x8002b958
80026cc0:	800b32d4 	.word	0x800b32d4

80026cc4 <argptr>:
80026cc4:	e92d4800 	push	{fp, lr}
80026cc8:	e28db004 	add	fp, sp, #4
80026ccc:	e24dd018 	sub	sp, sp, #24
80026cd0:	e50b0010 	str	r0, [fp, #-16]
80026cd4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026cd8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026cdc:	e24b3008 	sub	r3, fp, #8
80026ce0:	e1a01003 	mov	r1, r3
80026ce4:	e51b0010 	ldr	r0, [fp, #-16]
80026ce8:	ebffffda 	bl	80026c58 <argint>
80026cec:	e1a03000 	mov	r3, r0
80026cf0:	e3530000 	cmp	r3, #0
80026cf4:	aa000001 	bge	80026d00 <argptr+0x3c>
80026cf8:	e3e03000 	mvn	r3, #0
80026cfc:	ea000015 	b	80026d58 <argptr+0x94>
80026d00:	e59f305c 	ldr	r3, [pc, #92]	@ 80026d64 <argptr+0xa0>
80026d04:	e5933000 	ldr	r3, [r3]
80026d08:	e5933000 	ldr	r3, [r3]
80026d0c:	e51b2008 	ldr	r2, [fp, #-8]
80026d10:	e1530002 	cmp	r3, r2
80026d14:	9a000008 	bls	80026d3c <argptr+0x78>
80026d18:	e51b3008 	ldr	r3, [fp, #-8]
80026d1c:	e1a02003 	mov	r2, r3
80026d20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d24:	e0822003 	add	r2, r2, r3
80026d28:	e59f3034 	ldr	r3, [pc, #52]	@ 80026d64 <argptr+0xa0>
80026d2c:	e5933000 	ldr	r3, [r3]
80026d30:	e5933000 	ldr	r3, [r3]
80026d34:	e1520003 	cmp	r2, r3
80026d38:	9a000001 	bls	80026d44 <argptr+0x80>
80026d3c:	e3e03000 	mvn	r3, #0
80026d40:	ea000004 	b	80026d58 <argptr+0x94>
80026d44:	e51b3008 	ldr	r3, [fp, #-8]
80026d48:	e1a02003 	mov	r2, r3
80026d4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026d50:	e5832000 	str	r2, [r3]
80026d54:	e3a03000 	mov	r3, #0
80026d58:	e1a00003 	mov	r0, r3
80026d5c:	e24bd004 	sub	sp, fp, #4
80026d60:	e8bd8800 	pop	{fp, pc}
80026d64:	800b32d4 	.word	0x800b32d4

80026d68 <argstr>:
80026d68:	e92d4800 	push	{fp, lr}
80026d6c:	e28db004 	add	fp, sp, #4
80026d70:	e24dd010 	sub	sp, sp, #16
80026d74:	e50b0010 	str	r0, [fp, #-16]
80026d78:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026d7c:	e24b3008 	sub	r3, fp, #8
80026d80:	e1a01003 	mov	r1, r3
80026d84:	e51b0010 	ldr	r0, [fp, #-16]
80026d88:	ebffffb2 	bl	80026c58 <argint>
80026d8c:	e1a03000 	mov	r3, r0
80026d90:	e3530000 	cmp	r3, #0
80026d94:	aa000001 	bge	80026da0 <argstr+0x38>
80026d98:	e3e03000 	mvn	r3, #0
80026d9c:	ea000004 	b	80026db4 <argstr+0x4c>
80026da0:	e51b3008 	ldr	r3, [fp, #-8]
80026da4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026da8:	e1a00003 	mov	r0, r3
80026dac:	ebffff7b 	bl	80026ba0 <fetchstr>
80026db0:	e1a03000 	mov	r3, r0
80026db4:	e1a00003 	mov	r0, r3
80026db8:	e24bd004 	sub	sp, fp, #4
80026dbc:	e8bd8800 	pop	{fp, pc}

80026dc0 <syscall>:
80026dc0:	e92d4800 	push	{fp, lr}
80026dc4:	e28db004 	add	fp, sp, #4
80026dc8:	e24dd008 	sub	sp, sp, #8
80026dcc:	e59f30d4 	ldr	r3, [pc, #212]	@ 80026ea8 <syscall+0xe8>
80026dd0:	e5933000 	ldr	r3, [r3]
80026dd4:	e5933018 	ldr	r3, [r3, #24]
80026dd8:	e5933010 	ldr	r3, [r3, #16]
80026ddc:	e50b3008 	str	r3, [fp, #-8]
80026de0:	e51b3008 	ldr	r3, [fp, #-8]
80026de4:	e3530000 	cmp	r3, #0
80026de8:	da00001c 	ble	80026e60 <syscall+0xa0>
80026dec:	e51b3008 	ldr	r3, [fp, #-8]
80026df0:	e3530026 	cmp	r3, #38	@ 0x26
80026df4:	8a000019 	bhi	80026e60 <syscall+0xa0>
80026df8:	e59f20ac 	ldr	r2, [pc, #172]	@ 80026eac <syscall+0xec>
80026dfc:	e51b3008 	ldr	r3, [fp, #-8]
80026e00:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026e04:	e3530000 	cmp	r3, #0
80026e08:	0a000014 	beq	80026e60 <syscall+0xa0>
80026e0c:	e59f3094 	ldr	r3, [pc, #148]	@ 80026ea8 <syscall+0xe8>
80026e10:	e5933000 	ldr	r3, [r3]
80026e14:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
80026e18:	e59f3088 	ldr	r3, [pc, #136]	@ 80026ea8 <syscall+0xe8>
80026e1c:	e5933000 	ldr	r3, [r3]
80026e20:	e2822001 	add	r2, r2, #1
80026e24:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80026e28:	e59f207c 	ldr	r2, [pc, #124]	@ 80026eac <syscall+0xec>
80026e2c:	e51b3008 	ldr	r3, [fp, #-8]
80026e30:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026e34:	e12fff33 	blx	r3
80026e38:	e50b000c 	str	r0, [fp, #-12]
80026e3c:	e51b3008 	ldr	r3, [fp, #-8]
80026e40:	e3530007 	cmp	r3, #7
80026e44:	0a000014 	beq	80026e9c <syscall+0xdc>
80026e48:	e59f3058 	ldr	r3, [pc, #88]	@ 80026ea8 <syscall+0xe8>
80026e4c:	e5933000 	ldr	r3, [r3]
80026e50:	e5933018 	ldr	r3, [r3, #24]
80026e54:	e51b200c 	ldr	r2, [fp, #-12]
80026e58:	e5832010 	str	r2, [r3, #16]
80026e5c:	ea00000e 	b	80026e9c <syscall+0xdc>
80026e60:	e59f3040 	ldr	r3, [pc, #64]	@ 80026ea8 <syscall+0xe8>
80026e64:	e5933000 	ldr	r3, [r3]
80026e68:	e5931010 	ldr	r1, [r3, #16]
80026e6c:	e59f3034 	ldr	r3, [pc, #52]	@ 80026ea8 <syscall+0xe8>
80026e70:	e5933000 	ldr	r3, [r3]
80026e74:	e283206c 	add	r2, r3, #108	@ 0x6c
80026e78:	e51b3008 	ldr	r3, [fp, #-8]
80026e7c:	e59f002c 	ldr	r0, [pc, #44]	@ 80026eb0 <syscall+0xf0>
80026e80:	ebffea92 	bl	800218d0 <cprintf>
80026e84:	e59f301c 	ldr	r3, [pc, #28]	@ 80026ea8 <syscall+0xe8>
80026e88:	e5933000 	ldr	r3, [r3]
80026e8c:	e5933018 	ldr	r3, [r3, #24]
80026e90:	e3e02000 	mvn	r2, #0
80026e94:	e5832010 	str	r2, [r3, #16]
80026e98:	e1a00000 	nop			@ (mov r0, r0)
80026e9c:	e1a00000 	nop			@ (mov r0, r0)
80026ea0:	e24bd004 	sub	sp, fp, #4
80026ea4:	e8bd8800 	pop	{fp, pc}
80026ea8:	800b32d4 	.word	0x800b32d4
80026eac:	8002d04c 	.word	0x8002d04c
80026eb0:	8002b97c 	.word	0x8002b97c

80026eb4 <argfd>:
80026eb4:	e92d4800 	push	{fp, lr}
80026eb8:	e28db004 	add	fp, sp, #4
80026ebc:	e24dd018 	sub	sp, sp, #24
80026ec0:	e50b0010 	str	r0, [fp, #-16]
80026ec4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026ec8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026ecc:	e24b300c 	sub	r3, fp, #12
80026ed0:	e1a01003 	mov	r1, r3
80026ed4:	e51b0010 	ldr	r0, [fp, #-16]
80026ed8:	ebffff5e 	bl	80026c58 <argint>
80026edc:	e1a03000 	mov	r3, r0
80026ee0:	e3530000 	cmp	r3, #0
80026ee4:	aa000001 	bge	80026ef0 <argfd+0x3c>
80026ee8:	e3e03000 	mvn	r3, #0
80026eec:	ea00001d 	b	80026f68 <argfd+0xb4>
80026ef0:	e51b300c 	ldr	r3, [fp, #-12]
80026ef4:	e3530000 	cmp	r3, #0
80026ef8:	ba00000b 	blt	80026f2c <argfd+0x78>
80026efc:	e51b300c 	ldr	r3, [fp, #-12]
80026f00:	e353000f 	cmp	r3, #15
80026f04:	ca000008 	bgt	80026f2c <argfd+0x78>
80026f08:	e59f3064 	ldr	r3, [pc, #100]	@ 80026f74 <argfd+0xc0>
80026f0c:	e5933000 	ldr	r3, [r3]
80026f10:	e51b200c 	ldr	r2, [fp, #-12]
80026f14:	e282200a 	add	r2, r2, #10
80026f18:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026f1c:	e50b3008 	str	r3, [fp, #-8]
80026f20:	e51b3008 	ldr	r3, [fp, #-8]
80026f24:	e3530000 	cmp	r3, #0
80026f28:	1a000001 	bne	80026f34 <argfd+0x80>
80026f2c:	e3e03000 	mvn	r3, #0
80026f30:	ea00000c 	b	80026f68 <argfd+0xb4>
80026f34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026f38:	e3530000 	cmp	r3, #0
80026f3c:	0a000002 	beq	80026f4c <argfd+0x98>
80026f40:	e51b200c 	ldr	r2, [fp, #-12]
80026f44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026f48:	e5832000 	str	r2, [r3]
80026f4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026f50:	e3530000 	cmp	r3, #0
80026f54:	0a000002 	beq	80026f64 <argfd+0xb0>
80026f58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026f5c:	e51b2008 	ldr	r2, [fp, #-8]
80026f60:	e5832000 	str	r2, [r3]
80026f64:	e3a03000 	mov	r3, #0
80026f68:	e1a00003 	mov	r0, r3
80026f6c:	e24bd004 	sub	sp, fp, #4
80026f70:	e8bd8800 	pop	{fp, pc}
80026f74:	800b32d4 	.word	0x800b32d4

80026f78 <fdalloc>:
80026f78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026f7c:	e28db000 	add	fp, sp, #0
80026f80:	e24dd014 	sub	sp, sp, #20
80026f84:	e50b0010 	str	r0, [fp, #-16]
80026f88:	e3a03000 	mov	r3, #0
80026f8c:	e50b3008 	str	r3, [fp, #-8]
80026f90:	ea000011 	b	80026fdc <fdalloc+0x64>
80026f94:	e59f3060 	ldr	r3, [pc, #96]	@ 80026ffc <fdalloc+0x84>
80026f98:	e5933000 	ldr	r3, [r3]
80026f9c:	e51b2008 	ldr	r2, [fp, #-8]
80026fa0:	e282200a 	add	r2, r2, #10
80026fa4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026fa8:	e3530000 	cmp	r3, #0
80026fac:	1a000007 	bne	80026fd0 <fdalloc+0x58>
80026fb0:	e59f3044 	ldr	r3, [pc, #68]	@ 80026ffc <fdalloc+0x84>
80026fb4:	e5933000 	ldr	r3, [r3]
80026fb8:	e51b2008 	ldr	r2, [fp, #-8]
80026fbc:	e282200a 	add	r2, r2, #10
80026fc0:	e51b1010 	ldr	r1, [fp, #-16]
80026fc4:	e7831102 	str	r1, [r3, r2, lsl #2]
80026fc8:	e51b3008 	ldr	r3, [fp, #-8]
80026fcc:	ea000006 	b	80026fec <fdalloc+0x74>
80026fd0:	e51b3008 	ldr	r3, [fp, #-8]
80026fd4:	e2833001 	add	r3, r3, #1
80026fd8:	e50b3008 	str	r3, [fp, #-8]
80026fdc:	e51b3008 	ldr	r3, [fp, #-8]
80026fe0:	e353000f 	cmp	r3, #15
80026fe4:	daffffea 	ble	80026f94 <fdalloc+0x1c>
80026fe8:	e3e03000 	mvn	r3, #0
80026fec:	e1a00003 	mov	r0, r3
80026ff0:	e28bd000 	add	sp, fp, #0
80026ff4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026ff8:	e12fff1e 	bx	lr
80026ffc:	800b32d4 	.word	0x800b32d4

80027000 <sys_dup>:
80027000:	e92d4800 	push	{fp, lr}
80027004:	e28db004 	add	fp, sp, #4
80027008:	e24dd008 	sub	sp, sp, #8
8002700c:	e24b300c 	sub	r3, fp, #12
80027010:	e1a02003 	mov	r2, r3
80027014:	e3a01000 	mov	r1, #0
80027018:	e3a00000 	mov	r0, #0
8002701c:	ebffffa4 	bl	80026eb4 <argfd>
80027020:	e1a03000 	mov	r3, r0
80027024:	e3530000 	cmp	r3, #0
80027028:	aa000001 	bge	80027034 <sys_dup+0x34>
8002702c:	e3e03000 	mvn	r3, #0
80027030:	ea00000c 	b	80027068 <sys_dup+0x68>
80027034:	e51b300c 	ldr	r3, [fp, #-12]
80027038:	e1a00003 	mov	r0, r3
8002703c:	ebffffcd 	bl	80026f78 <fdalloc>
80027040:	e50b0008 	str	r0, [fp, #-8]
80027044:	e51b3008 	ldr	r3, [fp, #-8]
80027048:	e3530000 	cmp	r3, #0
8002704c:	aa000001 	bge	80027058 <sys_dup+0x58>
80027050:	e3e03000 	mvn	r3, #0
80027054:	ea000003 	b	80027068 <sys_dup+0x68>
80027058:	e51b300c 	ldr	r3, [fp, #-12]
8002705c:	e1a00003 	mov	r0, r3
80027060:	ebffed95 	bl	800226bc <filedup>
80027064:	e51b3008 	ldr	r3, [fp, #-8]
80027068:	e1a00003 	mov	r0, r3
8002706c:	e24bd004 	sub	sp, fp, #4
80027070:	e8bd8800 	pop	{fp, pc}

80027074 <sys_read>:
80027074:	e92d4800 	push	{fp, lr}
80027078:	e28db004 	add	fp, sp, #4
8002707c:	e24dd010 	sub	sp, sp, #16
80027080:	e24b3008 	sub	r3, fp, #8
80027084:	e1a02003 	mov	r2, r3
80027088:	e3a01000 	mov	r1, #0
8002708c:	e3a00000 	mov	r0, #0
80027090:	ebffff87 	bl	80026eb4 <argfd>
80027094:	e1a03000 	mov	r3, r0
80027098:	e3530000 	cmp	r3, #0
8002709c:	ba00000e 	blt	800270dc <sys_read+0x68>
800270a0:	e24b300c 	sub	r3, fp, #12
800270a4:	e1a01003 	mov	r1, r3
800270a8:	e3a00002 	mov	r0, #2
800270ac:	ebfffee9 	bl	80026c58 <argint>
800270b0:	e1a03000 	mov	r3, r0
800270b4:	e3530000 	cmp	r3, #0
800270b8:	ba000007 	blt	800270dc <sys_read+0x68>
800270bc:	e51b200c 	ldr	r2, [fp, #-12]
800270c0:	e24b3010 	sub	r3, fp, #16
800270c4:	e1a01003 	mov	r1, r3
800270c8:	e3a00001 	mov	r0, #1
800270cc:	ebfffefc 	bl	80026cc4 <argptr>
800270d0:	e1a03000 	mov	r3, r0
800270d4:	e3530000 	cmp	r3, #0
800270d8:	aa000001 	bge	800270e4 <sys_read+0x70>
800270dc:	e3e03000 	mvn	r3, #0
800270e0:	ea000005 	b	800270fc <sys_read+0x88>
800270e4:	e51b3008 	ldr	r3, [fp, #-8]
800270e8:	e51b1010 	ldr	r1, [fp, #-16]
800270ec:	e51b200c 	ldr	r2, [fp, #-12]
800270f0:	e1a00003 	mov	r0, r3
800270f4:	ebffede1 	bl	80022880 <fileread>
800270f8:	e1a03000 	mov	r3, r0
800270fc:	e1a00003 	mov	r0, r3
80027100:	e24bd004 	sub	sp, fp, #4
80027104:	e8bd8800 	pop	{fp, pc}

80027108 <sys_write>:
80027108:	e92d4800 	push	{fp, lr}
8002710c:	e28db004 	add	fp, sp, #4
80027110:	e24dd010 	sub	sp, sp, #16
80027114:	e24b3008 	sub	r3, fp, #8
80027118:	e1a02003 	mov	r2, r3
8002711c:	e3a01000 	mov	r1, #0
80027120:	e3a00000 	mov	r0, #0
80027124:	ebffff62 	bl	80026eb4 <argfd>
80027128:	e1a03000 	mov	r3, r0
8002712c:	e3530000 	cmp	r3, #0
80027130:	ba00000e 	blt	80027170 <sys_write+0x68>
80027134:	e24b300c 	sub	r3, fp, #12
80027138:	e1a01003 	mov	r1, r3
8002713c:	e3a00002 	mov	r0, #2
80027140:	ebfffec4 	bl	80026c58 <argint>
80027144:	e1a03000 	mov	r3, r0
80027148:	e3530000 	cmp	r3, #0
8002714c:	ba000007 	blt	80027170 <sys_write+0x68>
80027150:	e51b200c 	ldr	r2, [fp, #-12]
80027154:	e24b3010 	sub	r3, fp, #16
80027158:	e1a01003 	mov	r1, r3
8002715c:	e3a00001 	mov	r0, #1
80027160:	ebfffed7 	bl	80026cc4 <argptr>
80027164:	e1a03000 	mov	r3, r0
80027168:	e3530000 	cmp	r3, #0
8002716c:	aa000001 	bge	80027178 <sys_write+0x70>
80027170:	e3e03000 	mvn	r3, #0
80027174:	ea000005 	b	80027190 <sys_write+0x88>
80027178:	e51b3008 	ldr	r3, [fp, #-8]
8002717c:	e51b1010 	ldr	r1, [fp, #-16]
80027180:	e51b200c 	ldr	r2, [fp, #-12]
80027184:	e1a00003 	mov	r0, r3
80027188:	ebffedf9 	bl	80022974 <filewrite>
8002718c:	e1a03000 	mov	r3, r0
80027190:	e1a00003 	mov	r0, r3
80027194:	e24bd004 	sub	sp, fp, #4
80027198:	e8bd8800 	pop	{fp, pc}

8002719c <sys_close>:
8002719c:	e92d4800 	push	{fp, lr}
800271a0:	e28db004 	add	fp, sp, #4
800271a4:	e24dd008 	sub	sp, sp, #8
800271a8:	e24b200c 	sub	r2, fp, #12
800271ac:	e24b3008 	sub	r3, fp, #8
800271b0:	e1a01003 	mov	r1, r3
800271b4:	e3a00000 	mov	r0, #0
800271b8:	ebffff3d 	bl	80026eb4 <argfd>
800271bc:	e1a03000 	mov	r3, r0
800271c0:	e3530000 	cmp	r3, #0
800271c4:	aa000001 	bge	800271d0 <sys_close+0x34>
800271c8:	e3e03000 	mvn	r3, #0
800271cc:	ea000009 	b	800271f8 <sys_close+0x5c>
800271d0:	e59f302c 	ldr	r3, [pc, #44]	@ 80027204 <sys_close+0x68>
800271d4:	e5933000 	ldr	r3, [r3]
800271d8:	e51b2008 	ldr	r2, [fp, #-8]
800271dc:	e282200a 	add	r2, r2, #10
800271e0:	e3a01000 	mov	r1, #0
800271e4:	e7831102 	str	r1, [r3, r2, lsl #2]
800271e8:	e51b300c 	ldr	r3, [fp, #-12]
800271ec:	e1a00003 	mov	r0, r3
800271f0:	ebffed4a 	bl	80022720 <fileclose>
800271f4:	e3a03000 	mov	r3, #0
800271f8:	e1a00003 	mov	r0, r3
800271fc:	e24bd004 	sub	sp, fp, #4
80027200:	e8bd8800 	pop	{fp, pc}
80027204:	800b32d4 	.word	0x800b32d4

80027208 <sys_fstat>:
80027208:	e92d4800 	push	{fp, lr}
8002720c:	e28db004 	add	fp, sp, #4
80027210:	e24dd008 	sub	sp, sp, #8
80027214:	e24b3008 	sub	r3, fp, #8
80027218:	e1a02003 	mov	r2, r3
8002721c:	e3a01000 	mov	r1, #0
80027220:	e3a00000 	mov	r0, #0
80027224:	ebffff22 	bl	80026eb4 <argfd>
80027228:	e1a03000 	mov	r3, r0
8002722c:	e3530000 	cmp	r3, #0
80027230:	ba000007 	blt	80027254 <sys_fstat+0x4c>
80027234:	e24b300c 	sub	r3, fp, #12
80027238:	e3a02014 	mov	r2, #20
8002723c:	e1a01003 	mov	r1, r3
80027240:	e3a00001 	mov	r0, #1
80027244:	ebfffe9e 	bl	80026cc4 <argptr>
80027248:	e1a03000 	mov	r3, r0
8002724c:	e3530000 	cmp	r3, #0
80027250:	aa000001 	bge	8002725c <sys_fstat+0x54>
80027254:	e3e03000 	mvn	r3, #0
80027258:	ea000005 	b	80027274 <sys_fstat+0x6c>
8002725c:	e51b3008 	ldr	r3, [fp, #-8]
80027260:	e51b200c 	ldr	r2, [fp, #-12]
80027264:	e1a01002 	mov	r1, r2
80027268:	e1a00003 	mov	r0, r3
8002726c:	ebffed67 	bl	80022810 <filestat>
80027270:	e1a03000 	mov	r3, r0
80027274:	e1a00003 	mov	r0, r3
80027278:	e24bd004 	sub	sp, fp, #4
8002727c:	e8bd8800 	pop	{fp, pc}

80027280 <sys_link>:
80027280:	e92d4800 	push	{fp, lr}
80027284:	e28db004 	add	fp, sp, #4
80027288:	e24dd020 	sub	sp, sp, #32
8002728c:	e24b3024 	sub	r3, fp, #36	@ 0x24
80027290:	e1a01003 	mov	r1, r3
80027294:	e3a00000 	mov	r0, #0
80027298:	ebfffeb2 	bl	80026d68 <argstr>
8002729c:	e1a03000 	mov	r3, r0
800272a0:	e3530000 	cmp	r3, #0
800272a4:	ba000006 	blt	800272c4 <sys_link+0x44>
800272a8:	e24b3020 	sub	r3, fp, #32
800272ac:	e1a01003 	mov	r1, r3
800272b0:	e3a00001 	mov	r0, #1
800272b4:	ebfffeab 	bl	80026d68 <argstr>
800272b8:	e1a03000 	mov	r3, r0
800272bc:	e3530000 	cmp	r3, #0
800272c0:	aa000001 	bge	800272cc <sys_link+0x4c>
800272c4:	e3e03000 	mvn	r3, #0
800272c8:	ea000055 	b	80027424 <sys_link+0x1a4>
800272cc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800272d0:	e1a00003 	mov	r0, r3
800272d4:	ebfff3af 	bl	80024198 <namei>
800272d8:	e50b0008 	str	r0, [fp, #-8]
800272dc:	e51b3008 	ldr	r3, [fp, #-8]
800272e0:	e3530000 	cmp	r3, #0
800272e4:	1a000001 	bne	800272f0 <sys_link+0x70>
800272e8:	e3e03000 	mvn	r3, #0
800272ec:	ea00004c 	b	80027424 <sys_link+0x1a4>
800272f0:	ebfff481 	bl	800244fc <begin_trans>
800272f4:	e51b0008 	ldr	r0, [fp, #-8]
800272f8:	ebffefd3 	bl	8002324c <ilock>
800272fc:	e51b3008 	ldr	r3, [fp, #-8]
80027300:	e1d331f0 	ldrsh	r3, [r3, #16]
80027304:	e3530001 	cmp	r3, #1
80027308:	1a000004 	bne	80027320 <sys_link+0xa0>
8002730c:	e51b0008 	ldr	r0, [fp, #-8]
80027310:	ebfff08e 	bl	80023550 <iunlockput>
80027314:	ebfff48c 	bl	8002454c <commit_trans>
80027318:	e3e03000 	mvn	r3, #0
8002731c:	ea000040 	b	80027424 <sys_link+0x1a4>
80027320:	e51b3008 	ldr	r3, [fp, #-8]
80027324:	e1d331f6 	ldrsh	r3, [r3, #22]
80027328:	e6ff3073 	uxth	r3, r3
8002732c:	e2833001 	add	r3, r3, #1
80027330:	e6ff3073 	uxth	r3, r3
80027334:	e6bf2073 	sxth	r2, r3
80027338:	e51b3008 	ldr	r3, [fp, #-8]
8002733c:	e1c321b6 	strh	r2, [r3, #22]
80027340:	e51b0008 	ldr	r0, [fp, #-8]
80027344:	ebffef26 	bl	80022fe4 <iupdate>
80027348:	e51b0008 	ldr	r0, [fp, #-8]
8002734c:	ebfff022 	bl	800233dc <iunlock>
80027350:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027354:	e24b201c 	sub	r2, fp, #28
80027358:	e1a01002 	mov	r1, r2
8002735c:	e1a00003 	mov	r0, r3
80027360:	ebfff399 	bl	800241cc <nameiparent>
80027364:	e50b000c 	str	r0, [fp, #-12]
80027368:	e51b300c 	ldr	r3, [fp, #-12]
8002736c:	e3530000 	cmp	r3, #0
80027370:	0a00001a 	beq	800273e0 <sys_link+0x160>
80027374:	e51b000c 	ldr	r0, [fp, #-12]
80027378:	ebffefb3 	bl	8002324c <ilock>
8002737c:	e51b300c 	ldr	r3, [fp, #-12]
80027380:	e5932000 	ldr	r2, [r3]
80027384:	e51b3008 	ldr	r3, [fp, #-8]
80027388:	e5933000 	ldr	r3, [r3]
8002738c:	e1520003 	cmp	r2, r3
80027390:	1a000008 	bne	800273b8 <sys_link+0x138>
80027394:	e51b3008 	ldr	r3, [fp, #-8]
80027398:	e5932004 	ldr	r2, [r3, #4]
8002739c:	e24b301c 	sub	r3, fp, #28
800273a0:	e1a01003 	mov	r1, r3
800273a4:	e51b000c 	ldr	r0, [fp, #-12]
800273a8:	ebfff2a4 	bl	80023e40 <dirlink>
800273ac:	e1a03000 	mov	r3, r0
800273b0:	e3530000 	cmp	r3, #0
800273b4:	aa000002 	bge	800273c4 <sys_link+0x144>
800273b8:	e51b000c 	ldr	r0, [fp, #-12]
800273bc:	ebfff063 	bl	80023550 <iunlockput>
800273c0:	ea000007 	b	800273e4 <sys_link+0x164>
800273c4:	e51b000c 	ldr	r0, [fp, #-12]
800273c8:	ebfff060 	bl	80023550 <iunlockput>
800273cc:	e51b0008 	ldr	r0, [fp, #-8]
800273d0:	ebfff023 	bl	80023464 <iput>
800273d4:	ebfff45c 	bl	8002454c <commit_trans>
800273d8:	e3a03000 	mov	r3, #0
800273dc:	ea000010 	b	80027424 <sys_link+0x1a4>
800273e0:	e1a00000 	nop			@ (mov r0, r0)
800273e4:	e51b0008 	ldr	r0, [fp, #-8]
800273e8:	ebffef97 	bl	8002324c <ilock>
800273ec:	e51b3008 	ldr	r3, [fp, #-8]
800273f0:	e1d331f6 	ldrsh	r3, [r3, #22]
800273f4:	e6ff3073 	uxth	r3, r3
800273f8:	e2433001 	sub	r3, r3, #1
800273fc:	e6ff3073 	uxth	r3, r3
80027400:	e6bf2073 	sxth	r2, r3
80027404:	e51b3008 	ldr	r3, [fp, #-8]
80027408:	e1c321b6 	strh	r2, [r3, #22]
8002740c:	e51b0008 	ldr	r0, [fp, #-8]
80027410:	ebffeef3 	bl	80022fe4 <iupdate>
80027414:	e51b0008 	ldr	r0, [fp, #-8]
80027418:	ebfff04c 	bl	80023550 <iunlockput>
8002741c:	ebfff44a 	bl	8002454c <commit_trans>
80027420:	e3e03000 	mvn	r3, #0
80027424:	e1a00003 	mov	r0, r3
80027428:	e24bd004 	sub	sp, fp, #4
8002742c:	e8bd8800 	pop	{fp, pc}

80027430 <isdirempty>:
80027430:	e92d4800 	push	{fp, lr}
80027434:	e28db004 	add	fp, sp, #4
80027438:	e24dd020 	sub	sp, sp, #32
8002743c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80027440:	e3a03020 	mov	r3, #32
80027444:	e50b3008 	str	r3, [fp, #-8]
80027448:	ea000011 	b	80027494 <isdirempty+0x64>
8002744c:	e51b2008 	ldr	r2, [fp, #-8]
80027450:	e24b1018 	sub	r1, fp, #24
80027454:	e3a03010 	mov	r3, #16
80027458:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002745c:	ebfff126 	bl	800238fc <readi>
80027460:	e1a03000 	mov	r3, r0
80027464:	e3530010 	cmp	r3, #16
80027468:	0a000001 	beq	80027474 <isdirempty+0x44>
8002746c:	e59f0044 	ldr	r0, [pc, #68]	@ 800274b8 <isdirempty+0x88>
80027470:	ebffe9a1 	bl	80021afc <panic>
80027474:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80027478:	e3530000 	cmp	r3, #0
8002747c:	0a000001 	beq	80027488 <isdirempty+0x58>
80027480:	e3a03000 	mov	r3, #0
80027484:	ea000008 	b	800274ac <isdirempty+0x7c>
80027488:	e51b3008 	ldr	r3, [fp, #-8]
8002748c:	e2833010 	add	r3, r3, #16
80027490:	e50b3008 	str	r3, [fp, #-8]
80027494:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027498:	e5932018 	ldr	r2, [r3, #24]
8002749c:	e51b3008 	ldr	r3, [fp, #-8]
800274a0:	e1520003 	cmp	r2, r3
800274a4:	8affffe8 	bhi	8002744c <isdirempty+0x1c>
800274a8:	e3a03001 	mov	r3, #1
800274ac:	e1a00003 	mov	r0, r3
800274b0:	e24bd004 	sub	sp, fp, #4
800274b4:	e8bd8800 	pop	{fp, pc}
800274b8:	8002b998 	.word	0x8002b998

800274bc <sys_unlink>:
800274bc:	e92d4800 	push	{fp, lr}
800274c0:	e28db004 	add	fp, sp, #4
800274c4:	e24dd030 	sub	sp, sp, #48	@ 0x30
800274c8:	e24b3030 	sub	r3, fp, #48	@ 0x30
800274cc:	e1a01003 	mov	r1, r3
800274d0:	e3a00000 	mov	r0, #0
800274d4:	ebfffe23 	bl	80026d68 <argstr>
800274d8:	e1a03000 	mov	r3, r0
800274dc:	e3530000 	cmp	r3, #0
800274e0:	aa000001 	bge	800274ec <sys_unlink+0x30>
800274e4:	e3e03000 	mvn	r3, #0
800274e8:	ea00006d 	b	800276a4 <sys_unlink+0x1e8>
800274ec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800274f0:	e24b202c 	sub	r2, fp, #44	@ 0x2c
800274f4:	e1a01002 	mov	r1, r2
800274f8:	e1a00003 	mov	r0, r3
800274fc:	ebfff332 	bl	800241cc <nameiparent>
80027500:	e50b0008 	str	r0, [fp, #-8]
80027504:	e51b3008 	ldr	r3, [fp, #-8]
80027508:	e3530000 	cmp	r3, #0
8002750c:	1a000001 	bne	80027518 <sys_unlink+0x5c>
80027510:	e3e03000 	mvn	r3, #0
80027514:	ea000062 	b	800276a4 <sys_unlink+0x1e8>
80027518:	ebfff3f7 	bl	800244fc <begin_trans>
8002751c:	e51b0008 	ldr	r0, [fp, #-8]
80027520:	ebffef49 	bl	8002324c <ilock>
80027524:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027528:	e59f1180 	ldr	r1, [pc, #384]	@ 800276b0 <sys_unlink+0x1f4>
8002752c:	e1a00003 	mov	r0, r3
80027530:	ebfff1f3 	bl	80023d04 <namecmp>
80027534:	e1a03000 	mov	r3, r0
80027538:	e3530000 	cmp	r3, #0
8002753c:	0a000051 	beq	80027688 <sys_unlink+0x1cc>
80027540:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027544:	e59f1168 	ldr	r1, [pc, #360]	@ 800276b4 <sys_unlink+0x1f8>
80027548:	e1a00003 	mov	r0, r3
8002754c:	ebfff1ec 	bl	80023d04 <namecmp>
80027550:	e1a03000 	mov	r3, r0
80027554:	e3530000 	cmp	r3, #0
80027558:	0a00004a 	beq	80027688 <sys_unlink+0x1cc>
8002755c:	e24b2034 	sub	r2, fp, #52	@ 0x34
80027560:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80027564:	e1a01003 	mov	r1, r3
80027568:	e51b0008 	ldr	r0, [fp, #-8]
8002756c:	ebfff1f1 	bl	80023d38 <dirlookup>
80027570:	e50b000c 	str	r0, [fp, #-12]
80027574:	e51b300c 	ldr	r3, [fp, #-12]
80027578:	e3530000 	cmp	r3, #0
8002757c:	0a000043 	beq	80027690 <sys_unlink+0x1d4>
80027580:	e51b000c 	ldr	r0, [fp, #-12]
80027584:	ebffef30 	bl	8002324c <ilock>
80027588:	e51b300c 	ldr	r3, [fp, #-12]
8002758c:	e1d331f6 	ldrsh	r3, [r3, #22]
80027590:	e3530000 	cmp	r3, #0
80027594:	ca000001 	bgt	800275a0 <sys_unlink+0xe4>
80027598:	e59f0118 	ldr	r0, [pc, #280]	@ 800276b8 <sys_unlink+0x1fc>
8002759c:	ebffe956 	bl	80021afc <panic>
800275a0:	e51b300c 	ldr	r3, [fp, #-12]
800275a4:	e1d331f0 	ldrsh	r3, [r3, #16]
800275a8:	e3530001 	cmp	r3, #1
800275ac:	1a000007 	bne	800275d0 <sys_unlink+0x114>
800275b0:	e51b000c 	ldr	r0, [fp, #-12]
800275b4:	ebffff9d 	bl	80027430 <isdirempty>
800275b8:	e1a03000 	mov	r3, r0
800275bc:	e3530000 	cmp	r3, #0
800275c0:	1a000002 	bne	800275d0 <sys_unlink+0x114>
800275c4:	e51b000c 	ldr	r0, [fp, #-12]
800275c8:	ebffefe0 	bl	80023550 <iunlockput>
800275cc:	ea000030 	b	80027694 <sys_unlink+0x1d8>
800275d0:	e24b301c 	sub	r3, fp, #28
800275d4:	e3a02010 	mov	r2, #16
800275d8:	e3a01000 	mov	r1, #0
800275dc:	e1a00003 	mov	r0, r3
800275e0:	ebffe286 	bl	80020000 <memset>
800275e4:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
800275e8:	e24b101c 	sub	r1, fp, #28
800275ec:	e3a03010 	mov	r3, #16
800275f0:	e51b0008 	ldr	r0, [fp, #-8]
800275f4:	ebfff13b 	bl	80023ae8 <writei>
800275f8:	e1a03000 	mov	r3, r0
800275fc:	e3530010 	cmp	r3, #16
80027600:	0a000001 	beq	8002760c <sys_unlink+0x150>
80027604:	e59f00b0 	ldr	r0, [pc, #176]	@ 800276bc <sys_unlink+0x200>
80027608:	ebffe93b 	bl	80021afc <panic>
8002760c:	e51b300c 	ldr	r3, [fp, #-12]
80027610:	e1d331f0 	ldrsh	r3, [r3, #16]
80027614:	e3530001 	cmp	r3, #1
80027618:	1a000009 	bne	80027644 <sys_unlink+0x188>
8002761c:	e51b3008 	ldr	r3, [fp, #-8]
80027620:	e1d331f6 	ldrsh	r3, [r3, #22]
80027624:	e6ff3073 	uxth	r3, r3
80027628:	e2433001 	sub	r3, r3, #1
8002762c:	e6ff3073 	uxth	r3, r3
80027630:	e6bf2073 	sxth	r2, r3
80027634:	e51b3008 	ldr	r3, [fp, #-8]
80027638:	e1c321b6 	strh	r2, [r3, #22]
8002763c:	e51b0008 	ldr	r0, [fp, #-8]
80027640:	ebffee67 	bl	80022fe4 <iupdate>
80027644:	e51b0008 	ldr	r0, [fp, #-8]
80027648:	ebffefc0 	bl	80023550 <iunlockput>
8002764c:	e51b300c 	ldr	r3, [fp, #-12]
80027650:	e1d331f6 	ldrsh	r3, [r3, #22]
80027654:	e6ff3073 	uxth	r3, r3
80027658:	e2433001 	sub	r3, r3, #1
8002765c:	e6ff3073 	uxth	r3, r3
80027660:	e6bf2073 	sxth	r2, r3
80027664:	e51b300c 	ldr	r3, [fp, #-12]
80027668:	e1c321b6 	strh	r2, [r3, #22]
8002766c:	e51b000c 	ldr	r0, [fp, #-12]
80027670:	ebffee5b 	bl	80022fe4 <iupdate>
80027674:	e51b000c 	ldr	r0, [fp, #-12]
80027678:	ebffefb4 	bl	80023550 <iunlockput>
8002767c:	ebfff3b2 	bl	8002454c <commit_trans>
80027680:	e3a03000 	mov	r3, #0
80027684:	ea000006 	b	800276a4 <sys_unlink+0x1e8>
80027688:	e1a00000 	nop			@ (mov r0, r0)
8002768c:	ea000000 	b	80027694 <sys_unlink+0x1d8>
80027690:	e1a00000 	nop			@ (mov r0, r0)
80027694:	e51b0008 	ldr	r0, [fp, #-8]
80027698:	ebffefac 	bl	80023550 <iunlockput>
8002769c:	ebfff3aa 	bl	8002454c <commit_trans>
800276a0:	e3e03000 	mvn	r3, #0
800276a4:	e1a00003 	mov	r0, r3
800276a8:	e24bd004 	sub	sp, fp, #4
800276ac:	e8bd8800 	pop	{fp, pc}
800276b0:	8002b9ac 	.word	0x8002b9ac
800276b4:	8002b9b0 	.word	0x8002b9b0
800276b8:	8002b9b4 	.word	0x8002b9b4
800276bc:	8002b9c8 	.word	0x8002b9c8

800276c0 <create>:
800276c0:	e92d4800 	push	{fp, lr}
800276c4:	e28db004 	add	fp, sp, #4
800276c8:	e24dd030 	sub	sp, sp, #48	@ 0x30
800276cc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
800276d0:	e1a00001 	mov	r0, r1
800276d4:	e1a01002 	mov	r1, r2
800276d8:	e1a02003 	mov	r2, r3
800276dc:	e1a03000 	mov	r3, r0
800276e0:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
800276e4:	e1a03001 	mov	r3, r1
800276e8:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
800276ec:	e1a03002 	mov	r3, r2
800276f0:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
800276f4:	e24b3020 	sub	r3, fp, #32
800276f8:	e1a01003 	mov	r1, r3
800276fc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80027700:	ebfff2b1 	bl	800241cc <nameiparent>
80027704:	e50b0008 	str	r0, [fp, #-8]
80027708:	e51b3008 	ldr	r3, [fp, #-8]
8002770c:	e3530000 	cmp	r3, #0
80027710:	1a000001 	bne	8002771c <create+0x5c>
80027714:	e3a03000 	mov	r3, #0
80027718:	ea000063 	b	800278ac <create+0x1ec>
8002771c:	e51b0008 	ldr	r0, [fp, #-8]
80027720:	ebffeec9 	bl	8002324c <ilock>
80027724:	e24b2010 	sub	r2, fp, #16
80027728:	e24b3020 	sub	r3, fp, #32
8002772c:	e1a01003 	mov	r1, r3
80027730:	e51b0008 	ldr	r0, [fp, #-8]
80027734:	ebfff17f 	bl	80023d38 <dirlookup>
80027738:	e50b000c 	str	r0, [fp, #-12]
8002773c:	e51b300c 	ldr	r3, [fp, #-12]
80027740:	e3530000 	cmp	r3, #0
80027744:	0a000010 	beq	8002778c <create+0xcc>
80027748:	e51b0008 	ldr	r0, [fp, #-8]
8002774c:	ebffef7f 	bl	80023550 <iunlockput>
80027750:	e51b000c 	ldr	r0, [fp, #-12]
80027754:	ebffeebc 	bl	8002324c <ilock>
80027758:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
8002775c:	e3530002 	cmp	r3, #2
80027760:	1a000005 	bne	8002777c <create+0xbc>
80027764:	e51b300c 	ldr	r3, [fp, #-12]
80027768:	e1d331f0 	ldrsh	r3, [r3, #16]
8002776c:	e3530002 	cmp	r3, #2
80027770:	1a000001 	bne	8002777c <create+0xbc>
80027774:	e51b300c 	ldr	r3, [fp, #-12]
80027778:	ea00004b 	b	800278ac <create+0x1ec>
8002777c:	e51b000c 	ldr	r0, [fp, #-12]
80027780:	ebffef72 	bl	80023550 <iunlockput>
80027784:	e3a03000 	mov	r3, #0
80027788:	ea000047 	b	800278ac <create+0x1ec>
8002778c:	e51b3008 	ldr	r3, [fp, #-8]
80027790:	e5933000 	ldr	r3, [r3]
80027794:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80027798:	e1a01002 	mov	r1, r2
8002779c:	e1a00003 	mov	r0, r3
800277a0:	ebffedcf 	bl	80022ee4 <ialloc>
800277a4:	e50b000c 	str	r0, [fp, #-12]
800277a8:	e51b300c 	ldr	r3, [fp, #-12]
800277ac:	e3530000 	cmp	r3, #0
800277b0:	1a000001 	bne	800277bc <create+0xfc>
800277b4:	e59f00fc 	ldr	r0, [pc, #252]	@ 800278b8 <create+0x1f8>
800277b8:	ebffe8cf 	bl	80021afc <panic>
800277bc:	e51b000c 	ldr	r0, [fp, #-12]
800277c0:	ebffeea1 	bl	8002324c <ilock>
800277c4:	e51b300c 	ldr	r3, [fp, #-12]
800277c8:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
800277cc:	e1c321b2 	strh	r2, [r3, #18]
800277d0:	e51b300c 	ldr	r3, [fp, #-12]
800277d4:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
800277d8:	e1c321b4 	strh	r2, [r3, #20]
800277dc:	e51b300c 	ldr	r3, [fp, #-12]
800277e0:	e3a02001 	mov	r2, #1
800277e4:	e1c321b6 	strh	r2, [r3, #22]
800277e8:	e51b000c 	ldr	r0, [fp, #-12]
800277ec:	ebffedfc 	bl	80022fe4 <iupdate>
800277f0:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800277f4:	e3530001 	cmp	r3, #1
800277f8:	1a00001d 	bne	80027874 <create+0x1b4>
800277fc:	e51b3008 	ldr	r3, [fp, #-8]
80027800:	e1d331f6 	ldrsh	r3, [r3, #22]
80027804:	e6ff3073 	uxth	r3, r3
80027808:	e2833001 	add	r3, r3, #1
8002780c:	e6ff3073 	uxth	r3, r3
80027810:	e6bf2073 	sxth	r2, r3
80027814:	e51b3008 	ldr	r3, [fp, #-8]
80027818:	e1c321b6 	strh	r2, [r3, #22]
8002781c:	e51b0008 	ldr	r0, [fp, #-8]
80027820:	ebffedef 	bl	80022fe4 <iupdate>
80027824:	e51b300c 	ldr	r3, [fp, #-12]
80027828:	e5933004 	ldr	r3, [r3, #4]
8002782c:	e1a02003 	mov	r2, r3
80027830:	e59f1084 	ldr	r1, [pc, #132]	@ 800278bc <create+0x1fc>
80027834:	e51b000c 	ldr	r0, [fp, #-12]
80027838:	ebfff180 	bl	80023e40 <dirlink>
8002783c:	e1a03000 	mov	r3, r0
80027840:	e3530000 	cmp	r3, #0
80027844:	ba000008 	blt	8002786c <create+0x1ac>
80027848:	e51b3008 	ldr	r3, [fp, #-8]
8002784c:	e5933004 	ldr	r3, [r3, #4]
80027850:	e1a02003 	mov	r2, r3
80027854:	e59f1064 	ldr	r1, [pc, #100]	@ 800278c0 <create+0x200>
80027858:	e51b000c 	ldr	r0, [fp, #-12]
8002785c:	ebfff177 	bl	80023e40 <dirlink>
80027860:	e1a03000 	mov	r3, r0
80027864:	e3530000 	cmp	r3, #0
80027868:	aa000001 	bge	80027874 <create+0x1b4>
8002786c:	e59f0050 	ldr	r0, [pc, #80]	@ 800278c4 <create+0x204>
80027870:	ebffe8a1 	bl	80021afc <panic>
80027874:	e51b300c 	ldr	r3, [fp, #-12]
80027878:	e5932004 	ldr	r2, [r3, #4]
8002787c:	e24b3020 	sub	r3, fp, #32
80027880:	e1a01003 	mov	r1, r3
80027884:	e51b0008 	ldr	r0, [fp, #-8]
80027888:	ebfff16c 	bl	80023e40 <dirlink>
8002788c:	e1a03000 	mov	r3, r0
80027890:	e3530000 	cmp	r3, #0
80027894:	aa000001 	bge	800278a0 <create+0x1e0>
80027898:	e59f0028 	ldr	r0, [pc, #40]	@ 800278c8 <create+0x208>
8002789c:	ebffe896 	bl	80021afc <panic>
800278a0:	e51b0008 	ldr	r0, [fp, #-8]
800278a4:	ebffef29 	bl	80023550 <iunlockput>
800278a8:	e51b300c 	ldr	r3, [fp, #-12]
800278ac:	e1a00003 	mov	r0, r3
800278b0:	e24bd004 	sub	sp, fp, #4
800278b4:	e8bd8800 	pop	{fp, pc}
800278b8:	8002b9d8 	.word	0x8002b9d8
800278bc:	8002b9ac 	.word	0x8002b9ac
800278c0:	8002b9b0 	.word	0x8002b9b0
800278c4:	8002b9e8 	.word	0x8002b9e8
800278c8:	8002b9f4 	.word	0x8002b9f4

800278cc <sys_open>:
800278cc:	e92d4800 	push	{fp, lr}
800278d0:	e28db004 	add	fp, sp, #4
800278d4:	e24dd018 	sub	sp, sp, #24
800278d8:	e24b3014 	sub	r3, fp, #20
800278dc:	e1a01003 	mov	r1, r3
800278e0:	e3a00000 	mov	r0, #0
800278e4:	ebfffd1f 	bl	80026d68 <argstr>
800278e8:	e1a03000 	mov	r3, r0
800278ec:	e3530000 	cmp	r3, #0
800278f0:	ba000006 	blt	80027910 <sys_open+0x44>
800278f4:	e24b3018 	sub	r3, fp, #24
800278f8:	e1a01003 	mov	r1, r3
800278fc:	e3a00001 	mov	r0, #1
80027900:	ebfffcd4 	bl	80026c58 <argint>
80027904:	e1a03000 	mov	r3, r0
80027908:	e3530000 	cmp	r3, #0
8002790c:	aa000001 	bge	80027918 <sys_open+0x4c>
80027910:	e3e03000 	mvn	r3, #0
80027914:	ea00005d 	b	80027a90 <sys_open+0x1c4>
80027918:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002791c:	e2033c02 	and	r3, r3, #512	@ 0x200
80027920:	e3530000 	cmp	r3, #0
80027924:	0a00000c 	beq	8002795c <sys_open+0x90>
80027928:	ebfff2f3 	bl	800244fc <begin_trans>
8002792c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80027930:	e3a03000 	mov	r3, #0
80027934:	e3a02000 	mov	r2, #0
80027938:	e3a01002 	mov	r1, #2
8002793c:	ebffff5f 	bl	800276c0 <create>
80027940:	e50b0008 	str	r0, [fp, #-8]
80027944:	ebfff300 	bl	8002454c <commit_trans>
80027948:	e51b3008 	ldr	r3, [fp, #-8]
8002794c:	e3530000 	cmp	r3, #0
80027950:	1a000017 	bne	800279b4 <sys_open+0xe8>
80027954:	e3e03000 	mvn	r3, #0
80027958:	ea00004c 	b	80027a90 <sys_open+0x1c4>
8002795c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027960:	e1a00003 	mov	r0, r3
80027964:	ebfff20b 	bl	80024198 <namei>
80027968:	e50b0008 	str	r0, [fp, #-8]
8002796c:	e51b3008 	ldr	r3, [fp, #-8]
80027970:	e3530000 	cmp	r3, #0
80027974:	1a000001 	bne	80027980 <sys_open+0xb4>
80027978:	e3e03000 	mvn	r3, #0
8002797c:	ea000043 	b	80027a90 <sys_open+0x1c4>
80027980:	e51b0008 	ldr	r0, [fp, #-8]
80027984:	ebffee30 	bl	8002324c <ilock>
80027988:	e51b3008 	ldr	r3, [fp, #-8]
8002798c:	e1d331f0 	ldrsh	r3, [r3, #16]
80027990:	e3530001 	cmp	r3, #1
80027994:	1a000006 	bne	800279b4 <sys_open+0xe8>
80027998:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002799c:	e3530000 	cmp	r3, #0
800279a0:	0a000003 	beq	800279b4 <sys_open+0xe8>
800279a4:	e51b0008 	ldr	r0, [fp, #-8]
800279a8:	ebffeee8 	bl	80023550 <iunlockput>
800279ac:	e3e03000 	mvn	r3, #0
800279b0:	ea000036 	b	80027a90 <sys_open+0x1c4>
800279b4:	ebffeb1d 	bl	80022630 <filealloc>
800279b8:	e50b000c 	str	r0, [fp, #-12]
800279bc:	e51b300c 	ldr	r3, [fp, #-12]
800279c0:	e3530000 	cmp	r3, #0
800279c4:	0a000005 	beq	800279e0 <sys_open+0x114>
800279c8:	e51b000c 	ldr	r0, [fp, #-12]
800279cc:	ebfffd69 	bl	80026f78 <fdalloc>
800279d0:	e50b0010 	str	r0, [fp, #-16]
800279d4:	e51b3010 	ldr	r3, [fp, #-16]
800279d8:	e3530000 	cmp	r3, #0
800279dc:	aa000008 	bge	80027a04 <sys_open+0x138>
800279e0:	e51b300c 	ldr	r3, [fp, #-12]
800279e4:	e3530000 	cmp	r3, #0
800279e8:	0a000001 	beq	800279f4 <sys_open+0x128>
800279ec:	e51b000c 	ldr	r0, [fp, #-12]
800279f0:	ebffeb4a 	bl	80022720 <fileclose>
800279f4:	e51b0008 	ldr	r0, [fp, #-8]
800279f8:	ebffeed4 	bl	80023550 <iunlockput>
800279fc:	e3e03000 	mvn	r3, #0
80027a00:	ea000022 	b	80027a90 <sys_open+0x1c4>
80027a04:	e51b0008 	ldr	r0, [fp, #-8]
80027a08:	ebffee73 	bl	800233dc <iunlock>
80027a0c:	e51b300c 	ldr	r3, [fp, #-12]
80027a10:	e3a02002 	mov	r2, #2
80027a14:	e5c32000 	strb	r2, [r3]
80027a18:	e51b300c 	ldr	r3, [fp, #-12]
80027a1c:	e51b2008 	ldr	r2, [fp, #-8]
80027a20:	e5832010 	str	r2, [r3, #16]
80027a24:	e51b300c 	ldr	r3, [fp, #-12]
80027a28:	e3a02000 	mov	r2, #0
80027a2c:	e5832014 	str	r2, [r3, #20]
80027a30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027a34:	e2033001 	and	r3, r3, #1
80027a38:	e3530000 	cmp	r3, #0
80027a3c:	03a03001 	moveq	r3, #1
80027a40:	13a03000 	movne	r3, #0
80027a44:	e6ef3073 	uxtb	r3, r3
80027a48:	e1a02003 	mov	r2, r3
80027a4c:	e51b300c 	ldr	r3, [fp, #-12]
80027a50:	e5c32008 	strb	r2, [r3, #8]
80027a54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027a58:	e2033001 	and	r3, r3, #1
80027a5c:	e3530000 	cmp	r3, #0
80027a60:	1a000003 	bne	80027a74 <sys_open+0x1a8>
80027a64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027a68:	e2033002 	and	r3, r3, #2
80027a6c:	e3530000 	cmp	r3, #0
80027a70:	0a000001 	beq	80027a7c <sys_open+0x1b0>
80027a74:	e3a03001 	mov	r3, #1
80027a78:	ea000000 	b	80027a80 <sys_open+0x1b4>
80027a7c:	e3a03000 	mov	r3, #0
80027a80:	e6ef2073 	uxtb	r2, r3
80027a84:	e51b300c 	ldr	r3, [fp, #-12]
80027a88:	e5c32009 	strb	r2, [r3, #9]
80027a8c:	e51b3010 	ldr	r3, [fp, #-16]
80027a90:	e1a00003 	mov	r0, r3
80027a94:	e24bd004 	sub	sp, fp, #4
80027a98:	e8bd8800 	pop	{fp, pc}

80027a9c <sys_mkdir>:
80027a9c:	e92d4800 	push	{fp, lr}
80027aa0:	e28db004 	add	fp, sp, #4
80027aa4:	e24dd008 	sub	sp, sp, #8
80027aa8:	ebfff293 	bl	800244fc <begin_trans>
80027aac:	e24b300c 	sub	r3, fp, #12
80027ab0:	e1a01003 	mov	r1, r3
80027ab4:	e3a00000 	mov	r0, #0
80027ab8:	ebfffcaa 	bl	80026d68 <argstr>
80027abc:	e1a03000 	mov	r3, r0
80027ac0:	e3530000 	cmp	r3, #0
80027ac4:	ba000008 	blt	80027aec <sys_mkdir+0x50>
80027ac8:	e51b000c 	ldr	r0, [fp, #-12]
80027acc:	e3a03000 	mov	r3, #0
80027ad0:	e3a02000 	mov	r2, #0
80027ad4:	e3a01001 	mov	r1, #1
80027ad8:	ebfffef8 	bl	800276c0 <create>
80027adc:	e50b0008 	str	r0, [fp, #-8]
80027ae0:	e51b3008 	ldr	r3, [fp, #-8]
80027ae4:	e3530000 	cmp	r3, #0
80027ae8:	1a000002 	bne	80027af8 <sys_mkdir+0x5c>
80027aec:	ebfff296 	bl	8002454c <commit_trans>
80027af0:	e3e03000 	mvn	r3, #0
80027af4:	ea000003 	b	80027b08 <sys_mkdir+0x6c>
80027af8:	e51b0008 	ldr	r0, [fp, #-8]
80027afc:	ebffee93 	bl	80023550 <iunlockput>
80027b00:	ebfff291 	bl	8002454c <commit_trans>
80027b04:	e3a03000 	mov	r3, #0
80027b08:	e1a00003 	mov	r0, r3
80027b0c:	e24bd004 	sub	sp, fp, #4
80027b10:	e8bd8800 	pop	{fp, pc}

80027b14 <sys_mknod>:
80027b14:	e92d4800 	push	{fp, lr}
80027b18:	e28db004 	add	fp, sp, #4
80027b1c:	e24dd018 	sub	sp, sp, #24
80027b20:	ebfff275 	bl	800244fc <begin_trans>
80027b24:	e24b3010 	sub	r3, fp, #16
80027b28:	e1a01003 	mov	r1, r3
80027b2c:	e3a00000 	mov	r0, #0
80027b30:	ebfffc8c 	bl	80026d68 <argstr>
80027b34:	e50b0008 	str	r0, [fp, #-8]
80027b38:	e51b3008 	ldr	r3, [fp, #-8]
80027b3c:	e3530000 	cmp	r3, #0
80027b40:	ba000018 	blt	80027ba8 <sys_mknod+0x94>
80027b44:	e24b3014 	sub	r3, fp, #20
80027b48:	e1a01003 	mov	r1, r3
80027b4c:	e3a00001 	mov	r0, #1
80027b50:	ebfffc40 	bl	80026c58 <argint>
80027b54:	e1a03000 	mov	r3, r0
80027b58:	e3530000 	cmp	r3, #0
80027b5c:	ba000011 	blt	80027ba8 <sys_mknod+0x94>
80027b60:	e24b3018 	sub	r3, fp, #24
80027b64:	e1a01003 	mov	r1, r3
80027b68:	e3a00002 	mov	r0, #2
80027b6c:	ebfffc39 	bl	80026c58 <argint>
80027b70:	e1a03000 	mov	r3, r0
80027b74:	e3530000 	cmp	r3, #0
80027b78:	ba00000a 	blt	80027ba8 <sys_mknod+0x94>
80027b7c:	e51b0010 	ldr	r0, [fp, #-16]
80027b80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027b84:	e6bf2073 	sxth	r2, r3
80027b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027b8c:	e6bf3073 	sxth	r3, r3
80027b90:	e3a01003 	mov	r1, #3
80027b94:	ebfffec9 	bl	800276c0 <create>
80027b98:	e50b000c 	str	r0, [fp, #-12]
80027b9c:	e51b300c 	ldr	r3, [fp, #-12]
80027ba0:	e3530000 	cmp	r3, #0
80027ba4:	1a000002 	bne	80027bb4 <sys_mknod+0xa0>
80027ba8:	ebfff267 	bl	8002454c <commit_trans>
80027bac:	e3e03000 	mvn	r3, #0
80027bb0:	ea000003 	b	80027bc4 <sys_mknod+0xb0>
80027bb4:	e51b000c 	ldr	r0, [fp, #-12]
80027bb8:	ebffee64 	bl	80023550 <iunlockput>
80027bbc:	ebfff262 	bl	8002454c <commit_trans>
80027bc0:	e3a03000 	mov	r3, #0
80027bc4:	e1a00003 	mov	r0, r3
80027bc8:	e24bd004 	sub	sp, fp, #4
80027bcc:	e8bd8800 	pop	{fp, pc}

80027bd0 <sys_chdir>:
80027bd0:	e92d4800 	push	{fp, lr}
80027bd4:	e28db004 	add	fp, sp, #4
80027bd8:	e24dd008 	sub	sp, sp, #8
80027bdc:	e24b300c 	sub	r3, fp, #12
80027be0:	e1a01003 	mov	r1, r3
80027be4:	e3a00000 	mov	r0, #0
80027be8:	ebfffc5e 	bl	80026d68 <argstr>
80027bec:	e1a03000 	mov	r3, r0
80027bf0:	e3530000 	cmp	r3, #0
80027bf4:	ba000006 	blt	80027c14 <sys_chdir+0x44>
80027bf8:	e51b300c 	ldr	r3, [fp, #-12]
80027bfc:	e1a00003 	mov	r0, r3
80027c00:	ebfff164 	bl	80024198 <namei>
80027c04:	e50b0008 	str	r0, [fp, #-8]
80027c08:	e51b3008 	ldr	r3, [fp, #-8]
80027c0c:	e3530000 	cmp	r3, #0
80027c10:	1a000001 	bne	80027c1c <sys_chdir+0x4c>
80027c14:	e3e03000 	mvn	r3, #0
80027c18:	ea000015 	b	80027c74 <sys_chdir+0xa4>
80027c1c:	e51b0008 	ldr	r0, [fp, #-8]
80027c20:	ebffed89 	bl	8002324c <ilock>
80027c24:	e51b3008 	ldr	r3, [fp, #-8]
80027c28:	e1d331f0 	ldrsh	r3, [r3, #16]
80027c2c:	e3530001 	cmp	r3, #1
80027c30:	0a000003 	beq	80027c44 <sys_chdir+0x74>
80027c34:	e51b0008 	ldr	r0, [fp, #-8]
80027c38:	ebffee44 	bl	80023550 <iunlockput>
80027c3c:	e3e03000 	mvn	r3, #0
80027c40:	ea00000b 	b	80027c74 <sys_chdir+0xa4>
80027c44:	e51b0008 	ldr	r0, [fp, #-8]
80027c48:	ebffede3 	bl	800233dc <iunlock>
80027c4c:	e59f302c 	ldr	r3, [pc, #44]	@ 80027c80 <sys_chdir+0xb0>
80027c50:	e5933000 	ldr	r3, [r3]
80027c54:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80027c58:	e1a00003 	mov	r0, r3
80027c5c:	ebffee00 	bl	80023464 <iput>
80027c60:	e59f3018 	ldr	r3, [pc, #24]	@ 80027c80 <sys_chdir+0xb0>
80027c64:	e5933000 	ldr	r3, [r3]
80027c68:	e51b2008 	ldr	r2, [fp, #-8]
80027c6c:	e5832068 	str	r2, [r3, #104]	@ 0x68
80027c70:	e3a03000 	mov	r3, #0
80027c74:	e1a00003 	mov	r0, r3
80027c78:	e24bd004 	sub	sp, fp, #4
80027c7c:	e8bd8800 	pop	{fp, pc}
80027c80:	800b32d4 	.word	0x800b32d4

80027c84 <sys_exec>:
80027c84:	e92d4800 	push	{fp, lr}
80027c88:	e28db004 	add	fp, sp, #4
80027c8c:	e24dd090 	sub	sp, sp, #144	@ 0x90
80027c90:	e24b300c 	sub	r3, fp, #12
80027c94:	e1a01003 	mov	r1, r3
80027c98:	e3a00000 	mov	r0, #0
80027c9c:	ebfffc31 	bl	80026d68 <argstr>
80027ca0:	e1a03000 	mov	r3, r0
80027ca4:	e3530000 	cmp	r3, #0
80027ca8:	ba000006 	blt	80027cc8 <sys_exec+0x44>
80027cac:	e24b3090 	sub	r3, fp, #144	@ 0x90
80027cb0:	e1a01003 	mov	r1, r3
80027cb4:	e3a00001 	mov	r0, #1
80027cb8:	ebfffbe6 	bl	80026c58 <argint>
80027cbc:	e1a03000 	mov	r3, r0
80027cc0:	e3530000 	cmp	r3, #0
80027cc4:	aa000001 	bge	80027cd0 <sys_exec+0x4c>
80027cc8:	e3e03000 	mvn	r3, #0
80027ccc:	ea00003a 	b	80027dbc <sys_exec+0x138>
80027cd0:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027cd4:	e3a02080 	mov	r2, #128	@ 0x80
80027cd8:	e3a01000 	mov	r1, #0
80027cdc:	e1a00003 	mov	r0, r3
80027ce0:	ebffe0c6 	bl	80020000 <memset>
80027ce4:	e3a03000 	mov	r3, #0
80027ce8:	e50b3008 	str	r3, [fp, #-8]
80027cec:	e51b3008 	ldr	r3, [fp, #-8]
80027cf0:	e353001f 	cmp	r3, #31
80027cf4:	9a000001 	bls	80027d00 <sys_exec+0x7c>
80027cf8:	e3e03000 	mvn	r3, #0
80027cfc:	ea00002e 	b	80027dbc <sys_exec+0x138>
80027d00:	e51b3008 	ldr	r3, [fp, #-8]
80027d04:	e1a03103 	lsl	r3, r3, #2
80027d08:	e1a02003 	mov	r2, r3
80027d0c:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80027d10:	e0823003 	add	r3, r2, r3
80027d14:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027d18:	e1a01002 	mov	r1, r2
80027d1c:	e1a00003 	mov	r0, r3
80027d20:	ebfffb80 	bl	80026b28 <fetchint>
80027d24:	e1a03000 	mov	r3, r0
80027d28:	e3530000 	cmp	r3, #0
80027d2c:	aa000001 	bge	80027d38 <sys_exec+0xb4>
80027d30:	e3e03000 	mvn	r3, #0
80027d34:	ea000020 	b	80027dbc <sys_exec+0x138>
80027d38:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80027d3c:	e3530000 	cmp	r3, #0
80027d40:	1a00000d 	bne	80027d7c <sys_exec+0xf8>
80027d44:	e51b3008 	ldr	r3, [fp, #-8]
80027d48:	e1a03103 	lsl	r3, r3, #2
80027d4c:	e2433004 	sub	r3, r3, #4
80027d50:	e083300b 	add	r3, r3, fp
80027d54:	e3a02000 	mov	r2, #0
80027d58:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027d5c:	e1a00000 	nop			@ (mov r0, r0)
80027d60:	e51b300c 	ldr	r3, [fp, #-12]
80027d64:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027d68:	e1a01002 	mov	r1, r2
80027d6c:	e1a00003 	mov	r0, r3
80027d70:	ebffe8eb 	bl	80022124 <exec>
80027d74:	e1a03000 	mov	r3, r0
80027d78:	ea00000f 	b	80027dbc <sys_exec+0x138>
80027d7c:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027d80:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027d84:	e51b3008 	ldr	r3, [fp, #-8]
80027d88:	e1a03103 	lsl	r3, r3, #2
80027d8c:	e0823003 	add	r3, r2, r3
80027d90:	e1a01003 	mov	r1, r3
80027d94:	ebfffb81 	bl	80026ba0 <fetchstr>
80027d98:	e1a03000 	mov	r3, r0
80027d9c:	e3530000 	cmp	r3, #0
80027da0:	aa000001 	bge	80027dac <sys_exec+0x128>
80027da4:	e3e03000 	mvn	r3, #0
80027da8:	ea000003 	b	80027dbc <sys_exec+0x138>
80027dac:	e51b3008 	ldr	r3, [fp, #-8]
80027db0:	e2833001 	add	r3, r3, #1
80027db4:	e50b3008 	str	r3, [fp, #-8]
80027db8:	eaffffcb 	b	80027cec <sys_exec+0x68>
80027dbc:	e1a00003 	mov	r0, r3
80027dc0:	e24bd004 	sub	sp, fp, #4
80027dc4:	e8bd8800 	pop	{fp, pc}

80027dc8 <sys_pipe>:
80027dc8:	e92d4800 	push	{fp, lr}
80027dcc:	e28db004 	add	fp, sp, #4
80027dd0:	e24dd018 	sub	sp, sp, #24
80027dd4:	e24b3010 	sub	r3, fp, #16
80027dd8:	e3a02008 	mov	r2, #8
80027ddc:	e1a01003 	mov	r1, r3
80027de0:	e3a00000 	mov	r0, #0
80027de4:	ebfffbb6 	bl	80026cc4 <argptr>
80027de8:	e1a03000 	mov	r3, r0
80027dec:	e3530000 	cmp	r3, #0
80027df0:	aa000001 	bge	80027dfc <sys_pipe+0x34>
80027df4:	e3e03000 	mvn	r3, #0
80027df8:	ea000032 	b	80027ec8 <sys_pipe+0x100>
80027dfc:	e24b2018 	sub	r2, fp, #24
80027e00:	e24b3014 	sub	r3, fp, #20
80027e04:	e1a01002 	mov	r1, r2
80027e08:	e1a00003 	mov	r0, r3
80027e0c:	ebfff2e2 	bl	8002499c <pipealloc>
80027e10:	e1a03000 	mov	r3, r0
80027e14:	e3530000 	cmp	r3, #0
80027e18:	aa000001 	bge	80027e24 <sys_pipe+0x5c>
80027e1c:	e3e03000 	mvn	r3, #0
80027e20:	ea000028 	b	80027ec8 <sys_pipe+0x100>
80027e24:	e3e03000 	mvn	r3, #0
80027e28:	e50b3008 	str	r3, [fp, #-8]
80027e2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027e30:	e1a00003 	mov	r0, r3
80027e34:	ebfffc4f 	bl	80026f78 <fdalloc>
80027e38:	e50b0008 	str	r0, [fp, #-8]
80027e3c:	e51b3008 	ldr	r3, [fp, #-8]
80027e40:	e3530000 	cmp	r3, #0
80027e44:	ba000006 	blt	80027e64 <sys_pipe+0x9c>
80027e48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027e4c:	e1a00003 	mov	r0, r3
80027e50:	ebfffc48 	bl	80026f78 <fdalloc>
80027e54:	e50b000c 	str	r0, [fp, #-12]
80027e58:	e51b300c 	ldr	r3, [fp, #-12]
80027e5c:	e3530000 	cmp	r3, #0
80027e60:	aa000010 	bge	80027ea8 <sys_pipe+0xe0>
80027e64:	e51b3008 	ldr	r3, [fp, #-8]
80027e68:	e3530000 	cmp	r3, #0
80027e6c:	ba000005 	blt	80027e88 <sys_pipe+0xc0>
80027e70:	e59f305c 	ldr	r3, [pc, #92]	@ 80027ed4 <sys_pipe+0x10c>
80027e74:	e5933000 	ldr	r3, [r3]
80027e78:	e51b2008 	ldr	r2, [fp, #-8]
80027e7c:	e282200a 	add	r2, r2, #10
80027e80:	e3a01000 	mov	r1, #0
80027e84:	e7831102 	str	r1, [r3, r2, lsl #2]
80027e88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027e8c:	e1a00003 	mov	r0, r3
80027e90:	ebffea22 	bl	80022720 <fileclose>
80027e94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027e98:	e1a00003 	mov	r0, r3
80027e9c:	ebffea1f 	bl	80022720 <fileclose>
80027ea0:	e3e03000 	mvn	r3, #0
80027ea4:	ea000007 	b	80027ec8 <sys_pipe+0x100>
80027ea8:	e51b3010 	ldr	r3, [fp, #-16]
80027eac:	e51b2008 	ldr	r2, [fp, #-8]
80027eb0:	e5832000 	str	r2, [r3]
80027eb4:	e51b3010 	ldr	r3, [fp, #-16]
80027eb8:	e2833004 	add	r3, r3, #4
80027ebc:	e51b200c 	ldr	r2, [fp, #-12]
80027ec0:	e5832000 	str	r2, [r3]
80027ec4:	e3a03000 	mov	r3, #0
80027ec8:	e1a00003 	mov	r0, r3
80027ecc:	e24bd004 	sub	sp, fp, #4
80027ed0:	e8bd8800 	pop	{fp, pc}
80027ed4:	800b32d4 	.word	0x800b32d4

80027ed8 <sys_fork>:
80027ed8:	e92d4800 	push	{fp, lr}
80027edc:	e28db004 	add	fp, sp, #4
80027ee0:	ebfff6ba 	bl	800259d0 <fork>
80027ee4:	e1a03000 	mov	r3, r0
80027ee8:	e1a00003 	mov	r0, r3
80027eec:	e8bd8800 	pop	{fp, pc}

80027ef0 <sys_exit>:
80027ef0:	e92d4800 	push	{fp, lr}
80027ef4:	e28db004 	add	fp, sp, #4
80027ef8:	ebfff745 	bl	80025c14 <exit>
80027efc:	e3a03000 	mov	r3, #0
80027f00:	e1a00003 	mov	r0, r3
80027f04:	e8bd8800 	pop	{fp, pc}

80027f08 <sys_wait>:
80027f08:	e92d4800 	push	{fp, lr}
80027f0c:	e28db004 	add	fp, sp, #4
80027f10:	ebfff7ab 	bl	80025dc4 <wait>
80027f14:	e1a03000 	mov	r3, r0
80027f18:	e1a00003 	mov	r0, r3
80027f1c:	e8bd8800 	pop	{fp, pc}

80027f20 <sys_kill>:
80027f20:	e92d4800 	push	{fp, lr}
80027f24:	e28db004 	add	fp, sp, #4
80027f28:	e24dd008 	sub	sp, sp, #8
80027f2c:	e24b3008 	sub	r3, fp, #8
80027f30:	e1a01003 	mov	r1, r3
80027f34:	e3a00000 	mov	r0, #0
80027f38:	ebfffb46 	bl	80026c58 <argint>
80027f3c:	e1a03000 	mov	r3, r0
80027f40:	e3530000 	cmp	r3, #0
80027f44:	aa000001 	bge	80027f50 <sys_kill+0x30>
80027f48:	e3e03000 	mvn	r3, #0
80027f4c:	ea000003 	b	80027f60 <sys_kill+0x40>
80027f50:	e51b3008 	ldr	r3, [fp, #-8]
80027f54:	e1a00003 	mov	r0, r3
80027f58:	ebfff93b 	bl	8002644c <kill>
80027f5c:	e1a03000 	mov	r3, r0
80027f60:	e1a00003 	mov	r0, r3
80027f64:	e24bd004 	sub	sp, fp, #4
80027f68:	e8bd8800 	pop	{fp, pc}

80027f6c <sys_getpid>:
80027f6c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027f70:	e28db000 	add	fp, sp, #0
80027f74:	e59f3014 	ldr	r3, [pc, #20]	@ 80027f90 <sys_getpid+0x24>
80027f78:	e5933000 	ldr	r3, [r3]
80027f7c:	e5933010 	ldr	r3, [r3, #16]
80027f80:	e1a00003 	mov	r0, r3
80027f84:	e28bd000 	add	sp, fp, #0
80027f88:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027f8c:	e12fff1e 	bx	lr
80027f90:	800b32d4 	.word	0x800b32d4

80027f94 <sys_sbrk>:
80027f94:	e92d4800 	push	{fp, lr}
80027f98:	e28db004 	add	fp, sp, #4
80027f9c:	e24dd008 	sub	sp, sp, #8
80027fa0:	e24b300c 	sub	r3, fp, #12
80027fa4:	e1a01003 	mov	r1, r3
80027fa8:	e3a00000 	mov	r0, #0
80027fac:	ebfffb29 	bl	80026c58 <argint>
80027fb0:	e1a03000 	mov	r3, r0
80027fb4:	e3530000 	cmp	r3, #0
80027fb8:	aa000001 	bge	80027fc4 <sys_sbrk+0x30>
80027fbc:	e3e03000 	mvn	r3, #0
80027fc0:	ea00000c 	b	80027ff8 <sys_sbrk+0x64>
80027fc4:	e59f3038 	ldr	r3, [pc, #56]	@ 80028004 <sys_sbrk+0x70>
80027fc8:	e5933000 	ldr	r3, [r3]
80027fcc:	e5933000 	ldr	r3, [r3]
80027fd0:	e50b3008 	str	r3, [fp, #-8]
80027fd4:	e51b300c 	ldr	r3, [fp, #-12]
80027fd8:	e1a00003 	mov	r0, r3
80027fdc:	ebfff664 	bl	80025974 <growproc>
80027fe0:	e1a03000 	mov	r3, r0
80027fe4:	e3530000 	cmp	r3, #0
80027fe8:	aa000001 	bge	80027ff4 <sys_sbrk+0x60>
80027fec:	e3e03000 	mvn	r3, #0
80027ff0:	ea000000 	b	80027ff8 <sys_sbrk+0x64>
80027ff4:	e51b3008 	ldr	r3, [fp, #-8]
80027ff8:	e1a00003 	mov	r0, r3
80027ffc:	e24bd004 	sub	sp, fp, #4
80028000:	e8bd8800 	pop	{fp, pc}
80028004:	800b32d4 	.word	0x800b32d4

80028008 <sys_sleep>:
80028008:	e92d4800 	push	{fp, lr}
8002800c:	e28db004 	add	fp, sp, #4
80028010:	e24dd008 	sub	sp, sp, #8
80028014:	e24b300c 	sub	r3, fp, #12
80028018:	e1a01003 	mov	r1, r3
8002801c:	e3a00000 	mov	r0, #0
80028020:	ebfffb0c 	bl	80026c58 <argint>
80028024:	e1a03000 	mov	r3, r0
80028028:	e3530000 	cmp	r3, #0
8002802c:	aa000001 	bge	80028038 <sys_sleep+0x30>
80028030:	e3e03000 	mvn	r3, #0
80028034:	ea00001f 	b	800280b8 <sys_sleep+0xb0>
80028038:	e59f0084 	ldr	r0, [pc, #132]	@ 800280c4 <sys_sleep+0xbc>
8002803c:	ebfffa94 	bl	80026a94 <acquire>
80028040:	e59f3080 	ldr	r3, [pc, #128]	@ 800280c8 <sys_sleep+0xc0>
80028044:	e5933000 	ldr	r3, [r3]
80028048:	e50b3008 	str	r3, [fp, #-8]
8002804c:	e59f3078 	ldr	r3, [pc, #120]	@ 800280cc <sys_sleep+0xc4>
80028050:	e5933000 	ldr	r3, [r3]
80028054:	e51b200c 	ldr	r2, [fp, #-12]
80028058:	e5832080 	str	r2, [r3, #128]	@ 0x80
8002805c:	e59f1060 	ldr	r1, [pc, #96]	@ 800280c4 <sys_sleep+0xbc>
80028060:	e59f0060 	ldr	r0, [pc, #96]	@ 800280c8 <sys_sleep+0xc0>
80028064:	ebfff862 	bl	800261f4 <sleep>
80028068:	ea000008 	b	80028090 <sys_sleep+0x88>
8002806c:	e59f3058 	ldr	r3, [pc, #88]	@ 800280cc <sys_sleep+0xc4>
80028070:	e5933000 	ldr	r3, [r3]
80028074:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80028078:	e3530000 	cmp	r3, #0
8002807c:	0a000003 	beq	80028090 <sys_sleep+0x88>
80028080:	e59f003c 	ldr	r0, [pc, #60]	@ 800280c4 <sys_sleep+0xbc>
80028084:	ebfffa8d 	bl	80026ac0 <release>
80028088:	e3e03000 	mvn	r3, #0
8002808c:	ea000009 	b	800280b8 <sys_sleep+0xb0>
80028090:	e59f3030 	ldr	r3, [pc, #48]	@ 800280c8 <sys_sleep+0xc0>
80028094:	e5932000 	ldr	r2, [r3]
80028098:	e51b3008 	ldr	r3, [fp, #-8]
8002809c:	e0423003 	sub	r3, r2, r3
800280a0:	e51b200c 	ldr	r2, [fp, #-12]
800280a4:	e1530002 	cmp	r3, r2
800280a8:	3affffef 	bcc	8002806c <sys_sleep+0x64>
800280ac:	e59f0010 	ldr	r0, [pc, #16]	@ 800280c4 <sys_sleep+0xbc>
800280b0:	ebfffa82 	bl	80026ac0 <release>
800280b4:	e3a03000 	mov	r3, #0
800280b8:	e1a00003 	mov	r0, r3
800280bc:	e24bd004 	sub	sp, fp, #4
800280c0:	e8bd8800 	pop	{fp, pc}
800280c4:	800b33e0 	.word	0x800b33e0
800280c8:	800b3414 	.word	0x800b3414
800280cc:	800b32d4 	.word	0x800b32d4

800280d0 <sys_uptime>:
800280d0:	e92d4800 	push	{fp, lr}
800280d4:	e28db004 	add	fp, sp, #4
800280d8:	e24dd008 	sub	sp, sp, #8
800280dc:	e59f0024 	ldr	r0, [pc, #36]	@ 80028108 <sys_uptime+0x38>
800280e0:	ebfffa6b 	bl	80026a94 <acquire>
800280e4:	e59f3020 	ldr	r3, [pc, #32]	@ 8002810c <sys_uptime+0x3c>
800280e8:	e5933000 	ldr	r3, [r3]
800280ec:	e50b3008 	str	r3, [fp, #-8]
800280f0:	e59f0010 	ldr	r0, [pc, #16]	@ 80028108 <sys_uptime+0x38>
800280f4:	ebfffa71 	bl	80026ac0 <release>
800280f8:	e51b3008 	ldr	r3, [fp, #-8]
800280fc:	e1a00003 	mov	r0, r3
80028100:	e24bd004 	sub	sp, fp, #4
80028104:	e8bd8800 	pop	{fp, pc}
80028108:	800b33e0 	.word	0x800b33e0
8002810c:	800b3414 	.word	0x800b3414

80028110 <sys_disproc>:
80028110:	e92d4800 	push	{fp, lr}
80028114:	e28db004 	add	fp, sp, #4
80028118:	ebfff930 	bl	800265e0 <disproc>
8002811c:	e3a03000 	mov	r3, #0
80028120:	e1a00003 	mov	r0, r3
80028124:	e8bd8800 	pop	{fp, pc}

80028128 <sys_srand>:
80028128:	e92d4800 	push	{fp, lr}
8002812c:	e28db004 	add	fp, sp, #4
80028130:	e24dd008 	sub	sp, sp, #8
80028134:	e24b3008 	sub	r3, fp, #8
80028138:	e1a01003 	mov	r1, r3
8002813c:	e3a00000 	mov	r0, #0
80028140:	ebfffac4 	bl	80026c58 <argint>
80028144:	e1a03000 	mov	r3, r0
80028148:	e3530000 	cmp	r3, #0
8002814c:	aa000001 	bge	80028158 <sys_srand+0x30>
80028150:	e3e03000 	mvn	r3, #0
80028154:	ea000003 	b	80028168 <sys_srand+0x40>
80028158:	e51b3008 	ldr	r3, [fp, #-8]
8002815c:	e1a00003 	mov	r0, r3
80028160:	ebfff968 	bl	80026708 <srand>
80028164:	e3a03000 	mov	r3, #0
80028168:	e1a00003 	mov	r0, r3
8002816c:	e24bd004 	sub	sp, fp, #4
80028170:	e8bd8800 	pop	{fp, pc}

80028174 <sys_setticket>:
80028174:	e92d4800 	push	{fp, lr}
80028178:	e28db004 	add	fp, sp, #4
8002817c:	e24dd008 	sub	sp, sp, #8
80028180:	e24b3008 	sub	r3, fp, #8
80028184:	e1a01003 	mov	r1, r3
80028188:	e3a00000 	mov	r0, #0
8002818c:	ebfffab1 	bl	80026c58 <argint>
80028190:	e1a03000 	mov	r3, r0
80028194:	e3530000 	cmp	r3, #0
80028198:	aa000001 	bge	800281a4 <sys_setticket+0x30>
8002819c:	e3e03000 	mvn	r3, #0
800281a0:	ea000015 	b	800281fc <sys_setticket+0x88>
800281a4:	e24b300c 	sub	r3, fp, #12
800281a8:	e1a01003 	mov	r1, r3
800281ac:	e3a00001 	mov	r0, #1
800281b0:	ebfffaa8 	bl	80026c58 <argint>
800281b4:	e1a03000 	mov	r3, r0
800281b8:	e3530000 	cmp	r3, #0
800281bc:	aa000001 	bge	800281c8 <sys_setticket+0x54>
800281c0:	e3e03000 	mvn	r3, #0
800281c4:	ea00000c 	b	800281fc <sys_setticket+0x88>
800281c8:	e51b3008 	ldr	r3, [fp, #-8]
800281cc:	e3530000 	cmp	r3, #0
800281d0:	aa000003 	bge	800281e4 <sys_setticket+0x70>
800281d4:	e59f002c 	ldr	r0, [pc, #44]	@ 80028208 <sys_setticket+0x94>
800281d8:	ebffe5bc 	bl	800218d0 <cprintf>
800281dc:	e3e03000 	mvn	r3, #0
800281e0:	ea000005 	b	800281fc <sys_setticket+0x88>
800281e4:	e51b3008 	ldr	r3, [fp, #-8]
800281e8:	e51b200c 	ldr	r2, [fp, #-12]
800281ec:	e1a01002 	mov	r1, r2
800281f0:	e1a00003 	mov	r0, r3
800281f4:	ebfff954 	bl	8002674c <setticket>
800281f8:	e1a03000 	mov	r3, r0
800281fc:	e1a00003 	mov	r0, r3
80028200:	e24bd004 	sub	sp, fp, #4
80028204:	e8bd8800 	pop	{fp, pc}
80028208:	8002ba04 	.word	0x8002ba04

8002820c <sys_getpinfo>:
8002820c:	e92d4800 	push	{fp, lr}
80028210:	e28db004 	add	fp, sp, #4
80028214:	e24dd008 	sub	sp, sp, #8
80028218:	e24b300c 	sub	r3, fp, #12
8002821c:	e3a02c05 	mov	r2, #1280	@ 0x500
80028220:	e1a01003 	mov	r1, r3
80028224:	e3a00000 	mov	r0, #0
80028228:	ebfffaa5 	bl	80026cc4 <argptr>
8002822c:	e1a03000 	mov	r3, r0
80028230:	e3530000 	cmp	r3, #0
80028234:	aa000001 	bge	80028240 <sys_getpinfo+0x34>
80028238:	e3e03000 	mvn	r3, #0
8002823c:	ea000004 	b	80028254 <sys_getpinfo+0x48>
80028240:	e24b300c 	sub	r3, fp, #12
80028244:	e1a00003 	mov	r0, r3
80028248:	ebfff991 	bl	80026894 <getpinfo>
8002824c:	e50b0008 	str	r0, [fp, #-8]
80028250:	e51b3008 	ldr	r3, [fp, #-8]
80028254:	e1a00003 	mov	r0, r3
80028258:	e24bd004 	sub	sp, fp, #4
8002825c:	e8bd8800 	pop	{fp, pc}

80028260 <sys_printPages>:
80028260:	e92d4800 	push	{fp, lr}
80028264:	e28db004 	add	fp, sp, #4
80028268:	ebfff9a2 	bl	800268f8 <printPages>
8002826c:	e3a03000 	mov	r3, #0
80028270:	e1a00003 	mov	r0, r3
80028274:	e8bd8800 	pop	{fp, pc}

80028278 <sys_kpt>:
80028278:	e92d4800 	push	{fp, lr}
8002827c:	e28db004 	add	fp, sp, #4
80028280:	eb000997 	bl	8002a8e4 <kpt_print>
80028284:	e3a03000 	mov	r3, #0
80028288:	e1a00003 	mov	r0, r3
8002828c:	e8bd8800 	pop	{fp, pc}

80028290 <sys_thread_create>:
80028290:	e92d4800 	push	{fp, lr}
80028294:	e28db004 	add	fp, sp, #4
80028298:	e24dd030 	sub	sp, sp, #48	@ 0x30
8002829c:	e59f372c 	ldr	r3, [pc, #1836]	@ 800289d0 <sys_thread_create+0x740>
800282a0:	e5933000 	ldr	r3, [r3]
800282a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800282a8:	e3a03000 	mov	r3, #0
800282ac:	e50b3008 	str	r3, [fp, #-8]
800282b0:	e3a03000 	mov	r3, #0
800282b4:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800282b8:	e24b3024 	sub	r3, fp, #36	@ 0x24
800282bc:	e1a01003 	mov	r1, r3
800282c0:	e3a00000 	mov	r0, #0
800282c4:	ebfffa63 	bl	80026c58 <argint>
800282c8:	e1a03000 	mov	r3, r0
800282cc:	e3530000 	cmp	r3, #0
800282d0:	aa000001 	bge	800282dc <sys_thread_create+0x4c>
800282d4:	e3e03000 	mvn	r3, #0
800282d8:	ea0001b9 	b	800289c4 <sys_thread_create+0x734>
800282dc:	e24b3028 	sub	r3, fp, #40	@ 0x28
800282e0:	e1a01003 	mov	r1, r3
800282e4:	e3a00001 	mov	r0, #1
800282e8:	ebfffa5a 	bl	80026c58 <argint>
800282ec:	e1a03000 	mov	r3, r0
800282f0:	e3530000 	cmp	r3, #0
800282f4:	aa000001 	bge	80028300 <sys_thread_create+0x70>
800282f8:	e3e03000 	mvn	r3, #0
800282fc:	ea0001b0 	b	800289c4 <sys_thread_create+0x734>
80028300:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80028304:	e1a01003 	mov	r1, r3
80028308:	e3a00002 	mov	r0, #2
8002830c:	ebfffa51 	bl	80026c58 <argint>
80028310:	e1a03000 	mov	r3, r0
80028314:	e3530000 	cmp	r3, #0
80028318:	aa000001 	bge	80028324 <sys_thread_create+0x94>
8002831c:	e3e03000 	mvn	r3, #0
80028320:	ea0001a7 	b	800289c4 <sys_thread_create+0x734>
80028324:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028328:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
8002832c:	e3530000 	cmp	r3, #0
80028330:	0a000017 	beq	80028394 <sys_thread_create+0x104>
80028334:	e59f3698 	ldr	r3, [pc, #1688]	@ 800289d4 <sys_thread_create+0x744>
80028338:	e50b3010 	str	r3, [fp, #-16]
8002833c:	ea00000b 	b	80028370 <sys_thread_create+0xe0>
80028340:	e51b3010 	ldr	r3, [fp, #-16]
80028344:	e5932010 	ldr	r2, [r3, #16]
80028348:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002834c:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80028350:	e1520003 	cmp	r2, r3
80028354:	1a000002 	bne	80028364 <sys_thread_create+0xd4>
80028358:	e51b3010 	ldr	r3, [fp, #-16]
8002835c:	e50b3008 	str	r3, [fp, #-8]
80028360:	ea000006 	b	80028380 <sys_thread_create+0xf0>
80028364:	e51b3010 	ldr	r3, [fp, #-16]
80028368:	e2833094 	add	r3, r3, #148	@ 0x94
8002836c:	e50b3010 	str	r3, [fp, #-16]
80028370:	e51b3010 	ldr	r3, [fp, #-16]
80028374:	e59f265c 	ldr	r2, [pc, #1628]	@ 800289d8 <sys_thread_create+0x748>
80028378:	e1530002 	cmp	r3, r2
8002837c:	3affffef 	bcc	80028340 <sys_thread_create+0xb0>
80028380:	e51b3008 	ldr	r3, [fp, #-8]
80028384:	e3530000 	cmp	r3, #0
80028388:	1a000003 	bne	8002839c <sys_thread_create+0x10c>
8002838c:	e3e03000 	mvn	r3, #0
80028390:	ea00018b 	b	800289c4 <sys_thread_create+0x734>
80028394:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028398:	e50b3008 	str	r3, [fp, #-8]
8002839c:	e59f0638 	ldr	r0, [pc, #1592]	@ 800289dc <sys_thread_create+0x74c>
800283a0:	ebfff9bb 	bl	80026a94 <acquire>
800283a4:	e51b3008 	ldr	r3, [fp, #-8]
800283a8:	e5933010 	ldr	r3, [r3, #16]
800283ac:	e1a00003 	mov	r0, r3
800283b0:	ebfff433 	bl	80025484 <allocproc>
800283b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800283b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800283bc:	e3530000 	cmp	r3, #0
800283c0:	1a000003 	bne	800283d4 <sys_thread_create+0x144>
800283c4:	e59f0610 	ldr	r0, [pc, #1552]	@ 800289dc <sys_thread_create+0x74c>
800283c8:	ebfff9bc 	bl	80026ac0 <release>
800283cc:	e3e03000 	mvn	r3, #0
800283d0:	ea00017b 	b	800289c4 <sys_thread_create+0x734>
800283d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800283d8:	e3a02001 	mov	r2, #1
800283dc:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800283e0:	e51b3008 	ldr	r3, [fp, #-8]
800283e4:	e5932010 	ldr	r2, [r3, #16]
800283e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800283ec:	e5832090 	str	r2, [r3, #144]	@ 0x90
800283f0:	e51b3008 	ldr	r3, [fp, #-8]
800283f4:	e5932004 	ldr	r2, [r3, #4]
800283f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800283fc:	e5832004 	str	r2, [r3, #4]
80028400:	e51b3008 	ldr	r3, [fp, #-8]
80028404:	e5932000 	ldr	r2, [r3]
80028408:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002840c:	e5832000 	str	r2, [r3]
80028410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028414:	e3a02000 	mov	r2, #0
80028418:	e5832084 	str	r2, [r3, #132]	@ 0x84
8002841c:	e3a03000 	mov	r3, #0
80028420:	e50b300c 	str	r3, [fp, #-12]
80028424:	ea00001c 	b	8002849c <sys_thread_create+0x20c>
80028428:	e51b3008 	ldr	r3, [fp, #-8]
8002842c:	e51b200c 	ldr	r2, [fp, #-12]
80028430:	e282200a 	add	r2, r2, #10
80028434:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80028438:	e3530000 	cmp	r3, #0
8002843c:	0a00000e 	beq	8002847c <sys_thread_create+0x1ec>
80028440:	e51b3008 	ldr	r3, [fp, #-8]
80028444:	e51b200c 	ldr	r2, [fp, #-12]
80028448:	e282200a 	add	r2, r2, #10
8002844c:	e7931102 	ldr	r1, [r3, r2, lsl #2]
80028450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028454:	e51b200c 	ldr	r2, [fp, #-12]
80028458:	e282200a 	add	r2, r2, #10
8002845c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028460:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028464:	e51b200c 	ldr	r2, [fp, #-12]
80028468:	e282200a 	add	r2, r2, #10
8002846c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80028470:	e1a00003 	mov	r0, r3
80028474:	ebffe890 	bl	800226bc <filedup>
80028478:	ea000004 	b	80028490 <sys_thread_create+0x200>
8002847c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028480:	e51b200c 	ldr	r2, [fp, #-12]
80028484:	e282200a 	add	r2, r2, #10
80028488:	e3a01000 	mov	r1, #0
8002848c:	e7831102 	str	r1, [r3, r2, lsl #2]
80028490:	e51b300c 	ldr	r3, [fp, #-12]
80028494:	e2833001 	add	r3, r3, #1
80028498:	e50b300c 	str	r3, [fp, #-12]
8002849c:	e51b300c 	ldr	r3, [fp, #-12]
800284a0:	e353000f 	cmp	r3, #15
800284a4:	daffffdf 	ble	80028428 <sys_thread_create+0x198>
800284a8:	e51b3008 	ldr	r3, [fp, #-8]
800284ac:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800284b0:	e3530000 	cmp	r3, #0
800284b4:	0a000007 	beq	800284d8 <sys_thread_create+0x248>
800284b8:	e51b3008 	ldr	r3, [fp, #-8]
800284bc:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
800284c0:	e1a00003 	mov	r0, r3
800284c4:	ebffeb4e 	bl	80023204 <idup>
800284c8:	e1a02000 	mov	r2, r0
800284cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800284d0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800284d4:	ea000002 	b	800284e4 <sys_thread_create+0x254>
800284d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800284dc:	e3a02000 	mov	r2, #0
800284e0:	e5832068 	str	r2, [r3, #104]	@ 0x68
800284e4:	e51b3008 	ldr	r3, [fp, #-8]
800284e8:	e5933000 	ldr	r3, [r3]
800284ec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800284f0:	e51b3008 	ldr	r3, [fp, #-8]
800284f4:	e5930004 	ldr	r0, [r3, #4]
800284f8:	e51b3008 	ldr	r3, [fp, #-8]
800284fc:	e5931000 	ldr	r1, [r3]
80028500:	e51b3008 	ldr	r3, [fp, #-8]
80028504:	e5933000 	ldr	r3, [r3]
80028508:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002850c:	e1a02003 	mov	r2, r3
80028510:	eb00073f 	bl	8002a214 <allocuvm>
80028514:	e1a03000 	mov	r3, r0
80028518:	e3530000 	cmp	r3, #0
8002851c:	1a00003b 	bne	80028610 <sys_thread_create+0x380>
80028520:	e3a03000 	mov	r3, #0
80028524:	e50b300c 	str	r3, [fp, #-12]
80028528:	ea00000e 	b	80028568 <sys_thread_create+0x2d8>
8002852c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028530:	e51b200c 	ldr	r2, [fp, #-12]
80028534:	e282200a 	add	r2, r2, #10
80028538:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002853c:	e3530000 	cmp	r3, #0
80028540:	0a000005 	beq	8002855c <sys_thread_create+0x2cc>
80028544:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028548:	e51b200c 	ldr	r2, [fp, #-12]
8002854c:	e282200a 	add	r2, r2, #10
80028550:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80028554:	e1a00003 	mov	r0, r3
80028558:	ebffe870 	bl	80022720 <fileclose>
8002855c:	e51b300c 	ldr	r3, [fp, #-12]
80028560:	e2833001 	add	r3, r3, #1
80028564:	e50b300c 	str	r3, [fp, #-12]
80028568:	e51b300c 	ldr	r3, [fp, #-12]
8002856c:	e353000f 	cmp	r3, #15
80028570:	daffffed 	ble	8002852c <sys_thread_create+0x29c>
80028574:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028578:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002857c:	e3530000 	cmp	r3, #0
80028580:	0a000006 	beq	800285a0 <sys_thread_create+0x310>
80028584:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028588:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002858c:	e1a00003 	mov	r0, r3
80028590:	ebffebb3 	bl	80023464 <iput>
80028594:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028598:	e3a02000 	mov	r2, #0
8002859c:	e5832068 	str	r2, [r3, #104]	@ 0x68
800285a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285a4:	e5933008 	ldr	r3, [r3, #8]
800285a8:	e3530000 	cmp	r3, #0
800285ac:	0a000007 	beq	800285d0 <sys_thread_create+0x340>
800285b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285b4:	e5933008 	ldr	r3, [r3, #8]
800285b8:	e3a0100c 	mov	r1, #12
800285bc:	e1a00003 	mov	r0, r3
800285c0:	ebffe3ee 	bl	80021580 <kfree>
800285c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285c8:	e3a02000 	mov	r2, #0
800285cc:	e5832008 	str	r2, [r3, #8]
800285d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285d4:	e3a02000 	mov	r2, #0
800285d8:	e5832010 	str	r2, [r3, #16]
800285dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285e0:	e3a02000 	mov	r2, #0
800285e4:	e5c3200c 	strb	r2, [r3, #12]
800285e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285ec:	e3a02000 	mov	r2, #0
800285f0:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800285f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800285f8:	e3a02000 	mov	r2, #0
800285fc:	e5832090 	str	r2, [r3, #144]	@ 0x90
80028600:	e59f03d4 	ldr	r0, [pc, #980]	@ 800289dc <sys_thread_create+0x74c>
80028604:	ebfff92d 	bl	80026ac0 <release>
80028608:	e3e03000 	mvn	r3, #0
8002860c:	ea0000ec 	b	800289c4 <sys_thread_create+0x734>
80028610:	e51b3008 	ldr	r3, [fp, #-8]
80028614:	e5933000 	ldr	r3, [r3]
80028618:	e2832a01 	add	r2, r3, #4096	@ 0x1000
8002861c:	e51b3008 	ldr	r3, [fp, #-8]
80028620:	e5832000 	str	r2, [r3]
80028624:	e51b3008 	ldr	r3, [fp, #-8]
80028628:	e5932000 	ldr	r2, [r3]
8002862c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028630:	e5832000 	str	r2, [r3]
80028634:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028638:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002863c:	e5832084 	str	r2, [r3, #132]	@ 0x84
80028640:	e51b3008 	ldr	r3, [fp, #-8]
80028644:	e5932018 	ldr	r2, [r3, #24]
80028648:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002864c:	e5933018 	ldr	r3, [r3, #24]
80028650:	e1a00003 	mov	r0, r3
80028654:	e1a01002 	mov	r1, r2
80028658:	e3a03048 	mov	r3, #72	@ 0x48
8002865c:	e1a02003 	mov	r2, r3
80028660:	ebffdf17 	bl	800202c4 <memcpy>
80028664:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028668:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002866c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80028670:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028674:	e2433004 	sub	r3, r3, #4
80028678:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002867c:	e51b3008 	ldr	r3, [fp, #-8]
80028680:	e5930004 	ldr	r0, [r3, #4]
80028684:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80028688:	e3a03004 	mov	r3, #4
8002868c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028690:	eb000840 	bl	8002a798 <copyout>
80028694:	e1a03000 	mov	r3, r0
80028698:	e3530000 	cmp	r3, #0
8002869c:	aa000049 	bge	800287c8 <sys_thread_create+0x538>
800286a0:	e51b3008 	ldr	r3, [fp, #-8]
800286a4:	e5930004 	ldr	r0, [r3, #4]
800286a8:	e51b3008 	ldr	r3, [fp, #-8]
800286ac:	e5931000 	ldr	r1, [r3]
800286b0:	e51b3008 	ldr	r3, [fp, #-8]
800286b4:	e5933000 	ldr	r3, [r3]
800286b8:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
800286bc:	e1a02003 	mov	r2, r3
800286c0:	eb000729 	bl	8002a36c <deallocuvm>
800286c4:	e51b3008 	ldr	r3, [fp, #-8]
800286c8:	e5933000 	ldr	r3, [r3]
800286cc:	e2432a01 	sub	r2, r3, #4096	@ 0x1000
800286d0:	e51b3008 	ldr	r3, [fp, #-8]
800286d4:	e5832000 	str	r2, [r3]
800286d8:	e3a03000 	mov	r3, #0
800286dc:	e50b300c 	str	r3, [fp, #-12]
800286e0:	ea00000e 	b	80028720 <sys_thread_create+0x490>
800286e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800286e8:	e51b200c 	ldr	r2, [fp, #-12]
800286ec:	e282200a 	add	r2, r2, #10
800286f0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800286f4:	e3530000 	cmp	r3, #0
800286f8:	0a000005 	beq	80028714 <sys_thread_create+0x484>
800286fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028700:	e51b200c 	ldr	r2, [fp, #-12]
80028704:	e282200a 	add	r2, r2, #10
80028708:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002870c:	e1a00003 	mov	r0, r3
80028710:	ebffe802 	bl	80022720 <fileclose>
80028714:	e51b300c 	ldr	r3, [fp, #-12]
80028718:	e2833001 	add	r3, r3, #1
8002871c:	e50b300c 	str	r3, [fp, #-12]
80028720:	e51b300c 	ldr	r3, [fp, #-12]
80028724:	e353000f 	cmp	r3, #15
80028728:	daffffed 	ble	800286e4 <sys_thread_create+0x454>
8002872c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028730:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80028734:	e3530000 	cmp	r3, #0
80028738:	0a000006 	beq	80028758 <sys_thread_create+0x4c8>
8002873c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028740:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80028744:	e1a00003 	mov	r0, r3
80028748:	ebffeb45 	bl	80023464 <iput>
8002874c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028750:	e3a02000 	mov	r2, #0
80028754:	e5832068 	str	r2, [r3, #104]	@ 0x68
80028758:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002875c:	e5933008 	ldr	r3, [r3, #8]
80028760:	e3530000 	cmp	r3, #0
80028764:	0a000007 	beq	80028788 <sys_thread_create+0x4f8>
80028768:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002876c:	e5933008 	ldr	r3, [r3, #8]
80028770:	e3a0100c 	mov	r1, #12
80028774:	e1a00003 	mov	r0, r3
80028778:	ebffe380 	bl	80021580 <kfree>
8002877c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028780:	e3a02000 	mov	r2, #0
80028784:	e5832008 	str	r2, [r3, #8]
80028788:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002878c:	e3a02000 	mov	r2, #0
80028790:	e5832010 	str	r2, [r3, #16]
80028794:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028798:	e3a02000 	mov	r2, #0
8002879c:	e5c3200c 	strb	r2, [r3, #12]
800287a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800287a4:	e3a02000 	mov	r2, #0
800287a8:	e583208c 	str	r2, [r3, #140]	@ 0x8c
800287ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800287b0:	e3a02000 	mov	r2, #0
800287b4:	e5832090 	str	r2, [r3, #144]	@ 0x90
800287b8:	e59f021c 	ldr	r0, [pc, #540]	@ 800289dc <sys_thread_create+0x74c>
800287bc:	ebfff8bf 	bl	80026ac0 <release>
800287c0:	e3e03000 	mvn	r3, #0
800287c4:	ea00007e 	b	800289c4 <sys_thread_create+0x734>
800287c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800287cc:	e2433004 	sub	r3, r3, #4
800287d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800287d4:	e51b3008 	ldr	r3, [fp, #-8]
800287d8:	e5930004 	ldr	r0, [r3, #4]
800287dc:	e24b2030 	sub	r2, fp, #48	@ 0x30
800287e0:	e3a03004 	mov	r3, #4
800287e4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
800287e8:	eb0007ea 	bl	8002a798 <copyout>
800287ec:	e1a03000 	mov	r3, r0
800287f0:	e3530000 	cmp	r3, #0
800287f4:	aa000049 	bge	80028920 <sys_thread_create+0x690>
800287f8:	e51b3008 	ldr	r3, [fp, #-8]
800287fc:	e5930004 	ldr	r0, [r3, #4]
80028800:	e51b3008 	ldr	r3, [fp, #-8]
80028804:	e5931000 	ldr	r1, [r3]
80028808:	e51b3008 	ldr	r3, [fp, #-8]
8002880c:	e5933000 	ldr	r3, [r3]
80028810:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
80028814:	e1a02003 	mov	r2, r3
80028818:	eb0006d3 	bl	8002a36c <deallocuvm>
8002881c:	e51b3008 	ldr	r3, [fp, #-8]
80028820:	e5933000 	ldr	r3, [r3]
80028824:	e2432a01 	sub	r2, r3, #4096	@ 0x1000
80028828:	e51b3008 	ldr	r3, [fp, #-8]
8002882c:	e5832000 	str	r2, [r3]
80028830:	e3a03000 	mov	r3, #0
80028834:	e50b300c 	str	r3, [fp, #-12]
80028838:	ea00000e 	b	80028878 <sys_thread_create+0x5e8>
8002883c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028840:	e51b200c 	ldr	r2, [fp, #-12]
80028844:	e282200a 	add	r2, r2, #10
80028848:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002884c:	e3530000 	cmp	r3, #0
80028850:	0a000005 	beq	8002886c <sys_thread_create+0x5dc>
80028854:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028858:	e51b200c 	ldr	r2, [fp, #-12]
8002885c:	e282200a 	add	r2, r2, #10
80028860:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80028864:	e1a00003 	mov	r0, r3
80028868:	ebffe7ac 	bl	80022720 <fileclose>
8002886c:	e51b300c 	ldr	r3, [fp, #-12]
80028870:	e2833001 	add	r3, r3, #1
80028874:	e50b300c 	str	r3, [fp, #-12]
80028878:	e51b300c 	ldr	r3, [fp, #-12]
8002887c:	e353000f 	cmp	r3, #15
80028880:	daffffed 	ble	8002883c <sys_thread_create+0x5ac>
80028884:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028888:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002888c:	e3530000 	cmp	r3, #0
80028890:	0a000006 	beq	800288b0 <sys_thread_create+0x620>
80028894:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028898:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002889c:	e1a00003 	mov	r0, r3
800288a0:	ebffeaef 	bl	80023464 <iput>
800288a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288a8:	e3a02000 	mov	r2, #0
800288ac:	e5832068 	str	r2, [r3, #104]	@ 0x68
800288b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288b4:	e5933008 	ldr	r3, [r3, #8]
800288b8:	e3530000 	cmp	r3, #0
800288bc:	0a000007 	beq	800288e0 <sys_thread_create+0x650>
800288c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288c4:	e5933008 	ldr	r3, [r3, #8]
800288c8:	e3a0100c 	mov	r1, #12
800288cc:	e1a00003 	mov	r0, r3
800288d0:	ebffe32a 	bl	80021580 <kfree>
800288d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288d8:	e3a02000 	mov	r2, #0
800288dc:	e5832008 	str	r2, [r3, #8]
800288e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288e4:	e3a02000 	mov	r2, #0
800288e8:	e5832010 	str	r2, [r3, #16]
800288ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288f0:	e3a02000 	mov	r2, #0
800288f4:	e5c3200c 	strb	r2, [r3, #12]
800288f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288fc:	e3a02000 	mov	r2, #0
80028900:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80028904:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028908:	e3a02000 	mov	r2, #0
8002890c:	e5832090 	str	r2, [r3, #144]	@ 0x90
80028910:	e59f00c4 	ldr	r0, [pc, #196]	@ 800289dc <sys_thread_create+0x74c>
80028914:	ebfff869 	bl	80026ac0 <release>
80028918:	e3e03000 	mvn	r3, #0
8002891c:	ea000028 	b	800289c4 <sys_thread_create+0x734>
80028920:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028924:	e5933018 	ldr	r3, [r3, #24]
80028928:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002892c:	e5832000 	str	r2, [r3]
80028930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028934:	e5933018 	ldr	r3, [r3, #24]
80028938:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
8002893c:	e5832010 	str	r2, [r3, #16]
80028940:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028944:	e5933018 	ldr	r3, [r3, #24]
80028948:	e3a02000 	mov	r2, #0
8002894c:	e5832004 	str	r2, [r3, #4]
80028950:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028954:	e5933018 	ldr	r3, [r3, #24]
80028958:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
8002895c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80028960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028964:	e51b2008 	ldr	r2, [fp, #-8]
80028968:	e5832014 	str	r2, [r3, #20]
8002896c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028970:	e3a02003 	mov	r2, #3
80028974:	e5c3200c 	strb	r2, [r3, #12]
80028978:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002897c:	e5933010 	ldr	r3, [r3, #16]
80028980:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80028984:	e51b3008 	ldr	r3, [fp, #-8]
80028988:	e5930004 	ldr	r0, [r3, #4]
8002898c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80028990:	e24b2034 	sub	r2, fp, #52	@ 0x34
80028994:	e3a03004 	mov	r3, #4
80028998:	eb00077e 	bl	8002a798 <copyout>
8002899c:	e1a03000 	mov	r3, r0
800289a0:	e3530000 	cmp	r3, #0
800289a4:	aa000003 	bge	800289b8 <sys_thread_create+0x728>
800289a8:	e59f002c 	ldr	r0, [pc, #44]	@ 800289dc <sys_thread_create+0x74c>
800289ac:	ebfff843 	bl	80026ac0 <release>
800289b0:	e3e03000 	mvn	r3, #0
800289b4:	ea000002 	b	800289c4 <sys_thread_create+0x734>
800289b8:	e59f001c 	ldr	r0, [pc, #28]	@ 800289dc <sys_thread_create+0x74c>
800289bc:	ebfff83f 	bl	80026ac0 <release>
800289c0:	e3a03000 	mov	r3, #0
800289c4:	e1a00003 	mov	r0, r3
800289c8:	e24bd004 	sub	sp, fp, #4
800289cc:	e8bd8800 	pop	{fp, pc}
800289d0:	800b32d4 	.word	0x800b32d4
800289d4:	800b0dd0 	.word	0x800b0dd0
800289d8:	800b32d0 	.word	0x800b32d0
800289dc:	800b0d9c 	.word	0x800b0d9c

800289e0 <sys_thread_exit>:
800289e0:	e92d4800 	push	{fp, lr}
800289e4:	e28db004 	add	fp, sp, #4
800289e8:	e24dd010 	sub	sp, sp, #16
800289ec:	e59f30c8 	ldr	r3, [pc, #200]	@ 80028abc <sys_thread_exit+0xdc>
800289f0:	e5933000 	ldr	r3, [r3]
800289f4:	e50b3010 	str	r3, [fp, #-16]
800289f8:	e51b3010 	ldr	r3, [fp, #-16]
800289fc:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80028a00:	e3530000 	cmp	r3, #0
80028a04:	1a000001 	bne	80028a10 <sys_thread_exit+0x30>
80028a08:	e3a03000 	mov	r3, #0
80028a0c:	ea000027 	b	80028ab0 <sys_thread_exit+0xd0>
80028a10:	e51b3010 	ldr	r3, [fp, #-16]
80028a14:	e3a02005 	mov	r2, #5
80028a18:	e5c3200c 	strb	r2, [r3, #12]
80028a1c:	e51b0010 	ldr	r0, [fp, #-16]
80028a20:	ebfff673 	bl	800263f4 <wakeup>
80028a24:	e3a03000 	mov	r3, #0
80028a28:	e50b3008 	str	r3, [fp, #-8]
80028a2c:	e59f308c 	ldr	r3, [pc, #140]	@ 80028ac0 <sys_thread_exit+0xe0>
80028a30:	e50b300c 	str	r3, [fp, #-12]
80028a34:	ea00000b 	b	80028a68 <sys_thread_exit+0x88>
80028a38:	e51b300c 	ldr	r3, [fp, #-12]
80028a3c:	e5932010 	ldr	r2, [r3, #16]
80028a40:	e51b3010 	ldr	r3, [fp, #-16]
80028a44:	e5933090 	ldr	r3, [r3, #144]	@ 0x90
80028a48:	e1520003 	cmp	r2, r3
80028a4c:	1a000002 	bne	80028a5c <sys_thread_exit+0x7c>
80028a50:	e51b300c 	ldr	r3, [fp, #-12]
80028a54:	e50b3008 	str	r3, [fp, #-8]
80028a58:	ea000006 	b	80028a78 <sys_thread_exit+0x98>
80028a5c:	e51b300c 	ldr	r3, [fp, #-12]
80028a60:	e2833094 	add	r3, r3, #148	@ 0x94
80028a64:	e50b300c 	str	r3, [fp, #-12]
80028a68:	e51b300c 	ldr	r3, [fp, #-12]
80028a6c:	e59f2050 	ldr	r2, [pc, #80]	@ 80028ac4 <sys_thread_exit+0xe4>
80028a70:	e1530002 	cmp	r3, r2
80028a74:	3affffef 	bcc	80028a38 <sys_thread_exit+0x58>
80028a78:	e51b3008 	ldr	r3, [fp, #-8]
80028a7c:	e3530000 	cmp	r3, #0
80028a80:	0a000005 	beq	80028a9c <sys_thread_exit+0xbc>
80028a84:	e51b2008 	ldr	r2, [fp, #-8]
80028a88:	e51b3010 	ldr	r3, [fp, #-16]
80028a8c:	e1520003 	cmp	r2, r3
80028a90:	0a000001 	beq	80028a9c <sys_thread_exit+0xbc>
80028a94:	e51b0008 	ldr	r0, [fp, #-8]
80028a98:	ebfff655 	bl	800263f4 <wakeup>
80028a9c:	e59f0024 	ldr	r0, [pc, #36]	@ 80028ac8 <sys_thread_exit+0xe8>
80028aa0:	ebfff7fb 	bl	80026a94 <acquire>
80028aa4:	ebfff57a 	bl	80026094 <sched>
80028aa8:	e59f001c 	ldr	r0, [pc, #28]	@ 80028acc <sys_thread_exit+0xec>
80028aac:	ebffe412 	bl	80021afc <panic>
80028ab0:	e1a00003 	mov	r0, r3
80028ab4:	e24bd004 	sub	sp, fp, #4
80028ab8:	e8bd8800 	pop	{fp, pc}
80028abc:	800b32d4 	.word	0x800b32d4
80028ac0:	800b0dd0 	.word	0x800b0dd0
80028ac4:	800b32d0 	.word	0x800b32d0
80028ac8:	800b0d9c 	.word	0x800b0d9c
80028acc:	8002ba30 	.word	0x8002ba30

80028ad0 <sys_thread_join>:
80028ad0:	e92d4800 	push	{fp, lr}
80028ad4:	e28db004 	add	fp, sp, #4
80028ad8:	e24dd020 	sub	sp, sp, #32
80028adc:	e24b301c 	sub	r3, fp, #28
80028ae0:	e1a01003 	mov	r1, r3
80028ae4:	e3a00000 	mov	r0, #0
80028ae8:	ebfff85a 	bl	80026c58 <argint>
80028aec:	e1a03000 	mov	r3, r0
80028af0:	e3530000 	cmp	r3, #0
80028af4:	aa000001 	bge	80028b00 <sys_thread_join+0x30>
80028af8:	e3e03000 	mvn	r3, #0
80028afc:	ea0000bb 	b	80028df0 <sys_thread_join+0x320>
80028b00:	e59f02f4 	ldr	r0, [pc, #756]	@ 80028dfc <sys_thread_join+0x32c>
80028b04:	ebfff7e2 	bl	80026a94 <acquire>
80028b08:	e59f32f0 	ldr	r3, [pc, #752]	@ 80028e00 <sys_thread_join+0x330>
80028b0c:	e50b3008 	str	r3, [fp, #-8]
80028b10:	ea000007 	b	80028b34 <sys_thread_join+0x64>
80028b14:	e51b3008 	ldr	r3, [fp, #-8]
80028b18:	e5933010 	ldr	r3, [r3, #16]
80028b1c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028b20:	e1530002 	cmp	r3, r2
80028b24:	0a000007 	beq	80028b48 <sys_thread_join+0x78>
80028b28:	e51b3008 	ldr	r3, [fp, #-8]
80028b2c:	e2833094 	add	r3, r3, #148	@ 0x94
80028b30:	e50b3008 	str	r3, [fp, #-8]
80028b34:	e51b3008 	ldr	r3, [fp, #-8]
80028b38:	e59f22c4 	ldr	r2, [pc, #708]	@ 80028e04 <sys_thread_join+0x334>
80028b3c:	e1530002 	cmp	r3, r2
80028b40:	3afffff3 	bcc	80028b14 <sys_thread_join+0x44>
80028b44:	ea000000 	b	80028b4c <sys_thread_join+0x7c>
80028b48:	e1a00000 	nop			@ (mov r0, r0)
80028b4c:	e51b3008 	ldr	r3, [fp, #-8]
80028b50:	e59f22ac 	ldr	r2, [pc, #684]	@ 80028e04 <sys_thread_join+0x334>
80028b54:	e1530002 	cmp	r3, r2
80028b58:	1a000003 	bne	80028b6c <sys_thread_join+0x9c>
80028b5c:	e59f0298 	ldr	r0, [pc, #664]	@ 80028dfc <sys_thread_join+0x32c>
80028b60:	ebfff7d6 	bl	80026ac0 <release>
80028b64:	e3e03000 	mvn	r3, #0
80028b68:	ea0000a0 	b	80028df0 <sys_thread_join+0x320>
80028b6c:	e59f3294 	ldr	r3, [pc, #660]	@ 80028e08 <sys_thread_join+0x338>
80028b70:	e5933000 	ldr	r3, [r3]
80028b74:	e50b300c 	str	r3, [fp, #-12]
80028b78:	e51b300c 	ldr	r3, [fp, #-12]
80028b7c:	e593308c 	ldr	r3, [r3, #140]	@ 0x8c
80028b80:	e3530000 	cmp	r3, #0
80028b84:	1a000005 	bne	80028ba0 <sys_thread_join+0xd0>
80028b88:	e51b3008 	ldr	r3, [fp, #-8]
80028b8c:	e5932090 	ldr	r2, [r3, #144]	@ 0x90
80028b90:	e51b300c 	ldr	r3, [fp, #-12]
80028b94:	e5933010 	ldr	r3, [r3, #16]
80028b98:	e1520003 	cmp	r2, r3
80028b9c:	0a00000e 	beq	80028bdc <sys_thread_join+0x10c>
80028ba0:	e59f0254 	ldr	r0, [pc, #596]	@ 80028dfc <sys_thread_join+0x32c>
80028ba4:	ebfff7c5 	bl	80026ac0 <release>
80028ba8:	e3e03000 	mvn	r3, #0
80028bac:	ea00008f 	b	80028df0 <sys_thread_join+0x320>
80028bb0:	e51b3008 	ldr	r3, [fp, #-8]
80028bb4:	e5d3300c 	ldrb	r3, [r3, #12]
80028bb8:	e3530000 	cmp	r3, #0
80028bbc:	1a000003 	bne	80028bd0 <sys_thread_join+0x100>
80028bc0:	e59f0234 	ldr	r0, [pc, #564]	@ 80028dfc <sys_thread_join+0x32c>
80028bc4:	ebfff7bd 	bl	80026ac0 <release>
80028bc8:	e3e03000 	mvn	r3, #0
80028bcc:	ea000087 	b	80028df0 <sys_thread_join+0x320>
80028bd0:	e59f1224 	ldr	r1, [pc, #548]	@ 80028dfc <sys_thread_join+0x32c>
80028bd4:	e51b0008 	ldr	r0, [fp, #-8]
80028bd8:	ebfff585 	bl	800261f4 <sleep>
80028bdc:	e51b3008 	ldr	r3, [fp, #-8]
80028be0:	e5d3300c 	ldrb	r3, [r3, #12]
80028be4:	e3530005 	cmp	r3, #5
80028be8:	1afffff0 	bne	80028bb0 <sys_thread_join+0xe0>
80028bec:	e51b3008 	ldr	r3, [fp, #-8]
80028bf0:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80028bf4:	e3530000 	cmp	r3, #0
80028bf8:	0a000058 	beq	80028d60 <sys_thread_join+0x290>
80028bfc:	e51b3008 	ldr	r3, [fp, #-8]
80028c00:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80028c04:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80028c08:	e51b300c 	ldr	r3, [fp, #-12]
80028c0c:	e5933000 	ldr	r3, [r3]
80028c10:	e1520003 	cmp	r2, r3
80028c14:	1a00000e 	bne	80028c54 <sys_thread_join+0x184>
80028c18:	e51b300c 	ldr	r3, [fp, #-12]
80028c1c:	e5930004 	ldr	r0, [r3, #4]
80028c20:	e51b300c 	ldr	r3, [fp, #-12]
80028c24:	e5931000 	ldr	r1, [r3]
80028c28:	e51b300c 	ldr	r3, [fp, #-12]
80028c2c:	e5933000 	ldr	r3, [r3]
80028c30:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
80028c34:	e1a02003 	mov	r2, r3
80028c38:	eb0005cb 	bl	8002a36c <deallocuvm>
80028c3c:	e51b300c 	ldr	r3, [fp, #-12]
80028c40:	e5933000 	ldr	r3, [r3]
80028c44:	e2432a01 	sub	r2, r3, #4096	@ 0x1000
80028c48:	e51b300c 	ldr	r3, [fp, #-12]
80028c4c:	e5832000 	str	r2, [r3]
80028c50:	ea00003f 	b	80028d54 <sys_thread_join+0x284>
80028c54:	e51b300c 	ldr	r3, [fp, #-12]
80028c58:	e5930004 	ldr	r0, [r3, #4]
80028c5c:	e51b3008 	ldr	r3, [fp, #-8]
80028c60:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80028c64:	e3a02000 	mov	r2, #0
80028c68:	e1a01003 	mov	r1, r3
80028c6c:	eb0003b6 	bl	80029b4c <walkpgdir>
80028c70:	e50b0010 	str	r0, [fp, #-16]
80028c74:	e51b3010 	ldr	r3, [fp, #-16]
80028c78:	e3530000 	cmp	r3, #0
80028c7c:	0a000034 	beq	80028d54 <sys_thread_join+0x284>
80028c80:	e51b3010 	ldr	r3, [fp, #-16]
80028c84:	e5933000 	ldr	r3, [r3]
80028c88:	e51b2010 	ldr	r2, [fp, #-16]
80028c8c:	e5922000 	ldr	r2, [r2]
80028c90:	e2022003 	and	r2, r2, #3
80028c94:	e3520002 	cmp	r2, #2
80028c98:	03a02001 	moveq	r2, #1
80028c9c:	13a02000 	movne	r2, #0
80028ca0:	e6ef2072 	uxtb	r2, r2
80028ca4:	e0033002 	and	r3, r3, r2
80028ca8:	e3530000 	cmp	r3, #0
80028cac:	0a000028 	beq	80028d54 <sys_thread_join+0x284>
80028cb0:	e51b3010 	ldr	r3, [fp, #-16]
80028cb4:	e5933000 	ldr	r3, [r3]
80028cb8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028cbc:	e3c3300f 	bic	r3, r3, #15
80028cc0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028cc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028cc8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028ccc:	e3c3300f 	bic	r3, r3, #15
80028cd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028cd4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028cd8:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028cdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80028ce0:	e51b3008 	ldr	r3, [fp, #-8]
80028ce4:	e5931084 	ldr	r1, [r3, #132]	@ 0x84
80028ce8:	e51b3010 	ldr	r3, [fp, #-16]
80028cec:	e5932000 	ldr	r2, [r3]
80028cf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028cf4:	e58d3004 	str	r3, [sp, #4]
80028cf8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028cfc:	e58d3000 	str	r3, [sp]
80028d00:	e1a03002 	mov	r3, r2
80028d04:	e51b2010 	ldr	r2, [fp, #-16]
80028d08:	e59f00fc 	ldr	r0, [pc, #252]	@ 80028e0c <sys_thread_join+0x33c>
80028d0c:	ebffe2ef 	bl	800218d0 <cprintf>
80028d10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028d14:	e1a03a03 	lsl	r3, r3, #20
80028d18:	e1a03a23 	lsr	r3, r3, #20
80028d1c:	e3530000 	cmp	r3, #0
80028d20:	0a000005 	beq	80028d3c <sys_thread_join+0x26c>
80028d24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028d28:	e1a01003 	mov	r1, r3
80028d2c:	e59f00dc 	ldr	r0, [pc, #220]	@ 80028e10 <sys_thread_join+0x340>
80028d30:	ebffe2e6 	bl	800218d0 <cprintf>
80028d34:	e59f00d8 	ldr	r0, [pc, #216]	@ 80028e14 <sys_thread_join+0x344>
80028d38:	ebffe36f 	bl	80021afc <panic>
80028d3c:	e3a0100c 	mov	r1, #12
80028d40:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028d44:	ebffe20d 	bl	80021580 <kfree>
80028d48:	e51b3010 	ldr	r3, [fp, #-16]
80028d4c:	e3a02000 	mov	r2, #0
80028d50:	e5832000 	str	r2, [r3]
80028d54:	e51b3008 	ldr	r3, [fp, #-8]
80028d58:	e3a02000 	mov	r2, #0
80028d5c:	e5832084 	str	r2, [r3, #132]	@ 0x84
80028d60:	e51b3008 	ldr	r3, [fp, #-8]
80028d64:	e5933008 	ldr	r3, [r3, #8]
80028d68:	e3530000 	cmp	r3, #0
80028d6c:	0a000007 	beq	80028d90 <sys_thread_join+0x2c0>
80028d70:	e51b3008 	ldr	r3, [fp, #-8]
80028d74:	e5933008 	ldr	r3, [r3, #8]
80028d78:	e3a0100c 	mov	r1, #12
80028d7c:	e1a00003 	mov	r0, r3
80028d80:	ebffe1fe 	bl	80021580 <kfree>
80028d84:	e51b3008 	ldr	r3, [fp, #-8]
80028d88:	e3a02000 	mov	r2, #0
80028d8c:	e5832008 	str	r2, [r3, #8]
80028d90:	e51b3008 	ldr	r3, [fp, #-8]
80028d94:	e3a02000 	mov	r2, #0
80028d98:	e5832010 	str	r2, [r3, #16]
80028d9c:	e51b3008 	ldr	r3, [fp, #-8]
80028da0:	e3a02000 	mov	r2, #0
80028da4:	e5832014 	str	r2, [r3, #20]
80028da8:	e51b3008 	ldr	r3, [fp, #-8]
80028dac:	e3a02000 	mov	r2, #0
80028db0:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80028db4:	e51b3008 	ldr	r3, [fp, #-8]
80028db8:	e3a02000 	mov	r2, #0
80028dbc:	e5832024 	str	r2, [r3, #36]	@ 0x24
80028dc0:	e51b3008 	ldr	r3, [fp, #-8]
80028dc4:	e3a02000 	mov	r2, #0
80028dc8:	e5c3200c 	strb	r2, [r3, #12]
80028dcc:	e51b3008 	ldr	r3, [fp, #-8]
80028dd0:	e3a02000 	mov	r2, #0
80028dd4:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80028dd8:	e51b3008 	ldr	r3, [fp, #-8]
80028ddc:	e3a02000 	mov	r2, #0
80028de0:	e5832090 	str	r2, [r3, #144]	@ 0x90
80028de4:	e59f0010 	ldr	r0, [pc, #16]	@ 80028dfc <sys_thread_join+0x32c>
80028de8:	ebfff734 	bl	80026ac0 <release>
80028dec:	e3a03000 	mov	r3, #0
80028df0:	e1a00003 	mov	r0, r3
80028df4:	e24bd004 	sub	sp, fp, #4
80028df8:	e8bd8800 	pop	{fp, pc}
80028dfc:	800b0d9c 	.word	0x800b0d9c
80028e00:	800b0dd0 	.word	0x800b0dd0
80028e04:	800b32d0 	.word	0x800b32d0
80028e08:	800b32d4 	.word	0x800b32d4
80028e0c:	8002ba3c 	.word	0x8002ba3c
80028e10:	8002ba88 	.word	0x8002ba88
80028e14:	8002bab0 	.word	0x8002bab0

80028e18 <sys_barrier_init>:
80028e18:	e92d4800 	push	{fp, lr}
80028e1c:	e28db004 	add	fp, sp, #4
80028e20:	e24dd008 	sub	sp, sp, #8
80028e24:	e24b3008 	sub	r3, fp, #8
80028e28:	e1a01003 	mov	r1, r3
80028e2c:	e3a00000 	mov	r0, #0
80028e30:	ebfff788 	bl	80026c58 <argint>
80028e34:	e1a03000 	mov	r3, r0
80028e38:	e3530000 	cmp	r3, #0
80028e3c:	aa000001 	bge	80028e48 <sys_barrier_init+0x30>
80028e40:	e3e03000 	mvn	r3, #0
80028e44:	ea000003 	b	80028e58 <sys_barrier_init+0x40>
80028e48:	e51b3008 	ldr	r3, [fp, #-8]
80028e4c:	e1a00003 	mov	r0, r3
80028e50:	eb0006d7 	bl	8002a9b4 <barrier_init>
80028e54:	e3e03000 	mvn	r3, #0
80028e58:	e1a00003 	mov	r0, r3
80028e5c:	e24bd004 	sub	sp, fp, #4
80028e60:	e8bd8800 	pop	{fp, pc}

80028e64 <sys_barrier_check>:
80028e64:	e92d4800 	push	{fp, lr}
80028e68:	e28db004 	add	fp, sp, #4
80028e6c:	eb0006ed 	bl	8002aa28 <barrier_check>
80028e70:	e3e03000 	mvn	r3, #0
80028e74:	e1a00003 	mov	r0, r3
80028e78:	e8bd8800 	pop	{fp, pc}

80028e7c <sys_waitpid>:
80028e7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028e80:	e28db000 	add	fp, sp, #0
80028e84:	e3e03000 	mvn	r3, #0
80028e88:	e1a00003 	mov	r0, r3
80028e8c:	e28bd000 	add	sp, fp, #0
80028e90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028e94:	e12fff1e 	bx	lr

80028e98 <sys_sleepChan>:
80028e98:	e92d4800 	push	{fp, lr}
80028e9c:	e28db004 	add	fp, sp, #4
80028ea0:	e24dd008 	sub	sp, sp, #8
80028ea4:	e24b3008 	sub	r3, fp, #8
80028ea8:	e1a01003 	mov	r1, r3
80028eac:	e3a00000 	mov	r0, #0
80028eb0:	ebfff768 	bl	80026c58 <argint>
80028eb4:	e1a03000 	mov	r3, r0
80028eb8:	e3530000 	cmp	r3, #0
80028ebc:	aa000001 	bge	80028ec8 <sys_sleepChan+0x30>
80028ec0:	e3e03000 	mvn	r3, #0
80028ec4:	ea000008 	b	80028eec <sys_sleepChan+0x54>
80028ec8:	e59f0028 	ldr	r0, [pc, #40]	@ 80028ef8 <sys_sleepChan+0x60>
80028ecc:	ebfff6f0 	bl	80026a94 <acquire>
80028ed0:	e51b3008 	ldr	r3, [fp, #-8]
80028ed4:	e59f101c 	ldr	r1, [pc, #28]	@ 80028ef8 <sys_sleepChan+0x60>
80028ed8:	e1a00003 	mov	r0, r3
80028edc:	ebfff4c4 	bl	800261f4 <sleep>
80028ee0:	e59f0010 	ldr	r0, [pc, #16]	@ 80028ef8 <sys_sleepChan+0x60>
80028ee4:	ebfff6f5 	bl	80026ac0 <release>
80028ee8:	e3a03000 	mov	r3, #0
80028eec:	e1a00003 	mov	r0, r3
80028ef0:	e24bd004 	sub	sp, fp, #4
80028ef4:	e8bd8800 	pop	{fp, pc}
80028ef8:	800b0d9c 	.word	0x800b0d9c

80028efc <sys_getChannel>:
80028efc:	e92d4800 	push	{fp, lr}
80028f00:	e28db004 	add	fp, sp, #4
80028f04:	e24dd008 	sub	sp, sp, #8
80028f08:	e59f0030 	ldr	r0, [pc, #48]	@ 80028f40 <sys_getChannel+0x44>
80028f0c:	ebfff6e0 	bl	80026a94 <acquire>
80028f10:	e59f302c 	ldr	r3, [pc, #44]	@ 80028f44 <sys_getChannel+0x48>
80028f14:	e5933000 	ldr	r3, [r3]
80028f18:	e2832001 	add	r2, r3, #1
80028f1c:	e59f1020 	ldr	r1, [pc, #32]	@ 80028f44 <sys_getChannel+0x48>
80028f20:	e5812000 	str	r2, [r1]
80028f24:	e50b3008 	str	r3, [fp, #-8]
80028f28:	e59f0010 	ldr	r0, [pc, #16]	@ 80028f40 <sys_getChannel+0x44>
80028f2c:	ebfff6e3 	bl	80026ac0 <release>
80028f30:	e51b3008 	ldr	r3, [fp, #-8]
80028f34:	e1a00003 	mov	r0, r3
80028f38:	e24bd004 	sub	sp, fp, #4
80028f3c:	e8bd8800 	pop	{fp, pc}
80028f40:	800b0d9c 	.word	0x800b0d9c
80028f44:	8002d0e4 	.word	0x8002d0e4

80028f48 <sys_sigChan>:
80028f48:	e92d4800 	push	{fp, lr}
80028f4c:	e28db004 	add	fp, sp, #4
80028f50:	e24dd008 	sub	sp, sp, #8
80028f54:	e24b3008 	sub	r3, fp, #8
80028f58:	e1a01003 	mov	r1, r3
80028f5c:	e3a00000 	mov	r0, #0
80028f60:	ebfff73c 	bl	80026c58 <argint>
80028f64:	e1a03000 	mov	r3, r0
80028f68:	e3530000 	cmp	r3, #0
80028f6c:	ba000007 	blt	80028f90 <sys_sigChan+0x48>
80028f70:	e59f0024 	ldr	r0, [pc, #36]	@ 80028f9c <sys_sigChan+0x54>
80028f74:	ebfff6c6 	bl	80026a94 <acquire>
80028f78:	e51b3008 	ldr	r3, [fp, #-8]
80028f7c:	e1a00003 	mov	r0, r3
80028f80:	ebfff51b 	bl	800263f4 <wakeup>
80028f84:	e59f0010 	ldr	r0, [pc, #16]	@ 80028f9c <sys_sigChan+0x54>
80028f88:	ebfff6cc 	bl	80026ac0 <release>
80028f8c:	ea000000 	b	80028f94 <sys_sigChan+0x4c>
80028f90:	e1a00000 	nop			@ (mov r0, r0)
80028f94:	e24bd004 	sub	sp, fp, #4
80028f98:	e8bd8800 	pop	{fp, pc}
80028f9c:	800b0d9c 	.word	0x800b0d9c

80028fa0 <sys_sigOneChan>:
80028fa0:	e92d4800 	push	{fp, lr}
80028fa4:	e28db004 	add	fp, sp, #4
80028fa8:	e24dd008 	sub	sp, sp, #8
80028fac:	e24b300c 	sub	r3, fp, #12
80028fb0:	e1a01003 	mov	r1, r3
80028fb4:	e3a00000 	mov	r0, #0
80028fb8:	ebfff726 	bl	80026c58 <argint>
80028fbc:	e1a03000 	mov	r3, r0
80028fc0:	e3530000 	cmp	r3, #0
80028fc4:	ba00001b 	blt	80029038 <sys_sigOneChan+0x98>
80028fc8:	e59f0074 	ldr	r0, [pc, #116]	@ 80029044 <sys_sigOneChan+0xa4>
80028fcc:	ebfff6b0 	bl	80026a94 <acquire>
80028fd0:	e59f3070 	ldr	r3, [pc, #112]	@ 80029048 <sys_sigOneChan+0xa8>
80028fd4:	e50b3008 	str	r3, [fp, #-8]
80028fd8:	ea00000f 	b	8002901c <sys_sigOneChan+0x7c>
80028fdc:	e51b3008 	ldr	r3, [fp, #-8]
80028fe0:	e5d3300c 	ldrb	r3, [r3, #12]
80028fe4:	e3530002 	cmp	r3, #2
80028fe8:	1a000008 	bne	80029010 <sys_sigOneChan+0x70>
80028fec:	e51b3008 	ldr	r3, [fp, #-8]
80028ff0:	e5933020 	ldr	r3, [r3, #32]
80028ff4:	e51b200c 	ldr	r2, [fp, #-12]
80028ff8:	e1530002 	cmp	r3, r2
80028ffc:	1a000003 	bne	80029010 <sys_sigOneChan+0x70>
80029000:	e51b3008 	ldr	r3, [fp, #-8]
80029004:	e3a02003 	mov	r2, #3
80029008:	e5c3200c 	strb	r2, [r3, #12]
8002900c:	ea000006 	b	8002902c <sys_sigOneChan+0x8c>
80029010:	e51b3008 	ldr	r3, [fp, #-8]
80029014:	e2833094 	add	r3, r3, #148	@ 0x94
80029018:	e50b3008 	str	r3, [fp, #-8]
8002901c:	e51b3008 	ldr	r3, [fp, #-8]
80029020:	e59f2024 	ldr	r2, [pc, #36]	@ 8002904c <sys_sigOneChan+0xac>
80029024:	e1530002 	cmp	r3, r2
80029028:	3affffeb 	bcc	80028fdc <sys_sigOneChan+0x3c>
8002902c:	e59f0010 	ldr	r0, [pc, #16]	@ 80029044 <sys_sigOneChan+0xa4>
80029030:	ebfff6a2 	bl	80026ac0 <release>
80029034:	ea000000 	b	8002903c <sys_sigOneChan+0x9c>
80029038:	e1a00000 	nop			@ (mov r0, r0)
8002903c:	e24bd004 	sub	sp, fp, #4
80029040:	e8bd8800 	pop	{fp, pc}
80029044:	800b0d9c 	.word	0x800b0d9c
80029048:	800b0dd0 	.word	0x800b0dd0
8002904c:	800b32d0 	.word	0x800b32d0

80029050 <trap_swi>:
80029050:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029054:	e14f2000 	mrs	r2, SPSR
80029058:	e92d0004 	stmfd	sp!, {r2}
8002905c:	e92d4000 	stmfd	sp!, {lr}
80029060:	e94d6000 	stmdb	sp, {sp, lr}^
80029064:	e24dd008 	sub	sp, sp, #8
80029068:	e1a0000d 	mov	r0, sp
8002906c:	eb00005e 	bl	800291ec <swi_handler>

80029070 <trapret>:
80029070:	e8dd6000 	ldm	sp, {sp, lr}^
80029074:	e28dd008 	add	sp, sp, #8
80029078:	e8bd4000 	ldmfd	sp!, {lr}
8002907c:	e8bd0004 	ldmfd	sp!, {r2}
80029080:	e16ff002 	msr	SPSR_fsxc, r2
80029084:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80029088 <trap_irq>:
80029088:	e24ee004 	sub	lr, lr, #4
8002908c:	e92d4007 	push	{r0, r1, r2, lr}
80029090:	e14f1000 	mrs	r1, SPSR
80029094:	e1a0000d 	mov	r0, sp
80029098:	e28dd010 	add	sp, sp, #16
8002909c:	e10f2000 	mrs	r2, CPSR
800290a0:	e3c2201f 	bic	r2, r2, #31
800290a4:	e3822013 	orr	r2, r2, #19
800290a8:	e12ff002 	msr	CPSR_fsxc, r2
800290ac:	e590200c 	ldr	r2, [r0, #12]
800290b0:	e92d0004 	stmfd	sp!, {r2}
800290b4:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
800290b8:	e8900038 	ldm	r0, {r3, r4, r5}
800290bc:	e92d0038 	push	{r3, r4, r5}
800290c0:	e92d0002 	stmfd	sp!, {r1}
800290c4:	e92d4000 	stmfd	sp!, {lr}
800290c8:	e94d6000 	stmdb	sp, {sp, lr}^
800290cc:	e24dd008 	sub	sp, sp, #8
800290d0:	e1a0000d 	mov	r0, sp
800290d4:	eb000051 	bl	80029220 <irq_handler>
800290d8:	eaffffe4 	b	80029070 <trapret>

800290dc <trap_reset>:
800290dc:	e3a0e000 	mov	lr, #0
800290e0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800290e4:	e14f2000 	mrs	r2, SPSR
800290e8:	e92d0004 	stmfd	sp!, {r2}
800290ec:	e92d4000 	stmfd	sp!, {lr}
800290f0:	e94d6000 	stmdb	sp, {sp, lr}^
800290f4:	e24dd008 	sub	sp, sp, #8
800290f8:	e1a0000d 	mov	r0, sp
800290fc:	eb000068 	bl	800292a4 <reset_handler>
80029100:	eafffffe 	b	80029100 <trap_reset+0x24>

80029104 <trap_und>:
80029104:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029108:	e14f2000 	mrs	r2, SPSR
8002910c:	e92d0004 	stmfd	sp!, {r2}
80029110:	e92d4000 	stmfd	sp!, {lr}
80029114:	e94d6000 	stmdb	sp, {sp, lr}^
80029118:	e24dd008 	sub	sp, sp, #8
8002911c:	e1a0000d 	mov	r0, sp
80029120:	eb00006d 	bl	800292dc <und_handler>
80029124:	eafffffe 	b	80029124 <trap_und+0x20>

80029128 <trap_iabort>:
80029128:	e24ee004 	sub	lr, lr, #4
8002912c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029130:	e14f2000 	mrs	r2, SPSR
80029134:	e92d0004 	stmfd	sp!, {r2}
80029138:	e92d4000 	stmfd	sp!, {lr}
8002913c:	e94d6000 	stmdb	sp, {sp, lr}^
80029140:	e24dd008 	sub	sp, sp, #8
80029144:	e1a0000d 	mov	r0, sp
80029148:	eb000071 	bl	80029314 <iabort_handler>
8002914c:	eafffffe 	b	8002914c <trap_iabort+0x24>

80029150 <trap_dabort>:
80029150:	e24ee008 	sub	lr, lr, #8
80029154:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80029158:	e14f2000 	mrs	r2, SPSR
8002915c:	e92d0004 	stmfd	sp!, {r2}
80029160:	e92d4000 	stmfd	sp!, {lr}
80029164:	e94d6000 	stmdb	sp, {sp, lr}^
80029168:	e24dd008 	sub	sp, sp, #8
8002916c:	e1a0000d 	mov	r0, sp
80029170:	eb00007a 	bl	80029360 <dabort_handler>
80029174:	eaffffbd 	b	80029070 <trapret>

80029178 <trap_na>:
80029178:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002917c:	e14f2000 	mrs	r2, SPSR
80029180:	e92d0004 	stmfd	sp!, {r2}
80029184:	e92d4000 	stmfd	sp!, {lr}
80029188:	e94d6000 	stmdb	sp, {sp, lr}^
8002918c:	e24dd008 	sub	sp, sp, #8
80029190:	e1a0000d 	mov	r0, sp
80029194:	eb0000e6 	bl	80029534 <na_handler>
80029198:	eafffffe 	b	80029198 <trap_na+0x20>

8002919c <trap_fiq>:
8002919c:	e24ee004 	sub	lr, lr, #4
800291a0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800291a4:	e14f2000 	mrs	r2, SPSR
800291a8:	e92d0004 	stmfd	sp!, {r2}
800291ac:	e92d4000 	stmfd	sp!, {lr}
800291b0:	e94d6000 	stmdb	sp, {sp, lr}^
800291b4:	e24dd008 	sub	sp, sp, #8
800291b8:	e1a0000d 	mov	r0, sp
800291bc:	eb0000ea 	bl	8002956c <fiq_handler>
800291c0:	eafffffe 	b	800291c0 <trap_fiq+0x24>

800291c4 <v2p>:
800291c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800291c8:	e28db000 	add	fp, sp, #0
800291cc:	e24dd00c 	sub	sp, sp, #12
800291d0:	e50b0008 	str	r0, [fp, #-8]
800291d4:	e51b3008 	ldr	r3, [fp, #-8]
800291d8:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
800291dc:	e1a00003 	mov	r0, r3
800291e0:	e28bd000 	add	sp, fp, #0
800291e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800291e8:	e12fff1e 	bx	lr

800291ec <swi_handler>:
800291ec:	e92d4800 	push	{fp, lr}
800291f0:	e28db004 	add	fp, sp, #4
800291f4:	e24dd008 	sub	sp, sp, #8
800291f8:	e50b0008 	str	r0, [fp, #-8]
800291fc:	e59f3018 	ldr	r3, [pc, #24]	@ 8002921c <swi_handler+0x30>
80029200:	e5933000 	ldr	r3, [r3]
80029204:	e51b2008 	ldr	r2, [fp, #-8]
80029208:	e5832018 	str	r2, [r3, #24]
8002920c:	ebfff6eb 	bl	80026dc0 <syscall>
80029210:	e1a00000 	nop			@ (mov r0, r0)
80029214:	e24bd004 	sub	sp, fp, #4
80029218:	e8bd8800 	pop	{fp, pc}
8002921c:	800b32d4 	.word	0x800b32d4

80029220 <irq_handler>:
80029220:	e92d4800 	push	{fp, lr}
80029224:	e28db004 	add	fp, sp, #4
80029228:	e24dd008 	sub	sp, sp, #8
8002922c:	e50b0008 	str	r0, [fp, #-8]
80029230:	e59f3068 	ldr	r3, [pc, #104]	@ 800292a0 <irq_handler+0x80>
80029234:	e5933000 	ldr	r3, [r3]
80029238:	e3530000 	cmp	r3, #0
8002923c:	0a000003 	beq	80029250 <irq_handler+0x30>
80029240:	e59f3058 	ldr	r3, [pc, #88]	@ 800292a0 <irq_handler+0x80>
80029244:	e5933000 	ldr	r3, [r3]
80029248:	e51b2008 	ldr	r2, [fp, #-8]
8002924c:	e5832018 	str	r2, [r3, #24]
80029250:	e51b0008 	ldr	r0, [fp, #-8]
80029254:	eb00068a 	bl	8002ac84 <pic_dispatch>
80029258:	e59f3040 	ldr	r3, [pc, #64]	@ 800292a0 <irq_handler+0x80>
8002925c:	e5933000 	ldr	r3, [r3]
80029260:	e3530000 	cmp	r3, #0
80029264:	0a00000a 	beq	80029294 <irq_handler+0x74>
80029268:	e59f3030 	ldr	r3, [pc, #48]	@ 800292a0 <irq_handler+0x80>
8002926c:	e5933000 	ldr	r3, [r3]
80029270:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80029274:	e3530000 	cmp	r3, #0
80029278:	0a000005 	beq	80029294 <irq_handler+0x74>
8002927c:	e51b3008 	ldr	r3, [fp, #-8]
80029280:	e593300c 	ldr	r3, [r3, #12]
80029284:	e203301f 	and	r3, r3, #31
80029288:	e3530010 	cmp	r3, #16
8002928c:	1a000000 	bne	80029294 <irq_handler+0x74>
80029290:	ebfff25f 	bl	80025c14 <exit>
80029294:	e1a00000 	nop			@ (mov r0, r0)
80029298:	e24bd004 	sub	sp, fp, #4
8002929c:	e8bd8800 	pop	{fp, pc}
800292a0:	800b32d4 	.word	0x800b32d4

800292a4 <reset_handler>:
800292a4:	e92d4800 	push	{fp, lr}
800292a8:	e28db004 	add	fp, sp, #4
800292ac:	e24dd008 	sub	sp, sp, #8
800292b0:	e50b0008 	str	r0, [fp, #-8]
800292b4:	ebffdca1 	bl	80020540 <cli>
800292b8:	e51b3008 	ldr	r3, [fp, #-8]
800292bc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800292c0:	e1a01003 	mov	r1, r3
800292c4:	e59f000c 	ldr	r0, [pc, #12]	@ 800292d8 <reset_handler+0x34>
800292c8:	ebffe180 	bl	800218d0 <cprintf>
800292cc:	e1a00000 	nop			@ (mov r0, r0)
800292d0:	e24bd004 	sub	sp, fp, #4
800292d4:	e8bd8800 	pop	{fp, pc}
800292d8:	8002bad0 	.word	0x8002bad0

800292dc <und_handler>:
800292dc:	e92d4800 	push	{fp, lr}
800292e0:	e28db004 	add	fp, sp, #4
800292e4:	e24dd008 	sub	sp, sp, #8
800292e8:	e50b0008 	str	r0, [fp, #-8]
800292ec:	ebffdc93 	bl	80020540 <cli>
800292f0:	e51b3008 	ldr	r3, [fp, #-8]
800292f4:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800292f8:	e1a01003 	mov	r1, r3
800292fc:	e59f000c 	ldr	r0, [pc, #12]	@ 80029310 <und_handler+0x34>
80029300:	ebffe172 	bl	800218d0 <cprintf>
80029304:	e1a00000 	nop			@ (mov r0, r0)
80029308:	e24bd004 	sub	sp, fp, #4
8002930c:	e8bd8800 	pop	{fp, pc}
80029310:	8002bae4 	.word	0x8002bae4

80029314 <iabort_handler>:
80029314:	e92d4800 	push	{fp, lr}
80029318:	e28db004 	add	fp, sp, #4
8002931c:	e24dd010 	sub	sp, sp, #16
80029320:	e50b0010 	str	r0, [fp, #-16]
80029324:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80029328:	e50b3008 	str	r3, [fp, #-8]
8002932c:	ebffdc83 	bl	80020540 <cli>
80029330:	e51b3010 	ldr	r3, [fp, #-16]
80029334:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029338:	e51b2008 	ldr	r2, [fp, #-8]
8002933c:	e1a01003 	mov	r1, r3
80029340:	e59f0014 	ldr	r0, [pc, #20]	@ 8002935c <iabort_handler+0x48>
80029344:	ebffe161 	bl	800218d0 <cprintf>
80029348:	e51b0010 	ldr	r0, [fp, #-16]
8002934c:	eb000115 	bl	800297a8 <dump_trapframe>
80029350:	e1a00000 	nop			@ (mov r0, r0)
80029354:	e24bd004 	sub	sp, fp, #4
80029358:	e8bd8800 	pop	{fp, pc}
8002935c:	8002baf4 	.word	0x8002baf4

80029360 <dabort_handler>:
80029360:	e92d4830 	push	{r4, r5, fp, lr}
80029364:	e28db00c 	add	fp, sp, #12
80029368:	e24dd028 	sub	sp, sp, #40	@ 0x28
8002936c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80029370:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80029374:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029378:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
8002937c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80029380:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80029384:	e593300c 	ldr	r3, [r3, #12]
80029388:	e203301f 	and	r3, r3, #31
8002938c:	e3530010 	cmp	r3, #16
80029390:	1a000050 	bne	800294d8 <dabort_handler+0x178>
80029394:	e59f3178 	ldr	r3, [pc, #376]	@ 80029514 <dabort_handler+0x1b4>
80029398:	e5933000 	ldr	r3, [r3]
8002939c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800293a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800293a4:	e5933000 	ldr	r3, [r3]
800293a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800293ac:	e1520003 	cmp	r2, r3
800293b0:	3a000006 	bcc	800293d0 <dabort_handler+0x70>
800293b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800293b8:	e3a02001 	mov	r2, #1
800293bc:	e5832024 	str	r2, [r3, #36]	@ 0x24
800293c0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800293c4:	e59f014c 	ldr	r0, [pc, #332]	@ 80029518 <dabort_handler+0x1b8>
800293c8:	ebffe140 	bl	800218d0 <cprintf>
800293cc:	ea00004e 	b	8002950c <dabort_handler+0x1ac>
800293d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800293d4:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
800293d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800293dc:	e1520003 	cmp	r2, r3
800293e0:	2a000006 	bcs	80029400 <dabort_handler+0xa0>
800293e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800293e8:	e3a02001 	mov	r2, #1
800293ec:	e5832024 	str	r2, [r3, #36]	@ 0x24
800293f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800293f4:	e59f0120 	ldr	r0, [pc, #288]	@ 8002951c <dabort_handler+0x1bc>
800293f8:	ebffe134 	bl	800218d0 <cprintf>
800293fc:	ea000042 	b	8002950c <dabort_handler+0x1ac>
80029400:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029404:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029408:	e3c3300f 	bic	r3, r3, #15
8002940c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80029410:	ebffe094 	bl	80021668 <alloc_page>
80029414:	e50b0010 	str	r0, [fp, #-16]
80029418:	e51b3010 	ldr	r3, [fp, #-16]
8002941c:	e3530000 	cmp	r3, #0
80029420:	1a00000c 	bne	80029458 <dabort_handler+0xf8>
80029424:	e59f00f4 	ldr	r0, [pc, #244]	@ 80029520 <dabort_handler+0x1c0>
80029428:	ebffe128 	bl	800218d0 <cprintf>
8002942c:	e59f30e0 	ldr	r3, [pc, #224]	@ 80029514 <dabort_handler+0x1b4>
80029430:	e5933000 	ldr	r3, [r3]
80029434:	e5932004 	ldr	r2, [r3, #4]
80029438:	e59f30d4 	ldr	r3, [pc, #212]	@ 80029514 <dabort_handler+0x1b4>
8002943c:	e5933000 	ldr	r3, [r3]
80029440:	e5933000 	ldr	r3, [r3]
80029444:	e1a01003 	mov	r1, r3
80029448:	e1a00002 	mov	r0, r2
8002944c:	eb000314 	bl	8002a0a4 <evil_evict_limit>
80029450:	ebffe084 	bl	80021668 <alloc_page>
80029454:	e50b0010 	str	r0, [fp, #-16]
80029458:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002945c:	e3a01000 	mov	r1, #0
80029460:	e51b0010 	ldr	r0, [fp, #-16]
80029464:	ebffdae5 	bl	80020000 <memset>
80029468:	e59f30b4 	ldr	r3, [pc, #180]	@ 80029524 <dabort_handler+0x1c4>
8002946c:	e5933000 	ldr	r3, [r3]
80029470:	e2833001 	add	r3, r3, #1
80029474:	e59f20a8 	ldr	r2, [pc, #168]	@ 80029524 <dabort_handler+0x1c4>
80029478:	e5823000 	str	r3, [r2]
8002947c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029480:	e5934004 	ldr	r4, [r3, #4]
80029484:	e51b5020 	ldr	r5, [fp, #-32]	@ 0xffffffe0
80029488:	e51b0010 	ldr	r0, [fp, #-16]
8002948c:	ebffff4c 	bl	800291c4 <v2p>
80029490:	e1a03000 	mov	r3, r0
80029494:	e3a02003 	mov	r2, #3
80029498:	e58d2000 	str	r2, [sp]
8002949c:	e3a02a01 	mov	r2, #4096	@ 0x1000
800294a0:	e1a01005 	mov	r1, r5
800294a4:	e1a00004 	mov	r0, r4
800294a8:	eb0001dd 	bl	80029c24 <mappages>
800294ac:	e1a03000 	mov	r3, r0
800294b0:	e3530000 	cmp	r3, #0
800294b4:	0a000013 	beq	80029508 <dabort_handler+0x1a8>
800294b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800294bc:	e3a02001 	mov	r2, #1
800294c0:	e5832024 	str	r2, [r3, #36]	@ 0x24
800294c4:	e51b0010 	ldr	r0, [fp, #-16]
800294c8:	ebffe05c 	bl	80021640 <free_page>
800294cc:	e59f0054 	ldr	r0, [pc, #84]	@ 80029528 <dabort_handler+0x1c8>
800294d0:	ebffe0fe 	bl	800218d0 <cprintf>
800294d4:	ea00000c 	b	8002950c <dabort_handler+0x1ac>
800294d8:	e59f004c 	ldr	r0, [pc, #76]	@ 8002952c <dabort_handler+0x1cc>
800294dc:	ebffe0fb 	bl	800218d0 <cprintf>
800294e0:	ebffdc16 	bl	80020540 <cli>
800294e4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800294e8:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
800294ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800294f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800294f4:	e59f0034 	ldr	r0, [pc, #52]	@ 80029530 <dabort_handler+0x1d0>
800294f8:	ebffe0f4 	bl	800218d0 <cprintf>
800294fc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80029500:	eb0000a8 	bl	800297a8 <dump_trapframe>
80029504:	ea000000 	b	8002950c <dabort_handler+0x1ac>
80029508:	e1a00000 	nop			@ (mov r0, r0)
8002950c:	e24bd00c 	sub	sp, fp, #12
80029510:	e8bd8830 	pop	{r4, r5, fp, pc}
80029514:	800b32d4 	.word	0x800b32d4
80029518:	8002bb1c 	.word	0x8002bb1c
8002951c:	8002bb50 	.word	0x8002bb50
80029520:	8002bb84 	.word	0x8002bb84
80029524:	800b32dc 	.word	0x800b32dc
80029528:	8002bb94 	.word	0x8002bb94
8002952c:	8002bbb4 	.word	0x8002bbb4
80029530:	8002bbc4 	.word	0x8002bbc4

80029534 <na_handler>:
80029534:	e92d4800 	push	{fp, lr}
80029538:	e28db004 	add	fp, sp, #4
8002953c:	e24dd008 	sub	sp, sp, #8
80029540:	e50b0008 	str	r0, [fp, #-8]
80029544:	ebffdbfd 	bl	80020540 <cli>
80029548:	e51b3008 	ldr	r3, [fp, #-8]
8002954c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029550:	e1a01003 	mov	r1, r3
80029554:	e59f000c 	ldr	r0, [pc, #12]	@ 80029568 <na_handler+0x34>
80029558:	ebffe0dc 	bl	800218d0 <cprintf>
8002955c:	e1a00000 	nop			@ (mov r0, r0)
80029560:	e24bd004 	sub	sp, fp, #4
80029564:	e8bd8800 	pop	{fp, pc}
80029568:	8002bc04 	.word	0x8002bc04

8002956c <fiq_handler>:
8002956c:	e92d4800 	push	{fp, lr}
80029570:	e28db004 	add	fp, sp, #4
80029574:	e24dd008 	sub	sp, sp, #8
80029578:	e50b0008 	str	r0, [fp, #-8]
8002957c:	ebffdbef 	bl	80020540 <cli>
80029580:	e51b3008 	ldr	r3, [fp, #-8]
80029584:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80029588:	e1a01003 	mov	r1, r3
8002958c:	e59f000c 	ldr	r0, [pc, #12]	@ 800295a0 <fiq_handler+0x34>
80029590:	ebffe0ce 	bl	800218d0 <cprintf>
80029594:	e1a00000 	nop			@ (mov r0, r0)
80029598:	e24bd004 	sub	sp, fp, #4
8002959c:	e8bd8800 	pop	{fp, pc}
800295a0:	8002bc14 	.word	0x8002bc14

800295a4 <trap_init>:
800295a4:	e92d4800 	push	{fp, lr}
800295a8:	e28db004 	add	fp, sp, #4
800295ac:	e24dd020 	sub	sp, sp, #32
800295b0:	e59f31c0 	ldr	r3, [pc, #448]	@ 80029778 <trap_init+0x1d4>
800295b4:	e24bc020 	sub	ip, fp, #32
800295b8:	e893000f 	ldm	r3, {r0, r1, r2, r3}
800295bc:	e88c000f 	stm	ip, {r0, r1, r2, r3}
800295c0:	e59f31b4 	ldr	r3, [pc, #436]	@ 8002977c <trap_init+0x1d8>
800295c4:	e50b300c 	str	r3, [fp, #-12]
800295c8:	e59f31b0 	ldr	r3, [pc, #432]	@ 80029780 <trap_init+0x1dc>
800295cc:	e5933000 	ldr	r3, [r3]
800295d0:	e3832018 	orr	r2, r3, #24
800295d4:	e51b300c 	ldr	r3, [fp, #-12]
800295d8:	e5832000 	str	r2, [r3]
800295dc:	e59f319c 	ldr	r3, [pc, #412]	@ 80029780 <trap_init+0x1dc>
800295e0:	e5932000 	ldr	r2, [r3]
800295e4:	e51b300c 	ldr	r3, [fp, #-12]
800295e8:	e2833004 	add	r3, r3, #4
800295ec:	e3822018 	orr	r2, r2, #24
800295f0:	e5832000 	str	r2, [r3]
800295f4:	e59f3184 	ldr	r3, [pc, #388]	@ 80029780 <trap_init+0x1dc>
800295f8:	e5932000 	ldr	r2, [r3]
800295fc:	e51b300c 	ldr	r3, [fp, #-12]
80029600:	e2833008 	add	r3, r3, #8
80029604:	e3822018 	orr	r2, r2, #24
80029608:	e5832000 	str	r2, [r3]
8002960c:	e59f316c 	ldr	r3, [pc, #364]	@ 80029780 <trap_init+0x1dc>
80029610:	e5932000 	ldr	r2, [r3]
80029614:	e51b300c 	ldr	r3, [fp, #-12]
80029618:	e283300c 	add	r3, r3, #12
8002961c:	e3822018 	orr	r2, r2, #24
80029620:	e5832000 	str	r2, [r3]
80029624:	e59f3154 	ldr	r3, [pc, #340]	@ 80029780 <trap_init+0x1dc>
80029628:	e5932000 	ldr	r2, [r3]
8002962c:	e51b300c 	ldr	r3, [fp, #-12]
80029630:	e2833010 	add	r3, r3, #16
80029634:	e3822018 	orr	r2, r2, #24
80029638:	e5832000 	str	r2, [r3]
8002963c:	e59f313c 	ldr	r3, [pc, #316]	@ 80029780 <trap_init+0x1dc>
80029640:	e5932000 	ldr	r2, [r3]
80029644:	e51b300c 	ldr	r3, [fp, #-12]
80029648:	e2833014 	add	r3, r3, #20
8002964c:	e3822018 	orr	r2, r2, #24
80029650:	e5832000 	str	r2, [r3]
80029654:	e59f3124 	ldr	r3, [pc, #292]	@ 80029780 <trap_init+0x1dc>
80029658:	e5932000 	ldr	r2, [r3]
8002965c:	e51b300c 	ldr	r3, [fp, #-12]
80029660:	e2833018 	add	r3, r3, #24
80029664:	e3822018 	orr	r2, r2, #24
80029668:	e5832000 	str	r2, [r3]
8002966c:	e59f310c 	ldr	r3, [pc, #268]	@ 80029780 <trap_init+0x1dc>
80029670:	e5932000 	ldr	r2, [r3]
80029674:	e51b300c 	ldr	r3, [fp, #-12]
80029678:	e283301c 	add	r3, r3, #28
8002967c:	e3822018 	orr	r2, r2, #24
80029680:	e5832000 	str	r2, [r3]
80029684:	e51b300c 	ldr	r3, [fp, #-12]
80029688:	e2833020 	add	r3, r3, #32
8002968c:	e59f20f0 	ldr	r2, [pc, #240]	@ 80029784 <trap_init+0x1e0>
80029690:	e5832000 	str	r2, [r3]
80029694:	e51b300c 	ldr	r3, [fp, #-12]
80029698:	e2833024 	add	r3, r3, #36	@ 0x24
8002969c:	e59f20e4 	ldr	r2, [pc, #228]	@ 80029788 <trap_init+0x1e4>
800296a0:	e5832000 	str	r2, [r3]
800296a4:	e51b300c 	ldr	r3, [fp, #-12]
800296a8:	e2833028 	add	r3, r3, #40	@ 0x28
800296ac:	e59f20d8 	ldr	r2, [pc, #216]	@ 8002978c <trap_init+0x1e8>
800296b0:	e5832000 	str	r2, [r3]
800296b4:	e51b300c 	ldr	r3, [fp, #-12]
800296b8:	e283302c 	add	r3, r3, #44	@ 0x2c
800296bc:	e59f20cc 	ldr	r2, [pc, #204]	@ 80029790 <trap_init+0x1ec>
800296c0:	e5832000 	str	r2, [r3]
800296c4:	e51b300c 	ldr	r3, [fp, #-12]
800296c8:	e2833030 	add	r3, r3, #48	@ 0x30
800296cc:	e59f20c0 	ldr	r2, [pc, #192]	@ 80029794 <trap_init+0x1f0>
800296d0:	e5832000 	str	r2, [r3]
800296d4:	e51b300c 	ldr	r3, [fp, #-12]
800296d8:	e2833034 	add	r3, r3, #52	@ 0x34
800296dc:	e59f20b4 	ldr	r2, [pc, #180]	@ 80029798 <trap_init+0x1f4>
800296e0:	e5832000 	str	r2, [r3]
800296e4:	e51b300c 	ldr	r3, [fp, #-12]
800296e8:	e2833038 	add	r3, r3, #56	@ 0x38
800296ec:	e59f20a8 	ldr	r2, [pc, #168]	@ 8002979c <trap_init+0x1f8>
800296f0:	e5832000 	str	r2, [r3]
800296f4:	e51b300c 	ldr	r3, [fp, #-12]
800296f8:	e283303c 	add	r3, r3, #60	@ 0x3c
800296fc:	e59f209c 	ldr	r2, [pc, #156]	@ 800297a0 <trap_init+0x1fc>
80029700:	e5832000 	str	r2, [r3]
80029704:	e3a03000 	mov	r3, #0
80029708:	e50b3008 	str	r3, [fp, #-8]
8002970c:	ea000012 	b	8002975c <trap_init+0x1b8>
80029710:	ebffdfd4 	bl	80021668 <alloc_page>
80029714:	e50b0010 	str	r0, [fp, #-16]
80029718:	e51b3010 	ldr	r3, [fp, #-16]
8002971c:	e3530000 	cmp	r3, #0
80029720:	1a000001 	bne	8002972c <trap_init+0x188>
80029724:	e59f0078 	ldr	r0, [pc, #120]	@ 800297a4 <trap_init+0x200>
80029728:	ebffe0f3 	bl	80021afc <panic>
8002972c:	e51b3008 	ldr	r3, [fp, #-8]
80029730:	e1a03103 	lsl	r3, r3, #2
80029734:	e2433004 	sub	r3, r3, #4
80029738:	e083300b 	add	r3, r3, fp
8002973c:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80029740:	e51b2010 	ldr	r2, [fp, #-16]
80029744:	e1a01002 	mov	r1, r2
80029748:	e1a00003 	mov	r0, r3
8002974c:	ebffdc54 	bl	800208a4 <set_stk>
80029750:	e51b3008 	ldr	r3, [fp, #-8]
80029754:	e2833001 	add	r3, r3, #1
80029758:	e50b3008 	str	r3, [fp, #-8]
8002975c:	e51b3008 	ldr	r3, [fp, #-8]
80029760:	e3530003 	cmp	r3, #3
80029764:	9affffe9 	bls	80029710 <trap_init+0x16c>
80029768:	e1a00000 	nop			@ (mov r0, r0)
8002976c:	e1a00000 	nop			@ (mov r0, r0)
80029770:	e24bd004 	sub	sp, fp, #4
80029774:	e8bd8800 	pop	{fp, pc}
80029778:	8002bc4c 	.word	0x8002bc4c
8002977c:	ffff0000 	.word	0xffff0000
80029780:	8002bd5c 	.word	0x8002bd5c
80029784:	800290dc 	.word	0x800290dc
80029788:	80029104 	.word	0x80029104
8002978c:	80029050 	.word	0x80029050
80029790:	80029128 	.word	0x80029128
80029794:	80029150 	.word	0x80029150
80029798:	80029178 	.word	0x80029178
8002979c:	80029088 	.word	0x80029088
800297a0:	8002919c 	.word	0x8002919c
800297a4:	8002bc24 	.word	0x8002bc24

800297a8 <dump_trapframe>:
800297a8:	e92d4800 	push	{fp, lr}
800297ac:	e28db004 	add	fp, sp, #4
800297b0:	e24dd008 	sub	sp, sp, #8
800297b4:	e50b0008 	str	r0, [fp, #-8]
800297b8:	e51b3008 	ldr	r3, [fp, #-8]
800297bc:	e5933008 	ldr	r3, [r3, #8]
800297c0:	e1a01003 	mov	r1, r3
800297c4:	e59f0138 	ldr	r0, [pc, #312]	@ 80029904 <dump_trapframe+0x15c>
800297c8:	ebffe040 	bl	800218d0 <cprintf>
800297cc:	e51b3008 	ldr	r3, [fp, #-8]
800297d0:	e593300c 	ldr	r3, [r3, #12]
800297d4:	e1a01003 	mov	r1, r3
800297d8:	e59f0128 	ldr	r0, [pc, #296]	@ 80029908 <dump_trapframe+0x160>
800297dc:	ebffe03b 	bl	800218d0 <cprintf>
800297e0:	e51b3008 	ldr	r3, [fp, #-8]
800297e4:	e5933010 	ldr	r3, [r3, #16]
800297e8:	e1a01003 	mov	r1, r3
800297ec:	e59f0118 	ldr	r0, [pc, #280]	@ 8002990c <dump_trapframe+0x164>
800297f0:	ebffe036 	bl	800218d0 <cprintf>
800297f4:	e51b3008 	ldr	r3, [fp, #-8]
800297f8:	e5933014 	ldr	r3, [r3, #20]
800297fc:	e1a01003 	mov	r1, r3
80029800:	e59f0108 	ldr	r0, [pc, #264]	@ 80029910 <dump_trapframe+0x168>
80029804:	ebffe031 	bl	800218d0 <cprintf>
80029808:	e51b3008 	ldr	r3, [fp, #-8]
8002980c:	e5933018 	ldr	r3, [r3, #24]
80029810:	e1a01003 	mov	r1, r3
80029814:	e59f00f8 	ldr	r0, [pc, #248]	@ 80029914 <dump_trapframe+0x16c>
80029818:	ebffe02c 	bl	800218d0 <cprintf>
8002981c:	e51b3008 	ldr	r3, [fp, #-8]
80029820:	e593301c 	ldr	r3, [r3, #28]
80029824:	e1a01003 	mov	r1, r3
80029828:	e59f00e8 	ldr	r0, [pc, #232]	@ 80029918 <dump_trapframe+0x170>
8002982c:	ebffe027 	bl	800218d0 <cprintf>
80029830:	e51b3008 	ldr	r3, [fp, #-8]
80029834:	e5933020 	ldr	r3, [r3, #32]
80029838:	e1a01003 	mov	r1, r3
8002983c:	e59f00d8 	ldr	r0, [pc, #216]	@ 8002991c <dump_trapframe+0x174>
80029840:	ebffe022 	bl	800218d0 <cprintf>
80029844:	e51b3008 	ldr	r3, [fp, #-8]
80029848:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
8002984c:	e1a01003 	mov	r1, r3
80029850:	e59f00c8 	ldr	r0, [pc, #200]	@ 80029920 <dump_trapframe+0x178>
80029854:	ebffe01d 	bl	800218d0 <cprintf>
80029858:	e51b3008 	ldr	r3, [fp, #-8]
8002985c:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80029860:	e1a01003 	mov	r1, r3
80029864:	e59f00b8 	ldr	r0, [pc, #184]	@ 80029924 <dump_trapframe+0x17c>
80029868:	ebffe018 	bl	800218d0 <cprintf>
8002986c:	e51b3008 	ldr	r3, [fp, #-8]
80029870:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80029874:	e1a01003 	mov	r1, r3
80029878:	e59f00a8 	ldr	r0, [pc, #168]	@ 80029928 <dump_trapframe+0x180>
8002987c:	ebffe013 	bl	800218d0 <cprintf>
80029880:	e51b3008 	ldr	r3, [fp, #-8]
80029884:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80029888:	e1a01003 	mov	r1, r3
8002988c:	e59f0098 	ldr	r0, [pc, #152]	@ 8002992c <dump_trapframe+0x184>
80029890:	ebffe00e 	bl	800218d0 <cprintf>
80029894:	e51b3008 	ldr	r3, [fp, #-8]
80029898:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
8002989c:	e1a01003 	mov	r1, r3
800298a0:	e59f0088 	ldr	r0, [pc, #136]	@ 80029930 <dump_trapframe+0x188>
800298a4:	ebffe009 	bl	800218d0 <cprintf>
800298a8:	e51b3008 	ldr	r3, [fp, #-8]
800298ac:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800298b0:	e1a01003 	mov	r1, r3
800298b4:	e59f0078 	ldr	r0, [pc, #120]	@ 80029934 <dump_trapframe+0x18c>
800298b8:	ebffe004 	bl	800218d0 <cprintf>
800298bc:	e51b3008 	ldr	r3, [fp, #-8]
800298c0:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800298c4:	e1a01003 	mov	r1, r3
800298c8:	e59f0068 	ldr	r0, [pc, #104]	@ 80029938 <dump_trapframe+0x190>
800298cc:	ebffdfff 	bl	800218d0 <cprintf>
800298d0:	e51b3008 	ldr	r3, [fp, #-8]
800298d4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800298d8:	e1a01003 	mov	r1, r3
800298dc:	e59f0058 	ldr	r0, [pc, #88]	@ 8002993c <dump_trapframe+0x194>
800298e0:	ebffdffa 	bl	800218d0 <cprintf>
800298e4:	e51b3008 	ldr	r3, [fp, #-8]
800298e8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800298ec:	e1a01003 	mov	r1, r3
800298f0:	e59f0048 	ldr	r0, [pc, #72]	@ 80029940 <dump_trapframe+0x198>
800298f4:	ebffdff5 	bl	800218d0 <cprintf>
800298f8:	e1a00000 	nop			@ (mov r0, r0)
800298fc:	e24bd004 	sub	sp, fp, #4
80029900:	e8bd8800 	pop	{fp, pc}
80029904:	8002bc5c 	.word	0x8002bc5c
80029908:	8002bc6c 	.word	0x8002bc6c
8002990c:	8002bc7c 	.word	0x8002bc7c
80029910:	8002bc8c 	.word	0x8002bc8c
80029914:	8002bc9c 	.word	0x8002bc9c
80029918:	8002bcac 	.word	0x8002bcac
8002991c:	8002bcbc 	.word	0x8002bcbc
80029920:	8002bccc 	.word	0x8002bccc
80029924:	8002bcdc 	.word	0x8002bcdc
80029928:	8002bcec 	.word	0x8002bcec
8002992c:	8002bcfc 	.word	0x8002bcfc
80029930:	8002bd0c 	.word	0x8002bd0c
80029934:	8002bd1c 	.word	0x8002bd1c
80029938:	8002bd2c 	.word	0x8002bd2c
8002993c:	8002bd3c 	.word	0x8002bd3c
80029940:	8002bd4c 	.word	0x8002bd4c

80029944 <v2p>:
80029944:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029948:	e28db000 	add	fp, sp, #0
8002994c:	e24dd00c 	sub	sp, sp, #12
80029950:	e50b0008 	str	r0, [fp, #-8]
80029954:	e51b3008 	ldr	r3, [fp, #-8]
80029958:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002995c:	e1a00003 	mov	r0, r3
80029960:	e28bd000 	add	sp, fp, #0
80029964:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029968:	e12fff1e 	bx	lr

8002996c <p2v>:
8002996c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029970:	e28db000 	add	fp, sp, #0
80029974:	e24dd00c 	sub	sp, sp, #12
80029978:	e50b0008 	str	r0, [fp, #-8]
8002997c:	e51b3008 	ldr	r3, [fp, #-8]
80029980:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029984:	e1a00003 	mov	r0, r3
80029988:	e28bd000 	add	sp, fp, #0
8002998c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029990:	e12fff1e 	bx	lr

80029994 <init_vmm>:
80029994:	e92d4800 	push	{fp, lr}
80029998:	e28db004 	add	fp, sp, #4
8002999c:	e59f1018 	ldr	r1, [pc, #24]	@ 800299bc <init_vmm+0x28>
800299a0:	e59f0018 	ldr	r0, [pc, #24]	@ 800299c0 <init_vmm+0x2c>
800299a4:	ebfff428 	bl	80026a4c <initlock>
800299a8:	e59f3010 	ldr	r3, [pc, #16]	@ 800299c0 <init_vmm+0x2c>
800299ac:	e3a02000 	mov	r2, #0
800299b0:	e5832034 	str	r2, [r3, #52]	@ 0x34
800299b4:	e1a00000 	nop			@ (mov r0, r0)
800299b8:	e8bd8800 	pop	{fp, pc}
800299bc:	8002bd60 	.word	0x8002bd60
800299c0:	800b32e4 	.word	0x800b32e4

800299c4 <_kpt_free>:
800299c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800299c8:	e28db000 	add	fp, sp, #0
800299cc:	e24dd014 	sub	sp, sp, #20
800299d0:	e50b0010 	str	r0, [fp, #-16]
800299d4:	e51b3010 	ldr	r3, [fp, #-16]
800299d8:	e50b3008 	str	r3, [fp, #-8]
800299dc:	e59f3024 	ldr	r3, [pc, #36]	@ 80029a08 <_kpt_free+0x44>
800299e0:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
800299e4:	e51b3008 	ldr	r3, [fp, #-8]
800299e8:	e5832000 	str	r2, [r3]
800299ec:	e59f2014 	ldr	r2, [pc, #20]	@ 80029a08 <_kpt_free+0x44>
800299f0:	e51b3008 	ldr	r3, [fp, #-8]
800299f4:	e5823034 	str	r3, [r2, #52]	@ 0x34
800299f8:	e1a00000 	nop			@ (mov r0, r0)
800299fc:	e28bd000 	add	sp, fp, #0
80029a00:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029a04:	e12fff1e 	bx	lr
80029a08:	800b32e4 	.word	0x800b32e4

80029a0c <kpt_free>:
80029a0c:	e92d4800 	push	{fp, lr}
80029a10:	e28db004 	add	fp, sp, #4
80029a14:	e24dd008 	sub	sp, sp, #8
80029a18:	e50b0008 	str	r0, [fp, #-8]
80029a1c:	e51b3008 	ldr	r3, [fp, #-8]
80029a20:	e59f2034 	ldr	r2, [pc, #52]	@ 80029a5c <kpt_free+0x50>
80029a24:	e1530002 	cmp	r3, r2
80029a28:	9a000003 	bls	80029a3c <kpt_free+0x30>
80029a2c:	e3a0100a 	mov	r1, #10
80029a30:	e51b0008 	ldr	r0, [fp, #-8]
80029a34:	ebffded1 	bl	80021580 <kfree>
80029a38:	ea000005 	b	80029a54 <kpt_free+0x48>
80029a3c:	e59f001c 	ldr	r0, [pc, #28]	@ 80029a60 <kpt_free+0x54>
80029a40:	ebfff413 	bl	80026a94 <acquire>
80029a44:	e51b0008 	ldr	r0, [fp, #-8]
80029a48:	ebffffdd 	bl	800299c4 <_kpt_free>
80029a4c:	e59f000c 	ldr	r0, [pc, #12]	@ 80029a60 <kpt_free+0x54>
80029a50:	ebfff41a 	bl	80026ac0 <release>
80029a54:	e24bd004 	sub	sp, fp, #4
80029a58:	e8bd8800 	pop	{fp, pc}
80029a5c:	800fffff 	.word	0x800fffff
80029a60:	800b32e4 	.word	0x800b32e4

80029a64 <kpt_freerange>:
80029a64:	e92d4800 	push	{fp, lr}
80029a68:	e28db004 	add	fp, sp, #4
80029a6c:	e24dd008 	sub	sp, sp, #8
80029a70:	e50b0008 	str	r0, [fp, #-8]
80029a74:	e50b100c 	str	r1, [fp, #-12]
80029a78:	ea000005 	b	80029a94 <kpt_freerange+0x30>
80029a7c:	e51b3008 	ldr	r3, [fp, #-8]
80029a80:	e1a00003 	mov	r0, r3
80029a84:	ebffffce 	bl	800299c4 <_kpt_free>
80029a88:	e51b3008 	ldr	r3, [fp, #-8]
80029a8c:	e2833b01 	add	r3, r3, #1024	@ 0x400
80029a90:	e50b3008 	str	r3, [fp, #-8]
80029a94:	e51b2008 	ldr	r2, [fp, #-8]
80029a98:	e51b300c 	ldr	r3, [fp, #-12]
80029a9c:	e1520003 	cmp	r2, r3
80029aa0:	3afffff5 	bcc	80029a7c <kpt_freerange+0x18>
80029aa4:	e1a00000 	nop			@ (mov r0, r0)
80029aa8:	e1a00000 	nop			@ (mov r0, r0)
80029aac:	e24bd004 	sub	sp, fp, #4
80029ab0:	e8bd8800 	pop	{fp, pc}

80029ab4 <kpt_alloc>:
80029ab4:	e92d4800 	push	{fp, lr}
80029ab8:	e28db004 	add	fp, sp, #4
80029abc:	e24dd008 	sub	sp, sp, #8
80029ac0:	e59f007c 	ldr	r0, [pc, #124]	@ 80029b44 <kpt_alloc+0x90>
80029ac4:	ebfff3f2 	bl	80026a94 <acquire>
80029ac8:	e59f3074 	ldr	r3, [pc, #116]	@ 80029b44 <kpt_alloc+0x90>
80029acc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80029ad0:	e50b3008 	str	r3, [fp, #-8]
80029ad4:	e51b3008 	ldr	r3, [fp, #-8]
80029ad8:	e3530000 	cmp	r3, #0
80029adc:	0a000003 	beq	80029af0 <kpt_alloc+0x3c>
80029ae0:	e51b3008 	ldr	r3, [fp, #-8]
80029ae4:	e5933000 	ldr	r3, [r3]
80029ae8:	e59f2054 	ldr	r2, [pc, #84]	@ 80029b44 <kpt_alloc+0x90>
80029aec:	e5823034 	str	r3, [r2, #52]	@ 0x34
80029af0:	e59f004c 	ldr	r0, [pc, #76]	@ 80029b44 <kpt_alloc+0x90>
80029af4:	ebfff3f1 	bl	80026ac0 <release>
80029af8:	e51b3008 	ldr	r3, [fp, #-8]
80029afc:	e3530000 	cmp	r3, #0
80029b00:	1a000007 	bne	80029b24 <kpt_alloc+0x70>
80029b04:	e3a0000a 	mov	r0, #10
80029b08:	ebffde45 	bl	80021424 <kmalloc>
80029b0c:	e50b0008 	str	r0, [fp, #-8]
80029b10:	e51b3008 	ldr	r3, [fp, #-8]
80029b14:	e3530000 	cmp	r3, #0
80029b18:	1a000001 	bne	80029b24 <kpt_alloc+0x70>
80029b1c:	e59f0024 	ldr	r0, [pc, #36]	@ 80029b48 <kpt_alloc+0x94>
80029b20:	ebffdff5 	bl	80021afc <panic>
80029b24:	e3a02b01 	mov	r2, #1024	@ 0x400
80029b28:	e3a01000 	mov	r1, #0
80029b2c:	e51b0008 	ldr	r0, [fp, #-8]
80029b30:	ebffd932 	bl	80020000 <memset>
80029b34:	e51b3008 	ldr	r3, [fp, #-8]
80029b38:	e1a00003 	mov	r0, r3
80029b3c:	e24bd004 	sub	sp, fp, #4
80029b40:	e8bd8800 	pop	{fp, pc}
80029b44:	800b32e4 	.word	0x800b32e4
80029b48:	8002bd64 	.word	0x8002bd64

80029b4c <walkpgdir>:
80029b4c:	e92d4800 	push	{fp, lr}
80029b50:	e28db004 	add	fp, sp, #4
80029b54:	e24dd018 	sub	sp, sp, #24
80029b58:	e50b0010 	str	r0, [fp, #-16]
80029b5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029b60:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80029b64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029b68:	e1a03a23 	lsr	r3, r3, #20
80029b6c:	e1a03103 	lsl	r3, r3, #2
80029b70:	e51b2010 	ldr	r2, [fp, #-16]
80029b74:	e0823003 	add	r3, r2, r3
80029b78:	e50b300c 	str	r3, [fp, #-12]
80029b7c:	e51b300c 	ldr	r3, [fp, #-12]
80029b80:	e5933000 	ldr	r3, [r3]
80029b84:	e2033003 	and	r3, r3, #3
80029b88:	e3530000 	cmp	r3, #0
80029b8c:	0a000007 	beq	80029bb0 <walkpgdir+0x64>
80029b90:	e51b300c 	ldr	r3, [fp, #-12]
80029b94:	e5933000 	ldr	r3, [r3]
80029b98:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80029b9c:	e3c33003 	bic	r3, r3, #3
80029ba0:	e1a00003 	mov	r0, r3
80029ba4:	ebffff70 	bl	8002996c <p2v>
80029ba8:	e50b0008 	str	r0, [fp, #-8]
80029bac:	ea000013 	b	80029c00 <walkpgdir+0xb4>
80029bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029bb4:	e3530000 	cmp	r3, #0
80029bb8:	0a000004 	beq	80029bd0 <walkpgdir+0x84>
80029bbc:	ebffffbc 	bl	80029ab4 <kpt_alloc>
80029bc0:	e50b0008 	str	r0, [fp, #-8]
80029bc4:	e51b3008 	ldr	r3, [fp, #-8]
80029bc8:	e3530000 	cmp	r3, #0
80029bcc:	1a000001 	bne	80029bd8 <walkpgdir+0x8c>
80029bd0:	e3a03000 	mov	r3, #0
80029bd4:	ea00000f 	b	80029c18 <walkpgdir+0xcc>
80029bd8:	e3a02b01 	mov	r2, #1024	@ 0x400
80029bdc:	e3a01000 	mov	r1, #0
80029be0:	e51b0008 	ldr	r0, [fp, #-8]
80029be4:	ebffd905 	bl	80020000 <memset>
80029be8:	e51b0008 	ldr	r0, [fp, #-8]
80029bec:	ebffff54 	bl	80029944 <v2p>
80029bf0:	e1a03000 	mov	r3, r0
80029bf4:	e3832001 	orr	r2, r3, #1
80029bf8:	e51b300c 	ldr	r3, [fp, #-12]
80029bfc:	e5832000 	str	r2, [r3]
80029c00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029c04:	e1a03623 	lsr	r3, r3, #12
80029c08:	e6ef3073 	uxtb	r3, r3
80029c0c:	e1a03103 	lsl	r3, r3, #2
80029c10:	e51b2008 	ldr	r2, [fp, #-8]
80029c14:	e0823003 	add	r3, r2, r3
80029c18:	e1a00003 	mov	r0, r3
80029c1c:	e24bd004 	sub	sp, fp, #4
80029c20:	e8bd8800 	pop	{fp, pc}

80029c24 <mappages>:
80029c24:	e92d4800 	push	{fp, lr}
80029c28:	e28db004 	add	fp, sp, #4
80029c2c:	e24dd020 	sub	sp, sp, #32
80029c30:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029c34:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029c38:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029c3c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029c40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029c44:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029c48:	e3c3300f 	bic	r3, r3, #15
80029c4c:	e50b3008 	str	r3, [fp, #-8]
80029c50:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029c54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80029c58:	e0823003 	add	r3, r2, r3
80029c5c:	e2433001 	sub	r3, r3, #1
80029c60:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029c64:	e3c3300f 	bic	r3, r3, #15
80029c68:	e50b300c 	str	r3, [fp, #-12]
80029c6c:	e3a02001 	mov	r2, #1
80029c70:	e51b1008 	ldr	r1, [fp, #-8]
80029c74:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029c78:	ebffffb3 	bl	80029b4c <walkpgdir>
80029c7c:	e50b0010 	str	r0, [fp, #-16]
80029c80:	e51b3010 	ldr	r3, [fp, #-16]
80029c84:	e3530000 	cmp	r3, #0
80029c88:	1a000001 	bne	80029c94 <mappages+0x70>
80029c8c:	e3e03000 	mvn	r3, #0
80029c90:	ea00001b 	b	80029d04 <mappages+0xe0>
80029c94:	e51b3010 	ldr	r3, [fp, #-16]
80029c98:	e5933000 	ldr	r3, [r3]
80029c9c:	e2033003 	and	r3, r3, #3
80029ca0:	e3530000 	cmp	r3, #0
80029ca4:	0a000001 	beq	80029cb0 <mappages+0x8c>
80029ca8:	e59f0060 	ldr	r0, [pc, #96]	@ 80029d10 <mappages+0xec>
80029cac:	ebffdf92 	bl	80021afc <panic>
80029cb0:	e59b3004 	ldr	r3, [fp, #4]
80029cb4:	e1a03203 	lsl	r3, r3, #4
80029cb8:	e2032030 	and	r2, r3, #48	@ 0x30
80029cbc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029cc0:	e1823003 	orr	r3, r2, r3
80029cc4:	e383200e 	orr	r2, r3, #14
80029cc8:	e51b3010 	ldr	r3, [fp, #-16]
80029ccc:	e5832000 	str	r2, [r3]
80029cd0:	e51b2008 	ldr	r2, [fp, #-8]
80029cd4:	e51b300c 	ldr	r3, [fp, #-12]
80029cd8:	e1520003 	cmp	r2, r3
80029cdc:	0a000006 	beq	80029cfc <mappages+0xd8>
80029ce0:	e51b3008 	ldr	r3, [fp, #-8]
80029ce4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029ce8:	e50b3008 	str	r3, [fp, #-8]
80029cec:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80029cf0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029cf4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029cf8:	eaffffdb 	b	80029c6c <mappages+0x48>
80029cfc:	e1a00000 	nop			@ (mov r0, r0)
80029d00:	e3a03000 	mov	r3, #0
80029d04:	e1a00003 	mov	r0, r3
80029d08:	e24bd004 	sub	sp, fp, #4
80029d0c:	e8bd8800 	pop	{fp, pc}
80029d10:	8002bd74 	.word	0x8002bd74

80029d14 <flush_tlb>:
80029d14:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029d18:	e28db000 	add	fp, sp, #0
80029d1c:	e24dd00c 	sub	sp, sp, #12
80029d20:	e3a03000 	mov	r3, #0
80029d24:	e50b3008 	str	r3, [fp, #-8]
80029d28:	e51b3008 	ldr	r3, [fp, #-8]
80029d2c:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80029d30:	e51b3008 	ldr	r3, [fp, #-8]
80029d34:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80029d38:	e51b3008 	ldr	r3, [fp, #-8]
80029d3c:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80029d40:	e1a00000 	nop			@ (mov r0, r0)
80029d44:	e28bd000 	add	sp, fp, #0
80029d48:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80029d4c:	e12fff1e 	bx	lr

80029d50 <switchuvm>:
80029d50:	e92d4800 	push	{fp, lr}
80029d54:	e28db004 	add	fp, sp, #4
80029d58:	e24dd010 	sub	sp, sp, #16
80029d5c:	e50b0010 	str	r0, [fp, #-16]
80029d60:	ebffda31 	bl	8002062c <pushcli>
80029d64:	e51b3010 	ldr	r3, [fp, #-16]
80029d68:	e5933004 	ldr	r3, [r3, #4]
80029d6c:	e3530000 	cmp	r3, #0
80029d70:	1a000001 	bne	80029d7c <switchuvm+0x2c>
80029d74:	e59f002c 	ldr	r0, [pc, #44]	@ 80029da8 <switchuvm+0x58>
80029d78:	ebffdf5f 	bl	80021afc <panic>
80029d7c:	e51b3010 	ldr	r3, [fp, #-16]
80029d80:	e5933004 	ldr	r3, [r3, #4]
80029d84:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80029d88:	e50b3008 	str	r3, [fp, #-8]
80029d8c:	e51b3008 	ldr	r3, [fp, #-8]
80029d90:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80029d94:	ebffffde 	bl	80029d14 <flush_tlb>
80029d98:	ebffda38 	bl	80020680 <popcli>
80029d9c:	e1a00000 	nop			@ (mov r0, r0)
80029da0:	e24bd004 	sub	sp, fp, #4
80029da4:	e8bd8800 	pop	{fp, pc}
80029da8:	8002bd7c 	.word	0x8002bd7c

80029dac <inituvm>:
80029dac:	e92d4800 	push	{fp, lr}
80029db0:	e28db004 	add	fp, sp, #4
80029db4:	e24dd020 	sub	sp, sp, #32
80029db8:	e50b0010 	str	r0, [fp, #-16]
80029dbc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80029dc0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80029dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029dc8:	e3530a01 	cmp	r3, #4096	@ 0x1000
80029dcc:	3a000001 	bcc	80029dd8 <inituvm+0x2c>
80029dd0:	e59f0058 	ldr	r0, [pc, #88]	@ 80029e30 <inituvm+0x84>
80029dd4:	ebffdf48 	bl	80021afc <panic>
80029dd8:	ebffde22 	bl	80021668 <alloc_page>
80029ddc:	e50b0008 	str	r0, [fp, #-8]
80029de0:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029de4:	e3a01000 	mov	r1, #0
80029de8:	e51b0008 	ldr	r0, [fp, #-8]
80029dec:	ebffd883 	bl	80020000 <memset>
80029df0:	e51b0008 	ldr	r0, [fp, #-8]
80029df4:	ebfffed2 	bl	80029944 <v2p>
80029df8:	e1a03000 	mov	r3, r0
80029dfc:	e3a02003 	mov	r2, #3
80029e00:	e58d2000 	str	r2, [sp]
80029e04:	e3a02a01 	mov	r2, #4096	@ 0x1000
80029e08:	e3a01000 	mov	r1, #0
80029e0c:	e51b0010 	ldr	r0, [fp, #-16]
80029e10:	ebffff83 	bl	80029c24 <mappages>
80029e14:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80029e18:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029e1c:	e51b0008 	ldr	r0, [fp, #-8]
80029e20:	ebffd8e8 	bl	800201c8 <memmove>
80029e24:	e1a00000 	nop			@ (mov r0, r0)
80029e28:	e24bd004 	sub	sp, fp, #4
80029e2c:	e8bd8800 	pop	{fp, pc}
80029e30:	8002bd90 	.word	0x8002bd90

80029e34 <loaduvm>:
80029e34:	e92d4800 	push	{fp, lr}
80029e38:	e28db004 	add	fp, sp, #4
80029e3c:	e24dd020 	sub	sp, sp, #32
80029e40:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80029e44:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80029e48:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80029e4c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80029e50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029e54:	e1a03a03 	lsl	r3, r3, #20
80029e58:	e1a03a23 	lsr	r3, r3, #20
80029e5c:	e3530000 	cmp	r3, #0
80029e60:	0a000001 	beq	80029e6c <loaduvm+0x38>
80029e64:	e59f00f0 	ldr	r0, [pc, #240]	@ 80029f5c <loaduvm+0x128>
80029e68:	ebffdf23 	bl	80021afc <panic>
80029e6c:	e3a03000 	mov	r3, #0
80029e70:	e50b3008 	str	r3, [fp, #-8]
80029e74:	ea000030 	b	80029f3c <loaduvm+0x108>
80029e78:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029e7c:	e51b3008 	ldr	r3, [fp, #-8]
80029e80:	e0823003 	add	r3, r2, r3
80029e84:	e3a02000 	mov	r2, #0
80029e88:	e1a01003 	mov	r1, r3
80029e8c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80029e90:	ebffff2d 	bl	80029b4c <walkpgdir>
80029e94:	e50b0010 	str	r0, [fp, #-16]
80029e98:	e51b3010 	ldr	r3, [fp, #-16]
80029e9c:	e3530000 	cmp	r3, #0
80029ea0:	1a000001 	bne	80029eac <loaduvm+0x78>
80029ea4:	e59f00b4 	ldr	r0, [pc, #180]	@ 80029f60 <loaduvm+0x12c>
80029ea8:	ebffdf13 	bl	80021afc <panic>
80029eac:	e51b3010 	ldr	r3, [fp, #-16]
80029eb0:	e5933000 	ldr	r3, [r3]
80029eb4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029eb8:	e3c3300f 	bic	r3, r3, #15
80029ebc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029ec0:	e59b2004 	ldr	r2, [fp, #4]
80029ec4:	e51b3008 	ldr	r3, [fp, #-8]
80029ec8:	e0423003 	sub	r3, r2, r3
80029ecc:	e3530a01 	cmp	r3, #4096	@ 0x1000
80029ed0:	2a000004 	bcs	80029ee8 <loaduvm+0xb4>
80029ed4:	e59b2004 	ldr	r2, [fp, #4]
80029ed8:	e51b3008 	ldr	r3, [fp, #-8]
80029edc:	e0423003 	sub	r3, r2, r3
80029ee0:	e50b300c 	str	r3, [fp, #-12]
80029ee4:	ea000001 	b	80029ef0 <loaduvm+0xbc>
80029ee8:	e3a03a01 	mov	r3, #4096	@ 0x1000
80029eec:	e50b300c 	str	r3, [fp, #-12]
80029ef0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80029ef4:	ebfffe9c 	bl	8002996c <p2v>
80029ef8:	e1a01000 	mov	r1, r0
80029efc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80029f00:	e51b3008 	ldr	r3, [fp, #-8]
80029f04:	e0822003 	add	r2, r2, r3
80029f08:	e51b300c 	ldr	r3, [fp, #-12]
80029f0c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80029f10:	ebffe679 	bl	800238fc <readi>
80029f14:	e1a03000 	mov	r3, r0
80029f18:	e1a02003 	mov	r2, r3
80029f1c:	e51b300c 	ldr	r3, [fp, #-12]
80029f20:	e1530002 	cmp	r3, r2
80029f24:	0a000001 	beq	80029f30 <loaduvm+0xfc>
80029f28:	e3e03000 	mvn	r3, #0
80029f2c:	ea000007 	b	80029f50 <loaduvm+0x11c>
80029f30:	e51b3008 	ldr	r3, [fp, #-8]
80029f34:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80029f38:	e50b3008 	str	r3, [fp, #-8]
80029f3c:	e51b2008 	ldr	r2, [fp, #-8]
80029f40:	e59b3004 	ldr	r3, [fp, #4]
80029f44:	e1520003 	cmp	r2, r3
80029f48:	3affffca 	bcc	80029e78 <loaduvm+0x44>
80029f4c:	e3a03000 	mov	r3, #0
80029f50:	e1a00003 	mov	r0, r3
80029f54:	e24bd004 	sub	sp, fp, #4
80029f58:	e8bd8800 	pop	{fp, pc}
80029f5c:	8002bdac 	.word	0x8002bdac
80029f60:	8002bdd0 	.word	0x8002bdd0

80029f64 <find_evict_va>:
80029f64:	e92d4800 	push	{fp, lr}
80029f68:	e28db004 	add	fp, sp, #4
80029f6c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80029f70:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80029f74:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80029f78:	e59f311c 	ldr	r3, [pc, #284]	@ 8002a09c <find_evict_va+0x138>
80029f7c:	e50b300c 	str	r3, [fp, #-12]
80029f80:	e3a03000 	mov	r3, #0
80029f84:	e50b3008 	str	r3, [fp, #-8]
80029f88:	ea00003b 	b	8002a07c <find_evict_va+0x118>
80029f8c:	e51b3008 	ldr	r3, [fp, #-8]
80029f90:	e2833001 	add	r3, r3, #1
80029f94:	e50b3008 	str	r3, [fp, #-8]
80029f98:	ebffebdf 	bl	80024f1c <rand>
80029f9c:	e50b0010 	str	r0, [fp, #-16]
80029fa0:	e51b300c 	ldr	r3, [fp, #-12]
80029fa4:	e2433a03 	sub	r3, r3, #12288	@ 0x3000
80029fa8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80029fac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029fb0:	e3530000 	cmp	r3, #0
80029fb4:	1a000001 	bne	80029fc0 <find_evict_va+0x5c>
80029fb8:	e3a03000 	mov	r3, #0
80029fbc:	ea000033 	b	8002a090 <find_evict_va+0x12c>
80029fc0:	e51b3010 	ldr	r3, [fp, #-16]
80029fc4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80029fc8:	e1a00003 	mov	r0, r3
80029fcc:	eb000480 	bl	8002b1d4 <__aeabi_uidivmod>
80029fd0:	e1a03001 	mov	r3, r1
80029fd4:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80029fd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80029fdc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029fe0:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80029fe4:	e283300f 	add	r3, r3, #15
80029fe8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80029fec:	e3c3300f 	bic	r3, r3, #15
80029ff0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80029ff4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80029ff8:	e3a02000 	mov	r2, #0
80029ffc:	e1a01003 	mov	r1, r3
8002a000:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002a004:	ebfffed0 	bl	80029b4c <walkpgdir>
8002a008:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
8002a00c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a010:	e3530000 	cmp	r3, #0
8002a014:	0a000013 	beq	8002a068 <find_evict_va+0x104>
8002a018:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a01c:	e5933000 	ldr	r3, [r3]
8002a020:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002a024:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a028:	e2033003 	and	r3, r3, #3
8002a02c:	e3530002 	cmp	r3, #2
8002a030:	1a00000e 	bne	8002a070 <find_evict_va+0x10c>
8002a034:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a038:	e2033030 	and	r3, r3, #48	@ 0x30
8002a03c:	e3530030 	cmp	r3, #48	@ 0x30
8002a040:	0a000003 	beq	8002a054 <find_evict_va+0xf0>
8002a044:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a048:	e2033030 	and	r3, r3, #48	@ 0x30
8002a04c:	e3530020 	cmp	r3, #32
8002a050:	1a000008 	bne	8002a078 <find_evict_va+0x114>
8002a054:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
8002a058:	e59f0040 	ldr	r0, [pc, #64]	@ 8002a0a0 <find_evict_va+0x13c>
8002a05c:	ebffde1b 	bl	800218d0 <cprintf>
8002a060:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a064:	ea000009 	b	8002a090 <find_evict_va+0x12c>
8002a068:	e1a00000 	nop			@ (mov r0, r0)
8002a06c:	ea000002 	b	8002a07c <find_evict_va+0x118>
8002a070:	e1a00000 	nop			@ (mov r0, r0)
8002a074:	ea000000 	b	8002a07c <find_evict_va+0x118>
8002a078:	e1a00000 	nop			@ (mov r0, r0)
8002a07c:	e51b2008 	ldr	r2, [fp, #-8]
8002a080:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002a084:	e1520003 	cmp	r2, r3
8002a088:	baffffbf 	blt	80029f8c <find_evict_va+0x28>
8002a08c:	e3a03000 	mov	r3, #0
8002a090:	e1a00003 	mov	r0, r3
8002a094:	e24bd004 	sub	sp, fp, #4
8002a098:	e8bd8800 	pop	{fp, pc}
8002a09c:	0fffd000 	.word	0x0fffd000
8002a0a0:	8002bdf0 	.word	0x8002bdf0

8002a0a4 <evil_evict_limit>:
8002a0a4:	e92d4800 	push	{fp, lr}
8002a0a8:	e28db004 	add	fp, sp, #4
8002a0ac:	e24dd018 	sub	sp, sp, #24
8002a0b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002a0b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002a0b8:	e59f3138 	ldr	r3, [pc, #312]	@ 8002a1f8 <evil_evict_limit+0x154>
8002a0bc:	e5933000 	ldr	r3, [r3]
8002a0c0:	e2833001 	add	r3, r3, #1
8002a0c4:	e59f212c 	ldr	r2, [pc, #300]	@ 8002a1f8 <evil_evict_limit+0x154>
8002a0c8:	e5823000 	str	r3, [r2]
8002a0cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a0d0:	e3530000 	cmp	r3, #0
8002a0d4:	1a000001 	bne	8002a0e0 <evil_evict_limit+0x3c>
8002a0d8:	e59f311c 	ldr	r3, [pc, #284]	@ 8002a1fc <evil_evict_limit+0x158>
8002a0dc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a0e0:	e3a01a01 	mov	r1, #4096	@ 0x1000
8002a0e4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002a0e8:	ebffff9d 	bl	80029f64 <find_evict_va>
8002a0ec:	e50b0008 	str	r0, [fp, #-8]
8002a0f0:	e51b3008 	ldr	r3, [fp, #-8]
8002a0f4:	e3530000 	cmp	r3, #0
8002a0f8:	1a000003 	bne	8002a10c <evil_evict_limit+0x68>
8002a0fc:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
8002a100:	e59f00f8 	ldr	r0, [pc, #248]	@ 8002a200 <evil_evict_limit+0x15c>
8002a104:	ebffddf1 	bl	800218d0 <cprintf>
8002a108:	ea000038 	b	8002a1f0 <evil_evict_limit+0x14c>
8002a10c:	e51b3008 	ldr	r3, [fp, #-8]
8002a110:	e3a02000 	mov	r2, #0
8002a114:	e1a01003 	mov	r1, r3
8002a118:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002a11c:	ebfffe8a 	bl	80029b4c <walkpgdir>
8002a120:	e50b000c 	str	r0, [fp, #-12]
8002a124:	e51b300c 	ldr	r3, [fp, #-12]
8002a128:	e3530000 	cmp	r3, #0
8002a12c:	1a000003 	bne	8002a140 <evil_evict_limit+0x9c>
8002a130:	e51b1008 	ldr	r1, [fp, #-8]
8002a134:	e59f00c8 	ldr	r0, [pc, #200]	@ 8002a204 <evil_evict_limit+0x160>
8002a138:	ebffdde4 	bl	800218d0 <cprintf>
8002a13c:	ea00002b 	b	8002a1f0 <evil_evict_limit+0x14c>
8002a140:	e51b300c 	ldr	r3, [fp, #-12]
8002a144:	e5933000 	ldr	r3, [r3]
8002a148:	e50b3010 	str	r3, [fp, #-16]
8002a14c:	e51b3010 	ldr	r3, [fp, #-16]
8002a150:	e2033003 	and	r3, r3, #3
8002a154:	e3530002 	cmp	r3, #2
8002a158:	1a000007 	bne	8002a17c <evil_evict_limit+0xd8>
8002a15c:	e51b3010 	ldr	r3, [fp, #-16]
8002a160:	e2033030 	and	r3, r3, #48	@ 0x30
8002a164:	e3530030 	cmp	r3, #48	@ 0x30
8002a168:	0a000007 	beq	8002a18c <evil_evict_limit+0xe8>
8002a16c:	e51b3010 	ldr	r3, [fp, #-16]
8002a170:	e2033030 	and	r3, r3, #48	@ 0x30
8002a174:	e3530020 	cmp	r3, #32
8002a178:	0a000003 	beq	8002a18c <evil_evict_limit+0xe8>
8002a17c:	e51b1008 	ldr	r1, [fp, #-8]
8002a180:	e59f0080 	ldr	r0, [pc, #128]	@ 8002a208 <evil_evict_limit+0x164>
8002a184:	ebffddd1 	bl	800218d0 <cprintf>
8002a188:	ea000018 	b	8002a1f0 <evil_evict_limit+0x14c>
8002a18c:	e51b3010 	ldr	r3, [fp, #-16]
8002a190:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a194:	e3c3300f 	bic	r3, r3, #15
8002a198:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002a19c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a1a0:	e3530000 	cmp	r3, #0
8002a1a4:	1a000003 	bne	8002a1b8 <evil_evict_limit+0x114>
8002a1a8:	e51b1008 	ldr	r1, [fp, #-8]
8002a1ac:	e59f0058 	ldr	r0, [pc, #88]	@ 8002a20c <evil_evict_limit+0x168>
8002a1b0:	ebffddc6 	bl	800218d0 <cprintf>
8002a1b4:	ea00000d 	b	8002a1f0 <evil_evict_limit+0x14c>
8002a1b8:	e51b300c 	ldr	r3, [fp, #-12]
8002a1bc:	e3a02000 	mov	r2, #0
8002a1c0:	e5832000 	str	r2, [r3]
8002a1c4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002a1c8:	ebfffde7 	bl	8002996c <p2v>
8002a1cc:	e1a03000 	mov	r3, r0
8002a1d0:	e1a00003 	mov	r0, r3
8002a1d4:	ebffdd19 	bl	80021640 <free_page>
8002a1d8:	e59f3018 	ldr	r3, [pc, #24]	@ 8002a1f8 <evil_evict_limit+0x154>
8002a1dc:	e5933000 	ldr	r3, [r3]
8002a1e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002a1e4:	e51b1008 	ldr	r1, [fp, #-8]
8002a1e8:	e59f0020 	ldr	r0, [pc, #32]	@ 8002a210 <evil_evict_limit+0x16c>
8002a1ec:	ebffddb7 	bl	800218d0 <cprintf>
8002a1f0:	e24bd004 	sub	sp, fp, #4
8002a1f4:	e8bd8800 	pop	{fp, pc}
8002a1f8:	800b331c 	.word	0x800b331c
8002a1fc:	0fffd000 	.word	0x0fffd000
8002a200:	8002be00 	.word	0x8002be00
8002a204:	8002be2c 	.word	0x8002be2c
8002a208:	8002be64 	.word	0x8002be64
8002a20c:	8002be94 	.word	0x8002be94
8002a210:	8002bec0 	.word	0x8002bec0

8002a214 <allocuvm>:
8002a214:	e92d4810 	push	{r4, fp, lr}
8002a218:	e28db008 	add	fp, sp, #8
8002a21c:	e24dd034 	sub	sp, sp, #52	@ 0x34
8002a220:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
8002a224:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
8002a228:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
8002a22c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002a230:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002a234:	e1520003 	cmp	r2, r3
8002a238:	2a000001 	bcs	8002a244 <allocuvm+0x30>
8002a23c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002a240:	ea000044 	b	8002a358 <allocuvm+0x144>
8002a244:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002a248:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002a24c:	e283300f 	add	r3, r3, #15
8002a250:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a254:	e3c3300f 	bic	r3, r3, #15
8002a258:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002a25c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002a260:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002a264:	ea000036 	b	8002a344 <allocuvm+0x130>
8002a268:	ebffdcfe 	bl	80021668 <alloc_page>
8002a26c:	e50b0010 	str	r0, [fp, #-16]
8002a270:	e51b3010 	ldr	r3, [fp, #-16]
8002a274:	e3530000 	cmp	r3, #0
8002a278:	1a00001d 	bne	8002a2f4 <allocuvm+0xe0>
8002a27c:	e59f00e0 	ldr	r0, [pc, #224]	@ 8002a364 <allocuvm+0x150>
8002a280:	ebffdd92 	bl	800218d0 <cprintf>
8002a284:	e3a03000 	mov	r3, #0
8002a288:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a28c:	e3a03001 	mov	r3, #1
8002a290:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002a294:	ea000007 	b	8002a2b8 <allocuvm+0xa4>
8002a298:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002a29c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002a2a0:	ebffff7f 	bl	8002a0a4 <evil_evict_limit>
8002a2a4:	ebffdcef 	bl	80021668 <alloc_page>
8002a2a8:	e50b0010 	str	r0, [fp, #-16]
8002a2ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a2b0:	e2833001 	add	r3, r3, #1
8002a2b4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a2b8:	e51b3010 	ldr	r3, [fp, #-16]
8002a2bc:	e3530000 	cmp	r3, #0
8002a2c0:	1a000003 	bne	8002a2d4 <allocuvm+0xc0>
8002a2c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002a2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a2cc:	e1520003 	cmp	r2, r3
8002a2d0:	bafffff0 	blt	8002a298 <allocuvm+0x84>
8002a2d4:	e51b3010 	ldr	r3, [fp, #-16]
8002a2d8:	e3530000 	cmp	r3, #0
8002a2dc:	1a000004 	bne	8002a2f4 <allocuvm+0xe0>
8002a2e0:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
8002a2e4:	e59f007c 	ldr	r0, [pc, #124]	@ 8002a368 <allocuvm+0x154>
8002a2e8:	ebffdd78 	bl	800218d0 <cprintf>
8002a2ec:	e3a03000 	mov	r3, #0
8002a2f0:	ea000018 	b	8002a358 <allocuvm+0x144>
8002a2f4:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002a2f8:	e3a01000 	mov	r1, #0
8002a2fc:	e51b0010 	ldr	r0, [fp, #-16]
8002a300:	ebffd73e 	bl	80020000 <memset>
8002a304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a308:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a30c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002a310:	e51b4014 	ldr	r4, [fp, #-20]	@ 0xffffffec
8002a314:	e51b0010 	ldr	r0, [fp, #-16]
8002a318:	ebfffd89 	bl	80029944 <v2p>
8002a31c:	e1a03000 	mov	r3, r0
8002a320:	e3a02003 	mov	r2, #3
8002a324:	e58d2000 	str	r2, [sp]
8002a328:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002a32c:	e1a01004 	mov	r1, r4
8002a330:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002a334:	ebfffe3a 	bl	80029c24 <mappages>
8002a338:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a33c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a340:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002a344:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002a348:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002a34c:	e1520003 	cmp	r2, r3
8002a350:	3affffc4 	bcc	8002a268 <allocuvm+0x54>
8002a354:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002a358:	e1a00003 	mov	r0, r3
8002a35c:	e24bd008 	sub	sp, fp, #8
8002a360:	e8bd8810 	pop	{r4, fp, pc}
8002a364:	8002beec 	.word	0x8002beec
8002a368:	8002bf1c 	.word	0x8002bf1c

8002a36c <deallocuvm>:
8002a36c:	e92d4800 	push	{fp, lr}
8002a370:	e28db004 	add	fp, sp, #4
8002a374:	e24dd020 	sub	sp, sp, #32
8002a378:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002a37c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002a380:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002a384:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002a388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a38c:	e1520003 	cmp	r2, r3
8002a390:	3a000001 	bcc	8002a39c <deallocuvm+0x30>
8002a394:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a398:	ea000035 	b	8002a474 <deallocuvm+0x108>
8002a39c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a3a0:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002a3a4:	e283300f 	add	r3, r3, #15
8002a3a8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a3ac:	e3c3300f 	bic	r3, r3, #15
8002a3b0:	e50b3008 	str	r3, [fp, #-8]
8002a3b4:	ea000029 	b	8002a460 <deallocuvm+0xf4>
8002a3b8:	e51b3008 	ldr	r3, [fp, #-8]
8002a3bc:	e3a02000 	mov	r2, #0
8002a3c0:	e1a01003 	mov	r1, r3
8002a3c4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002a3c8:	ebfffddf 	bl	80029b4c <walkpgdir>
8002a3cc:	e50b000c 	str	r0, [fp, #-12]
8002a3d0:	e51b300c 	ldr	r3, [fp, #-12]
8002a3d4:	e3530000 	cmp	r3, #0
8002a3d8:	1a000006 	bne	8002a3f8 <deallocuvm+0x8c>
8002a3dc:	e51b3008 	ldr	r3, [fp, #-8]
8002a3e0:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
8002a3e4:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
8002a3e8:	e1a03a23 	lsr	r3, r3, #20
8002a3ec:	e1a03a03 	lsl	r3, r3, #20
8002a3f0:	e50b3008 	str	r3, [fp, #-8]
8002a3f4:	ea000016 	b	8002a454 <deallocuvm+0xe8>
8002a3f8:	e51b300c 	ldr	r3, [fp, #-12]
8002a3fc:	e5933000 	ldr	r3, [r3]
8002a400:	e2033003 	and	r3, r3, #3
8002a404:	e3530000 	cmp	r3, #0
8002a408:	0a000011 	beq	8002a454 <deallocuvm+0xe8>
8002a40c:	e51b300c 	ldr	r3, [fp, #-12]
8002a410:	e5933000 	ldr	r3, [r3]
8002a414:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a418:	e3c3300f 	bic	r3, r3, #15
8002a41c:	e50b3010 	str	r3, [fp, #-16]
8002a420:	e51b3010 	ldr	r3, [fp, #-16]
8002a424:	e3530000 	cmp	r3, #0
8002a428:	1a000001 	bne	8002a434 <deallocuvm+0xc8>
8002a42c:	e59f004c 	ldr	r0, [pc, #76]	@ 8002a480 <deallocuvm+0x114>
8002a430:	ebffddb1 	bl	80021afc <panic>
8002a434:	e51b0010 	ldr	r0, [fp, #-16]
8002a438:	ebfffd4b 	bl	8002996c <p2v>
8002a43c:	e1a03000 	mov	r3, r0
8002a440:	e1a00003 	mov	r0, r3
8002a444:	ebffdc7d 	bl	80021640 <free_page>
8002a448:	e51b300c 	ldr	r3, [fp, #-12]
8002a44c:	e3a02000 	mov	r2, #0
8002a450:	e5832000 	str	r2, [r3]
8002a454:	e51b3008 	ldr	r3, [fp, #-8]
8002a458:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a45c:	e50b3008 	str	r3, [fp, #-8]
8002a460:	e51b2008 	ldr	r2, [fp, #-8]
8002a464:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a468:	e1520003 	cmp	r2, r3
8002a46c:	3affffd1 	bcc	8002a3b8 <deallocuvm+0x4c>
8002a470:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a474:	e1a00003 	mov	r0, r3
8002a478:	e24bd004 	sub	sp, fp, #4
8002a47c:	e8bd8800 	pop	{fp, pc}
8002a480:	8002bf50 	.word	0x8002bf50

8002a484 <freevm>:
8002a484:	e92d4800 	push	{fp, lr}
8002a488:	e28db004 	add	fp, sp, #4
8002a48c:	e24dd010 	sub	sp, sp, #16
8002a490:	e50b0010 	str	r0, [fp, #-16]
8002a494:	e51b3010 	ldr	r3, [fp, #-16]
8002a498:	e3530000 	cmp	r3, #0
8002a49c:	1a000001 	bne	8002a4a8 <freevm+0x24>
8002a4a0:	e59f0098 	ldr	r0, [pc, #152]	@ 8002a540 <freevm+0xbc>
8002a4a4:	ebffdd94 	bl	80021afc <panic>
8002a4a8:	e3a02000 	mov	r2, #0
8002a4ac:	e3a01201 	mov	r1, #268435456	@ 0x10000000
8002a4b0:	e51b0010 	ldr	r0, [fp, #-16]
8002a4b4:	ebffffac 	bl	8002a36c <deallocuvm>
8002a4b8:	e3a03000 	mov	r3, #0
8002a4bc:	e50b3008 	str	r3, [fp, #-8]
8002a4c0:	ea000016 	b	8002a520 <freevm+0x9c>
8002a4c4:	e51b3008 	ldr	r3, [fp, #-8]
8002a4c8:	e1a03103 	lsl	r3, r3, #2
8002a4cc:	e51b2010 	ldr	r2, [fp, #-16]
8002a4d0:	e0823003 	add	r3, r2, r3
8002a4d4:	e5933000 	ldr	r3, [r3]
8002a4d8:	e2033003 	and	r3, r3, #3
8002a4dc:	e3530000 	cmp	r3, #0
8002a4e0:	0a00000b 	beq	8002a514 <freevm+0x90>
8002a4e4:	e51b3008 	ldr	r3, [fp, #-8]
8002a4e8:	e1a03103 	lsl	r3, r3, #2
8002a4ec:	e51b2010 	ldr	r2, [fp, #-16]
8002a4f0:	e0823003 	add	r3, r2, r3
8002a4f4:	e5933000 	ldr	r3, [r3]
8002a4f8:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
8002a4fc:	e3c33003 	bic	r3, r3, #3
8002a500:	e1a00003 	mov	r0, r3
8002a504:	ebfffd18 	bl	8002996c <p2v>
8002a508:	e50b000c 	str	r0, [fp, #-12]
8002a50c:	e51b000c 	ldr	r0, [fp, #-12]
8002a510:	ebfffd3d 	bl	80029a0c <kpt_free>
8002a514:	e51b3008 	ldr	r3, [fp, #-8]
8002a518:	e2833001 	add	r3, r3, #1
8002a51c:	e50b3008 	str	r3, [fp, #-8]
8002a520:	e51b3008 	ldr	r3, [fp, #-8]
8002a524:	e35300ff 	cmp	r3, #255	@ 0xff
8002a528:	9affffe5 	bls	8002a4c4 <freevm+0x40>
8002a52c:	e51b0010 	ldr	r0, [fp, #-16]
8002a530:	ebfffd35 	bl	80029a0c <kpt_free>
8002a534:	e1a00000 	nop			@ (mov r0, r0)
8002a538:	e24bd004 	sub	sp, fp, #4
8002a53c:	e8bd8800 	pop	{fp, pc}
8002a540:	8002bf5c 	.word	0x8002bf5c

8002a544 <clearpteu>:
8002a544:	e92d4800 	push	{fp, lr}
8002a548:	e28db004 	add	fp, sp, #4
8002a54c:	e24dd010 	sub	sp, sp, #16
8002a550:	e50b0010 	str	r0, [fp, #-16]
8002a554:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002a558:	e3a02000 	mov	r2, #0
8002a55c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002a560:	e51b0010 	ldr	r0, [fp, #-16]
8002a564:	ebfffd78 	bl	80029b4c <walkpgdir>
8002a568:	e50b0008 	str	r0, [fp, #-8]
8002a56c:	e51b3008 	ldr	r3, [fp, #-8]
8002a570:	e3530000 	cmp	r3, #0
8002a574:	1a000001 	bne	8002a580 <clearpteu+0x3c>
8002a578:	e59f0024 	ldr	r0, [pc, #36]	@ 8002a5a4 <clearpteu+0x60>
8002a57c:	ebffdd5e 	bl	80021afc <panic>
8002a580:	e51b3008 	ldr	r3, [fp, #-8]
8002a584:	e5933000 	ldr	r3, [r3]
8002a588:	e3c33030 	bic	r3, r3, #48	@ 0x30
8002a58c:	e3832010 	orr	r2, r3, #16
8002a590:	e51b3008 	ldr	r3, [fp, #-8]
8002a594:	e5832000 	str	r2, [r3]
8002a598:	e1a00000 	nop			@ (mov r0, r0)
8002a59c:	e24bd004 	sub	sp, fp, #4
8002a5a0:	e8bd8800 	pop	{fp, pc}
8002a5a4:	8002bf70 	.word	0x8002bf70

8002a5a8 <copyuvm>:
8002a5a8:	e92d4810 	push	{r4, fp, lr}
8002a5ac:	e28db008 	add	fp, sp, #8
8002a5b0:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
8002a5b4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
8002a5b8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
8002a5bc:	ebfffd3c 	bl	80029ab4 <kpt_alloc>
8002a5c0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002a5c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a5c8:	e3530000 	cmp	r3, #0
8002a5cc:	1a000001 	bne	8002a5d8 <copyuvm+0x30>
8002a5d0:	e3a03000 	mov	r3, #0
8002a5d4:	ea000047 	b	8002a6f8 <copyuvm+0x150>
8002a5d8:	e3a03000 	mov	r3, #0
8002a5dc:	e50b3010 	str	r3, [fp, #-16]
8002a5e0:	ea000038 	b	8002a6c8 <copyuvm+0x120>
8002a5e4:	e51b3010 	ldr	r3, [fp, #-16]
8002a5e8:	e3a02000 	mov	r2, #0
8002a5ec:	e1a01003 	mov	r1, r3
8002a5f0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002a5f4:	ebfffd54 	bl	80029b4c <walkpgdir>
8002a5f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002a5fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a600:	e3530000 	cmp	r3, #0
8002a604:	1a000001 	bne	8002a610 <copyuvm+0x68>
8002a608:	e59f00f4 	ldr	r0, [pc, #244]	@ 8002a704 <copyuvm+0x15c>
8002a60c:	ebffdd3a 	bl	80021afc <panic>
8002a610:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a614:	e5933000 	ldr	r3, [r3]
8002a618:	e2033003 	and	r3, r3, #3
8002a61c:	e3530000 	cmp	r3, #0
8002a620:	1a000001 	bne	8002a62c <copyuvm+0x84>
8002a624:	e59f00dc 	ldr	r0, [pc, #220]	@ 8002a708 <copyuvm+0x160>
8002a628:	ebffdd33 	bl	80021afc <panic>
8002a62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a630:	e5933000 	ldr	r3, [r3]
8002a634:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a638:	e3c3300f 	bic	r3, r3, #15
8002a63c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a640:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002a644:	e5933000 	ldr	r3, [r3]
8002a648:	e1a03223 	lsr	r3, r3, #4
8002a64c:	e2033003 	and	r3, r3, #3
8002a650:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002a654:	ebffdc03 	bl	80021668 <alloc_page>
8002a658:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
8002a65c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a660:	e3530000 	cmp	r3, #0
8002a664:	0a00001d 	beq	8002a6e0 <copyuvm+0x138>
8002a668:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002a66c:	ebfffcbe 	bl	8002996c <p2v>
8002a670:	e1a03000 	mov	r3, r0
8002a674:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002a678:	e1a01003 	mov	r1, r3
8002a67c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
8002a680:	ebffd6d0 	bl	800201c8 <memmove>
8002a684:	e51b4010 	ldr	r4, [fp, #-16]
8002a688:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
8002a68c:	ebfffcac 	bl	80029944 <v2p>
8002a690:	e1a02000 	mov	r2, r0
8002a694:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a698:	e58d3000 	str	r3, [sp]
8002a69c:	e1a03002 	mov	r3, r2
8002a6a0:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002a6a4:	e1a01004 	mov	r1, r4
8002a6a8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002a6ac:	ebfffd5c 	bl	80029c24 <mappages>
8002a6b0:	e1a03000 	mov	r3, r0
8002a6b4:	e3530000 	cmp	r3, #0
8002a6b8:	ba00000a 	blt	8002a6e8 <copyuvm+0x140>
8002a6bc:	e51b3010 	ldr	r3, [fp, #-16]
8002a6c0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a6c4:	e50b3010 	str	r3, [fp, #-16]
8002a6c8:	e51b2010 	ldr	r2, [fp, #-16]
8002a6cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002a6d0:	e1520003 	cmp	r2, r3
8002a6d4:	3affffc2 	bcc	8002a5e4 <copyuvm+0x3c>
8002a6d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a6dc:	ea000005 	b	8002a6f8 <copyuvm+0x150>
8002a6e0:	e1a00000 	nop			@ (mov r0, r0)
8002a6e4:	ea000000 	b	8002a6ec <copyuvm+0x144>
8002a6e8:	e1a00000 	nop			@ (mov r0, r0)
8002a6ec:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002a6f0:	ebffff63 	bl	8002a484 <freevm>
8002a6f4:	e3a03000 	mov	r3, #0
8002a6f8:	e1a00003 	mov	r0, r3
8002a6fc:	e24bd008 	sub	sp, fp, #8
8002a700:	e8bd8810 	pop	{r4, fp, pc}
8002a704:	8002bf7c 	.word	0x8002bf7c
8002a708:	8002bf98 	.word	0x8002bf98

8002a70c <uva2ka>:
8002a70c:	e92d4800 	push	{fp, lr}
8002a710:	e28db004 	add	fp, sp, #4
8002a714:	e24dd010 	sub	sp, sp, #16
8002a718:	e50b0010 	str	r0, [fp, #-16]
8002a71c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002a720:	e3a02000 	mov	r2, #0
8002a724:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
8002a728:	e51b0010 	ldr	r0, [fp, #-16]
8002a72c:	ebfffd06 	bl	80029b4c <walkpgdir>
8002a730:	e50b0008 	str	r0, [fp, #-8]
8002a734:	e51b3008 	ldr	r3, [fp, #-8]
8002a738:	e5933000 	ldr	r3, [r3]
8002a73c:	e2033003 	and	r3, r3, #3
8002a740:	e3530000 	cmp	r3, #0
8002a744:	1a000001 	bne	8002a750 <uva2ka+0x44>
8002a748:	e3a03000 	mov	r3, #0
8002a74c:	ea00000e 	b	8002a78c <uva2ka+0x80>
8002a750:	e51b3008 	ldr	r3, [fp, #-8]
8002a754:	e5933000 	ldr	r3, [r3]
8002a758:	e2033030 	and	r3, r3, #48	@ 0x30
8002a75c:	e3530030 	cmp	r3, #48	@ 0x30
8002a760:	0a000001 	beq	8002a76c <uva2ka+0x60>
8002a764:	e3a03000 	mov	r3, #0
8002a768:	ea000007 	b	8002a78c <uva2ka+0x80>
8002a76c:	e51b3008 	ldr	r3, [fp, #-8]
8002a770:	e5933000 	ldr	r3, [r3]
8002a774:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a778:	e3c3300f 	bic	r3, r3, #15
8002a77c:	e1a00003 	mov	r0, r3
8002a780:	ebfffc79 	bl	8002996c <p2v>
8002a784:	e1a03000 	mov	r3, r0
8002a788:	e1a00000 	nop			@ (mov r0, r0)
8002a78c:	e1a00003 	mov	r0, r3
8002a790:	e24bd004 	sub	sp, fp, #4
8002a794:	e8bd8800 	pop	{fp, pc}

8002a798 <copyout>:
8002a798:	e92d4800 	push	{fp, lr}
8002a79c:	e28db004 	add	fp, sp, #4
8002a7a0:	e24dd020 	sub	sp, sp, #32
8002a7a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002a7a8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002a7ac:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002a7b0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002a7b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002a7b8:	e50b3008 	str	r3, [fp, #-8]
8002a7bc:	ea00002c 	b	8002a874 <copyout+0xdc>
8002a7c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a7c4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002a7c8:	e3c3300f 	bic	r3, r3, #15
8002a7cc:	e50b3010 	str	r3, [fp, #-16]
8002a7d0:	e51b3010 	ldr	r3, [fp, #-16]
8002a7d4:	e1a01003 	mov	r1, r3
8002a7d8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002a7dc:	ebffffca 	bl	8002a70c <uva2ka>
8002a7e0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002a7e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a7e8:	e3530000 	cmp	r3, #0
8002a7ec:	1a000001 	bne	8002a7f8 <copyout+0x60>
8002a7f0:	e3e03000 	mvn	r3, #0
8002a7f4:	ea000022 	b	8002a884 <copyout+0xec>
8002a7f8:	e51b2010 	ldr	r2, [fp, #-16]
8002a7fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a800:	e0423003 	sub	r3, r2, r3
8002a804:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a808:	e50b300c 	str	r3, [fp, #-12]
8002a80c:	e51b200c 	ldr	r2, [fp, #-12]
8002a810:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a814:	e1520003 	cmp	r2, r3
8002a818:	9a000001 	bls	8002a824 <copyout+0x8c>
8002a81c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a820:	e50b300c 	str	r3, [fp, #-12]
8002a824:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002a828:	e51b3010 	ldr	r3, [fp, #-16]
8002a82c:	e0423003 	sub	r3, r2, r3
8002a830:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002a834:	e0823003 	add	r3, r2, r3
8002a838:	e51b200c 	ldr	r2, [fp, #-12]
8002a83c:	e51b1008 	ldr	r1, [fp, #-8]
8002a840:	e1a00003 	mov	r0, r3
8002a844:	ebffd65f 	bl	800201c8 <memmove>
8002a848:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002a84c:	e51b300c 	ldr	r3, [fp, #-12]
8002a850:	e0423003 	sub	r3, r2, r3
8002a854:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002a858:	e51b2008 	ldr	r2, [fp, #-8]
8002a85c:	e51b300c 	ldr	r3, [fp, #-12]
8002a860:	e0823003 	add	r3, r2, r3
8002a864:	e50b3008 	str	r3, [fp, #-8]
8002a868:	e51b3010 	ldr	r3, [fp, #-16]
8002a86c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002a870:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a874:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002a878:	e3530000 	cmp	r3, #0
8002a87c:	1affffcf 	bne	8002a7c0 <copyout+0x28>
8002a880:	e3a03000 	mov	r3, #0
8002a884:	e1a00003 	mov	r0, r3
8002a888:	e24bd004 	sub	sp, fp, #4
8002a88c:	e8bd8800 	pop	{fp, pc}

8002a890 <paging_init>:
8002a890:	e92d4800 	push	{fp, lr}
8002a894:	e28db004 	add	fp, sp, #4
8002a898:	e24dd010 	sub	sp, sp, #16
8002a89c:	e50b0008 	str	r0, [fp, #-8]
8002a8a0:	e50b100c 	str	r1, [fp, #-12]
8002a8a4:	e59f0034 	ldr	r0, [pc, #52]	@ 8002a8e0 <paging_init+0x50>
8002a8a8:	e51b3008 	ldr	r3, [fp, #-8]
8002a8ac:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002a8b0:	e1a01003 	mov	r1, r3
8002a8b4:	e51b200c 	ldr	r2, [fp, #-12]
8002a8b8:	e51b3008 	ldr	r3, [fp, #-8]
8002a8bc:	e0422003 	sub	r2, r2, r3
8002a8c0:	e3a03003 	mov	r3, #3
8002a8c4:	e58d3000 	str	r3, [sp]
8002a8c8:	e51b3008 	ldr	r3, [fp, #-8]
8002a8cc:	ebfffcd4 	bl	80029c24 <mappages>
8002a8d0:	ebfffd0f 	bl	80029d14 <flush_tlb>
8002a8d4:	e1a00000 	nop			@ (mov r0, r0)
8002a8d8:	e24bd004 	sub	sp, fp, #4
8002a8dc:	e8bd8800 	pop	{fp, pc}
8002a8e0:	80014000 	.word	0x80014000

8002a8e4 <kpt_print>:
8002a8e4:	e92d4800 	push	{fp, lr}
8002a8e8:	e28db004 	add	fp, sp, #4
8002a8ec:	e24dd018 	sub	sp, sp, #24
8002a8f0:	e59f00b0 	ldr	r0, [pc, #176]	@ 8002a9a8 <kpt_print+0xc4>
8002a8f4:	ebffdbf5 	bl	800218d0 <cprintf>
8002a8f8:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002a9ac <kpt_print+0xc8>
8002a8fc:	e50b3010 	str	r3, [fp, #-16]
8002a900:	e3a03000 	mov	r3, #0
8002a904:	e50b3008 	str	r3, [fp, #-8]
8002a908:	e3a03b02 	mov	r3, #2048	@ 0x800
8002a90c:	e50b300c 	str	r3, [fp, #-12]
8002a910:	ea00001b 	b	8002a984 <kpt_print+0xa0>
8002a914:	e51b300c 	ldr	r3, [fp, #-12]
8002a918:	e1a03103 	lsl	r3, r3, #2
8002a91c:	e51b2010 	ldr	r2, [fp, #-16]
8002a920:	e0823003 	add	r3, r2, r3
8002a924:	e5933000 	ldr	r3, [r3]
8002a928:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002a92c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a930:	e2033003 	and	r3, r3, #3
8002a934:	e3530002 	cmp	r3, #2
8002a938:	1a00000e 	bne	8002a978 <kpt_print+0x94>
8002a93c:	e51b300c 	ldr	r3, [fp, #-12]
8002a940:	e1a03a03 	lsl	r3, r3, #20
8002a944:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002a948:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002a94c:	e1a03a23 	lsr	r3, r3, #20
8002a950:	e1a03a03 	lsl	r3, r3, #20
8002a954:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
8002a958:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002a95c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002a960:	e51b100c 	ldr	r1, [fp, #-12]
8002a964:	e59f0044 	ldr	r0, [pc, #68]	@ 8002a9b0 <kpt_print+0xcc>
8002a968:	ebffdbd8 	bl	800218d0 <cprintf>
8002a96c:	e51b3008 	ldr	r3, [fp, #-8]
8002a970:	e2833001 	add	r3, r3, #1
8002a974:	e50b3008 	str	r3, [fp, #-8]
8002a978:	e51b300c 	ldr	r3, [fp, #-12]
8002a97c:	e2833001 	add	r3, r3, #1
8002a980:	e50b300c 	str	r3, [fp, #-12]
8002a984:	e51b300c 	ldr	r3, [fp, #-12]
8002a988:	e3530a01 	cmp	r3, #4096	@ 0x1000
8002a98c:	aa000002 	bge	8002a99c <kpt_print+0xb8>
8002a990:	e51b3008 	ldr	r3, [fp, #-8]
8002a994:	e353000e 	cmp	r3, #14
8002a998:	daffffdd 	ble	8002a914 <kpt_print+0x30>
8002a99c:	e1a00000 	nop			@ (mov r0, r0)
8002a9a0:	e24bd004 	sub	sp, fp, #4
8002a9a4:	e8bd8800 	pop	{fp, pc}
8002a9a8:	8002bfb4 	.word	0x8002bfb4
8002a9ac:	80014000 	.word	0x80014000
8002a9b0:	8002bfe4 	.word	0x8002bfe4

8002a9b4 <barrier_init>:
8002a9b4:	e92d4800 	push	{fp, lr}
8002a9b8:	e28db004 	add	fp, sp, #4
8002a9bc:	e24dd008 	sub	sp, sp, #8
8002a9c0:	e50b0008 	str	r0, [fp, #-8]
8002a9c4:	e59f004c 	ldr	r0, [pc, #76]	@ 8002aa18 <barrier_init+0x64>
8002a9c8:	ebffdbc0 	bl	800218d0 <cprintf>
8002a9cc:	e59f1048 	ldr	r1, [pc, #72]	@ 8002aa1c <barrier_init+0x68>
8002a9d0:	e59f0048 	ldr	r0, [pc, #72]	@ 8002aa20 <barrier_init+0x6c>
8002a9d4:	ebfff01c 	bl	80026a4c <initlock>
8002a9d8:	e59f0040 	ldr	r0, [pc, #64]	@ 8002aa20 <barrier_init+0x6c>
8002a9dc:	ebfff02c 	bl	80026a94 <acquire>
8002a9e0:	e59f303c 	ldr	r3, [pc, #60]	@ 8002aa24 <barrier_init+0x70>
8002a9e4:	e5933000 	ldr	r3, [r3]
8002a9e8:	e51b2008 	ldr	r2, [fp, #-8]
8002a9ec:	e5832000 	str	r2, [r3]
8002a9f0:	e59f302c 	ldr	r3, [pc, #44]	@ 8002aa24 <barrier_init+0x70>
8002a9f4:	e5933000 	ldr	r3, [r3]
8002a9f8:	e3a02000 	mov	r2, #0
8002a9fc:	e5832004 	str	r2, [r3, #4]
8002aa00:	e59f0018 	ldr	r0, [pc, #24]	@ 8002aa20 <barrier_init+0x6c>
8002aa04:	ebfff02d 	bl	80026ac0 <release>
8002aa08:	e3a03000 	mov	r3, #0
8002aa0c:	e1a00003 	mov	r0, r3
8002aa10:	e24bd004 	sub	sp, fp, #4
8002aa14:	e8bd8800 	pop	{fp, pc}
8002aa18:	8002c010 	.word	0x8002c010
8002aa1c:	8002c028 	.word	0x8002c028
8002aa20:	800b3320 	.word	0x800b3320
8002aa24:	8002d0e8 	.word	0x8002d0e8

8002aa28 <barrier_check>:
8002aa28:	e92d4800 	push	{fp, lr}
8002aa2c:	e28db004 	add	fp, sp, #4
8002aa30:	e59f009c 	ldr	r0, [pc, #156]	@ 8002aad4 <barrier_check+0xac>
8002aa34:	ebfff016 	bl	80026a94 <acquire>
8002aa38:	e59f3098 	ldr	r3, [pc, #152]	@ 8002aad8 <barrier_check+0xb0>
8002aa3c:	e5933000 	ldr	r3, [r3]
8002aa40:	e5932000 	ldr	r2, [r3]
8002aa44:	e59f308c 	ldr	r3, [pc, #140]	@ 8002aad8 <barrier_check+0xb0>
8002aa48:	e5933000 	ldr	r3, [r3]
8002aa4c:	e2422001 	sub	r2, r2, #1
8002aa50:	e5832000 	str	r2, [r3]
8002aa54:	e59f307c 	ldr	r3, [pc, #124]	@ 8002aad8 <barrier_check+0xb0>
8002aa58:	e5933000 	ldr	r3, [r3]
8002aa5c:	e5933000 	ldr	r3, [r3]
8002aa60:	e1a01003 	mov	r1, r3
8002aa64:	e59f0070 	ldr	r0, [pc, #112]	@ 8002aadc <barrier_check+0xb4>
8002aa68:	ebffdb98 	bl	800218d0 <cprintf>
8002aa6c:	e59f3064 	ldr	r3, [pc, #100]	@ 8002aad8 <barrier_check+0xb0>
8002aa70:	e5933000 	ldr	r3, [r3]
8002aa74:	e5933000 	ldr	r3, [r3]
8002aa78:	e3530000 	cmp	r3, #0
8002aa7c:	1a000009 	bne	8002aaa8 <barrier_check+0x80>
8002aa80:	e59f3050 	ldr	r3, [pc, #80]	@ 8002aad8 <barrier_check+0xb0>
8002aa84:	e5933000 	ldr	r3, [r3]
8002aa88:	e3a02001 	mov	r2, #1
8002aa8c:	e5832004 	str	r2, [r3, #4]
8002aa90:	e59f3040 	ldr	r3, [pc, #64]	@ 8002aad8 <barrier_check+0xb0>
8002aa94:	e5933000 	ldr	r3, [r3]
8002aa98:	e2833004 	add	r3, r3, #4
8002aa9c:	e1a00003 	mov	r0, r3
8002aaa0:	ebffee53 	bl	800263f4 <wakeup>
8002aaa4:	ea000005 	b	8002aac0 <barrier_check+0x98>
8002aaa8:	e59f3028 	ldr	r3, [pc, #40]	@ 8002aad8 <barrier_check+0xb0>
8002aaac:	e5933000 	ldr	r3, [r3]
8002aab0:	e2833004 	add	r3, r3, #4
8002aab4:	e59f1018 	ldr	r1, [pc, #24]	@ 8002aad4 <barrier_check+0xac>
8002aab8:	e1a00003 	mov	r0, r3
8002aabc:	ebffedcc 	bl	800261f4 <sleep>
8002aac0:	e59f000c 	ldr	r0, [pc, #12]	@ 8002aad4 <barrier_check+0xac>
8002aac4:	ebffeffd 	bl	80026ac0 <release>
8002aac8:	e3a03000 	mov	r3, #0
8002aacc:	e1a00003 	mov	r0, r3
8002aad0:	e8bd8800 	pop	{fp, pc}
8002aad4:	800b3320 	.word	0x800b3320
8002aad8:	8002d0e8 	.word	0x8002d0e8
8002aadc:	8002c030 	.word	0x8002c030

8002aae0 <default_isr>:
8002aae0:	e92d4800 	push	{fp, lr}
8002aae4:	e28db004 	add	fp, sp, #4
8002aae8:	e24dd008 	sub	sp, sp, #8
8002aaec:	e50b0008 	str	r0, [fp, #-8]
8002aaf0:	e50b100c 	str	r1, [fp, #-12]
8002aaf4:	e51b100c 	ldr	r1, [fp, #-12]
8002aaf8:	e59f000c 	ldr	r0, [pc, #12]	@ 8002ab0c <default_isr+0x2c>
8002aafc:	ebffdb73 	bl	800218d0 <cprintf>
8002ab00:	e1a00000 	nop			@ (mov r0, r0)
8002ab04:	e24bd004 	sub	sp, fp, #4
8002ab08:	e8bd8800 	pop	{fp, pc}
8002ab0c:	8002c048 	.word	0x8002c048

8002ab10 <pic_init>:
8002ab10:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002ab14:	e28db000 	add	fp, sp, #0
8002ab18:	e24dd014 	sub	sp, sp, #20
8002ab1c:	e50b0010 	str	r0, [fp, #-16]
8002ab20:	e59f2060 	ldr	r2, [pc, #96]	@ 8002ab88 <pic_init+0x78>
8002ab24:	e51b3010 	ldr	r3, [fp, #-16]
8002ab28:	e5823000 	str	r3, [r2]
8002ab2c:	e59f3054 	ldr	r3, [pc, #84]	@ 8002ab88 <pic_init+0x78>
8002ab30:	e5933000 	ldr	r3, [r3]
8002ab34:	e2833014 	add	r3, r3, #20
8002ab38:	e3e02000 	mvn	r2, #0
8002ab3c:	e5832000 	str	r2, [r3]
8002ab40:	e3a03000 	mov	r3, #0
8002ab44:	e50b3008 	str	r3, [fp, #-8]
8002ab48:	ea000006 	b	8002ab68 <pic_init+0x58>
8002ab4c:	e59f2038 	ldr	r2, [pc, #56]	@ 8002ab8c <pic_init+0x7c>
8002ab50:	e51b3008 	ldr	r3, [fp, #-8]
8002ab54:	e59f1034 	ldr	r1, [pc, #52]	@ 8002ab90 <pic_init+0x80>
8002ab58:	e7821103 	str	r1, [r2, r3, lsl #2]
8002ab5c:	e51b3008 	ldr	r3, [fp, #-8]
8002ab60:	e2833001 	add	r3, r3, #1
8002ab64:	e50b3008 	str	r3, [fp, #-8]
8002ab68:	e51b3008 	ldr	r3, [fp, #-8]
8002ab6c:	e353001f 	cmp	r3, #31
8002ab70:	dafffff5 	ble	8002ab4c <pic_init+0x3c>
8002ab74:	e1a00000 	nop			@ (mov r0, r0)
8002ab78:	e1a00000 	nop			@ (mov r0, r0)
8002ab7c:	e28bd000 	add	sp, fp, #0
8002ab80:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002ab84:	e12fff1e 	bx	lr
8002ab88:	800b335c 	.word	0x800b335c
8002ab8c:	800b3360 	.word	0x800b3360
8002ab90:	8002aae0 	.word	0x8002aae0

8002ab94 <pic_enable>:
8002ab94:	e92d4800 	push	{fp, lr}
8002ab98:	e28db004 	add	fp, sp, #4
8002ab9c:	e24dd008 	sub	sp, sp, #8
8002aba0:	e50b0008 	str	r0, [fp, #-8]
8002aba4:	e50b100c 	str	r1, [fp, #-12]
8002aba8:	e51b3008 	ldr	r3, [fp, #-8]
8002abac:	e3530000 	cmp	r3, #0
8002abb0:	ba000002 	blt	8002abc0 <pic_enable+0x2c>
8002abb4:	e51b3008 	ldr	r3, [fp, #-8]
8002abb8:	e353001f 	cmp	r3, #31
8002abbc:	da000001 	ble	8002abc8 <pic_enable+0x34>
8002abc0:	e59f0038 	ldr	r0, [pc, #56]	@ 8002ac00 <pic_enable+0x6c>
8002abc4:	ebffdbcc 	bl	80021afc <panic>
8002abc8:	e59f1034 	ldr	r1, [pc, #52]	@ 8002ac04 <pic_enable+0x70>
8002abcc:	e51b3008 	ldr	r3, [fp, #-8]
8002abd0:	e51b200c 	ldr	r2, [fp, #-12]
8002abd4:	e7812103 	str	r2, [r1, r3, lsl #2]
8002abd8:	e3a02001 	mov	r2, #1
8002abdc:	e51b3008 	ldr	r3, [fp, #-8]
8002abe0:	e1a02312 	lsl	r2, r2, r3
8002abe4:	e59f301c 	ldr	r3, [pc, #28]	@ 8002ac08 <pic_enable+0x74>
8002abe8:	e5933000 	ldr	r3, [r3]
8002abec:	e2833010 	add	r3, r3, #16
8002abf0:	e5832000 	str	r2, [r3]
8002abf4:	e1a00000 	nop			@ (mov r0, r0)
8002abf8:	e24bd004 	sub	sp, fp, #4
8002abfc:	e8bd8800 	pop	{fp, pc}
8002ac00:	8002c064 	.word	0x8002c064
8002ac04:	800b3360 	.word	0x800b3360
8002ac08:	800b335c 	.word	0x800b335c

8002ac0c <pic_disable>:
8002ac0c:	e92d4800 	push	{fp, lr}
8002ac10:	e28db004 	add	fp, sp, #4
8002ac14:	e24dd008 	sub	sp, sp, #8
8002ac18:	e50b0008 	str	r0, [fp, #-8]
8002ac1c:	e51b3008 	ldr	r3, [fp, #-8]
8002ac20:	e3530000 	cmp	r3, #0
8002ac24:	ba000002 	blt	8002ac34 <pic_disable+0x28>
8002ac28:	e51b3008 	ldr	r3, [fp, #-8]
8002ac2c:	e353001f 	cmp	r3, #31
8002ac30:	da000001 	ble	8002ac3c <pic_disable+0x30>
8002ac34:	e59f0038 	ldr	r0, [pc, #56]	@ 8002ac74 <pic_disable+0x68>
8002ac38:	ebffdbaf 	bl	80021afc <panic>
8002ac3c:	e3a02001 	mov	r2, #1
8002ac40:	e51b3008 	ldr	r3, [fp, #-8]
8002ac44:	e1a02312 	lsl	r2, r2, r3
8002ac48:	e59f3028 	ldr	r3, [pc, #40]	@ 8002ac78 <pic_disable+0x6c>
8002ac4c:	e5933000 	ldr	r3, [r3]
8002ac50:	e2833014 	add	r3, r3, #20
8002ac54:	e5832000 	str	r2, [r3]
8002ac58:	e59f201c 	ldr	r2, [pc, #28]	@ 8002ac7c <pic_disable+0x70>
8002ac5c:	e51b3008 	ldr	r3, [fp, #-8]
8002ac60:	e59f1018 	ldr	r1, [pc, #24]	@ 8002ac80 <pic_disable+0x74>
8002ac64:	e7821103 	str	r1, [r2, r3, lsl #2]
8002ac68:	e1a00000 	nop			@ (mov r0, r0)
8002ac6c:	e24bd004 	sub	sp, fp, #4
8002ac70:	e8bd8800 	pop	{fp, pc}
8002ac74:	8002c064 	.word	0x8002c064
8002ac78:	800b335c 	.word	0x800b335c
8002ac7c:	800b3360 	.word	0x800b3360
8002ac80:	8002aae0 	.word	0x8002aae0

8002ac84 <pic_dispatch>:
8002ac84:	e92d4800 	push	{fp, lr}
8002ac88:	e28db004 	add	fp, sp, #4
8002ac8c:	e24dd010 	sub	sp, sp, #16
8002ac90:	e50b0010 	str	r0, [fp, #-16]
8002ac94:	e59f3080 	ldr	r3, [pc, #128]	@ 8002ad1c <pic_dispatch+0x98>
8002ac98:	e5933000 	ldr	r3, [r3]
8002ac9c:	e5933000 	ldr	r3, [r3]
8002aca0:	e50b300c 	str	r3, [fp, #-12]
8002aca4:	e3a03000 	mov	r3, #0
8002aca8:	e50b3008 	str	r3, [fp, #-8]
8002acac:	ea000010 	b	8002acf4 <pic_dispatch+0x70>
8002acb0:	e3a02001 	mov	r2, #1
8002acb4:	e51b3008 	ldr	r3, [fp, #-8]
8002acb8:	e1a03312 	lsl	r3, r2, r3
8002acbc:	e1a02003 	mov	r2, r3
8002acc0:	e51b300c 	ldr	r3, [fp, #-12]
8002acc4:	e0033002 	and	r3, r3, r2
8002acc8:	e3530000 	cmp	r3, #0
8002accc:	0a000005 	beq	8002ace8 <pic_dispatch+0x64>
8002acd0:	e59f2048 	ldr	r2, [pc, #72]	@ 8002ad20 <pic_dispatch+0x9c>
8002acd4:	e51b3008 	ldr	r3, [fp, #-8]
8002acd8:	e7923103 	ldr	r3, [r2, r3, lsl #2]
8002acdc:	e51b1008 	ldr	r1, [fp, #-8]
8002ace0:	e51b0010 	ldr	r0, [fp, #-16]
8002ace4:	e12fff33 	blx	r3
8002ace8:	e51b3008 	ldr	r3, [fp, #-8]
8002acec:	e2833001 	add	r3, r3, #1
8002acf0:	e50b3008 	str	r3, [fp, #-8]
8002acf4:	e51b3008 	ldr	r3, [fp, #-8]
8002acf8:	e353001f 	cmp	r3, #31
8002acfc:	daffffeb 	ble	8002acb0 <pic_dispatch+0x2c>
8002ad00:	e59f3014 	ldr	r3, [pc, #20]	@ 8002ad1c <pic_dispatch+0x98>
8002ad04:	e5933000 	ldr	r3, [r3]
8002ad08:	e5933000 	ldr	r3, [r3]
8002ad0c:	e50b300c 	str	r3, [fp, #-12]
8002ad10:	e1a00000 	nop			@ (mov r0, r0)
8002ad14:	e24bd004 	sub	sp, fp, #4
8002ad18:	e8bd8800 	pop	{fp, pc}
8002ad1c:	800b335c 	.word	0x800b335c
8002ad20:	800b3360 	.word	0x800b3360

8002ad24 <ack_timer>:
8002ad24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002ad28:	e28db000 	add	fp, sp, #0
8002ad2c:	e24dd00c 	sub	sp, sp, #12
8002ad30:	e59f3020 	ldr	r3, [pc, #32]	@ 8002ad58 <ack_timer+0x34>
8002ad34:	e50b3008 	str	r3, [fp, #-8]
8002ad38:	e51b3008 	ldr	r3, [fp, #-8]
8002ad3c:	e283300c 	add	r3, r3, #12
8002ad40:	e3a02001 	mov	r2, #1
8002ad44:	e5832000 	str	r2, [r3]
8002ad48:	e1a00000 	nop			@ (mov r0, r0)
8002ad4c:	e28bd000 	add	sp, fp, #0
8002ad50:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002ad54:	e12fff1e 	bx	lr
8002ad58:	901e2000 	.word	0x901e2000

8002ad5c <timer_init>:
8002ad5c:	e92d4800 	push	{fp, lr}
8002ad60:	e28db004 	add	fp, sp, #4
8002ad64:	e24dd010 	sub	sp, sp, #16
8002ad68:	e50b0010 	str	r0, [fp, #-16]
8002ad6c:	e59f3050 	ldr	r3, [pc, #80]	@ 8002adc4 <timer_init+0x68>
8002ad70:	e50b3008 	str	r3, [fp, #-8]
8002ad74:	e59f104c 	ldr	r1, [pc, #76]	@ 8002adc8 <timer_init+0x6c>
8002ad78:	e59f004c 	ldr	r0, [pc, #76]	@ 8002adcc <timer_init+0x70>
8002ad7c:	ebffef32 	bl	80026a4c <initlock>
8002ad80:	e51b1010 	ldr	r1, [fp, #-16]
8002ad84:	e59f0044 	ldr	r0, [pc, #68]	@ 8002add0 <timer_init+0x74>
8002ad88:	eb000119 	bl	8002b1f4 <__divsi3>
8002ad8c:	e1a03000 	mov	r3, r0
8002ad90:	e1a02003 	mov	r2, r3
8002ad94:	e51b3008 	ldr	r3, [fp, #-8]
8002ad98:	e5832000 	str	r2, [r3]
8002ad9c:	e51b3008 	ldr	r3, [fp, #-8]
8002ada0:	e2833008 	add	r3, r3, #8
8002ada4:	e3a020e2 	mov	r2, #226	@ 0xe2
8002ada8:	e5832000 	str	r2, [r3]
8002adac:	e59f1020 	ldr	r1, [pc, #32]	@ 8002add4 <timer_init+0x78>
8002adb0:	e3a00004 	mov	r0, #4
8002adb4:	ebffff76 	bl	8002ab94 <pic_enable>
8002adb8:	e1a00000 	nop			@ (mov r0, r0)
8002adbc:	e24bd004 	sub	sp, fp, #4
8002adc0:	e8bd8800 	pop	{fp, pc}
8002adc4:	901e2000 	.word	0x901e2000
8002adc8:	8002c080 	.word	0x8002c080
8002adcc:	800b33e0 	.word	0x800b33e0
8002add0:	000f4240 	.word	0x000f4240
8002add4:	8002add8 	.word	0x8002add8

8002add8 <isr_timer>:
8002add8:	e92d4800 	push	{fp, lr}
8002addc:	e28db004 	add	fp, sp, #4
8002ade0:	e24dd008 	sub	sp, sp, #8
8002ade4:	e50b0008 	str	r0, [fp, #-8]
8002ade8:	e50b100c 	str	r1, [fp, #-12]
8002adec:	e59f0070 	ldr	r0, [pc, #112]	@ 8002ae64 <isr_timer+0x8c>
8002adf0:	ebffef27 	bl	80026a94 <acquire>
8002adf4:	e59f306c 	ldr	r3, [pc, #108]	@ 8002ae68 <isr_timer+0x90>
8002adf8:	e5933000 	ldr	r3, [r3]
8002adfc:	e2833001 	add	r3, r3, #1
8002ae00:	e59f2060 	ldr	r2, [pc, #96]	@ 8002ae68 <isr_timer+0x90>
8002ae04:	e5823000 	str	r3, [r2]
8002ae08:	e59f0058 	ldr	r0, [pc, #88]	@ 8002ae68 <isr_timer+0x90>
8002ae0c:	ebffed78 	bl	800263f4 <wakeup>
8002ae10:	e59f004c 	ldr	r0, [pc, #76]	@ 8002ae64 <isr_timer+0x8c>
8002ae14:	ebffef29 	bl	80026ac0 <release>
8002ae18:	ebffffc1 	bl	8002ad24 <ack_timer>
8002ae1c:	e59f3048 	ldr	r3, [pc, #72]	@ 8002ae6c <isr_timer+0x94>
8002ae20:	e5933000 	ldr	r3, [r3]
8002ae24:	e3530000 	cmp	r3, #0
8002ae28:	0a00000a 	beq	8002ae58 <isr_timer+0x80>
8002ae2c:	e59f3038 	ldr	r3, [pc, #56]	@ 8002ae6c <isr_timer+0x94>
8002ae30:	e5933000 	ldr	r3, [r3]
8002ae34:	e5d3300c 	ldrb	r3, [r3, #12]
8002ae38:	e3530004 	cmp	r3, #4
8002ae3c:	1a000005 	bne	8002ae58 <isr_timer+0x80>
8002ae40:	e51b3008 	ldr	r3, [fp, #-8]
8002ae44:	e593300c 	ldr	r3, [r3, #12]
8002ae48:	e203301f 	and	r3, r3, #31
8002ae4c:	e3530010 	cmp	r3, #16
8002ae50:	1a000000 	bne	8002ae58 <isr_timer+0x80>
8002ae54:	ebffecc7 	bl	80026178 <yield>
8002ae58:	e1a00000 	nop			@ (mov r0, r0)
8002ae5c:	e24bd004 	sub	sp, fp, #4
8002ae60:	e8bd8800 	pop	{fp, pc}
8002ae64:	800b33e0 	.word	0x800b33e0
8002ae68:	800b3414 	.word	0x800b3414
8002ae6c:	800b32d4 	.word	0x800b32d4

8002ae70 <micro_delay>:
8002ae70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002ae74:	e28db000 	add	fp, sp, #0
8002ae78:	e24dd014 	sub	sp, sp, #20
8002ae7c:	e50b0010 	str	r0, [fp, #-16]
8002ae80:	e59f3054 	ldr	r3, [pc, #84]	@ 8002aedc <micro_delay+0x6c>
8002ae84:	e50b3008 	str	r3, [fp, #-8]
8002ae88:	e51b3008 	ldr	r3, [fp, #-8]
8002ae8c:	e2833008 	add	r3, r3, #8
8002ae90:	e3a02082 	mov	r2, #130	@ 0x82
8002ae94:	e5832000 	str	r2, [r3]
8002ae98:	e51b2010 	ldr	r2, [fp, #-16]
8002ae9c:	e51b3008 	ldr	r3, [fp, #-8]
8002aea0:	e5832000 	str	r2, [r3]
8002aea4:	e1a00000 	nop			@ (mov r0, r0)
8002aea8:	e51b3008 	ldr	r3, [fp, #-8]
8002aeac:	e2833004 	add	r3, r3, #4
8002aeb0:	e5933000 	ldr	r3, [r3]
8002aeb4:	e3530000 	cmp	r3, #0
8002aeb8:	cafffffa 	bgt	8002aea8 <micro_delay+0x38>
8002aebc:	e51b3008 	ldr	r3, [fp, #-8]
8002aec0:	e2833008 	add	r3, r3, #8
8002aec4:	e3a02000 	mov	r2, #0
8002aec8:	e5832000 	str	r2, [r3]
8002aecc:	e1a00000 	nop			@ (mov r0, r0)
8002aed0:	e28bd000 	add	sp, fp, #0
8002aed4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002aed8:	e12fff1e 	bx	lr
8002aedc:	901e2020 	.word	0x901e2020

8002aee0 <uart_init>:
8002aee0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002aee4:	e28db000 	add	fp, sp, #0
8002aee8:	e24dd014 	sub	sp, sp, #20
8002aeec:	e50b0010 	str	r0, [fp, #-16]
8002aef0:	e59f20a4 	ldr	r2, [pc, #164]	@ 8002af9c <uart_init+0xbc>
8002aef4:	e51b3010 	ldr	r3, [fp, #-16]
8002aef8:	e5823000 	str	r3, [r2]
8002aefc:	e59f3098 	ldr	r3, [pc, #152]	@ 8002af9c <uart_init+0xbc>
8002af00:	e5933000 	ldr	r3, [r3]
8002af04:	e2833024 	add	r3, r3, #36	@ 0x24
8002af08:	e3a0204e 	mov	r2, #78	@ 0x4e
8002af0c:	e5832000 	str	r2, [r3]
8002af10:	e3a03c96 	mov	r3, #38400	@ 0x9600
8002af14:	e50b3008 	str	r3, [fp, #-8]
8002af18:	e51b3008 	ldr	r3, [fp, #-8]
8002af1c:	e2833e96 	add	r3, r3, #2400	@ 0x960
8002af20:	e1a02103 	lsl	r2, r3, #2
8002af24:	e59f3070 	ldr	r3, [pc, #112]	@ 8002af9c <uart_init+0xbc>
8002af28:	e5933000 	ldr	r3, [r3]
8002af2c:	e2833028 	add	r3, r3, #40	@ 0x28
8002af30:	e59f1068 	ldr	r1, [pc, #104]	@ 8002afa0 <uart_init+0xc0>
8002af34:	e0821291 	umull	r1, r2, r1, r2
8002af38:	e1a025a2 	lsr	r2, r2, #11
8002af3c:	e5832000 	str	r2, [r3]
8002af40:	e59f3054 	ldr	r3, [pc, #84]	@ 8002af9c <uart_init+0xbc>
8002af44:	e5933000 	ldr	r3, [r3]
8002af48:	e2833030 	add	r3, r3, #48	@ 0x30
8002af4c:	e5933000 	ldr	r3, [r3]
8002af50:	e59f2044 	ldr	r2, [pc, #68]	@ 8002af9c <uart_init+0xbc>
8002af54:	e5922000 	ldr	r2, [r2]
8002af58:	e2822030 	add	r2, r2, #48	@ 0x30
8002af5c:	e3833c03 	orr	r3, r3, #768	@ 0x300
8002af60:	e3833001 	orr	r3, r3, #1
8002af64:	e5823000 	str	r3, [r2]
8002af68:	e59f302c 	ldr	r3, [pc, #44]	@ 8002af9c <uart_init+0xbc>
8002af6c:	e5933000 	ldr	r3, [r3]
8002af70:	e283302c 	add	r3, r3, #44	@ 0x2c
8002af74:	e5932000 	ldr	r2, [r3]
8002af78:	e59f301c 	ldr	r3, [pc, #28]	@ 8002af9c <uart_init+0xbc>
8002af7c:	e5933000 	ldr	r3, [r3]
8002af80:	e283302c 	add	r3, r3, #44	@ 0x2c
8002af84:	e3822010 	orr	r2, r2, #16
8002af88:	e5832000 	str	r2, [r3]
8002af8c:	e1a00000 	nop			@ (mov r0, r0)
8002af90:	e28bd000 	add	sp, fp, #0
8002af94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002af98:	e12fff1e 	bx	lr
8002af9c:	800b3418 	.word	0x800b3418
8002afa0:	1b4e81b5 	.word	0x1b4e81b5

8002afa4 <uart_enable_rx>:
8002afa4:	e92d4800 	push	{fp, lr}
8002afa8:	e28db004 	add	fp, sp, #4
8002afac:	e59f3020 	ldr	r3, [pc, #32]	@ 8002afd4 <uart_enable_rx+0x30>
8002afb0:	e5933000 	ldr	r3, [r3]
8002afb4:	e2833038 	add	r3, r3, #56	@ 0x38
8002afb8:	e3a02010 	mov	r2, #16
8002afbc:	e5832000 	str	r2, [r3]
8002afc0:	e59f1010 	ldr	r1, [pc, #16]	@ 8002afd8 <uart_enable_rx+0x34>
8002afc4:	e3a0000c 	mov	r0, #12
8002afc8:	ebfffef1 	bl	8002ab94 <pic_enable>
8002afcc:	e1a00000 	nop			@ (mov r0, r0)
8002afd0:	e8bd8800 	pop	{fp, pc}
8002afd4:	800b3418 	.word	0x800b3418
8002afd8:	8002b080 	.word	0x8002b080

8002afdc <uartputc>:
8002afdc:	e92d4800 	push	{fp, lr}
8002afe0:	e28db004 	add	fp, sp, #4
8002afe4:	e24dd008 	sub	sp, sp, #8
8002afe8:	e50b0008 	str	r0, [fp, #-8]
8002afec:	ea000001 	b	8002aff8 <uartputc+0x1c>
8002aff0:	e3a0000a 	mov	r0, #10
8002aff4:	ebffff9d 	bl	8002ae70 <micro_delay>
8002aff8:	e59f3030 	ldr	r3, [pc, #48]	@ 8002b030 <uartputc+0x54>
8002affc:	e5933000 	ldr	r3, [r3]
8002b000:	e2833018 	add	r3, r3, #24
8002b004:	e5933000 	ldr	r3, [r3]
8002b008:	e2033020 	and	r3, r3, #32
8002b00c:	e3530000 	cmp	r3, #0
8002b010:	1afffff6 	bne	8002aff0 <uartputc+0x14>
8002b014:	e59f3014 	ldr	r3, [pc, #20]	@ 8002b030 <uartputc+0x54>
8002b018:	e5933000 	ldr	r3, [r3]
8002b01c:	e51b2008 	ldr	r2, [fp, #-8]
8002b020:	e5832000 	str	r2, [r3]
8002b024:	e1a00000 	nop			@ (mov r0, r0)
8002b028:	e24bd004 	sub	sp, fp, #4
8002b02c:	e8bd8800 	pop	{fp, pc}
8002b030:	800b3418 	.word	0x800b3418

8002b034 <uartgetc>:
8002b034:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002b038:	e28db000 	add	fp, sp, #0
8002b03c:	e59f3038 	ldr	r3, [pc, #56]	@ 8002b07c <uartgetc+0x48>
8002b040:	e5933000 	ldr	r3, [r3]
8002b044:	e2833018 	add	r3, r3, #24
8002b048:	e5933000 	ldr	r3, [r3]
8002b04c:	e2033010 	and	r3, r3, #16
8002b050:	e3530000 	cmp	r3, #0
8002b054:	0a000001 	beq	8002b060 <uartgetc+0x2c>
8002b058:	e3e03000 	mvn	r3, #0
8002b05c:	ea000002 	b	8002b06c <uartgetc+0x38>
8002b060:	e59f3014 	ldr	r3, [pc, #20]	@ 8002b07c <uartgetc+0x48>
8002b064:	e5933000 	ldr	r3, [r3]
8002b068:	e5933000 	ldr	r3, [r3]
8002b06c:	e1a00003 	mov	r0, r3
8002b070:	e28bd000 	add	sp, fp, #0
8002b074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002b078:	e12fff1e 	bx	lr
8002b07c:	800b3418 	.word	0x800b3418

8002b080 <isr_uart>:
8002b080:	e92d4800 	push	{fp, lr}
8002b084:	e28db004 	add	fp, sp, #4
8002b088:	e24dd008 	sub	sp, sp, #8
8002b08c:	e50b0008 	str	r0, [fp, #-8]
8002b090:	e50b100c 	str	r1, [fp, #-12]
8002b094:	e59f303c 	ldr	r3, [pc, #60]	@ 8002b0d8 <isr_uart+0x58>
8002b098:	e5933000 	ldr	r3, [r3]
8002b09c:	e2833040 	add	r3, r3, #64	@ 0x40
8002b0a0:	e5933000 	ldr	r3, [r3]
8002b0a4:	e2033010 	and	r3, r3, #16
8002b0a8:	e3530000 	cmp	r3, #0
8002b0ac:	0a000001 	beq	8002b0b8 <isr_uart+0x38>
8002b0b0:	e59f0024 	ldr	r0, [pc, #36]	@ 8002b0dc <isr_uart+0x5c>
8002b0b4:	ebffdb0c 	bl	80021cec <consoleintr>
8002b0b8:	e59f3018 	ldr	r3, [pc, #24]	@ 8002b0d8 <isr_uart+0x58>
8002b0bc:	e5933000 	ldr	r3, [r3]
8002b0c0:	e2833044 	add	r3, r3, #68	@ 0x44
8002b0c4:	e3a02030 	mov	r2, #48	@ 0x30
8002b0c8:	e5832000 	str	r2, [r3]
8002b0cc:	e1a00000 	nop			@ (mov r0, r0)
8002b0d0:	e24bd004 	sub	sp, fp, #4
8002b0d4:	e8bd8800 	pop	{fp, pc}
8002b0d8:	800b3418 	.word	0x800b3418
8002b0dc:	8002b034 	.word	0x8002b034

8002b0e0 <__udivsi3>:
8002b0e0:	e2512001 	subs	r2, r1, #1
8002b0e4:	012fff1e 	bxeq	lr
8002b0e8:	3a000036 	bcc	8002b1c8 <__udivsi3+0xe8>
8002b0ec:	e1500001 	cmp	r0, r1
8002b0f0:	9a000022 	bls	8002b180 <__udivsi3+0xa0>
8002b0f4:	e1110002 	tst	r1, r2
8002b0f8:	0a000023 	beq	8002b18c <__udivsi3+0xac>
8002b0fc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002b100:	01a01181 	lsleq	r1, r1, #3
8002b104:	03a03008 	moveq	r3, #8
8002b108:	13a03001 	movne	r3, #1
8002b10c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002b110:	31510000 	cmpcc	r1, r0
8002b114:	31a01201 	lslcc	r1, r1, #4
8002b118:	31a03203 	lslcc	r3, r3, #4
8002b11c:	3afffffa 	bcc	8002b10c <__udivsi3+0x2c>
8002b120:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
8002b124:	31510000 	cmpcc	r1, r0
8002b128:	31a01081 	lslcc	r1, r1, #1
8002b12c:	31a03083 	lslcc	r3, r3, #1
8002b130:	3afffffa 	bcc	8002b120 <__udivsi3+0x40>
8002b134:	e3a02000 	mov	r2, #0
8002b138:	e1500001 	cmp	r0, r1
8002b13c:	20400001 	subcs	r0, r0, r1
8002b140:	21822003 	orrcs	r2, r2, r3
8002b144:	e15000a1 	cmp	r0, r1, lsr #1
8002b148:	204000a1 	subcs	r0, r0, r1, lsr #1
8002b14c:	218220a3 	orrcs	r2, r2, r3, lsr #1
8002b150:	e1500121 	cmp	r0, r1, lsr #2
8002b154:	20400121 	subcs	r0, r0, r1, lsr #2
8002b158:	21822123 	orrcs	r2, r2, r3, lsr #2
8002b15c:	e15001a1 	cmp	r0, r1, lsr #3
8002b160:	204001a1 	subcs	r0, r0, r1, lsr #3
8002b164:	218221a3 	orrcs	r2, r2, r3, lsr #3
8002b168:	e3500000 	cmp	r0, #0
8002b16c:	11b03223 	lsrsne	r3, r3, #4
8002b170:	11a01221 	lsrne	r1, r1, #4
8002b174:	1affffef 	bne	8002b138 <__udivsi3+0x58>
8002b178:	e1a00002 	mov	r0, r2
8002b17c:	e12fff1e 	bx	lr
8002b180:	03a00001 	moveq	r0, #1
8002b184:	13a00000 	movne	r0, #0
8002b188:	e12fff1e 	bx	lr
8002b18c:	e3510801 	cmp	r1, #65536	@ 0x10000
8002b190:	21a01821 	lsrcs	r1, r1, #16
8002b194:	23a02010 	movcs	r2, #16
8002b198:	33a02000 	movcc	r2, #0
8002b19c:	e3510c01 	cmp	r1, #256	@ 0x100
8002b1a0:	21a01421 	lsrcs	r1, r1, #8
8002b1a4:	22822008 	addcs	r2, r2, #8
8002b1a8:	e3510010 	cmp	r1, #16
8002b1ac:	21a01221 	lsrcs	r1, r1, #4
8002b1b0:	22822004 	addcs	r2, r2, #4
8002b1b4:	e3510004 	cmp	r1, #4
8002b1b8:	82822003 	addhi	r2, r2, #3
8002b1bc:	908220a1 	addls	r2, r2, r1, lsr #1
8002b1c0:	e1a00230 	lsr	r0, r0, r2
8002b1c4:	e12fff1e 	bx	lr
8002b1c8:	e3500000 	cmp	r0, #0
8002b1cc:	13e00000 	mvnne	r0, #0
8002b1d0:	ea000059 	b	8002b33c <__aeabi_idiv0>

8002b1d4 <__aeabi_uidivmod>:
8002b1d4:	e3510000 	cmp	r1, #0
8002b1d8:	0afffffa 	beq	8002b1c8 <__udivsi3+0xe8>
8002b1dc:	e92d4003 	push	{r0, r1, lr}
8002b1e0:	ebffffbe 	bl	8002b0e0 <__udivsi3>
8002b1e4:	e8bd4006 	pop	{r1, r2, lr}
8002b1e8:	e0030092 	mul	r3, r2, r0
8002b1ec:	e0411003 	sub	r1, r1, r3
8002b1f0:	e12fff1e 	bx	lr

8002b1f4 <__divsi3>:
8002b1f4:	e3510000 	cmp	r1, #0
8002b1f8:	0a000043 	beq	8002b30c <.divsi3_skip_div0_test+0x110>

8002b1fc <.divsi3_skip_div0_test>:
8002b1fc:	e020c001 	eor	ip, r0, r1
8002b200:	42611000 	rsbmi	r1, r1, #0
8002b204:	e2512001 	subs	r2, r1, #1
8002b208:	0a000027 	beq	8002b2ac <.divsi3_skip_div0_test+0xb0>
8002b20c:	e1b03000 	movs	r3, r0
8002b210:	42603000 	rsbmi	r3, r0, #0
8002b214:	e1530001 	cmp	r3, r1
8002b218:	9a000026 	bls	8002b2b8 <.divsi3_skip_div0_test+0xbc>
8002b21c:	e1110002 	tst	r1, r2
8002b220:	0a000028 	beq	8002b2c8 <.divsi3_skip_div0_test+0xcc>
8002b224:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002b228:	01a01181 	lsleq	r1, r1, #3
8002b22c:	03a02008 	moveq	r2, #8
8002b230:	13a02001 	movne	r2, #1
8002b234:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002b238:	31510003 	cmpcc	r1, r3
8002b23c:	31a01201 	lslcc	r1, r1, #4
8002b240:	31a02202 	lslcc	r2, r2, #4
8002b244:	3afffffa 	bcc	8002b234 <.divsi3_skip_div0_test+0x38>
8002b248:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
8002b24c:	31510003 	cmpcc	r1, r3
8002b250:	31a01081 	lslcc	r1, r1, #1
8002b254:	31a02082 	lslcc	r2, r2, #1
8002b258:	3afffffa 	bcc	8002b248 <.divsi3_skip_div0_test+0x4c>
8002b25c:	e3a00000 	mov	r0, #0
8002b260:	e1530001 	cmp	r3, r1
8002b264:	20433001 	subcs	r3, r3, r1
8002b268:	21800002 	orrcs	r0, r0, r2
8002b26c:	e15300a1 	cmp	r3, r1, lsr #1
8002b270:	204330a1 	subcs	r3, r3, r1, lsr #1
8002b274:	218000a2 	orrcs	r0, r0, r2, lsr #1
8002b278:	e1530121 	cmp	r3, r1, lsr #2
8002b27c:	20433121 	subcs	r3, r3, r1, lsr #2
8002b280:	21800122 	orrcs	r0, r0, r2, lsr #2
8002b284:	e15301a1 	cmp	r3, r1, lsr #3
8002b288:	204331a1 	subcs	r3, r3, r1, lsr #3
8002b28c:	218001a2 	orrcs	r0, r0, r2, lsr #3
8002b290:	e3530000 	cmp	r3, #0
8002b294:	11b02222 	lsrsne	r2, r2, #4
8002b298:	11a01221 	lsrne	r1, r1, #4
8002b29c:	1affffef 	bne	8002b260 <.divsi3_skip_div0_test+0x64>
8002b2a0:	e35c0000 	cmp	ip, #0
8002b2a4:	42600000 	rsbmi	r0, r0, #0
8002b2a8:	e12fff1e 	bx	lr
8002b2ac:	e13c0000 	teq	ip, r0
8002b2b0:	42600000 	rsbmi	r0, r0, #0
8002b2b4:	e12fff1e 	bx	lr
8002b2b8:	33a00000 	movcc	r0, #0
8002b2bc:	01a00fcc 	asreq	r0, ip, #31
8002b2c0:	03800001 	orreq	r0, r0, #1
8002b2c4:	e12fff1e 	bx	lr
8002b2c8:	e3510801 	cmp	r1, #65536	@ 0x10000
8002b2cc:	21a01821 	lsrcs	r1, r1, #16
8002b2d0:	23a02010 	movcs	r2, #16
8002b2d4:	33a02000 	movcc	r2, #0
8002b2d8:	e3510c01 	cmp	r1, #256	@ 0x100
8002b2dc:	21a01421 	lsrcs	r1, r1, #8
8002b2e0:	22822008 	addcs	r2, r2, #8
8002b2e4:	e3510010 	cmp	r1, #16
8002b2e8:	21a01221 	lsrcs	r1, r1, #4
8002b2ec:	22822004 	addcs	r2, r2, #4
8002b2f0:	e3510004 	cmp	r1, #4
8002b2f4:	82822003 	addhi	r2, r2, #3
8002b2f8:	908220a1 	addls	r2, r2, r1, lsr #1
8002b2fc:	e35c0000 	cmp	ip, #0
8002b300:	e1a00233 	lsr	r0, r3, r2
8002b304:	42600000 	rsbmi	r0, r0, #0
8002b308:	e12fff1e 	bx	lr
8002b30c:	e3500000 	cmp	r0, #0
8002b310:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
8002b314:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
8002b318:	ea000007 	b	8002b33c <__aeabi_idiv0>

8002b31c <__aeabi_idivmod>:
8002b31c:	e3510000 	cmp	r1, #0
8002b320:	0afffff9 	beq	8002b30c <.divsi3_skip_div0_test+0x110>
8002b324:	e92d4003 	push	{r0, r1, lr}
8002b328:	ebffffb3 	bl	8002b1fc <.divsi3_skip_div0_test>
8002b32c:	e8bd4006 	pop	{r1, r2, lr}
8002b330:	e0030092 	mul	r3, r2, r0
8002b334:	e0411003 	sub	r1, r1, r3
8002b338:	e12fff1e 	bx	lr

8002b33c <__aeabi_idiv0>:
8002b33c:	e12fff1e 	bx	lr
