
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000037 	b	100 <grep+0x100>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	@ 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000016 	b	98 <grep+0x98>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b100c 	ldr	r1, [fp, #-12]
      4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000a 	beq	8c <grep+0x8c>
      60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      70:	e2832001 	add	r2, r3, #1
      74:	e51b300c 	ldr	r3, [fp, #-12]
      78:	e0423003 	sub	r3, r2, r3
      7c:	e1a02003 	mov	r2, r3
      80:	e51b100c 	ldr	r1, [fp, #-12]
      84:	e3a00001 	mov	r0, #1
      88:	eb00035a 	bl	df8 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb000197 	bl	704 <strchr>
      a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ac:	e3530000 	cmp	r3, #0
      b0:	1affffe1 	bne	3c <grep+0x3c>
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e59f2080 	ldr	r2, [pc, #128]	@ 140 <grep+0x140>
      bc:	e1530002 	cmp	r3, r2
      c0:	1a000001 	bne	cc <grep+0xcc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b3008 	str	r3, [fp, #-8]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e3530000 	cmp	r3, #0
      d4:	da000009 	ble	100 <grep+0x100>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e59f205c 	ldr	r2, [pc, #92]	@ 140 <grep+0x140>
      e0:	e0433002 	sub	r3, r3, r2
      e4:	e51b2008 	ldr	r2, [fp, #-8]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e51b100c 	ldr	r1, [fp, #-12]
      f8:	e59f0040 	ldr	r0, [pc, #64]	@ 140 <grep+0x140>
      fc:	eb000202 	bl	90c <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb00032c 	bl	dd4 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001bcc 	.word	0x00001bcc

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e59f10c8 	ldr	r1, [pc, #200]	@ 234 <main+0xf0>
     168:	e3a00002 	mov	r0, #2
     16c:	eb00049d 	bl	13e8 <printf>
     170:	eb0002fc 	bl	d68 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb0002f2 	bl	d68 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e3a01000 	mov	r1, #0
     1c0:	e1a00003 	mov	r0, r3
     1c4:	eb00032f 	bl	e88 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e59f1040 	ldr	r1, [pc, #64]	@ 238 <main+0xf4>
     1f4:	e3a00001 	mov	r0, #1
     1f8:	eb00047a 	bl	13e8 <printf>
     1fc:	eb0002d9 	bl	d68 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb000301 	bl	e1c <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0002cc 	bl	d68 <exit>
     234:	00001aa4 	.word	0x00001aa4
     238:	00001ac4 	.word	0x00001ac4

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	@ 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e51b100c 	ldr	r1, [fp, #-12]
     26c:	e1a00003 	mov	r0, r3
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b100c 	ldr	r1, [fp, #-12]
     280:	e51b0008 	ldr	r0, [fp, #-8]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000036 	b	3cc <matchhere+0x108>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	@ 0x2a
     300:	1a000009 	bne	32c <matchhere+0x68>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a00003 	mov	r0, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e51b200c 	ldr	r2, [fp, #-12]
     31c:	e1a01003 	mov	r1, r3
     320:	eb00002c 	bl	3d8 <matchstar>
     324:	e1a03000 	mov	r3, r0
     328:	ea000027 	b	3cc <matchhere+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530024 	cmp	r3, #36	@ 0x24
     338:	1a00000b 	bne	36c <matchhere+0xa8>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e3530000 	cmp	r3, #0
     34c:	1a000006 	bne	36c <matchhere+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	03a03001 	moveq	r3, #1
     360:	13a03000 	movne	r3, #0
     364:	e6ef3073 	uxtb	r3, r3
     368:	ea000017 	b	3cc <matchhere+0x108>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	0a000012 	beq	3c8 <matchhere+0x104>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e353002e 	cmp	r3, #46	@ 0x2e
     388:	0a000005 	beq	3a4 <matchhere+0xe0>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000008 	bne	3c8 <matchhere+0x104>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2832001 	add	r2, r3, #1
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e1a00002 	mov	r0, r2
     3bc:	ebffffc0 	bl	2c4 <matchhere>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	ea000000 	b	3cc <matchhere+0x108>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e24bd004 	sub	sp, fp, #4
     3d4:	e8bd8800 	pop	{fp, pc}

000003d8 <matchstar>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd010 	sub	sp, sp, #16
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e50b100c 	str	r1, [fp, #-12]
     3ec:	e50b2010 	str	r2, [fp, #-16]
     3f0:	e51b1010 	ldr	r1, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	ebffffb1 	bl	2c4 <matchhere>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	0a000001 	beq	410 <matchstar+0x38>
     408:	e3a03001 	mov	r3, #1
     40c:	ea00000f 	b	450 <matchstar+0x78>
     410:	e51b3010 	ldr	r3, [fp, #-16]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	0a00000a 	beq	44c <matchstar+0x74>
     420:	e51b3010 	ldr	r3, [fp, #-16]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2010 	str	r2, [fp, #-16]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e1530002 	cmp	r3, r2
     43c:	0affffeb 	beq	3f0 <matchstar+0x18>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e353002e 	cmp	r3, #46	@ 0x2e
     448:	0affffe8 	beq	3f0 <matchstar+0x18>
     44c:	e3a03000 	mov	r3, #0
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <xchg>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b1010 	ldr	r1, [fp, #-16]
     474:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     478:	e1912f9f 	ldrex	r2, [r1]
     47c:	e1813f90 	strex	r3, r0, [r1]
     480:	e50b2008 	str	r2, [fp, #-8]
     484:	e50b300c 	str	r3, [fp, #-12]
     488:	e51b300c 	ldr	r3, [fp, #-12]
     48c:	e3530000 	cmp	r3, #0
     490:	1afffff6 	bne	470 <xchg+0x14>
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e1a00003 	mov	r0, r3
     49c:	e28bd000 	add	sp, fp, #0
     4a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4a4:	e12fff1e 	bx	lr

000004a8 <strcpy>:
     4a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4ac:	e28db000 	add	fp, sp, #0
     4b0:	e24dd014 	sub	sp, sp, #20
     4b4:	e50b0010 	str	r0, [fp, #-16]
     4b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4bc:	e51b3010 	ldr	r3, [fp, #-16]
     4c0:	e50b3008 	str	r3, [fp, #-8]
     4c4:	e1a00000 	nop			@ (mov r0, r0)
     4c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4cc:	e2823001 	add	r3, r2, #1
     4d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     4d4:	e51b3010 	ldr	r3, [fp, #-16]
     4d8:	e2831001 	add	r1, r3, #1
     4dc:	e50b1010 	str	r1, [fp, #-16]
     4e0:	e5d22000 	ldrb	r2, [r2]
     4e4:	e5c32000 	strb	r2, [r3]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1afffff4 	bne	4c8 <strcpy+0x20>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <strcmp>:
     508:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     50c:	e28db000 	add	fp, sp, #0
     510:	e24dd00c 	sub	sp, sp, #12
     514:	e50b0008 	str	r0, [fp, #-8]
     518:	e50b100c 	str	r1, [fp, #-12]
     51c:	ea000005 	b	538 <strcmp+0x30>
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e2833001 	add	r3, r3, #1
     528:	e50b3008 	str	r3, [fp, #-8]
     52c:	e51b300c 	ldr	r3, [fp, #-12]
     530:	e2833001 	add	r3, r3, #1
     534:	e50b300c 	str	r3, [fp, #-12]
     538:	e51b3008 	ldr	r3, [fp, #-8]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530000 	cmp	r3, #0
     544:	0a000005 	beq	560 <strcmp+0x58>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e5d32000 	ldrb	r2, [r3]
     550:	e51b300c 	ldr	r3, [fp, #-12]
     554:	e5d33000 	ldrb	r3, [r3]
     558:	e1520003 	cmp	r2, r3
     55c:	0affffef 	beq	520 <strcmp+0x18>
     560:	e51b3008 	ldr	r3, [fp, #-8]
     564:	e5d33000 	ldrb	r3, [r3]
     568:	e1a02003 	mov	r2, r3
     56c:	e51b300c 	ldr	r3, [fp, #-12]
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e0423003 	sub	r3, r2, r3
     578:	e1a00003 	mov	r0, r3
     57c:	e28bd000 	add	sp, fp, #0
     580:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <strlen>:
     588:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     58c:	e28db000 	add	fp, sp, #0
     590:	e24dd014 	sub	sp, sp, #20
     594:	e50b0010 	str	r0, [fp, #-16]
     598:	e3a03000 	mov	r3, #0
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	ea000002 	b	5b0 <strlen+0x28>
     5a4:	e51b3008 	ldr	r3, [fp, #-8]
     5a8:	e2833001 	add	r3, r3, #1
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e51b2010 	ldr	r2, [fp, #-16]
     5b8:	e0823003 	add	r3, r2, r3
     5bc:	e5d33000 	ldrb	r3, [r3]
     5c0:	e3530000 	cmp	r3, #0
     5c4:	1afffff6 	bne	5a4 <strlen+0x1c>
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e1a00003 	mov	r0, r3
     5d0:	e28bd000 	add	sp, fp, #0
     5d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <memset>:
     5dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e0:	e28db000 	add	fp, sp, #0
     5e4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     5e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5ec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5f0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f8:	e50b3008 	str	r3, [fp, #-8]
     5fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     600:	e54b300d 	strb	r3, [fp, #-13]
     604:	e55b200d 	ldrb	r2, [fp, #-13]
     608:	e1a03002 	mov	r3, r2
     60c:	e1a03403 	lsl	r3, r3, #8
     610:	e0833002 	add	r3, r3, r2
     614:	e1a03803 	lsl	r3, r3, #16
     618:	e1a02003 	mov	r2, r3
     61c:	e55b300d 	ldrb	r3, [fp, #-13]
     620:	e1a03403 	lsl	r3, r3, #8
     624:	e1822003 	orr	r2, r2, r3
     628:	e55b300d 	ldrb	r3, [fp, #-13]
     62c:	e1823003 	orr	r3, r2, r3
     630:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     634:	ea000008 	b	65c <memset+0x80>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e55b200d 	ldrb	r2, [fp, #-13]
     640:	e5c32000 	strb	r2, [r3]
     644:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     648:	e2433001 	sub	r3, r3, #1
     64c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     650:	e51b3008 	ldr	r3, [fp, #-8]
     654:	e2833001 	add	r3, r3, #1
     658:	e50b3008 	str	r3, [fp, #-8]
     65c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     660:	e3530000 	cmp	r3, #0
     664:	0a000003 	beq	678 <memset+0x9c>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e2033003 	and	r3, r3, #3
     670:	e3530000 	cmp	r3, #0
     674:	1affffef 	bne	638 <memset+0x5c>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e50b300c 	str	r3, [fp, #-12]
     680:	ea000008 	b	6a8 <memset+0xcc>
     684:	e51b300c 	ldr	r3, [fp, #-12]
     688:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     68c:	e5832000 	str	r2, [r3]
     690:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     694:	e2433004 	sub	r3, r3, #4
     698:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     69c:	e51b300c 	ldr	r3, [fp, #-12]
     6a0:	e2833004 	add	r3, r3, #4
     6a4:	e50b300c 	str	r3, [fp, #-12]
     6a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6ac:	e3530003 	cmp	r3, #3
     6b0:	8afffff3 	bhi	684 <memset+0xa8>
     6b4:	e51b300c 	ldr	r3, [fp, #-12]
     6b8:	e50b3008 	str	r3, [fp, #-8]
     6bc:	ea000008 	b	6e4 <memset+0x108>
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e55b200d 	ldrb	r2, [fp, #-13]
     6c8:	e5c32000 	strb	r2, [r3]
     6cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6d0:	e2433001 	sub	r3, r3, #1
     6d4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e2833001 	add	r3, r3, #1
     6e0:	e50b3008 	str	r3, [fp, #-8]
     6e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6e8:	e3530000 	cmp	r3, #0
     6ec:	1afffff3 	bne	6c0 <memset+0xe4>
     6f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f4:	e1a00003 	mov	r0, r3
     6f8:	e28bd000 	add	sp, fp, #0
     6fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <strchr>:
     704:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     708:	e28db000 	add	fp, sp, #0
     70c:	e24dd00c 	sub	sp, sp, #12
     710:	e50b0008 	str	r0, [fp, #-8]
     714:	e1a03001 	mov	r3, r1
     718:	e54b3009 	strb	r3, [fp, #-9]
     71c:	ea000009 	b	748 <strchr+0x44>
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e5d33000 	ldrb	r3, [r3]
     728:	e55b2009 	ldrb	r2, [fp, #-9]
     72c:	e1520003 	cmp	r2, r3
     730:	1a000001 	bne	73c <strchr+0x38>
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	ea000007 	b	75c <strchr+0x58>
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e2833001 	add	r3, r3, #1
     744:	e50b3008 	str	r3, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e5d33000 	ldrb	r3, [r3]
     750:	e3530000 	cmp	r3, #0
     754:	1afffff1 	bne	720 <strchr+0x1c>
     758:	e3a03000 	mov	r3, #0
     75c:	e1a00003 	mov	r0, r3
     760:	e28bd000 	add	sp, fp, #0
     764:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <gets>:
     76c:	e92d4800 	push	{fp, lr}
     770:	e28db004 	add	fp, sp, #4
     774:	e24dd018 	sub	sp, sp, #24
     778:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     77c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     780:	e3a03000 	mov	r3, #0
     784:	e50b3008 	str	r3, [fp, #-8]
     788:	ea000016 	b	7e8 <gets+0x7c>
     78c:	e24b300d 	sub	r3, fp, #13
     790:	e3a02001 	mov	r2, #1
     794:	e1a01003 	mov	r1, r3
     798:	e3a00000 	mov	r0, #0
     79c:	eb00018c 	bl	dd4 <read>
     7a0:	e50b000c 	str	r0, [fp, #-12]
     7a4:	e51b300c 	ldr	r3, [fp, #-12]
     7a8:	e3530000 	cmp	r3, #0
     7ac:	da000013 	ble	800 <gets+0x94>
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e2832001 	add	r2, r3, #1
     7b8:	e50b2008 	str	r2, [fp, #-8]
     7bc:	e1a02003 	mov	r2, r3
     7c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7c4:	e0833002 	add	r3, r3, r2
     7c8:	e55b200d 	ldrb	r2, [fp, #-13]
     7cc:	e5c32000 	strb	r2, [r3]
     7d0:	e55b300d 	ldrb	r3, [fp, #-13]
     7d4:	e353000a 	cmp	r3, #10
     7d8:	0a000009 	beq	804 <gets+0x98>
     7dc:	e55b300d 	ldrb	r3, [fp, #-13]
     7e0:	e353000d 	cmp	r3, #13
     7e4:	0a000006 	beq	804 <gets+0x98>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e2833001 	add	r3, r3, #1
     7f0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7f4:	e1520003 	cmp	r2, r3
     7f8:	caffffe3 	bgt	78c <gets+0x20>
     7fc:	ea000000 	b	804 <gets+0x98>
     800:	e1a00000 	nop			@ (mov r0, r0)
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     80c:	e0823003 	add	r3, r2, r3
     810:	e3a02000 	mov	r2, #0
     814:	e5c32000 	strb	r2, [r3]
     818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     81c:	e1a00003 	mov	r0, r3
     820:	e24bd004 	sub	sp, fp, #4
     824:	e8bd8800 	pop	{fp, pc}

00000828 <stat>:
     828:	e92d4800 	push	{fp, lr}
     82c:	e28db004 	add	fp, sp, #4
     830:	e24dd010 	sub	sp, sp, #16
     834:	e50b0010 	str	r0, [fp, #-16]
     838:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     83c:	e3a01000 	mov	r1, #0
     840:	e51b0010 	ldr	r0, [fp, #-16]
     844:	eb00018f 	bl	e88 <open>
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e3530000 	cmp	r3, #0
     854:	aa000001 	bge	860 <stat+0x38>
     858:	e3e03000 	mvn	r3, #0
     85c:	ea000006 	b	87c <stat+0x54>
     860:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     864:	e51b0008 	ldr	r0, [fp, #-8]
     868:	eb0001a1 	bl	ef4 <fstat>
     86c:	e50b000c 	str	r0, [fp, #-12]
     870:	e51b0008 	ldr	r0, [fp, #-8]
     874:	eb000168 	bl	e1c <close>
     878:	e51b300c 	ldr	r3, [fp, #-12]
     87c:	e1a00003 	mov	r0, r3
     880:	e24bd004 	sub	sp, fp, #4
     884:	e8bd8800 	pop	{fp, pc}

00000888 <atoi>:
     888:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     88c:	e28db000 	add	fp, sp, #0
     890:	e24dd014 	sub	sp, sp, #20
     894:	e50b0010 	str	r0, [fp, #-16]
     898:	e3a03000 	mov	r3, #0
     89c:	e50b3008 	str	r3, [fp, #-8]
     8a0:	ea00000c 	b	8d8 <atoi+0x50>
     8a4:	e51b2008 	ldr	r2, [fp, #-8]
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a03103 	lsl	r3, r3, #2
     8b0:	e0833002 	add	r3, r3, r2
     8b4:	e1a03083 	lsl	r3, r3, #1
     8b8:	e1a01003 	mov	r1, r3
     8bc:	e51b3010 	ldr	r3, [fp, #-16]
     8c0:	e2832001 	add	r2, r3, #1
     8c4:	e50b2010 	str	r2, [fp, #-16]
     8c8:	e5d33000 	ldrb	r3, [r3]
     8cc:	e0813003 	add	r3, r1, r3
     8d0:	e2433030 	sub	r3, r3, #48	@ 0x30
     8d4:	e50b3008 	str	r3, [fp, #-8]
     8d8:	e51b3010 	ldr	r3, [fp, #-16]
     8dc:	e5d33000 	ldrb	r3, [r3]
     8e0:	e353002f 	cmp	r3, #47	@ 0x2f
     8e4:	9a000003 	bls	8f8 <atoi+0x70>
     8e8:	e51b3010 	ldr	r3, [fp, #-16]
     8ec:	e5d33000 	ldrb	r3, [r3]
     8f0:	e3530039 	cmp	r3, #57	@ 0x39
     8f4:	9affffea 	bls	8a4 <atoi+0x1c>
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e1a00003 	mov	r0, r3
     900:	e28bd000 	add	sp, fp, #0
     904:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <memmove>:
     90c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     910:	e28db000 	add	fp, sp, #0
     914:	e24dd01c 	sub	sp, sp, #28
     918:	e50b0010 	str	r0, [fp, #-16]
     91c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     920:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     924:	e51b3010 	ldr	r3, [fp, #-16]
     928:	e50b3008 	str	r3, [fp, #-8]
     92c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     930:	e50b300c 	str	r3, [fp, #-12]
     934:	ea000007 	b	958 <memmove+0x4c>
     938:	e51b200c 	ldr	r2, [fp, #-12]
     93c:	e2823001 	add	r3, r2, #1
     940:	e50b300c 	str	r3, [fp, #-12]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2831001 	add	r1, r3, #1
     94c:	e50b1008 	str	r1, [fp, #-8]
     950:	e5d22000 	ldrb	r2, [r2]
     954:	e5c32000 	strb	r2, [r3]
     958:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     95c:	e2432001 	sub	r2, r3, #1
     960:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     964:	e3530000 	cmp	r3, #0
     968:	cafffff2 	bgt	938 <memmove+0x2c>
     96c:	e51b3010 	ldr	r3, [fp, #-16]
     970:	e1a00003 	mov	r0, r3
     974:	e28bd000 	add	sp, fp, #0
     978:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <initiateLock>:
     980:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     984:	e28db000 	add	fp, sp, #0
     988:	e24dd00c 	sub	sp, sp, #12
     98c:	e50b0008 	str	r0, [fp, #-8]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e3a02000 	mov	r2, #0
     998:	e5832000 	str	r2, [r3]
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e3a02001 	mov	r2, #1
     9a4:	e5832004 	str	r2, [r3, #4]
     9a8:	e1a00000 	nop			@ (mov r0, r0)
     9ac:	e28bd000 	add	sp, fp, #0
     9b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <acquireLock>:
     9b8:	e92d4800 	push	{fp, lr}
     9bc:	e28db004 	add	fp, sp, #4
     9c0:	e24dd008 	sub	sp, sp, #8
     9c4:	e50b0008 	str	r0, [fp, #-8]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e5933000 	ldr	r3, [r3]
     9d0:	e3730001 	cmn	r3, #1
     9d4:	1a000002 	bne	9e4 <acquireLock+0x2c>
     9d8:	e59f1034 	ldr	r1, [pc, #52]	@ a14 <acquireLock+0x5c>
     9dc:	e3a00002 	mov	r0, #2
     9e0:	eb000280 	bl	13e8 <printf>
     9e4:	e1a00000 	nop			@ (mov r0, r0)
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e3a01001 	mov	r1, #1
     9f0:	e1a00003 	mov	r0, r3
     9f4:	ebfffe98 	bl	45c <xchg>
     9f8:	e1a03000 	mov	r3, r0
     9fc:	e3530000 	cmp	r3, #0
     a00:	1afffff8 	bne	9e8 <acquireLock+0x30>
     a04:	e1a00000 	nop			@ (mov r0, r0)
     a08:	e1a00000 	nop			@ (mov r0, r0)
     a0c:	e24bd004 	sub	sp, fp, #4
     a10:	e8bd8800 	pop	{fp, pc}
     a14:	00001adc 	.word	0x00001adc

00000a18 <releaseLock>:
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd008 	sub	sp, sp, #8
     a24:	e50b0008 	str	r0, [fp, #-8]
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e5933000 	ldr	r3, [r3]
     a30:	e3530001 	cmp	r3, #1
     a34:	0a000002 	beq	a44 <releaseLock+0x2c>
     a38:	e59f1020 	ldr	r1, [pc, #32]	@ a60 <releaseLock+0x48>
     a3c:	e3a00002 	mov	r0, #2
     a40:	eb000268 	bl	13e8 <printf>
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e3a01000 	mov	r1, #0
     a4c:	e1a00003 	mov	r0, r3
     a50:	ebfffe81 	bl	45c <xchg>
     a54:	e1a00000 	nop			@ (mov r0, r0)
     a58:	e24bd004 	sub	sp, fp, #4
     a5c:	e8bd8800 	pop	{fp, pc}
     a60:	00001b0c 	.word	0x00001b0c

00000a64 <initiateCondVar>:
     a64:	e92d4800 	push	{fp, lr}
     a68:	e28db004 	add	fp, sp, #4
     a6c:	e24dd008 	sub	sp, sp, #8
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e5933004 	ldr	r3, [r3, #4]
     a7c:	e3530000 	cmp	r3, #0
     a80:	1a000007 	bne	aa4 <initiateCondVar+0x40>
     a84:	eb0001e0 	bl	120c <getChannel>
     a88:	e1a02000 	mov	r2, r0
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5832000 	str	r2, [r3]
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e3a02001 	mov	r2, #1
     a9c:	e5832004 	str	r2, [r3, #4]
     aa0:	ea000000 	b	aa8 <initiateCondVar+0x44>
     aa4:	e1a00000 	nop			@ (mov r0, r0)
     aa8:	e24bd004 	sub	sp, fp, #4
     aac:	e8bd8800 	pop	{fp, pc}

00000ab0 <condWait>:
     ab0:	e92d4800 	push	{fp, lr}
     ab4:	e28db004 	add	fp, sp, #4
     ab8:	e24dd008 	sub	sp, sp, #8
     abc:	e50b0008 	str	r0, [fp, #-8]
     ac0:	e50b100c 	str	r1, [fp, #-12]
     ac4:	e51b3008 	ldr	r3, [fp, #-8]
     ac8:	e5933004 	ldr	r3, [r3, #4]
     acc:	e3530000 	cmp	r3, #0
     ad0:	1a000003 	bne	ae4 <condWait+0x34>
     ad4:	e59f1050 	ldr	r1, [pc, #80]	@ b2c <condWait+0x7c>
     ad8:	e3a00002 	mov	r0, #2
     adc:	eb000241 	bl	13e8 <printf>
     ae0:	ea00000f 	b	b24 <condWait+0x74>
     ae4:	e51b300c 	ldr	r3, [fp, #-12]
     ae8:	e5933004 	ldr	r3, [r3, #4]
     aec:	e3530000 	cmp	r3, #0
     af0:	1a000003 	bne	b04 <condWait+0x54>
     af4:	e59f1034 	ldr	r1, [pc, #52]	@ b30 <condWait+0x80>
     af8:	e3a00002 	mov	r0, #2
     afc:	eb000239 	bl	13e8 <printf>
     b00:	ea000007 	b	b24 <condWait+0x74>
     b04:	e51b000c 	ldr	r0, [fp, #-12]
     b08:	ebffffc2 	bl	a18 <releaseLock>
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e5933000 	ldr	r3, [r3]
     b14:	e1a00003 	mov	r0, r3
     b18:	eb0001b2 	bl	11e8 <sleepChan>
     b1c:	e51b000c 	ldr	r0, [fp, #-12]
     b20:	ebffffa4 	bl	9b8 <acquireLock>
     b24:	e24bd004 	sub	sp, fp, #4
     b28:	e8bd8800 	pop	{fp, pc}
     b2c:	00001b48 	.word	0x00001b48
     b30:	00001b6c 	.word	0x00001b6c

00000b34 <broadcast>:
     b34:	e92d4800 	push	{fp, lr}
     b38:	e28db004 	add	fp, sp, #4
     b3c:	e24dd008 	sub	sp, sp, #8
     b40:	e50b0008 	str	r0, [fp, #-8]
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e5933004 	ldr	r3, [r3, #4]
     b4c:	e3530000 	cmp	r3, #0
     b50:	1a000003 	bne	b64 <broadcast+0x30>
     b54:	e59f1020 	ldr	r1, [pc, #32]	@ b7c <broadcast+0x48>
     b58:	e3a00002 	mov	r0, #2
     b5c:	eb000221 	bl	13e8 <printf>
     b60:	ea000003 	b	b74 <broadcast+0x40>
     b64:	e51b3008 	ldr	r3, [fp, #-8]
     b68:	e5933000 	ldr	r3, [r3]
     b6c:	e1a00003 	mov	r0, r3
     b70:	eb0001ae 	bl	1230 <sigChan>
     b74:	e24bd004 	sub	sp, fp, #4
     b78:	e8bd8800 	pop	{fp, pc}
     b7c:	00001b48 	.word	0x00001b48

00000b80 <signal>:
     b80:	e92d4800 	push	{fp, lr}
     b84:	e28db004 	add	fp, sp, #4
     b88:	e24dd008 	sub	sp, sp, #8
     b8c:	e50b0008 	str	r0, [fp, #-8]
     b90:	e51b3008 	ldr	r3, [fp, #-8]
     b94:	e5933004 	ldr	r3, [r3, #4]
     b98:	e3530000 	cmp	r3, #0
     b9c:	1a000003 	bne	bb0 <signal+0x30>
     ba0:	e59f1020 	ldr	r1, [pc, #32]	@ bc8 <signal+0x48>
     ba4:	e3a00002 	mov	r0, #2
     ba8:	eb00020e 	bl	13e8 <printf>
     bac:	ea000003 	b	bc0 <signal+0x40>
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e5933000 	ldr	r3, [r3]
     bb8:	e1a00003 	mov	r0, r3
     bbc:	eb0001a4 	bl	1254 <sigOneChan>
     bc0:	e24bd004 	sub	sp, fp, #4
     bc4:	e8bd8800 	pop	{fp, pc}
     bc8:	00001b48 	.word	0x00001b48

00000bcc <semInit>:
     bcc:	e92d4800 	push	{fp, lr}
     bd0:	e28db004 	add	fp, sp, #4
     bd4:	e24dd008 	sub	sp, sp, #8
     bd8:	e50b0008 	str	r0, [fp, #-8]
     bdc:	e50b100c 	str	r1, [fp, #-12]
     be0:	e51b3008 	ldr	r3, [fp, #-8]
     be4:	e51b200c 	ldr	r2, [fp, #-12]
     be8:	e5832000 	str	r2, [r3]
     bec:	e51b3008 	ldr	r3, [fp, #-8]
     bf0:	e2833004 	add	r3, r3, #4
     bf4:	e1a00003 	mov	r0, r3
     bf8:	ebffff60 	bl	980 <initiateLock>
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e283300c 	add	r3, r3, #12
     c04:	e1a00003 	mov	r0, r3
     c08:	ebffff95 	bl	a64 <initiateCondVar>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e3a02001 	mov	r2, #1
     c14:	e5832014 	str	r2, [r3, #20]
     c18:	e1a00000 	nop			@ (mov r0, r0)
     c1c:	e24bd004 	sub	sp, fp, #4
     c20:	e8bd8800 	pop	{fp, pc}

00000c24 <semDown>:
     c24:	e92d4800 	push	{fp, lr}
     c28:	e28db004 	add	fp, sp, #4
     c2c:	e24dd008 	sub	sp, sp, #8
     c30:	e50b0008 	str	r0, [fp, #-8]
     c34:	e51b3008 	ldr	r3, [fp, #-8]
     c38:	e5933014 	ldr	r3, [r3, #20]
     c3c:	e3530000 	cmp	r3, #0
     c40:	1a000003 	bne	c54 <semDown+0x30>
     c44:	e59f1074 	ldr	r1, [pc, #116]	@ cc0 <semDown+0x9c>
     c48:	e3a00002 	mov	r0, #2
     c4c:	eb0001e5 	bl	13e8 <printf>
     c50:	ea000018 	b	cb8 <semDown+0x94>
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e2833004 	add	r3, r3, #4
     c5c:	e1a00003 	mov	r0, r3
     c60:	ebffff54 	bl	9b8 <acquireLock>
     c64:	ea000006 	b	c84 <semDown+0x60>
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e283200c 	add	r2, r3, #12
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e2833004 	add	r3, r3, #4
     c78:	e1a01003 	mov	r1, r3
     c7c:	e1a00002 	mov	r0, r2
     c80:	ebffff8a 	bl	ab0 <condWait>
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e3530000 	cmp	r3, #0
     c90:	0afffff4 	beq	c68 <semDown+0x44>
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e2432001 	sub	r2, r3, #1
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5832000 	str	r2, [r3]
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e2833004 	add	r3, r3, #4
     cb0:	e1a00003 	mov	r0, r3
     cb4:	ebffff57 	bl	a18 <releaseLock>
     cb8:	e24bd004 	sub	sp, fp, #4
     cbc:	e8bd8800 	pop	{fp, pc}
     cc0:	00001b8c 	.word	0x00001b8c

00000cc4 <semUp>:
     cc4:	e92d4800 	push	{fp, lr}
     cc8:	e28db004 	add	fp, sp, #4
     ccc:	e24dd008 	sub	sp, sp, #8
     cd0:	e50b0008 	str	r0, [fp, #-8]
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933014 	ldr	r3, [r3, #20]
     cdc:	e3530000 	cmp	r3, #0
     ce0:	1a000003 	bne	cf4 <semUp+0x30>
     ce4:	e59f1054 	ldr	r1, [pc, #84]	@ d40 <semUp+0x7c>
     ce8:	e3a00002 	mov	r0, #2
     cec:	eb0001bd 	bl	13e8 <printf>
     cf0:	ea000010 	b	d38 <semUp+0x74>
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e2833004 	add	r3, r3, #4
     cfc:	e1a00003 	mov	r0, r3
     d00:	ebffff2c 	bl	9b8 <acquireLock>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e2832001 	add	r2, r3, #1
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5832000 	str	r2, [r3]
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e283300c 	add	r3, r3, #12
     d20:	e1a00003 	mov	r0, r3
     d24:	ebffff95 	bl	b80 <signal>
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e2833004 	add	r3, r3, #4
     d30:	e1a00003 	mov	r0, r3
     d34:	ebffff37 	bl	a18 <releaseLock>
     d38:	e24bd004 	sub	sp, fp, #4
     d3c:	e8bd8800 	pop	{fp, pc}
     d40:	00001b8c 	.word	0x00001b8c

00000d44 <fork>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a00001 	mov	r0, #1
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <exit>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00002 	mov	r0, #2
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <wait>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00003 	mov	r0, #3
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <pipe>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00004 	mov	r0, #4
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <read>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00005 	mov	r0, #5
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <write>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00010 	mov	r0, #16
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <close>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00015 	mov	r0, #21
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <kill>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00006 	mov	r0, #6
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <exec>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00007 	mov	r0, #7
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <open>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a0000f 	mov	r0, #15
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <mknod>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a00011 	mov	r0, #17
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <unlink>:
     ed0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed4:	e1a04003 	mov	r4, r3
     ed8:	e1a03002 	mov	r3, r2
     edc:	e1a02001 	mov	r2, r1
     ee0:	e1a01000 	mov	r1, r0
     ee4:	e3a00012 	mov	r0, #18
     ee8:	ef000000 	svc	0x00000000
     eec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef0:	e12fff1e 	bx	lr

00000ef4 <fstat>:
     ef4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef8:	e1a04003 	mov	r4, r3
     efc:	e1a03002 	mov	r3, r2
     f00:	e1a02001 	mov	r2, r1
     f04:	e1a01000 	mov	r1, r0
     f08:	e3a00008 	mov	r0, #8
     f0c:	ef000000 	svc	0x00000000
     f10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f14:	e12fff1e 	bx	lr

00000f18 <link>:
     f18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f1c:	e1a04003 	mov	r4, r3
     f20:	e1a03002 	mov	r3, r2
     f24:	e1a02001 	mov	r2, r1
     f28:	e1a01000 	mov	r1, r0
     f2c:	e3a00013 	mov	r0, #19
     f30:	ef000000 	svc	0x00000000
     f34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f38:	e12fff1e 	bx	lr

00000f3c <mkdir>:
     f3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f40:	e1a04003 	mov	r4, r3
     f44:	e1a03002 	mov	r3, r2
     f48:	e1a02001 	mov	r2, r1
     f4c:	e1a01000 	mov	r1, r0
     f50:	e3a00014 	mov	r0, #20
     f54:	ef000000 	svc	0x00000000
     f58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f5c:	e12fff1e 	bx	lr

00000f60 <chdir>:
     f60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f64:	e1a04003 	mov	r4, r3
     f68:	e1a03002 	mov	r3, r2
     f6c:	e1a02001 	mov	r2, r1
     f70:	e1a01000 	mov	r1, r0
     f74:	e3a00009 	mov	r0, #9
     f78:	ef000000 	svc	0x00000000
     f7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f80:	e12fff1e 	bx	lr

00000f84 <dup>:
     f84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f88:	e1a04003 	mov	r4, r3
     f8c:	e1a03002 	mov	r3, r2
     f90:	e1a02001 	mov	r2, r1
     f94:	e1a01000 	mov	r1, r0
     f98:	e3a0000a 	mov	r0, #10
     f9c:	ef000000 	svc	0x00000000
     fa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa4:	e12fff1e 	bx	lr

00000fa8 <getpid>:
     fa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fac:	e1a04003 	mov	r4, r3
     fb0:	e1a03002 	mov	r3, r2
     fb4:	e1a02001 	mov	r2, r1
     fb8:	e1a01000 	mov	r1, r0
     fbc:	e3a0000b 	mov	r0, #11
     fc0:	ef000000 	svc	0x00000000
     fc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc8:	e12fff1e 	bx	lr

00000fcc <sbrk>:
     fcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd0:	e1a04003 	mov	r4, r3
     fd4:	e1a03002 	mov	r3, r2
     fd8:	e1a02001 	mov	r2, r1
     fdc:	e1a01000 	mov	r1, r0
     fe0:	e3a0000c 	mov	r0, #12
     fe4:	ef000000 	svc	0x00000000
     fe8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fec:	e12fff1e 	bx	lr

00000ff0 <sleep>:
     ff0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff4:	e1a04003 	mov	r4, r3
     ff8:	e1a03002 	mov	r3, r2
     ffc:	e1a02001 	mov	r2, r1
    1000:	e1a01000 	mov	r1, r0
    1004:	e3a0000d 	mov	r0, #13
    1008:	ef000000 	svc	0x00000000
    100c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1010:	e12fff1e 	bx	lr

00001014 <uptime>:
    1014:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1018:	e1a04003 	mov	r4, r3
    101c:	e1a03002 	mov	r3, r2
    1020:	e1a02001 	mov	r2, r1
    1024:	e1a01000 	mov	r1, r0
    1028:	e3a0000e 	mov	r0, #14
    102c:	ef000000 	svc	0x00000000
    1030:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1034:	e12fff1e 	bx	lr

00001038 <disproc>:
    1038:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    103c:	e1a04003 	mov	r4, r3
    1040:	e1a03002 	mov	r3, r2
    1044:	e1a02001 	mov	r2, r1
    1048:	e1a01000 	mov	r1, r0
    104c:	e3a00016 	mov	r0, #22
    1050:	ef000000 	svc	0x00000000
    1054:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <srand>:
    105c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1060:	e1a04003 	mov	r4, r3
    1064:	e1a03002 	mov	r3, r2
    1068:	e1a02001 	mov	r2, r1
    106c:	e1a01000 	mov	r1, r0
    1070:	e3a00017 	mov	r0, #23
    1074:	ef000000 	svc	0x00000000
    1078:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    107c:	e12fff1e 	bx	lr

00001080 <setticket>:
    1080:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1084:	e1a04003 	mov	r4, r3
    1088:	e1a03002 	mov	r3, r2
    108c:	e1a02001 	mov	r2, r1
    1090:	e1a01000 	mov	r1, r0
    1094:	e3a00018 	mov	r0, #24
    1098:	ef000000 	svc	0x00000000
    109c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10a0:	e12fff1e 	bx	lr

000010a4 <getpinfo>:
    10a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a8:	e1a04003 	mov	r4, r3
    10ac:	e1a03002 	mov	r3, r2
    10b0:	e1a02001 	mov	r2, r1
    10b4:	e1a01000 	mov	r1, r0
    10b8:	e3a00019 	mov	r0, #25
    10bc:	ef000000 	svc	0x00000000
    10c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c4:	e12fff1e 	bx	lr

000010c8 <printPages>:
    10c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10cc:	e1a04003 	mov	r4, r3
    10d0:	e1a03002 	mov	r3, r2
    10d4:	e1a02001 	mov	r2, r1
    10d8:	e1a01000 	mov	r1, r0
    10dc:	e3a0001a 	mov	r0, #26
    10e0:	ef000000 	svc	0x00000000
    10e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e8:	e12fff1e 	bx	lr

000010ec <kpt>:
    10ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10f0:	e1a04003 	mov	r4, r3
    10f4:	e1a03002 	mov	r3, r2
    10f8:	e1a02001 	mov	r2, r1
    10fc:	e1a01000 	mov	r1, r0
    1100:	e3a0001b 	mov	r0, #27
    1104:	ef000000 	svc	0x00000000
    1108:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    110c:	e12fff1e 	bx	lr

00001110 <thread_create>:
    1110:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1114:	e1a04003 	mov	r4, r3
    1118:	e1a03002 	mov	r3, r2
    111c:	e1a02001 	mov	r2, r1
    1120:	e1a01000 	mov	r1, r0
    1124:	e3a0001c 	mov	r0, #28
    1128:	ef000000 	svc	0x00000000
    112c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1130:	e12fff1e 	bx	lr

00001134 <thread_exit>:
    1134:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1138:	e1a04003 	mov	r4, r3
    113c:	e1a03002 	mov	r3, r2
    1140:	e1a02001 	mov	r2, r1
    1144:	e1a01000 	mov	r1, r0
    1148:	e3a0001d 	mov	r0, #29
    114c:	ef000000 	svc	0x00000000
    1150:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1154:	e12fff1e 	bx	lr

00001158 <thread_join>:
    1158:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    115c:	e1a04003 	mov	r4, r3
    1160:	e1a03002 	mov	r3, r2
    1164:	e1a02001 	mov	r2, r1
    1168:	e1a01000 	mov	r1, r0
    116c:	e3a0001e 	mov	r0, #30
    1170:	ef000000 	svc	0x00000000
    1174:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1178:	e12fff1e 	bx	lr

0000117c <waitpid>:
    117c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1180:	e1a04003 	mov	r4, r3
    1184:	e1a03002 	mov	r3, r2
    1188:	e1a02001 	mov	r2, r1
    118c:	e1a01000 	mov	r1, r0
    1190:	e3a0001f 	mov	r0, #31
    1194:	ef000000 	svc	0x00000000
    1198:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    119c:	e12fff1e 	bx	lr

000011a0 <barrier_init>:
    11a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11a4:	e1a04003 	mov	r4, r3
    11a8:	e1a03002 	mov	r3, r2
    11ac:	e1a02001 	mov	r2, r1
    11b0:	e1a01000 	mov	r1, r0
    11b4:	e3a00020 	mov	r0, #32
    11b8:	ef000000 	svc	0x00000000
    11bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11c0:	e12fff1e 	bx	lr

000011c4 <barrier_check>:
    11c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11c8:	e1a04003 	mov	r4, r3
    11cc:	e1a03002 	mov	r3, r2
    11d0:	e1a02001 	mov	r2, r1
    11d4:	e1a01000 	mov	r1, r0
    11d8:	e3a00021 	mov	r0, #33	@ 0x21
    11dc:	ef000000 	svc	0x00000000
    11e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11e4:	e12fff1e 	bx	lr

000011e8 <sleepChan>:
    11e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11ec:	e1a04003 	mov	r4, r3
    11f0:	e1a03002 	mov	r3, r2
    11f4:	e1a02001 	mov	r2, r1
    11f8:	e1a01000 	mov	r1, r0
    11fc:	e3a00022 	mov	r0, #34	@ 0x22
    1200:	ef000000 	svc	0x00000000
    1204:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1208:	e12fff1e 	bx	lr

0000120c <getChannel>:
    120c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1210:	e1a04003 	mov	r4, r3
    1214:	e1a03002 	mov	r3, r2
    1218:	e1a02001 	mov	r2, r1
    121c:	e1a01000 	mov	r1, r0
    1220:	e3a00023 	mov	r0, #35	@ 0x23
    1224:	ef000000 	svc	0x00000000
    1228:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    122c:	e12fff1e 	bx	lr

00001230 <sigChan>:
    1230:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1234:	e1a04003 	mov	r4, r3
    1238:	e1a03002 	mov	r3, r2
    123c:	e1a02001 	mov	r2, r1
    1240:	e1a01000 	mov	r1, r0
    1244:	e3a00024 	mov	r0, #36	@ 0x24
    1248:	ef000000 	svc	0x00000000
    124c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1250:	e12fff1e 	bx	lr

00001254 <sigOneChan>:
    1254:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1258:	e1a04003 	mov	r4, r3
    125c:	e1a03002 	mov	r3, r2
    1260:	e1a02001 	mov	r2, r1
    1264:	e1a01000 	mov	r1, r0
    1268:	e3a00025 	mov	r0, #37	@ 0x25
    126c:	ef000000 	svc	0x00000000
    1270:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1274:	e12fff1e 	bx	lr

00001278 <putc>:
    1278:	e92d4800 	push	{fp, lr}
    127c:	e28db004 	add	fp, sp, #4
    1280:	e24dd008 	sub	sp, sp, #8
    1284:	e50b0008 	str	r0, [fp, #-8]
    1288:	e1a03001 	mov	r3, r1
    128c:	e54b3009 	strb	r3, [fp, #-9]
    1290:	e24b3009 	sub	r3, fp, #9
    1294:	e3a02001 	mov	r2, #1
    1298:	e1a01003 	mov	r1, r3
    129c:	e51b0008 	ldr	r0, [fp, #-8]
    12a0:	ebfffed4 	bl	df8 <write>
    12a4:	e1a00000 	nop			@ (mov r0, r0)
    12a8:	e24bd004 	sub	sp, fp, #4
    12ac:	e8bd8800 	pop	{fp, pc}

000012b0 <printint>:
    12b0:	e92d4800 	push	{fp, lr}
    12b4:	e28db004 	add	fp, sp, #4
    12b8:	e24dd030 	sub	sp, sp, #48	@ 0x30
    12bc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    12c0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    12c4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    12c8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    12cc:	e3a03000 	mov	r3, #0
    12d0:	e50b300c 	str	r3, [fp, #-12]
    12d4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    12d8:	e3530000 	cmp	r3, #0
    12dc:	0a000008 	beq	1304 <printint+0x54>
    12e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    12e4:	e3530000 	cmp	r3, #0
    12e8:	aa000005 	bge	1304 <printint+0x54>
    12ec:	e3a03001 	mov	r3, #1
    12f0:	e50b300c 	str	r3, [fp, #-12]
    12f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    12f8:	e2633000 	rsb	r3, r3, #0
    12fc:	e50b3010 	str	r3, [fp, #-16]
    1300:	ea000001 	b	130c <printint+0x5c>
    1304:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1308:	e50b3010 	str	r3, [fp, #-16]
    130c:	e3a03000 	mov	r3, #0
    1310:	e50b3008 	str	r3, [fp, #-8]
    1314:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1318:	e51b3010 	ldr	r3, [fp, #-16]
    131c:	e1a01002 	mov	r1, r2
    1320:	e1a00003 	mov	r0, r3
    1324:	eb0001d5 	bl	1a80 <__aeabi_uidivmod>
    1328:	e1a03001 	mov	r3, r1
    132c:	e1a01003 	mov	r1, r3
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e2832001 	add	r2, r3, #1
    1338:	e50b2008 	str	r2, [fp, #-8]
    133c:	e59f20a0 	ldr	r2, [pc, #160]	@ 13e4 <printint+0x134>
    1340:	e7d22001 	ldrb	r2, [r2, r1]
    1344:	e2433004 	sub	r3, r3, #4
    1348:	e083300b 	add	r3, r3, fp
    134c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1350:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1354:	e1a01003 	mov	r1, r3
    1358:	e51b0010 	ldr	r0, [fp, #-16]
    135c:	eb00018a 	bl	198c <__udivsi3>
    1360:	e1a03000 	mov	r3, r0
    1364:	e50b3010 	str	r3, [fp, #-16]
    1368:	e51b3010 	ldr	r3, [fp, #-16]
    136c:	e3530000 	cmp	r3, #0
    1370:	1affffe7 	bne	1314 <printint+0x64>
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e3530000 	cmp	r3, #0
    137c:	0a00000e 	beq	13bc <printint+0x10c>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e2832001 	add	r2, r3, #1
    1388:	e50b2008 	str	r2, [fp, #-8]
    138c:	e2433004 	sub	r3, r3, #4
    1390:	e083300b 	add	r3, r3, fp
    1394:	e3a0202d 	mov	r2, #45	@ 0x2d
    1398:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    139c:	ea000006 	b	13bc <printint+0x10c>
    13a0:	e24b2020 	sub	r2, fp, #32
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e0823003 	add	r3, r2, r3
    13ac:	e5d33000 	ldrb	r3, [r3]
    13b0:	e1a01003 	mov	r1, r3
    13b4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    13b8:	ebffffae 	bl	1278 <putc>
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e2433001 	sub	r3, r3, #1
    13c4:	e50b3008 	str	r3, [fp, #-8]
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e3530000 	cmp	r3, #0
    13d0:	aafffff2 	bge	13a0 <printint+0xf0>
    13d4:	e1a00000 	nop			@ (mov r0, r0)
    13d8:	e1a00000 	nop			@ (mov r0, r0)
    13dc:	e24bd004 	sub	sp, fp, #4
    13e0:	e8bd8800 	pop	{fp, pc}
    13e4:	00001bb8 	.word	0x00001bb8

000013e8 <printf>:
    13e8:	e92d000e 	push	{r1, r2, r3}
    13ec:	e92d4800 	push	{fp, lr}
    13f0:	e28db004 	add	fp, sp, #4
    13f4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    13f8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    13fc:	e3a03000 	mov	r3, #0
    1400:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1404:	e28b3008 	add	r3, fp, #8
    1408:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    140c:	e3a03000 	mov	r3, #0
    1410:	e50b3010 	str	r3, [fp, #-16]
    1414:	ea000074 	b	15ec <printf+0x204>
    1418:	e59b2004 	ldr	r2, [fp, #4]
    141c:	e51b3010 	ldr	r3, [fp, #-16]
    1420:	e0823003 	add	r3, r2, r3
    1424:	e5d33000 	ldrb	r3, [r3]
    1428:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    142c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1430:	e3530000 	cmp	r3, #0
    1434:	1a00000b 	bne	1468 <printf+0x80>
    1438:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    143c:	e3530025 	cmp	r3, #37	@ 0x25
    1440:	1a000002 	bne	1450 <printf+0x68>
    1444:	e3a03025 	mov	r3, #37	@ 0x25
    1448:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    144c:	ea000063 	b	15e0 <printf+0x1f8>
    1450:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1454:	e6ef3073 	uxtb	r3, r3
    1458:	e1a01003 	mov	r1, r3
    145c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1460:	ebffff84 	bl	1278 <putc>
    1464:	ea00005d 	b	15e0 <printf+0x1f8>
    1468:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    146c:	e3530025 	cmp	r3, #37	@ 0x25
    1470:	1a00005a 	bne	15e0 <printf+0x1f8>
    1474:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1478:	e3530064 	cmp	r3, #100	@ 0x64
    147c:	1a00000a 	bne	14ac <printf+0xc4>
    1480:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e1a01003 	mov	r1, r3
    148c:	e3a03001 	mov	r3, #1
    1490:	e3a0200a 	mov	r2, #10
    1494:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1498:	ebffff84 	bl	12b0 <printint>
    149c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a0:	e2833004 	add	r3, r3, #4
    14a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14a8:	ea00004a 	b	15d8 <printf+0x1f0>
    14ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14b0:	e3530078 	cmp	r3, #120	@ 0x78
    14b4:	0a000002 	beq	14c4 <printf+0xdc>
    14b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14bc:	e3530070 	cmp	r3, #112	@ 0x70
    14c0:	1a00000a 	bne	14f0 <printf+0x108>
    14c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e1a01003 	mov	r1, r3
    14d0:	e3a03000 	mov	r3, #0
    14d4:	e3a02010 	mov	r2, #16
    14d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14dc:	ebffff73 	bl	12b0 <printint>
    14e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14e4:	e2833004 	add	r3, r3, #4
    14e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14ec:	ea000039 	b	15d8 <printf+0x1f0>
    14f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14f4:	e3530073 	cmp	r3, #115	@ 0x73
    14f8:	1a000018 	bne	1560 <printf+0x178>
    14fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e50b300c 	str	r3, [fp, #-12]
    1508:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    150c:	e2833004 	add	r3, r3, #4
    1510:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e3530000 	cmp	r3, #0
    151c:	1a00000a 	bne	154c <printf+0x164>
    1520:	e59f30f4 	ldr	r3, [pc, #244]	@ 161c <printf+0x234>
    1524:	e50b300c 	str	r3, [fp, #-12]
    1528:	ea000007 	b	154c <printf+0x164>
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5d33000 	ldrb	r3, [r3]
    1534:	e1a01003 	mov	r1, r3
    1538:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    153c:	ebffff4d 	bl	1278 <putc>
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e2833001 	add	r3, r3, #1
    1548:	e50b300c 	str	r3, [fp, #-12]
    154c:	e51b300c 	ldr	r3, [fp, #-12]
    1550:	e5d33000 	ldrb	r3, [r3]
    1554:	e3530000 	cmp	r3, #0
    1558:	1afffff3 	bne	152c <printf+0x144>
    155c:	ea00001d 	b	15d8 <printf+0x1f0>
    1560:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1564:	e3530063 	cmp	r3, #99	@ 0x63
    1568:	1a000009 	bne	1594 <printf+0x1ac>
    156c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1570:	e5933000 	ldr	r3, [r3]
    1574:	e6ef3073 	uxtb	r3, r3
    1578:	e1a01003 	mov	r1, r3
    157c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1580:	ebffff3c 	bl	1278 <putc>
    1584:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1588:	e2833004 	add	r3, r3, #4
    158c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1590:	ea000010 	b	15d8 <printf+0x1f0>
    1594:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1598:	e3530025 	cmp	r3, #37	@ 0x25
    159c:	1a000005 	bne	15b8 <printf+0x1d0>
    15a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    15a4:	e6ef3073 	uxtb	r3, r3
    15a8:	e1a01003 	mov	r1, r3
    15ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    15b0:	ebffff30 	bl	1278 <putc>
    15b4:	ea000007 	b	15d8 <printf+0x1f0>
    15b8:	e3a01025 	mov	r1, #37	@ 0x25
    15bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    15c0:	ebffff2c 	bl	1278 <putc>
    15c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    15c8:	e6ef3073 	uxtb	r3, r3
    15cc:	e1a01003 	mov	r1, r3
    15d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    15d4:	ebffff27 	bl	1278 <putc>
    15d8:	e3a03000 	mov	r3, #0
    15dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    15e0:	e51b3010 	ldr	r3, [fp, #-16]
    15e4:	e2833001 	add	r3, r3, #1
    15e8:	e50b3010 	str	r3, [fp, #-16]
    15ec:	e59b2004 	ldr	r2, [fp, #4]
    15f0:	e51b3010 	ldr	r3, [fp, #-16]
    15f4:	e0823003 	add	r3, r2, r3
    15f8:	e5d33000 	ldrb	r3, [r3]
    15fc:	e3530000 	cmp	r3, #0
    1600:	1affff84 	bne	1418 <printf+0x30>
    1604:	e1a00000 	nop			@ (mov r0, r0)
    1608:	e1a00000 	nop			@ (mov r0, r0)
    160c:	e24bd004 	sub	sp, fp, #4
    1610:	e8bd4800 	pop	{fp, lr}
    1614:	e28dd00c 	add	sp, sp, #12
    1618:	e12fff1e 	bx	lr
    161c:	00001bb0 	.word	0x00001bb0

00001620 <free>:
    1620:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1624:	e28db000 	add	fp, sp, #0
    1628:	e24dd014 	sub	sp, sp, #20
    162c:	e50b0010 	str	r0, [fp, #-16]
    1630:	e51b3010 	ldr	r3, [fp, #-16]
    1634:	e2433008 	sub	r3, r3, #8
    1638:	e50b300c 	str	r3, [fp, #-12]
    163c:	e59f3154 	ldr	r3, [pc, #340]	@ 1798 <free+0x178>
    1640:	e5933000 	ldr	r3, [r3]
    1644:	e50b3008 	str	r3, [fp, #-8]
    1648:	ea000010 	b	1690 <free+0x70>
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e5933000 	ldr	r3, [r3]
    1654:	e51b2008 	ldr	r2, [fp, #-8]
    1658:	e1520003 	cmp	r2, r3
    165c:	3a000008 	bcc	1684 <free+0x64>
    1660:	e51b200c 	ldr	r2, [fp, #-12]
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e1520003 	cmp	r2, r3
    166c:	8a000010 	bhi	16b4 <free+0x94>
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5933000 	ldr	r3, [r3]
    1678:	e51b200c 	ldr	r2, [fp, #-12]
    167c:	e1520003 	cmp	r2, r3
    1680:	3a00000b 	bcc	16b4 <free+0x94>
    1684:	e51b3008 	ldr	r3, [fp, #-8]
    1688:	e5933000 	ldr	r3, [r3]
    168c:	e50b3008 	str	r3, [fp, #-8]
    1690:	e51b200c 	ldr	r2, [fp, #-12]
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e1520003 	cmp	r2, r3
    169c:	9affffea 	bls	164c <free+0x2c>
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e5933000 	ldr	r3, [r3]
    16a8:	e51b200c 	ldr	r2, [fp, #-12]
    16ac:	e1520003 	cmp	r2, r3
    16b0:	2affffe5 	bcs	164c <free+0x2c>
    16b4:	e51b300c 	ldr	r3, [fp, #-12]
    16b8:	e5933004 	ldr	r3, [r3, #4]
    16bc:	e1a03183 	lsl	r3, r3, #3
    16c0:	e51b200c 	ldr	r2, [fp, #-12]
    16c4:	e0822003 	add	r2, r2, r3
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e5933000 	ldr	r3, [r3]
    16d0:	e1520003 	cmp	r2, r3
    16d4:	1a00000d 	bne	1710 <free+0xf0>
    16d8:	e51b300c 	ldr	r3, [fp, #-12]
    16dc:	e5932004 	ldr	r2, [r3, #4]
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e5933000 	ldr	r3, [r3]
    16e8:	e5933004 	ldr	r3, [r3, #4]
    16ec:	e0822003 	add	r2, r2, r3
    16f0:	e51b300c 	ldr	r3, [fp, #-12]
    16f4:	e5832004 	str	r2, [r3, #4]
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e5933000 	ldr	r3, [r3]
    1700:	e5932000 	ldr	r2, [r3]
    1704:	e51b300c 	ldr	r3, [fp, #-12]
    1708:	e5832000 	str	r2, [r3]
    170c:	ea000003 	b	1720 <free+0x100>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5932000 	ldr	r2, [r3]
    1718:	e51b300c 	ldr	r3, [fp, #-12]
    171c:	e5832000 	str	r2, [r3]
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e5933004 	ldr	r3, [r3, #4]
    1728:	e1a03183 	lsl	r3, r3, #3
    172c:	e51b2008 	ldr	r2, [fp, #-8]
    1730:	e0823003 	add	r3, r2, r3
    1734:	e51b200c 	ldr	r2, [fp, #-12]
    1738:	e1520003 	cmp	r2, r3
    173c:	1a00000b 	bne	1770 <free+0x150>
    1740:	e51b3008 	ldr	r3, [fp, #-8]
    1744:	e5932004 	ldr	r2, [r3, #4]
    1748:	e51b300c 	ldr	r3, [fp, #-12]
    174c:	e5933004 	ldr	r3, [r3, #4]
    1750:	e0822003 	add	r2, r2, r3
    1754:	e51b3008 	ldr	r3, [fp, #-8]
    1758:	e5832004 	str	r2, [r3, #4]
    175c:	e51b300c 	ldr	r3, [fp, #-12]
    1760:	e5932000 	ldr	r2, [r3]
    1764:	e51b3008 	ldr	r3, [fp, #-8]
    1768:	e5832000 	str	r2, [r3]
    176c:	ea000002 	b	177c <free+0x15c>
    1770:	e51b3008 	ldr	r3, [fp, #-8]
    1774:	e51b200c 	ldr	r2, [fp, #-12]
    1778:	e5832000 	str	r2, [r3]
    177c:	e59f2014 	ldr	r2, [pc, #20]	@ 1798 <free+0x178>
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e5823000 	str	r3, [r2]
    1788:	e1a00000 	nop			@ (mov r0, r0)
    178c:	e28bd000 	add	sp, fp, #0
    1790:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1794:	e12fff1e 	bx	lr
    1798:	00001fd4 	.word	0x00001fd4

0000179c <morecore>:
    179c:	e92d4800 	push	{fp, lr}
    17a0:	e28db004 	add	fp, sp, #4
    17a4:	e24dd010 	sub	sp, sp, #16
    17a8:	e50b0010 	str	r0, [fp, #-16]
    17ac:	e51b3010 	ldr	r3, [fp, #-16]
    17b0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    17b4:	2a000001 	bcs	17c0 <morecore+0x24>
    17b8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    17bc:	e50b3010 	str	r3, [fp, #-16]
    17c0:	e51b3010 	ldr	r3, [fp, #-16]
    17c4:	e1a03183 	lsl	r3, r3, #3
    17c8:	e1a00003 	mov	r0, r3
    17cc:	ebfffdfe 	bl	fcc <sbrk>
    17d0:	e50b0008 	str	r0, [fp, #-8]
    17d4:	e51b3008 	ldr	r3, [fp, #-8]
    17d8:	e3730001 	cmn	r3, #1
    17dc:	1a000001 	bne	17e8 <morecore+0x4c>
    17e0:	e3a03000 	mov	r3, #0
    17e4:	ea00000a 	b	1814 <morecore+0x78>
    17e8:	e51b3008 	ldr	r3, [fp, #-8]
    17ec:	e50b300c 	str	r3, [fp, #-12]
    17f0:	e51b300c 	ldr	r3, [fp, #-12]
    17f4:	e51b2010 	ldr	r2, [fp, #-16]
    17f8:	e5832004 	str	r2, [r3, #4]
    17fc:	e51b300c 	ldr	r3, [fp, #-12]
    1800:	e2833008 	add	r3, r3, #8
    1804:	e1a00003 	mov	r0, r3
    1808:	ebffff84 	bl	1620 <free>
    180c:	e59f300c 	ldr	r3, [pc, #12]	@ 1820 <morecore+0x84>
    1810:	e5933000 	ldr	r3, [r3]
    1814:	e1a00003 	mov	r0, r3
    1818:	e24bd004 	sub	sp, fp, #4
    181c:	e8bd8800 	pop	{fp, pc}
    1820:	00001fd4 	.word	0x00001fd4

00001824 <malloc>:
    1824:	e92d4800 	push	{fp, lr}
    1828:	e28db004 	add	fp, sp, #4
    182c:	e24dd018 	sub	sp, sp, #24
    1830:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1834:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1838:	e2833007 	add	r3, r3, #7
    183c:	e1a031a3 	lsr	r3, r3, #3
    1840:	e2833001 	add	r3, r3, #1
    1844:	e50b3010 	str	r3, [fp, #-16]
    1848:	e59f3134 	ldr	r3, [pc, #308]	@ 1984 <malloc+0x160>
    184c:	e5933000 	ldr	r3, [r3]
    1850:	e50b300c 	str	r3, [fp, #-12]
    1854:	e51b300c 	ldr	r3, [fp, #-12]
    1858:	e3530000 	cmp	r3, #0
    185c:	1a00000b 	bne	1890 <malloc+0x6c>
    1860:	e59f3120 	ldr	r3, [pc, #288]	@ 1988 <malloc+0x164>
    1864:	e50b300c 	str	r3, [fp, #-12]
    1868:	e59f2114 	ldr	r2, [pc, #276]	@ 1984 <malloc+0x160>
    186c:	e51b300c 	ldr	r3, [fp, #-12]
    1870:	e5823000 	str	r3, [r2]
    1874:	e59f3108 	ldr	r3, [pc, #264]	@ 1984 <malloc+0x160>
    1878:	e5933000 	ldr	r3, [r3]
    187c:	e59f2104 	ldr	r2, [pc, #260]	@ 1988 <malloc+0x164>
    1880:	e5823000 	str	r3, [r2]
    1884:	e59f30fc 	ldr	r3, [pc, #252]	@ 1988 <malloc+0x164>
    1888:	e3a02000 	mov	r2, #0
    188c:	e5832004 	str	r2, [r3, #4]
    1890:	e51b300c 	ldr	r3, [fp, #-12]
    1894:	e5933000 	ldr	r3, [r3]
    1898:	e50b3008 	str	r3, [fp, #-8]
    189c:	e51b3008 	ldr	r3, [fp, #-8]
    18a0:	e5933004 	ldr	r3, [r3, #4]
    18a4:	e51b2010 	ldr	r2, [fp, #-16]
    18a8:	e1520003 	cmp	r2, r3
    18ac:	8a00001e 	bhi	192c <malloc+0x108>
    18b0:	e51b3008 	ldr	r3, [fp, #-8]
    18b4:	e5933004 	ldr	r3, [r3, #4]
    18b8:	e51b2010 	ldr	r2, [fp, #-16]
    18bc:	e1520003 	cmp	r2, r3
    18c0:	1a000004 	bne	18d8 <malloc+0xb4>
    18c4:	e51b3008 	ldr	r3, [fp, #-8]
    18c8:	e5932000 	ldr	r2, [r3]
    18cc:	e51b300c 	ldr	r3, [fp, #-12]
    18d0:	e5832000 	str	r2, [r3]
    18d4:	ea00000e 	b	1914 <malloc+0xf0>
    18d8:	e51b3008 	ldr	r3, [fp, #-8]
    18dc:	e5932004 	ldr	r2, [r3, #4]
    18e0:	e51b3010 	ldr	r3, [fp, #-16]
    18e4:	e0422003 	sub	r2, r2, r3
    18e8:	e51b3008 	ldr	r3, [fp, #-8]
    18ec:	e5832004 	str	r2, [r3, #4]
    18f0:	e51b3008 	ldr	r3, [fp, #-8]
    18f4:	e5933004 	ldr	r3, [r3, #4]
    18f8:	e1a03183 	lsl	r3, r3, #3
    18fc:	e51b2008 	ldr	r2, [fp, #-8]
    1900:	e0823003 	add	r3, r2, r3
    1904:	e50b3008 	str	r3, [fp, #-8]
    1908:	e51b3008 	ldr	r3, [fp, #-8]
    190c:	e51b2010 	ldr	r2, [fp, #-16]
    1910:	e5832004 	str	r2, [r3, #4]
    1914:	e59f2068 	ldr	r2, [pc, #104]	@ 1984 <malloc+0x160>
    1918:	e51b300c 	ldr	r3, [fp, #-12]
    191c:	e5823000 	str	r3, [r2]
    1920:	e51b3008 	ldr	r3, [fp, #-8]
    1924:	e2833008 	add	r3, r3, #8
    1928:	ea000012 	b	1978 <malloc+0x154>
    192c:	e59f3050 	ldr	r3, [pc, #80]	@ 1984 <malloc+0x160>
    1930:	e5933000 	ldr	r3, [r3]
    1934:	e51b2008 	ldr	r2, [fp, #-8]
    1938:	e1520003 	cmp	r2, r3
    193c:	1a000007 	bne	1960 <malloc+0x13c>
    1940:	e51b0010 	ldr	r0, [fp, #-16]
    1944:	ebffff94 	bl	179c <morecore>
    1948:	e50b0008 	str	r0, [fp, #-8]
    194c:	e51b3008 	ldr	r3, [fp, #-8]
    1950:	e3530000 	cmp	r3, #0
    1954:	1a000001 	bne	1960 <malloc+0x13c>
    1958:	e3a03000 	mov	r3, #0
    195c:	ea000005 	b	1978 <malloc+0x154>
    1960:	e51b3008 	ldr	r3, [fp, #-8]
    1964:	e50b300c 	str	r3, [fp, #-12]
    1968:	e51b3008 	ldr	r3, [fp, #-8]
    196c:	e5933000 	ldr	r3, [r3]
    1970:	e50b3008 	str	r3, [fp, #-8]
    1974:	eaffffc8 	b	189c <malloc+0x78>
    1978:	e1a00003 	mov	r0, r3
    197c:	e24bd004 	sub	sp, fp, #4
    1980:	e8bd8800 	pop	{fp, pc}
    1984:	00001fd4 	.word	0x00001fd4
    1988:	00001fcc 	.word	0x00001fcc

0000198c <__udivsi3>:
    198c:	e2512001 	subs	r2, r1, #1
    1990:	012fff1e 	bxeq	lr
    1994:	3a000036 	bcc	1a74 <__udivsi3+0xe8>
    1998:	e1500001 	cmp	r0, r1
    199c:	9a000022 	bls	1a2c <__udivsi3+0xa0>
    19a0:	e1110002 	tst	r1, r2
    19a4:	0a000023 	beq	1a38 <__udivsi3+0xac>
    19a8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    19ac:	01a01181 	lsleq	r1, r1, #3
    19b0:	03a03008 	moveq	r3, #8
    19b4:	13a03001 	movne	r3, #1
    19b8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    19bc:	31510000 	cmpcc	r1, r0
    19c0:	31a01201 	lslcc	r1, r1, #4
    19c4:	31a03203 	lslcc	r3, r3, #4
    19c8:	3afffffa 	bcc	19b8 <__udivsi3+0x2c>
    19cc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    19d0:	31510000 	cmpcc	r1, r0
    19d4:	31a01081 	lslcc	r1, r1, #1
    19d8:	31a03083 	lslcc	r3, r3, #1
    19dc:	3afffffa 	bcc	19cc <__udivsi3+0x40>
    19e0:	e3a02000 	mov	r2, #0
    19e4:	e1500001 	cmp	r0, r1
    19e8:	20400001 	subcs	r0, r0, r1
    19ec:	21822003 	orrcs	r2, r2, r3
    19f0:	e15000a1 	cmp	r0, r1, lsr #1
    19f4:	204000a1 	subcs	r0, r0, r1, lsr #1
    19f8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    19fc:	e1500121 	cmp	r0, r1, lsr #2
    1a00:	20400121 	subcs	r0, r0, r1, lsr #2
    1a04:	21822123 	orrcs	r2, r2, r3, lsr #2
    1a08:	e15001a1 	cmp	r0, r1, lsr #3
    1a0c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1a10:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1a14:	e3500000 	cmp	r0, #0
    1a18:	11b03223 	lsrsne	r3, r3, #4
    1a1c:	11a01221 	lsrne	r1, r1, #4
    1a20:	1affffef 	bne	19e4 <__udivsi3+0x58>
    1a24:	e1a00002 	mov	r0, r2
    1a28:	e12fff1e 	bx	lr
    1a2c:	03a00001 	moveq	r0, #1
    1a30:	13a00000 	movne	r0, #0
    1a34:	e12fff1e 	bx	lr
    1a38:	e3510801 	cmp	r1, #65536	@ 0x10000
    1a3c:	21a01821 	lsrcs	r1, r1, #16
    1a40:	23a02010 	movcs	r2, #16
    1a44:	33a02000 	movcc	r2, #0
    1a48:	e3510c01 	cmp	r1, #256	@ 0x100
    1a4c:	21a01421 	lsrcs	r1, r1, #8
    1a50:	22822008 	addcs	r2, r2, #8
    1a54:	e3510010 	cmp	r1, #16
    1a58:	21a01221 	lsrcs	r1, r1, #4
    1a5c:	22822004 	addcs	r2, r2, #4
    1a60:	e3510004 	cmp	r1, #4
    1a64:	82822003 	addhi	r2, r2, #3
    1a68:	908220a1 	addls	r2, r2, r1, lsr #1
    1a6c:	e1a00230 	lsr	r0, r0, r2
    1a70:	e12fff1e 	bx	lr
    1a74:	e3500000 	cmp	r0, #0
    1a78:	13e00000 	mvnne	r0, #0
    1a7c:	ea000007 	b	1aa0 <__aeabi_idiv0>

00001a80 <__aeabi_uidivmod>:
    1a80:	e3510000 	cmp	r1, #0
    1a84:	0afffffa 	beq	1a74 <__udivsi3+0xe8>
    1a88:	e92d4003 	push	{r0, r1, lr}
    1a8c:	ebffffbe 	bl	198c <__udivsi3>
    1a90:	e8bd4006 	pop	{r1, r2, lr}
    1a94:	e0030092 	mul	r3, r2, r0
    1a98:	e0411003 	sub	r1, r1, r3
    1a9c:	e12fff1e 	bx	lr

00001aa0 <__aeabi_idiv0>:
    1aa0:	e12fff1e 	bx	lr
