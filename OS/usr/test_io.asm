
_test_io:     file format elf32-littlearm


Disassembly of section .text:

00000000 <io_operation>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24ddfe2 	sub	sp, sp, #904	@ 0x388
       c:	e1a03000 	mov	r3, r0
      10:	e54b3385 	strb	r3, [fp, #-901]	@ 0xfffffc7b
      14:	e55b3385 	ldrb	r3, [fp, #-901]	@ 0xfffffc7b
      18:	e1a02003 	mov	r2, r3
      1c:	e59f108c 	ldr	r1, [pc, #140]	@ b0 <io_operation+0xb0>
      20:	e3a00001 	mov	r0, #1
      24:	eb0004b8 	bl	130c <printf>
      28:	e59f1084 	ldr	r1, [pc, #132]	@ b4 <io_operation+0xb4>
      2c:	e59f0084 	ldr	r0, [pc, #132]	@ b8 <io_operation+0xb8>
      30:	eb00035d 	bl	dac <open>
      34:	e50b000c 	str	r0, [fp, #-12]
      38:	e51b300c 	ldr	r3, [fp, #-12]
      3c:	e3530000 	cmp	r3, #0
      40:	aa000003 	bge	54 <io_operation+0x54>
      44:	e59f1070 	ldr	r1, [pc, #112]	@ bc <io_operation+0xbc>
      48:	e3a00002 	mov	r0, #2
      4c:	eb0004ae 	bl	130c <printf>
      50:	eb00030d 	bl	c8c <exit>
      54:	e51b000c 	ldr	r0, [fp, #-12]
      58:	eb000338 	bl	d40 <close>
      5c:	e3a03000 	mov	r3, #0
      60:	e50b3008 	str	r3, [fp, #-8]
      64:	ea000007 	b	88 <io_operation+0x88>
      68:	e24b2fe1 	sub	r2, fp, #900	@ 0x384
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e0823003 	add	r3, r2, r3
      74:	e3a02061 	mov	r2, #97	@ 0x61
      78:	e5c32000 	strb	r2, [r3]
      7c:	e51b3008 	ldr	r3, [fp, #-8]
      80:	e2833001 	add	r3, r3, #1
      84:	e50b3008 	str	r3, [fp, #-8]
      88:	e51b3008 	ldr	r3, [fp, #-8]
      8c:	e3530fde 	cmp	r3, #888	@ 0x378
      90:	bafffff4 	blt	68 <io_operation+0x68>
      94:	e24b3fe1 	sub	r3, fp, #900	@ 0x384
      98:	e1a01003 	mov	r1, r3
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb000499 	bl	130c <printf>
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e24bd004 	sub	sp, fp, #4
      ac:	e8bd8800 	pop	{fp, pc}
      b0:	000019c8 	.word	0x000019c8
      b4:	00000201 	.word	0x00000201
      b8:	000019e4 	.word	0x000019e4
      bc:	000019ec 	.word	0x000019ec

000000c0 <main>:
      c0:	e92d4800 	push	{fp, lr}
      c4:	e28db004 	add	fp, sp, #4
      c8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
      cc:	e24dd008 	sub	sp, sp, #8
      d0:	e50b0518 	str	r0, [fp, #-1304]	@ 0xfffffae8
      d4:	e50b151c 	str	r1, [fp, #-1308]	@ 0xfffffae4
      d8:	eb0002e2 	bl	c68 <fork>
      dc:	e50b000c 	str	r0, [fp, #-12]
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e3530000 	cmp	r3, #0
      e8:	1a000006 	bne	108 <main+0x48>
      ec:	e59f1260 	ldr	r1, [pc, #608]	@ 354 <main+0x294>
      f0:	e3a00001 	mov	r0, #1
      f4:	eb000484 	bl	130c <printf>
      f8:	e3a00041 	mov	r0, #65	@ 0x41
      fc:	ebffffbf 	bl	0 <io_operation>
     100:	e1a00000 	nop			@ (mov r0, r0)
     104:	eafffffd 	b	100 <main+0x40>
     108:	e51b300c 	ldr	r3, [fp, #-12]
     10c:	e3530000 	cmp	r3, #0
     110:	aa000003 	bge	124 <main+0x64>
     114:	e59f123c 	ldr	r1, [pc, #572]	@ 358 <main+0x298>
     118:	e3a00001 	mov	r0, #1
     11c:	eb00047a 	bl	130c <printf>
     120:	ea000005 	b	13c <main+0x7c>
     124:	e59f1230 	ldr	r1, [pc, #560]	@ 35c <main+0x29c>
     128:	e3a00001 	mov	r0, #1
     12c:	eb000476 	bl	130c <printf>
     130:	e51b100c 	ldr	r1, [fp, #-12]
     134:	e3a00010 	mov	r0, #16
     138:	eb000399 	bl	fa4 <setticket>
     13c:	eb0002c9 	bl	c68 <fork>
     140:	e50b0010 	str	r0, [fp, #-16]
     144:	e51b3010 	ldr	r3, [fp, #-16]
     148:	e3530000 	cmp	r3, #0
     14c:	1a000004 	bne	164 <main+0xa4>
     150:	e59f1208 	ldr	r1, [pc, #520]	@ 360 <main+0x2a0>
     154:	e3a00001 	mov	r0, #1
     158:	eb00046b 	bl	130c <printf>
     15c:	e1a00000 	nop			@ (mov r0, r0)
     160:	eafffffd 	b	15c <main+0x9c>
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e3530000 	cmp	r3, #0
     16c:	aa000003 	bge	180 <main+0xc0>
     170:	e59f11e0 	ldr	r1, [pc, #480]	@ 358 <main+0x298>
     174:	e3a00001 	mov	r0, #1
     178:	eb000463 	bl	130c <printf>
     17c:	ea000005 	b	198 <main+0xd8>
     180:	e59f11dc 	ldr	r1, [pc, #476]	@ 364 <main+0x2a4>
     184:	e3a00001 	mov	r0, #1
     188:	eb00045f 	bl	130c <printf>
     18c:	e51b1010 	ldr	r1, [fp, #-16]
     190:	e3a00004 	mov	r0, #4
     194:	eb000382 	bl	fa4 <setticket>
     198:	eb0002b2 	bl	c68 <fork>
     19c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     1a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1a4:	e3530000 	cmp	r3, #0
     1a8:	1a000008 	bne	1d0 <main+0x110>
     1ac:	e59f11b4 	ldr	r1, [pc, #436]	@ 368 <main+0x2a8>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb000454 	bl	130c <printf>
     1b8:	e3a00043 	mov	r0, #67	@ 0x43
     1bc:	ebffff8f 	bl	0 <io_operation>
     1c0:	e3a00043 	mov	r0, #67	@ 0x43
     1c4:	ebffff8d 	bl	0 <io_operation>
     1c8:	e1a00000 	nop			@ (mov r0, r0)
     1cc:	eafffffd 	b	1c8 <main+0x108>
     1d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1d4:	e3530000 	cmp	r3, #0
     1d8:	aa000003 	bge	1ec <main+0x12c>
     1dc:	e59f1174 	ldr	r1, [pc, #372]	@ 358 <main+0x298>
     1e0:	e3a00001 	mov	r0, #1
     1e4:	eb000448 	bl	130c <printf>
     1e8:	ea000005 	b	204 <main+0x144>
     1ec:	e59f1178 	ldr	r1, [pc, #376]	@ 36c <main+0x2ac>
     1f0:	e3a00001 	mov	r0, #1
     1f4:	eb000444 	bl	130c <printf>
     1f8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     1fc:	e3a00050 	mov	r0, #80	@ 0x50
     200:	eb000367 	bl	fa4 <setticket>
     204:	e3a00064 	mov	r0, #100	@ 0x64
     208:	eb000341 	bl	f14 <sleep>
     20c:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     210:	e2433004 	sub	r3, r3, #4
     214:	e1a00003 	mov	r0, r3
     218:	eb00036a 	bl	fc8 <getpinfo>
     21c:	e1a03000 	mov	r3, r0
     220:	e3530000 	cmp	r3, #0
     224:	aa000003 	bge	238 <main+0x178>
     228:	e59f1140 	ldr	r1, [pc, #320]	@ 370 <main+0x2b0>
     22c:	e3a00001 	mov	r0, #1
     230:	eb000435 	bl	130c <printf>
     234:	eb000294 	bl	c8c <exit>
     238:	e59f1134 	ldr	r1, [pc, #308]	@ 374 <main+0x2b4>
     23c:	e3a00001 	mov	r0, #1
     240:	eb000431 	bl	130c <printf>
     244:	e59f112c 	ldr	r1, [pc, #300]	@ 378 <main+0x2b8>
     248:	e3a00001 	mov	r0, #1
     24c:	eb00042e 	bl	130c <printf>
     250:	e3a03000 	mov	r3, #0
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	ea000030 	b	320 <main+0x260>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e1a03103 	lsl	r3, r3, #2
     264:	e2433004 	sub	r3, r3, #4
     268:	e083300b 	add	r3, r3, fp
     26c:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     270:	e3530000 	cmp	r3, #0
     274:	0a000025 	beq	310 <main+0x250>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e1a03103 	lsl	r3, r3, #2
     280:	e2433004 	sub	r3, r3, #4
     284:	e083300b 	add	r3, r3, fp
     288:	e5130510 	ldr	r0, [r3, #-1296]	@ 0xfffffaf0
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e2833040 	add	r3, r3, #64	@ 0x40
     294:	e1a03103 	lsl	r3, r3, #2
     298:	e2433004 	sub	r3, r3, #4
     29c:	e083300b 	add	r3, r3, fp
     2a0:	e513c510 	ldr	ip, [r3, #-1296]	@ 0xfffffaf0
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e2833080 	add	r3, r3, #128	@ 0x80
     2ac:	e1a03103 	lsl	r3, r3, #2
     2b0:	e2433004 	sub	r3, r3, #4
     2b4:	e083300b 	add	r3, r3, fp
     2b8:	e5132510 	ldr	r2, [r3, #-1296]	@ 0xfffffaf0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e28330c0 	add	r3, r3, #192	@ 0xc0
     2c4:	e1a03103 	lsl	r3, r3, #2
     2c8:	e2433004 	sub	r3, r3, #4
     2cc:	e083300b 	add	r3, r3, fp
     2d0:	e5131510 	ldr	r1, [r3, #-1296]	@ 0xfffffaf0
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2833c01 	add	r3, r3, #256	@ 0x100
     2dc:	e1a03103 	lsl	r3, r3, #2
     2e0:	e2433004 	sub	r3, r3, #4
     2e4:	e083300b 	add	r3, r3, fp
     2e8:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     2ec:	e58d3008 	str	r3, [sp, #8]
     2f0:	e58d1004 	str	r1, [sp, #4]
     2f4:	e58d2000 	str	r2, [sp]
     2f8:	e1a0300c 	mov	r3, ip
     2fc:	e1a02000 	mov	r2, r0
     300:	e59f1074 	ldr	r1, [pc, #116]	@ 37c <main+0x2bc>
     304:	e3a00001 	mov	r0, #1
     308:	eb0003ff 	bl	130c <printf>
     30c:	ea000000 	b	314 <main+0x254>
     310:	e1a00000 	nop			@ (mov r0, r0)
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e2833001 	add	r3, r3, #1
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e353003f 	cmp	r3, #63	@ 0x3f
     328:	daffffcb 	ble	25c <main+0x19c>
     32c:	e51b000c 	ldr	r0, [fp, #-12]
     330:	eb00028b 	bl	d64 <kill>
     334:	e51b0010 	ldr	r0, [fp, #-16]
     338:	eb000289 	bl	d64 <kill>
     33c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     340:	eb000287 	bl	d64 <kill>
     344:	eb000259 	bl	cb0 <wait>
     348:	eb000258 	bl	cb0 <wait>
     34c:	eb000257 	bl	cb0 <wait>
     350:	eb00024d 	bl	c8c <exit>
     354:	000019fc 	.word	0x000019fc
     358:	00001a08 	.word	0x00001a08
     35c:	00001a18 	.word	0x00001a18
     360:	00001a24 	.word	0x00001a24
     364:	00001a30 	.word	0x00001a30
     368:	00001a3c 	.word	0x00001a3c
     36c:	00001a48 	.word	0x00001a48
     370:	00001a54 	.word	0x00001a54
     374:	00001a68 	.word	0x00001a68
     378:	00001a7c 	.word	0x00001a7c
     37c:	00001aa8 	.word	0x00001aa8

00000380 <xchg>:
     380:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     384:	e28db000 	add	fp, sp, #0
     388:	e24dd014 	sub	sp, sp, #20
     38c:	e50b0010 	str	r0, [fp, #-16]
     390:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     394:	e51b1010 	ldr	r1, [fp, #-16]
     398:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     39c:	e1912f9f 	ldrex	r2, [r1]
     3a0:	e1813f90 	strex	r3, r0, [r1]
     3a4:	e50b2008 	str	r2, [fp, #-8]
     3a8:	e50b300c 	str	r3, [fp, #-12]
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e3530000 	cmp	r3, #0
     3b4:	1afffff6 	bne	394 <xchg+0x14>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e1a00003 	mov	r0, r3
     3c0:	e28bd000 	add	sp, fp, #0
     3c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c8:	e12fff1e 	bx	lr

000003cc <strcpy>:
     3cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d0:	e28db000 	add	fp, sp, #0
     3d4:	e24dd014 	sub	sp, sp, #20
     3d8:	e50b0010 	str	r0, [fp, #-16]
     3dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b3010 	ldr	r3, [fp, #-16]
     3e4:	e50b3008 	str	r3, [fp, #-8]
     3e8:	e1a00000 	nop			@ (mov r0, r0)
     3ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3f0:	e2823001 	add	r3, r2, #1
     3f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3f8:	e51b3010 	ldr	r3, [fp, #-16]
     3fc:	e2831001 	add	r1, r3, #1
     400:	e50b1010 	str	r1, [fp, #-16]
     404:	e5d22000 	ldrb	r2, [r2]
     408:	e5c32000 	strb	r2, [r3]
     40c:	e5d33000 	ldrb	r3, [r3]
     410:	e3530000 	cmp	r3, #0
     414:	1afffff4 	bne	3ec <strcpy+0x20>
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e1a00003 	mov	r0, r3
     420:	e28bd000 	add	sp, fp, #0
     424:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     428:	e12fff1e 	bx	lr

0000042c <strcmp>:
     42c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     430:	e28db000 	add	fp, sp, #0
     434:	e24dd00c 	sub	sp, sp, #12
     438:	e50b0008 	str	r0, [fp, #-8]
     43c:	e50b100c 	str	r1, [fp, #-12]
     440:	ea000005 	b	45c <strcmp+0x30>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e2833001 	add	r3, r3, #1
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e2833001 	add	r3, r3, #1
     458:	e50b300c 	str	r3, [fp, #-12]
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e3530000 	cmp	r3, #0
     468:	0a000005 	beq	484 <strcmp+0x58>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e5d32000 	ldrb	r2, [r3]
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e5d33000 	ldrb	r3, [r3]
     47c:	e1520003 	cmp	r2, r3
     480:	0affffef 	beq	444 <strcmp+0x18>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e5d33000 	ldrb	r3, [r3]
     48c:	e1a02003 	mov	r2, r3
     490:	e51b300c 	ldr	r3, [fp, #-12]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e0423003 	sub	r3, r2, r3
     49c:	e1a00003 	mov	r0, r3
     4a0:	e28bd000 	add	sp, fp, #0
     4a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4a8:	e12fff1e 	bx	lr

000004ac <strlen>:
     4ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4b0:	e28db000 	add	fp, sp, #0
     4b4:	e24dd014 	sub	sp, sp, #20
     4b8:	e50b0010 	str	r0, [fp, #-16]
     4bc:	e3a03000 	mov	r3, #0
     4c0:	e50b3008 	str	r3, [fp, #-8]
     4c4:	ea000002 	b	4d4 <strlen+0x28>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e51b2010 	ldr	r2, [fp, #-16]
     4dc:	e0823003 	add	r3, r2, r3
     4e0:	e5d33000 	ldrb	r3, [r3]
     4e4:	e3530000 	cmp	r3, #0
     4e8:	1afffff6 	bne	4c8 <strlen+0x1c>
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e28bd000 	add	sp, fp, #0
     4f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4fc:	e12fff1e 	bx	lr

00000500 <memset>:
     500:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     504:	e28db000 	add	fp, sp, #0
     508:	e24dd024 	sub	sp, sp, #36	@ 0x24
     50c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     510:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     514:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     518:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     51c:	e50b3008 	str	r3, [fp, #-8]
     520:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     524:	e54b300d 	strb	r3, [fp, #-13]
     528:	e55b200d 	ldrb	r2, [fp, #-13]
     52c:	e1a03002 	mov	r3, r2
     530:	e1a03403 	lsl	r3, r3, #8
     534:	e0833002 	add	r3, r3, r2
     538:	e1a03803 	lsl	r3, r3, #16
     53c:	e1a02003 	mov	r2, r3
     540:	e55b300d 	ldrb	r3, [fp, #-13]
     544:	e1a03403 	lsl	r3, r3, #8
     548:	e1822003 	orr	r2, r2, r3
     54c:	e55b300d 	ldrb	r3, [fp, #-13]
     550:	e1823003 	orr	r3, r2, r3
     554:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     558:	ea000008 	b	580 <memset+0x80>
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e55b200d 	ldrb	r2, [fp, #-13]
     564:	e5c32000 	strb	r2, [r3]
     568:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     56c:	e2433001 	sub	r3, r3, #1
     570:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e2833001 	add	r3, r3, #1
     57c:	e50b3008 	str	r3, [fp, #-8]
     580:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     584:	e3530000 	cmp	r3, #0
     588:	0a000003 	beq	59c <memset+0x9c>
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e2033003 	and	r3, r3, #3
     594:	e3530000 	cmp	r3, #0
     598:	1affffef 	bne	55c <memset+0x5c>
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	ea000008 	b	5cc <memset+0xcc>
     5a8:	e51b300c 	ldr	r3, [fp, #-12]
     5ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5b0:	e5832000 	str	r2, [r3]
     5b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5b8:	e2433004 	sub	r3, r3, #4
     5bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5c0:	e51b300c 	ldr	r3, [fp, #-12]
     5c4:	e2833004 	add	r3, r3, #4
     5c8:	e50b300c 	str	r3, [fp, #-12]
     5cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5d0:	e3530003 	cmp	r3, #3
     5d4:	8afffff3 	bhi	5a8 <memset+0xa8>
     5d8:	e51b300c 	ldr	r3, [fp, #-12]
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	ea000008 	b	608 <memset+0x108>
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e55b200d 	ldrb	r2, [fp, #-13]
     5ec:	e5c32000 	strb	r2, [r3]
     5f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5f4:	e2433001 	sub	r3, r3, #1
     5f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e2833001 	add	r3, r3, #1
     604:	e50b3008 	str	r3, [fp, #-8]
     608:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     60c:	e3530000 	cmp	r3, #0
     610:	1afffff3 	bne	5e4 <memset+0xe4>
     614:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     618:	e1a00003 	mov	r0, r3
     61c:	e28bd000 	add	sp, fp, #0
     620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <strchr>:
     628:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     62c:	e28db000 	add	fp, sp, #0
     630:	e24dd00c 	sub	sp, sp, #12
     634:	e50b0008 	str	r0, [fp, #-8]
     638:	e1a03001 	mov	r3, r1
     63c:	e54b3009 	strb	r3, [fp, #-9]
     640:	ea000009 	b	66c <strchr+0x44>
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e55b2009 	ldrb	r2, [fp, #-9]
     650:	e1520003 	cmp	r2, r3
     654:	1a000001 	bne	660 <strchr+0x38>
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	ea000007 	b	680 <strchr+0x58>
     660:	e51b3008 	ldr	r3, [fp, #-8]
     664:	e2833001 	add	r3, r3, #1
     668:	e50b3008 	str	r3, [fp, #-8]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e5d33000 	ldrb	r3, [r3]
     674:	e3530000 	cmp	r3, #0
     678:	1afffff1 	bne	644 <strchr+0x1c>
     67c:	e3a03000 	mov	r3, #0
     680:	e1a00003 	mov	r0, r3
     684:	e28bd000 	add	sp, fp, #0
     688:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <gets>:
     690:	e92d4800 	push	{fp, lr}
     694:	e28db004 	add	fp, sp, #4
     698:	e24dd018 	sub	sp, sp, #24
     69c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     6a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     6a4:	e3a03000 	mov	r3, #0
     6a8:	e50b3008 	str	r3, [fp, #-8]
     6ac:	ea000016 	b	70c <gets+0x7c>
     6b0:	e24b300d 	sub	r3, fp, #13
     6b4:	e3a02001 	mov	r2, #1
     6b8:	e1a01003 	mov	r1, r3
     6bc:	e3a00000 	mov	r0, #0
     6c0:	eb00018c 	bl	cf8 <read>
     6c4:	e50b000c 	str	r0, [fp, #-12]
     6c8:	e51b300c 	ldr	r3, [fp, #-12]
     6cc:	e3530000 	cmp	r3, #0
     6d0:	da000013 	ble	724 <gets+0x94>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e2832001 	add	r2, r3, #1
     6dc:	e50b2008 	str	r2, [fp, #-8]
     6e0:	e1a02003 	mov	r2, r3
     6e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6e8:	e0833002 	add	r3, r3, r2
     6ec:	e55b200d 	ldrb	r2, [fp, #-13]
     6f0:	e5c32000 	strb	r2, [r3]
     6f4:	e55b300d 	ldrb	r3, [fp, #-13]
     6f8:	e353000a 	cmp	r3, #10
     6fc:	0a000009 	beq	728 <gets+0x98>
     700:	e55b300d 	ldrb	r3, [fp, #-13]
     704:	e353000d 	cmp	r3, #13
     708:	0a000006 	beq	728 <gets+0x98>
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e2833001 	add	r3, r3, #1
     714:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     718:	e1520003 	cmp	r2, r3
     71c:	caffffe3 	bgt	6b0 <gets+0x20>
     720:	ea000000 	b	728 <gets+0x98>
     724:	e1a00000 	nop			@ (mov r0, r0)
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     730:	e0823003 	add	r3, r2, r3
     734:	e3a02000 	mov	r2, #0
     738:	e5c32000 	strb	r2, [r3]
     73c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     740:	e1a00003 	mov	r0, r3
     744:	e24bd004 	sub	sp, fp, #4
     748:	e8bd8800 	pop	{fp, pc}

0000074c <stat>:
     74c:	e92d4800 	push	{fp, lr}
     750:	e28db004 	add	fp, sp, #4
     754:	e24dd010 	sub	sp, sp, #16
     758:	e50b0010 	str	r0, [fp, #-16]
     75c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     760:	e3a01000 	mov	r1, #0
     764:	e51b0010 	ldr	r0, [fp, #-16]
     768:	eb00018f 	bl	dac <open>
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e3530000 	cmp	r3, #0
     778:	aa000001 	bge	784 <stat+0x38>
     77c:	e3e03000 	mvn	r3, #0
     780:	ea000006 	b	7a0 <stat+0x54>
     784:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     788:	e51b0008 	ldr	r0, [fp, #-8]
     78c:	eb0001a1 	bl	e18 <fstat>
     790:	e50b000c 	str	r0, [fp, #-12]
     794:	e51b0008 	ldr	r0, [fp, #-8]
     798:	eb000168 	bl	d40 <close>
     79c:	e51b300c 	ldr	r3, [fp, #-12]
     7a0:	e1a00003 	mov	r0, r3
     7a4:	e24bd004 	sub	sp, fp, #4
     7a8:	e8bd8800 	pop	{fp, pc}

000007ac <atoi>:
     7ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7b0:	e28db000 	add	fp, sp, #0
     7b4:	e24dd014 	sub	sp, sp, #20
     7b8:	e50b0010 	str	r0, [fp, #-16]
     7bc:	e3a03000 	mov	r3, #0
     7c0:	e50b3008 	str	r3, [fp, #-8]
     7c4:	ea00000c 	b	7fc <atoi+0x50>
     7c8:	e51b2008 	ldr	r2, [fp, #-8]
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a03103 	lsl	r3, r3, #2
     7d4:	e0833002 	add	r3, r3, r2
     7d8:	e1a03083 	lsl	r3, r3, #1
     7dc:	e1a01003 	mov	r1, r3
     7e0:	e51b3010 	ldr	r3, [fp, #-16]
     7e4:	e2832001 	add	r2, r3, #1
     7e8:	e50b2010 	str	r2, [fp, #-16]
     7ec:	e5d33000 	ldrb	r3, [r3]
     7f0:	e0813003 	add	r3, r1, r3
     7f4:	e2433030 	sub	r3, r3, #48	@ 0x30
     7f8:	e50b3008 	str	r3, [fp, #-8]
     7fc:	e51b3010 	ldr	r3, [fp, #-16]
     800:	e5d33000 	ldrb	r3, [r3]
     804:	e353002f 	cmp	r3, #47	@ 0x2f
     808:	9a000003 	bls	81c <atoi+0x70>
     80c:	e51b3010 	ldr	r3, [fp, #-16]
     810:	e5d33000 	ldrb	r3, [r3]
     814:	e3530039 	cmp	r3, #57	@ 0x39
     818:	9affffea 	bls	7c8 <atoi+0x1c>
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e1a00003 	mov	r0, r3
     824:	e28bd000 	add	sp, fp, #0
     828:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <memmove>:
     830:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     834:	e28db000 	add	fp, sp, #0
     838:	e24dd01c 	sub	sp, sp, #28
     83c:	e50b0010 	str	r0, [fp, #-16]
     840:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     844:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     848:	e51b3010 	ldr	r3, [fp, #-16]
     84c:	e50b3008 	str	r3, [fp, #-8]
     850:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     854:	e50b300c 	str	r3, [fp, #-12]
     858:	ea000007 	b	87c <memmove+0x4c>
     85c:	e51b200c 	ldr	r2, [fp, #-12]
     860:	e2823001 	add	r3, r2, #1
     864:	e50b300c 	str	r3, [fp, #-12]
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e2831001 	add	r1, r3, #1
     870:	e50b1008 	str	r1, [fp, #-8]
     874:	e5d22000 	ldrb	r2, [r2]
     878:	e5c32000 	strb	r2, [r3]
     87c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     880:	e2432001 	sub	r2, r3, #1
     884:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     888:	e3530000 	cmp	r3, #0
     88c:	cafffff2 	bgt	85c <memmove+0x2c>
     890:	e51b3010 	ldr	r3, [fp, #-16]
     894:	e1a00003 	mov	r0, r3
     898:	e28bd000 	add	sp, fp, #0
     89c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <initiateLock>:
     8a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8a8:	e28db000 	add	fp, sp, #0
     8ac:	e24dd00c 	sub	sp, sp, #12
     8b0:	e50b0008 	str	r0, [fp, #-8]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e3a02000 	mov	r2, #0
     8bc:	e5832000 	str	r2, [r3]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e3a02001 	mov	r2, #1
     8c8:	e5832004 	str	r2, [r3, #4]
     8cc:	e1a00000 	nop			@ (mov r0, r0)
     8d0:	e28bd000 	add	sp, fp, #0
     8d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <acquireLock>:
     8dc:	e92d4800 	push	{fp, lr}
     8e0:	e28db004 	add	fp, sp, #4
     8e4:	e24dd008 	sub	sp, sp, #8
     8e8:	e50b0008 	str	r0, [fp, #-8]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5933000 	ldr	r3, [r3]
     8f4:	e3730001 	cmn	r3, #1
     8f8:	1a000002 	bne	908 <acquireLock+0x2c>
     8fc:	e59f1034 	ldr	r1, [pc, #52]	@ 938 <acquireLock+0x5c>
     900:	e3a00002 	mov	r0, #2
     904:	eb000280 	bl	130c <printf>
     908:	e1a00000 	nop			@ (mov r0, r0)
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e3a01001 	mov	r1, #1
     914:	e1a00003 	mov	r0, r3
     918:	ebfffe98 	bl	380 <xchg>
     91c:	e1a03000 	mov	r3, r0
     920:	e3530000 	cmp	r3, #0
     924:	1afffff8 	bne	90c <acquireLock+0x30>
     928:	e1a00000 	nop			@ (mov r0, r0)
     92c:	e1a00000 	nop			@ (mov r0, r0)
     930:	e24bd004 	sub	sp, fp, #4
     934:	e8bd8800 	pop	{fp, pc}
     938:	00001abc 	.word	0x00001abc

0000093c <releaseLock>:
     93c:	e92d4800 	push	{fp, lr}
     940:	e28db004 	add	fp, sp, #4
     944:	e24dd008 	sub	sp, sp, #8
     948:	e50b0008 	str	r0, [fp, #-8]
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5933000 	ldr	r3, [r3]
     954:	e3530001 	cmp	r3, #1
     958:	0a000002 	beq	968 <releaseLock+0x2c>
     95c:	e59f1020 	ldr	r1, [pc, #32]	@ 984 <releaseLock+0x48>
     960:	e3a00002 	mov	r0, #2
     964:	eb000268 	bl	130c <printf>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e3a01000 	mov	r1, #0
     970:	e1a00003 	mov	r0, r3
     974:	ebfffe81 	bl	380 <xchg>
     978:	e1a00000 	nop			@ (mov r0, r0)
     97c:	e24bd004 	sub	sp, fp, #4
     980:	e8bd8800 	pop	{fp, pc}
     984:	00001aec 	.word	0x00001aec

00000988 <initiateCondVar>:
     988:	e92d4800 	push	{fp, lr}
     98c:	e28db004 	add	fp, sp, #4
     990:	e24dd008 	sub	sp, sp, #8
     994:	e50b0008 	str	r0, [fp, #-8]
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5933004 	ldr	r3, [r3, #4]
     9a0:	e3530000 	cmp	r3, #0
     9a4:	1a000007 	bne	9c8 <initiateCondVar+0x40>
     9a8:	eb0001e0 	bl	1130 <getChannel>
     9ac:	e1a02000 	mov	r2, r0
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e5832000 	str	r2, [r3]
     9b8:	e51b3008 	ldr	r3, [fp, #-8]
     9bc:	e3a02001 	mov	r2, #1
     9c0:	e5832004 	str	r2, [r3, #4]
     9c4:	ea000000 	b	9cc <initiateCondVar+0x44>
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e24bd004 	sub	sp, fp, #4
     9d0:	e8bd8800 	pop	{fp, pc}

000009d4 <condWait>:
     9d4:	e92d4800 	push	{fp, lr}
     9d8:	e28db004 	add	fp, sp, #4
     9dc:	e24dd008 	sub	sp, sp, #8
     9e0:	e50b0008 	str	r0, [fp, #-8]
     9e4:	e50b100c 	str	r1, [fp, #-12]
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e5933004 	ldr	r3, [r3, #4]
     9f0:	e3530000 	cmp	r3, #0
     9f4:	1a000003 	bne	a08 <condWait+0x34>
     9f8:	e59f1050 	ldr	r1, [pc, #80]	@ a50 <condWait+0x7c>
     9fc:	e3a00002 	mov	r0, #2
     a00:	eb000241 	bl	130c <printf>
     a04:	ea00000f 	b	a48 <condWait+0x74>
     a08:	e51b300c 	ldr	r3, [fp, #-12]
     a0c:	e5933004 	ldr	r3, [r3, #4]
     a10:	e3530000 	cmp	r3, #0
     a14:	1a000003 	bne	a28 <condWait+0x54>
     a18:	e59f1034 	ldr	r1, [pc, #52]	@ a54 <condWait+0x80>
     a1c:	e3a00002 	mov	r0, #2
     a20:	eb000239 	bl	130c <printf>
     a24:	ea000007 	b	a48 <condWait+0x74>
     a28:	e51b000c 	ldr	r0, [fp, #-12]
     a2c:	ebffffc2 	bl	93c <releaseLock>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5933000 	ldr	r3, [r3]
     a38:	e1a00003 	mov	r0, r3
     a3c:	eb0001b2 	bl	110c <sleepChan>
     a40:	e51b000c 	ldr	r0, [fp, #-12]
     a44:	ebffffa4 	bl	8dc <acquireLock>
     a48:	e24bd004 	sub	sp, fp, #4
     a4c:	e8bd8800 	pop	{fp, pc}
     a50:	00001b28 	.word	0x00001b28
     a54:	00001b4c 	.word	0x00001b4c

00000a58 <broadcast>:
     a58:	e92d4800 	push	{fp, lr}
     a5c:	e28db004 	add	fp, sp, #4
     a60:	e24dd008 	sub	sp, sp, #8
     a64:	e50b0008 	str	r0, [fp, #-8]
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e5933004 	ldr	r3, [r3, #4]
     a70:	e3530000 	cmp	r3, #0
     a74:	1a000003 	bne	a88 <broadcast+0x30>
     a78:	e59f1020 	ldr	r1, [pc, #32]	@ aa0 <broadcast+0x48>
     a7c:	e3a00002 	mov	r0, #2
     a80:	eb000221 	bl	130c <printf>
     a84:	ea000003 	b	a98 <broadcast+0x40>
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5933000 	ldr	r3, [r3]
     a90:	e1a00003 	mov	r0, r3
     a94:	eb0001ae 	bl	1154 <sigChan>
     a98:	e24bd004 	sub	sp, fp, #4
     a9c:	e8bd8800 	pop	{fp, pc}
     aa0:	00001b28 	.word	0x00001b28

00000aa4 <signal>:
     aa4:	e92d4800 	push	{fp, lr}
     aa8:	e28db004 	add	fp, sp, #4
     aac:	e24dd008 	sub	sp, sp, #8
     ab0:	e50b0008 	str	r0, [fp, #-8]
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e5933004 	ldr	r3, [r3, #4]
     abc:	e3530000 	cmp	r3, #0
     ac0:	1a000003 	bne	ad4 <signal+0x30>
     ac4:	e59f1020 	ldr	r1, [pc, #32]	@ aec <signal+0x48>
     ac8:	e3a00002 	mov	r0, #2
     acc:	eb00020e 	bl	130c <printf>
     ad0:	ea000003 	b	ae4 <signal+0x40>
     ad4:	e51b3008 	ldr	r3, [fp, #-8]
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb0001a4 	bl	1178 <sigOneChan>
     ae4:	e24bd004 	sub	sp, fp, #4
     ae8:	e8bd8800 	pop	{fp, pc}
     aec:	00001b28 	.word	0x00001b28

00000af0 <semInit>:
     af0:	e92d4800 	push	{fp, lr}
     af4:	e28db004 	add	fp, sp, #4
     af8:	e24dd008 	sub	sp, sp, #8
     afc:	e50b0008 	str	r0, [fp, #-8]
     b00:	e50b100c 	str	r1, [fp, #-12]
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e51b200c 	ldr	r2, [fp, #-12]
     b0c:	e5832000 	str	r2, [r3]
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2833004 	add	r3, r3, #4
     b18:	e1a00003 	mov	r0, r3
     b1c:	ebffff60 	bl	8a4 <initiateLock>
     b20:	e51b3008 	ldr	r3, [fp, #-8]
     b24:	e283300c 	add	r3, r3, #12
     b28:	e1a00003 	mov	r0, r3
     b2c:	ebffff95 	bl	988 <initiateCondVar>
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e3a02001 	mov	r2, #1
     b38:	e5832014 	str	r2, [r3, #20]
     b3c:	e1a00000 	nop			@ (mov r0, r0)
     b40:	e24bd004 	sub	sp, fp, #4
     b44:	e8bd8800 	pop	{fp, pc}

00000b48 <semDown>:
     b48:	e92d4800 	push	{fp, lr}
     b4c:	e28db004 	add	fp, sp, #4
     b50:	e24dd008 	sub	sp, sp, #8
     b54:	e50b0008 	str	r0, [fp, #-8]
     b58:	e51b3008 	ldr	r3, [fp, #-8]
     b5c:	e5933014 	ldr	r3, [r3, #20]
     b60:	e3530000 	cmp	r3, #0
     b64:	1a000003 	bne	b78 <semDown+0x30>
     b68:	e59f1074 	ldr	r1, [pc, #116]	@ be4 <semDown+0x9c>
     b6c:	e3a00002 	mov	r0, #2
     b70:	eb0001e5 	bl	130c <printf>
     b74:	ea000018 	b	bdc <semDown+0x94>
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e2833004 	add	r3, r3, #4
     b80:	e1a00003 	mov	r0, r3
     b84:	ebffff54 	bl	8dc <acquireLock>
     b88:	ea000006 	b	ba8 <semDown+0x60>
     b8c:	e51b3008 	ldr	r3, [fp, #-8]
     b90:	e283200c 	add	r2, r3, #12
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e1a01003 	mov	r1, r3
     ba0:	e1a00002 	mov	r0, r2
     ba4:	ebffff8a 	bl	9d4 <condWait>
     ba8:	e51b3008 	ldr	r3, [fp, #-8]
     bac:	e5933000 	ldr	r3, [r3]
     bb0:	e3530000 	cmp	r3, #0
     bb4:	0afffff4 	beq	b8c <semDown+0x44>
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e5933000 	ldr	r3, [r3]
     bc0:	e2432001 	sub	r2, r3, #1
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e5832000 	str	r2, [r3]
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e2833004 	add	r3, r3, #4
     bd4:	e1a00003 	mov	r0, r3
     bd8:	ebffff57 	bl	93c <releaseLock>
     bdc:	e24bd004 	sub	sp, fp, #4
     be0:	e8bd8800 	pop	{fp, pc}
     be4:	00001b6c 	.word	0x00001b6c

00000be8 <semUp>:
     be8:	e92d4800 	push	{fp, lr}
     bec:	e28db004 	add	fp, sp, #4
     bf0:	e24dd008 	sub	sp, sp, #8
     bf4:	e50b0008 	str	r0, [fp, #-8]
     bf8:	e51b3008 	ldr	r3, [fp, #-8]
     bfc:	e5933014 	ldr	r3, [r3, #20]
     c00:	e3530000 	cmp	r3, #0
     c04:	1a000003 	bne	c18 <semUp+0x30>
     c08:	e59f1054 	ldr	r1, [pc, #84]	@ c64 <semUp+0x7c>
     c0c:	e3a00002 	mov	r0, #2
     c10:	eb0001bd 	bl	130c <printf>
     c14:	ea000010 	b	c5c <semUp+0x74>
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e2833004 	add	r3, r3, #4
     c20:	e1a00003 	mov	r0, r3
     c24:	ebffff2c 	bl	8dc <acquireLock>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e2832001 	add	r2, r3, #1
     c34:	e51b3008 	ldr	r3, [fp, #-8]
     c38:	e5832000 	str	r2, [r3]
     c3c:	e51b3008 	ldr	r3, [fp, #-8]
     c40:	e283300c 	add	r3, r3, #12
     c44:	e1a00003 	mov	r0, r3
     c48:	ebffff95 	bl	aa4 <signal>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e2833004 	add	r3, r3, #4
     c54:	e1a00003 	mov	r0, r3
     c58:	ebffff37 	bl	93c <releaseLock>
     c5c:	e24bd004 	sub	sp, fp, #4
     c60:	e8bd8800 	pop	{fp, pc}
     c64:	00001b6c 	.word	0x00001b6c

00000c68 <fork>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a00001 	mov	r0, #1
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <exit>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a00002 	mov	r0, #2
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <wait>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a00003 	mov	r0, #3
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <pipe>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a00004 	mov	r0, #4
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <read>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00005 	mov	r0, #5
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <write>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a00010 	mov	r0, #16
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <close>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a00015 	mov	r0, #21
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <kill>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a00006 	mov	r0, #6
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <exec>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a00007 	mov	r0, #7
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <open>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a0000f 	mov	r0, #15
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <mknod>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a00011 	mov	r0, #17
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <unlink>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a00012 	mov	r0, #18
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <fstat>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a00008 	mov	r0, #8
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <link>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a00013 	mov	r0, #19
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <mkdir>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a00014 	mov	r0, #20
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <chdir>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00009 	mov	r0, #9
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <dup>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a0000a 	mov	r0, #10
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <getpid>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a0000b 	mov	r0, #11
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <sbrk>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a0000c 	mov	r0, #12
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <sleep>:
     f14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f18:	e1a04003 	mov	r4, r3
     f1c:	e1a03002 	mov	r3, r2
     f20:	e1a02001 	mov	r2, r1
     f24:	e1a01000 	mov	r1, r0
     f28:	e3a0000d 	mov	r0, #13
     f2c:	ef000000 	svc	0x00000000
     f30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f34:	e12fff1e 	bx	lr

00000f38 <uptime>:
     f38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f3c:	e1a04003 	mov	r4, r3
     f40:	e1a03002 	mov	r3, r2
     f44:	e1a02001 	mov	r2, r1
     f48:	e1a01000 	mov	r1, r0
     f4c:	e3a0000e 	mov	r0, #14
     f50:	ef000000 	svc	0x00000000
     f54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f58:	e12fff1e 	bx	lr

00000f5c <disproc>:
     f5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f60:	e1a04003 	mov	r4, r3
     f64:	e1a03002 	mov	r3, r2
     f68:	e1a02001 	mov	r2, r1
     f6c:	e1a01000 	mov	r1, r0
     f70:	e3a00016 	mov	r0, #22
     f74:	ef000000 	svc	0x00000000
     f78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f7c:	e12fff1e 	bx	lr

00000f80 <srand>:
     f80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f84:	e1a04003 	mov	r4, r3
     f88:	e1a03002 	mov	r3, r2
     f8c:	e1a02001 	mov	r2, r1
     f90:	e1a01000 	mov	r1, r0
     f94:	e3a00017 	mov	r0, #23
     f98:	ef000000 	svc	0x00000000
     f9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa0:	e12fff1e 	bx	lr

00000fa4 <setticket>:
     fa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa8:	e1a04003 	mov	r4, r3
     fac:	e1a03002 	mov	r3, r2
     fb0:	e1a02001 	mov	r2, r1
     fb4:	e1a01000 	mov	r1, r0
     fb8:	e3a00018 	mov	r0, #24
     fbc:	ef000000 	svc	0x00000000
     fc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc4:	e12fff1e 	bx	lr

00000fc8 <getpinfo>:
     fc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fcc:	e1a04003 	mov	r4, r3
     fd0:	e1a03002 	mov	r3, r2
     fd4:	e1a02001 	mov	r2, r1
     fd8:	e1a01000 	mov	r1, r0
     fdc:	e3a00019 	mov	r0, #25
     fe0:	ef000000 	svc	0x00000000
     fe4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe8:	e12fff1e 	bx	lr

00000fec <printPages>:
     fec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff0:	e1a04003 	mov	r4, r3
     ff4:	e1a03002 	mov	r3, r2
     ff8:	e1a02001 	mov	r2, r1
     ffc:	e1a01000 	mov	r1, r0
    1000:	e3a0001a 	mov	r0, #26
    1004:	ef000000 	svc	0x00000000
    1008:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    100c:	e12fff1e 	bx	lr

00001010 <kpt>:
    1010:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1014:	e1a04003 	mov	r4, r3
    1018:	e1a03002 	mov	r3, r2
    101c:	e1a02001 	mov	r2, r1
    1020:	e1a01000 	mov	r1, r0
    1024:	e3a0001b 	mov	r0, #27
    1028:	ef000000 	svc	0x00000000
    102c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1030:	e12fff1e 	bx	lr

00001034 <thread_create>:
    1034:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1038:	e1a04003 	mov	r4, r3
    103c:	e1a03002 	mov	r3, r2
    1040:	e1a02001 	mov	r2, r1
    1044:	e1a01000 	mov	r1, r0
    1048:	e3a0001c 	mov	r0, #28
    104c:	ef000000 	svc	0x00000000
    1050:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1054:	e12fff1e 	bx	lr

00001058 <thread_exit>:
    1058:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    105c:	e1a04003 	mov	r4, r3
    1060:	e1a03002 	mov	r3, r2
    1064:	e1a02001 	mov	r2, r1
    1068:	e1a01000 	mov	r1, r0
    106c:	e3a0001d 	mov	r0, #29
    1070:	ef000000 	svc	0x00000000
    1074:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1078:	e12fff1e 	bx	lr

0000107c <thread_join>:
    107c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1080:	e1a04003 	mov	r4, r3
    1084:	e1a03002 	mov	r3, r2
    1088:	e1a02001 	mov	r2, r1
    108c:	e1a01000 	mov	r1, r0
    1090:	e3a0001e 	mov	r0, #30
    1094:	ef000000 	svc	0x00000000
    1098:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    109c:	e12fff1e 	bx	lr

000010a0 <waitpid>:
    10a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a4:	e1a04003 	mov	r4, r3
    10a8:	e1a03002 	mov	r3, r2
    10ac:	e1a02001 	mov	r2, r1
    10b0:	e1a01000 	mov	r1, r0
    10b4:	e3a0001f 	mov	r0, #31
    10b8:	ef000000 	svc	0x00000000
    10bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c0:	e12fff1e 	bx	lr

000010c4 <barrier_init>:
    10c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10c8:	e1a04003 	mov	r4, r3
    10cc:	e1a03002 	mov	r3, r2
    10d0:	e1a02001 	mov	r2, r1
    10d4:	e1a01000 	mov	r1, r0
    10d8:	e3a00020 	mov	r0, #32
    10dc:	ef000000 	svc	0x00000000
    10e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e4:	e12fff1e 	bx	lr

000010e8 <barrier_check>:
    10e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ec:	e1a04003 	mov	r4, r3
    10f0:	e1a03002 	mov	r3, r2
    10f4:	e1a02001 	mov	r2, r1
    10f8:	e1a01000 	mov	r1, r0
    10fc:	e3a00021 	mov	r0, #33	@ 0x21
    1100:	ef000000 	svc	0x00000000
    1104:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1108:	e12fff1e 	bx	lr

0000110c <sleepChan>:
    110c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1110:	e1a04003 	mov	r4, r3
    1114:	e1a03002 	mov	r3, r2
    1118:	e1a02001 	mov	r2, r1
    111c:	e1a01000 	mov	r1, r0
    1120:	e3a00022 	mov	r0, #34	@ 0x22
    1124:	ef000000 	svc	0x00000000
    1128:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    112c:	e12fff1e 	bx	lr

00001130 <getChannel>:
    1130:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1134:	e1a04003 	mov	r4, r3
    1138:	e1a03002 	mov	r3, r2
    113c:	e1a02001 	mov	r2, r1
    1140:	e1a01000 	mov	r1, r0
    1144:	e3a00023 	mov	r0, #35	@ 0x23
    1148:	ef000000 	svc	0x00000000
    114c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1150:	e12fff1e 	bx	lr

00001154 <sigChan>:
    1154:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1158:	e1a04003 	mov	r4, r3
    115c:	e1a03002 	mov	r3, r2
    1160:	e1a02001 	mov	r2, r1
    1164:	e1a01000 	mov	r1, r0
    1168:	e3a00024 	mov	r0, #36	@ 0x24
    116c:	ef000000 	svc	0x00000000
    1170:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1174:	e12fff1e 	bx	lr

00001178 <sigOneChan>:
    1178:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    117c:	e1a04003 	mov	r4, r3
    1180:	e1a03002 	mov	r3, r2
    1184:	e1a02001 	mov	r2, r1
    1188:	e1a01000 	mov	r1, r0
    118c:	e3a00025 	mov	r0, #37	@ 0x25
    1190:	ef000000 	svc	0x00000000
    1194:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1198:	e12fff1e 	bx	lr

0000119c <putc>:
    119c:	e92d4800 	push	{fp, lr}
    11a0:	e28db004 	add	fp, sp, #4
    11a4:	e24dd008 	sub	sp, sp, #8
    11a8:	e50b0008 	str	r0, [fp, #-8]
    11ac:	e1a03001 	mov	r3, r1
    11b0:	e54b3009 	strb	r3, [fp, #-9]
    11b4:	e24b3009 	sub	r3, fp, #9
    11b8:	e3a02001 	mov	r2, #1
    11bc:	e1a01003 	mov	r1, r3
    11c0:	e51b0008 	ldr	r0, [fp, #-8]
    11c4:	ebfffed4 	bl	d1c <write>
    11c8:	e1a00000 	nop			@ (mov r0, r0)
    11cc:	e24bd004 	sub	sp, fp, #4
    11d0:	e8bd8800 	pop	{fp, pc}

000011d4 <printint>:
    11d4:	e92d4800 	push	{fp, lr}
    11d8:	e28db004 	add	fp, sp, #4
    11dc:	e24dd030 	sub	sp, sp, #48	@ 0x30
    11e0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    11e4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    11e8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    11ec:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    11f0:	e3a03000 	mov	r3, #0
    11f4:	e50b300c 	str	r3, [fp, #-12]
    11f8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    11fc:	e3530000 	cmp	r3, #0
    1200:	0a000008 	beq	1228 <printint+0x54>
    1204:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1208:	e3530000 	cmp	r3, #0
    120c:	aa000005 	bge	1228 <printint+0x54>
    1210:	e3a03001 	mov	r3, #1
    1214:	e50b300c 	str	r3, [fp, #-12]
    1218:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    121c:	e2633000 	rsb	r3, r3, #0
    1220:	e50b3010 	str	r3, [fp, #-16]
    1224:	ea000001 	b	1230 <printint+0x5c>
    1228:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    122c:	e50b3010 	str	r3, [fp, #-16]
    1230:	e3a03000 	mov	r3, #0
    1234:	e50b3008 	str	r3, [fp, #-8]
    1238:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    123c:	e51b3010 	ldr	r3, [fp, #-16]
    1240:	e1a01002 	mov	r1, r2
    1244:	e1a00003 	mov	r0, r3
    1248:	eb0001d5 	bl	19a4 <__aeabi_uidivmod>
    124c:	e1a03001 	mov	r3, r1
    1250:	e1a01003 	mov	r1, r3
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e2832001 	add	r2, r3, #1
    125c:	e50b2008 	str	r2, [fp, #-8]
    1260:	e59f20a0 	ldr	r2, [pc, #160]	@ 1308 <printint+0x134>
    1264:	e7d22001 	ldrb	r2, [r2, r1]
    1268:	e2433004 	sub	r3, r3, #4
    126c:	e083300b 	add	r3, r3, fp
    1270:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1274:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1278:	e1a01003 	mov	r1, r3
    127c:	e51b0010 	ldr	r0, [fp, #-16]
    1280:	eb00018a 	bl	18b0 <__udivsi3>
    1284:	e1a03000 	mov	r3, r0
    1288:	e50b3010 	str	r3, [fp, #-16]
    128c:	e51b3010 	ldr	r3, [fp, #-16]
    1290:	e3530000 	cmp	r3, #0
    1294:	1affffe7 	bne	1238 <printint+0x64>
    1298:	e51b300c 	ldr	r3, [fp, #-12]
    129c:	e3530000 	cmp	r3, #0
    12a0:	0a00000e 	beq	12e0 <printint+0x10c>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e2832001 	add	r2, r3, #1
    12ac:	e50b2008 	str	r2, [fp, #-8]
    12b0:	e2433004 	sub	r3, r3, #4
    12b4:	e083300b 	add	r3, r3, fp
    12b8:	e3a0202d 	mov	r2, #45	@ 0x2d
    12bc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12c0:	ea000006 	b	12e0 <printint+0x10c>
    12c4:	e24b2020 	sub	r2, fp, #32
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e0823003 	add	r3, r2, r3
    12d0:	e5d33000 	ldrb	r3, [r3]
    12d4:	e1a01003 	mov	r1, r3
    12d8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    12dc:	ebffffae 	bl	119c <putc>
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e2433001 	sub	r3, r3, #1
    12e8:	e50b3008 	str	r3, [fp, #-8]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e3530000 	cmp	r3, #0
    12f4:	aafffff2 	bge	12c4 <printint+0xf0>
    12f8:	e1a00000 	nop			@ (mov r0, r0)
    12fc:	e1a00000 	nop			@ (mov r0, r0)
    1300:	e24bd004 	sub	sp, fp, #4
    1304:	e8bd8800 	pop	{fp, pc}
    1308:	00001b98 	.word	0x00001b98

0000130c <printf>:
    130c:	e92d000e 	push	{r1, r2, r3}
    1310:	e92d4800 	push	{fp, lr}
    1314:	e28db004 	add	fp, sp, #4
    1318:	e24dd024 	sub	sp, sp, #36	@ 0x24
    131c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1320:	e3a03000 	mov	r3, #0
    1324:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1328:	e28b3008 	add	r3, fp, #8
    132c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1330:	e3a03000 	mov	r3, #0
    1334:	e50b3010 	str	r3, [fp, #-16]
    1338:	ea000074 	b	1510 <printf+0x204>
    133c:	e59b2004 	ldr	r2, [fp, #4]
    1340:	e51b3010 	ldr	r3, [fp, #-16]
    1344:	e0823003 	add	r3, r2, r3
    1348:	e5d33000 	ldrb	r3, [r3]
    134c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1350:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1354:	e3530000 	cmp	r3, #0
    1358:	1a00000b 	bne	138c <printf+0x80>
    135c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1360:	e3530025 	cmp	r3, #37	@ 0x25
    1364:	1a000002 	bne	1374 <printf+0x68>
    1368:	e3a03025 	mov	r3, #37	@ 0x25
    136c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1370:	ea000063 	b	1504 <printf+0x1f8>
    1374:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1378:	e6ef3073 	uxtb	r3, r3
    137c:	e1a01003 	mov	r1, r3
    1380:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1384:	ebffff84 	bl	119c <putc>
    1388:	ea00005d 	b	1504 <printf+0x1f8>
    138c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1390:	e3530025 	cmp	r3, #37	@ 0x25
    1394:	1a00005a 	bne	1504 <printf+0x1f8>
    1398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    139c:	e3530064 	cmp	r3, #100	@ 0x64
    13a0:	1a00000a 	bne	13d0 <printf+0xc4>
    13a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e1a01003 	mov	r1, r3
    13b0:	e3a03001 	mov	r3, #1
    13b4:	e3a0200a 	mov	r2, #10
    13b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13bc:	ebffff84 	bl	11d4 <printint>
    13c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13c4:	e2833004 	add	r3, r3, #4
    13c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13cc:	ea00004a 	b	14fc <printf+0x1f0>
    13d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13d4:	e3530078 	cmp	r3, #120	@ 0x78
    13d8:	0a000002 	beq	13e8 <printf+0xdc>
    13dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13e0:	e3530070 	cmp	r3, #112	@ 0x70
    13e4:	1a00000a 	bne	1414 <printf+0x108>
    13e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13ec:	e5933000 	ldr	r3, [r3]
    13f0:	e1a01003 	mov	r1, r3
    13f4:	e3a03000 	mov	r3, #0
    13f8:	e3a02010 	mov	r2, #16
    13fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1400:	ebffff73 	bl	11d4 <printint>
    1404:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1408:	e2833004 	add	r3, r3, #4
    140c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1410:	ea000039 	b	14fc <printf+0x1f0>
    1414:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1418:	e3530073 	cmp	r3, #115	@ 0x73
    141c:	1a000018 	bne	1484 <printf+0x178>
    1420:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e50b300c 	str	r3, [fp, #-12]
    142c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1430:	e2833004 	add	r3, r3, #4
    1434:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e3530000 	cmp	r3, #0
    1440:	1a00000a 	bne	1470 <printf+0x164>
    1444:	e59f30f4 	ldr	r3, [pc, #244]	@ 1540 <printf+0x234>
    1448:	e50b300c 	str	r3, [fp, #-12]
    144c:	ea000007 	b	1470 <printf+0x164>
    1450:	e51b300c 	ldr	r3, [fp, #-12]
    1454:	e5d33000 	ldrb	r3, [r3]
    1458:	e1a01003 	mov	r1, r3
    145c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1460:	ebffff4d 	bl	119c <putc>
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e2833001 	add	r3, r3, #1
    146c:	e50b300c 	str	r3, [fp, #-12]
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5d33000 	ldrb	r3, [r3]
    1478:	e3530000 	cmp	r3, #0
    147c:	1afffff3 	bne	1450 <printf+0x144>
    1480:	ea00001d 	b	14fc <printf+0x1f0>
    1484:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1488:	e3530063 	cmp	r3, #99	@ 0x63
    148c:	1a000009 	bne	14b8 <printf+0x1ac>
    1490:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1494:	e5933000 	ldr	r3, [r3]
    1498:	e6ef3073 	uxtb	r3, r3
    149c:	e1a01003 	mov	r1, r3
    14a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14a4:	ebffff3c 	bl	119c <putc>
    14a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14ac:	e2833004 	add	r3, r3, #4
    14b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14b4:	ea000010 	b	14fc <printf+0x1f0>
    14b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14bc:	e3530025 	cmp	r3, #37	@ 0x25
    14c0:	1a000005 	bne	14dc <printf+0x1d0>
    14c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14c8:	e6ef3073 	uxtb	r3, r3
    14cc:	e1a01003 	mov	r1, r3
    14d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14d4:	ebffff30 	bl	119c <putc>
    14d8:	ea000007 	b	14fc <printf+0x1f0>
    14dc:	e3a01025 	mov	r1, #37	@ 0x25
    14e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14e4:	ebffff2c 	bl	119c <putc>
    14e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14ec:	e6ef3073 	uxtb	r3, r3
    14f0:	e1a01003 	mov	r1, r3
    14f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14f8:	ebffff27 	bl	119c <putc>
    14fc:	e3a03000 	mov	r3, #0
    1500:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1504:	e51b3010 	ldr	r3, [fp, #-16]
    1508:	e2833001 	add	r3, r3, #1
    150c:	e50b3010 	str	r3, [fp, #-16]
    1510:	e59b2004 	ldr	r2, [fp, #4]
    1514:	e51b3010 	ldr	r3, [fp, #-16]
    1518:	e0823003 	add	r3, r2, r3
    151c:	e5d33000 	ldrb	r3, [r3]
    1520:	e3530000 	cmp	r3, #0
    1524:	1affff84 	bne	133c <printf+0x30>
    1528:	e1a00000 	nop			@ (mov r0, r0)
    152c:	e1a00000 	nop			@ (mov r0, r0)
    1530:	e24bd004 	sub	sp, fp, #4
    1534:	e8bd4800 	pop	{fp, lr}
    1538:	e28dd00c 	add	sp, sp, #12
    153c:	e12fff1e 	bx	lr
    1540:	00001b90 	.word	0x00001b90

00001544 <free>:
    1544:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1548:	e28db000 	add	fp, sp, #0
    154c:	e24dd014 	sub	sp, sp, #20
    1550:	e50b0010 	str	r0, [fp, #-16]
    1554:	e51b3010 	ldr	r3, [fp, #-16]
    1558:	e2433008 	sub	r3, r3, #8
    155c:	e50b300c 	str	r3, [fp, #-12]
    1560:	e59f3154 	ldr	r3, [pc, #340]	@ 16bc <free+0x178>
    1564:	e5933000 	ldr	r3, [r3]
    1568:	e50b3008 	str	r3, [fp, #-8]
    156c:	ea000010 	b	15b4 <free+0x70>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5933000 	ldr	r3, [r3]
    1578:	e51b2008 	ldr	r2, [fp, #-8]
    157c:	e1520003 	cmp	r2, r3
    1580:	3a000008 	bcc	15a8 <free+0x64>
    1584:	e51b200c 	ldr	r2, [fp, #-12]
    1588:	e51b3008 	ldr	r3, [fp, #-8]
    158c:	e1520003 	cmp	r2, r3
    1590:	8a000010 	bhi	15d8 <free+0x94>
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e5933000 	ldr	r3, [r3]
    159c:	e51b200c 	ldr	r2, [fp, #-12]
    15a0:	e1520003 	cmp	r2, r3
    15a4:	3a00000b 	bcc	15d8 <free+0x94>
    15a8:	e51b3008 	ldr	r3, [fp, #-8]
    15ac:	e5933000 	ldr	r3, [r3]
    15b0:	e50b3008 	str	r3, [fp, #-8]
    15b4:	e51b200c 	ldr	r2, [fp, #-12]
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e1520003 	cmp	r2, r3
    15c0:	9affffea 	bls	1570 <free+0x2c>
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5933000 	ldr	r3, [r3]
    15cc:	e51b200c 	ldr	r2, [fp, #-12]
    15d0:	e1520003 	cmp	r2, r3
    15d4:	2affffe5 	bcs	1570 <free+0x2c>
    15d8:	e51b300c 	ldr	r3, [fp, #-12]
    15dc:	e5933004 	ldr	r3, [r3, #4]
    15e0:	e1a03183 	lsl	r3, r3, #3
    15e4:	e51b200c 	ldr	r2, [fp, #-12]
    15e8:	e0822003 	add	r2, r2, r3
    15ec:	e51b3008 	ldr	r3, [fp, #-8]
    15f0:	e5933000 	ldr	r3, [r3]
    15f4:	e1520003 	cmp	r2, r3
    15f8:	1a00000d 	bne	1634 <free+0xf0>
    15fc:	e51b300c 	ldr	r3, [fp, #-12]
    1600:	e5932004 	ldr	r2, [r3, #4]
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e5933000 	ldr	r3, [r3]
    160c:	e5933004 	ldr	r3, [r3, #4]
    1610:	e0822003 	add	r2, r2, r3
    1614:	e51b300c 	ldr	r3, [fp, #-12]
    1618:	e5832004 	str	r2, [r3, #4]
    161c:	e51b3008 	ldr	r3, [fp, #-8]
    1620:	e5933000 	ldr	r3, [r3]
    1624:	e5932000 	ldr	r2, [r3]
    1628:	e51b300c 	ldr	r3, [fp, #-12]
    162c:	e5832000 	str	r2, [r3]
    1630:	ea000003 	b	1644 <free+0x100>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e5932000 	ldr	r2, [r3]
    163c:	e51b300c 	ldr	r3, [fp, #-12]
    1640:	e5832000 	str	r2, [r3]
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5933004 	ldr	r3, [r3, #4]
    164c:	e1a03183 	lsl	r3, r3, #3
    1650:	e51b2008 	ldr	r2, [fp, #-8]
    1654:	e0823003 	add	r3, r2, r3
    1658:	e51b200c 	ldr	r2, [fp, #-12]
    165c:	e1520003 	cmp	r2, r3
    1660:	1a00000b 	bne	1694 <free+0x150>
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e5932004 	ldr	r2, [r3, #4]
    166c:	e51b300c 	ldr	r3, [fp, #-12]
    1670:	e5933004 	ldr	r3, [r3, #4]
    1674:	e0822003 	add	r2, r2, r3
    1678:	e51b3008 	ldr	r3, [fp, #-8]
    167c:	e5832004 	str	r2, [r3, #4]
    1680:	e51b300c 	ldr	r3, [fp, #-12]
    1684:	e5932000 	ldr	r2, [r3]
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e5832000 	str	r2, [r3]
    1690:	ea000002 	b	16a0 <free+0x15c>
    1694:	e51b3008 	ldr	r3, [fp, #-8]
    1698:	e51b200c 	ldr	r2, [fp, #-12]
    169c:	e5832000 	str	r2, [r3]
    16a0:	e59f2014 	ldr	r2, [pc, #20]	@ 16bc <free+0x178>
    16a4:	e51b3008 	ldr	r3, [fp, #-8]
    16a8:	e5823000 	str	r3, [r2]
    16ac:	e1a00000 	nop			@ (mov r0, r0)
    16b0:	e28bd000 	add	sp, fp, #0
    16b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16b8:	e12fff1e 	bx	lr
    16bc:	00001bb4 	.word	0x00001bb4

000016c0 <morecore>:
    16c0:	e92d4800 	push	{fp, lr}
    16c4:	e28db004 	add	fp, sp, #4
    16c8:	e24dd010 	sub	sp, sp, #16
    16cc:	e50b0010 	str	r0, [fp, #-16]
    16d0:	e51b3010 	ldr	r3, [fp, #-16]
    16d4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    16d8:	2a000001 	bcs	16e4 <morecore+0x24>
    16dc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    16e0:	e50b3010 	str	r3, [fp, #-16]
    16e4:	e51b3010 	ldr	r3, [fp, #-16]
    16e8:	e1a03183 	lsl	r3, r3, #3
    16ec:	e1a00003 	mov	r0, r3
    16f0:	ebfffdfe 	bl	ef0 <sbrk>
    16f4:	e50b0008 	str	r0, [fp, #-8]
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e3730001 	cmn	r3, #1
    1700:	1a000001 	bne	170c <morecore+0x4c>
    1704:	e3a03000 	mov	r3, #0
    1708:	ea00000a 	b	1738 <morecore+0x78>
    170c:	e51b3008 	ldr	r3, [fp, #-8]
    1710:	e50b300c 	str	r3, [fp, #-12]
    1714:	e51b300c 	ldr	r3, [fp, #-12]
    1718:	e51b2010 	ldr	r2, [fp, #-16]
    171c:	e5832004 	str	r2, [r3, #4]
    1720:	e51b300c 	ldr	r3, [fp, #-12]
    1724:	e2833008 	add	r3, r3, #8
    1728:	e1a00003 	mov	r0, r3
    172c:	ebffff84 	bl	1544 <free>
    1730:	e59f300c 	ldr	r3, [pc, #12]	@ 1744 <morecore+0x84>
    1734:	e5933000 	ldr	r3, [r3]
    1738:	e1a00003 	mov	r0, r3
    173c:	e24bd004 	sub	sp, fp, #4
    1740:	e8bd8800 	pop	{fp, pc}
    1744:	00001bb4 	.word	0x00001bb4

00001748 <malloc>:
    1748:	e92d4800 	push	{fp, lr}
    174c:	e28db004 	add	fp, sp, #4
    1750:	e24dd018 	sub	sp, sp, #24
    1754:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1758:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    175c:	e2833007 	add	r3, r3, #7
    1760:	e1a031a3 	lsr	r3, r3, #3
    1764:	e2833001 	add	r3, r3, #1
    1768:	e50b3010 	str	r3, [fp, #-16]
    176c:	e59f3134 	ldr	r3, [pc, #308]	@ 18a8 <malloc+0x160>
    1770:	e5933000 	ldr	r3, [r3]
    1774:	e50b300c 	str	r3, [fp, #-12]
    1778:	e51b300c 	ldr	r3, [fp, #-12]
    177c:	e3530000 	cmp	r3, #0
    1780:	1a00000b 	bne	17b4 <malloc+0x6c>
    1784:	e59f3120 	ldr	r3, [pc, #288]	@ 18ac <malloc+0x164>
    1788:	e50b300c 	str	r3, [fp, #-12]
    178c:	e59f2114 	ldr	r2, [pc, #276]	@ 18a8 <malloc+0x160>
    1790:	e51b300c 	ldr	r3, [fp, #-12]
    1794:	e5823000 	str	r3, [r2]
    1798:	e59f3108 	ldr	r3, [pc, #264]	@ 18a8 <malloc+0x160>
    179c:	e5933000 	ldr	r3, [r3]
    17a0:	e59f2104 	ldr	r2, [pc, #260]	@ 18ac <malloc+0x164>
    17a4:	e5823000 	str	r3, [r2]
    17a8:	e59f30fc 	ldr	r3, [pc, #252]	@ 18ac <malloc+0x164>
    17ac:	e3a02000 	mov	r2, #0
    17b0:	e5832004 	str	r2, [r3, #4]
    17b4:	e51b300c 	ldr	r3, [fp, #-12]
    17b8:	e5933000 	ldr	r3, [r3]
    17bc:	e50b3008 	str	r3, [fp, #-8]
    17c0:	e51b3008 	ldr	r3, [fp, #-8]
    17c4:	e5933004 	ldr	r3, [r3, #4]
    17c8:	e51b2010 	ldr	r2, [fp, #-16]
    17cc:	e1520003 	cmp	r2, r3
    17d0:	8a00001e 	bhi	1850 <malloc+0x108>
    17d4:	e51b3008 	ldr	r3, [fp, #-8]
    17d8:	e5933004 	ldr	r3, [r3, #4]
    17dc:	e51b2010 	ldr	r2, [fp, #-16]
    17e0:	e1520003 	cmp	r2, r3
    17e4:	1a000004 	bne	17fc <malloc+0xb4>
    17e8:	e51b3008 	ldr	r3, [fp, #-8]
    17ec:	e5932000 	ldr	r2, [r3]
    17f0:	e51b300c 	ldr	r3, [fp, #-12]
    17f4:	e5832000 	str	r2, [r3]
    17f8:	ea00000e 	b	1838 <malloc+0xf0>
    17fc:	e51b3008 	ldr	r3, [fp, #-8]
    1800:	e5932004 	ldr	r2, [r3, #4]
    1804:	e51b3010 	ldr	r3, [fp, #-16]
    1808:	e0422003 	sub	r2, r2, r3
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5832004 	str	r2, [r3, #4]
    1814:	e51b3008 	ldr	r3, [fp, #-8]
    1818:	e5933004 	ldr	r3, [r3, #4]
    181c:	e1a03183 	lsl	r3, r3, #3
    1820:	e51b2008 	ldr	r2, [fp, #-8]
    1824:	e0823003 	add	r3, r2, r3
    1828:	e50b3008 	str	r3, [fp, #-8]
    182c:	e51b3008 	ldr	r3, [fp, #-8]
    1830:	e51b2010 	ldr	r2, [fp, #-16]
    1834:	e5832004 	str	r2, [r3, #4]
    1838:	e59f2068 	ldr	r2, [pc, #104]	@ 18a8 <malloc+0x160>
    183c:	e51b300c 	ldr	r3, [fp, #-12]
    1840:	e5823000 	str	r3, [r2]
    1844:	e51b3008 	ldr	r3, [fp, #-8]
    1848:	e2833008 	add	r3, r3, #8
    184c:	ea000012 	b	189c <malloc+0x154>
    1850:	e59f3050 	ldr	r3, [pc, #80]	@ 18a8 <malloc+0x160>
    1854:	e5933000 	ldr	r3, [r3]
    1858:	e51b2008 	ldr	r2, [fp, #-8]
    185c:	e1520003 	cmp	r2, r3
    1860:	1a000007 	bne	1884 <malloc+0x13c>
    1864:	e51b0010 	ldr	r0, [fp, #-16]
    1868:	ebffff94 	bl	16c0 <morecore>
    186c:	e50b0008 	str	r0, [fp, #-8]
    1870:	e51b3008 	ldr	r3, [fp, #-8]
    1874:	e3530000 	cmp	r3, #0
    1878:	1a000001 	bne	1884 <malloc+0x13c>
    187c:	e3a03000 	mov	r3, #0
    1880:	ea000005 	b	189c <malloc+0x154>
    1884:	e51b3008 	ldr	r3, [fp, #-8]
    1888:	e50b300c 	str	r3, [fp, #-12]
    188c:	e51b3008 	ldr	r3, [fp, #-8]
    1890:	e5933000 	ldr	r3, [r3]
    1894:	e50b3008 	str	r3, [fp, #-8]
    1898:	eaffffc8 	b	17c0 <malloc+0x78>
    189c:	e1a00003 	mov	r0, r3
    18a0:	e24bd004 	sub	sp, fp, #4
    18a4:	e8bd8800 	pop	{fp, pc}
    18a8:	00001bb4 	.word	0x00001bb4
    18ac:	00001bac 	.word	0x00001bac

000018b0 <__udivsi3>:
    18b0:	e2512001 	subs	r2, r1, #1
    18b4:	012fff1e 	bxeq	lr
    18b8:	3a000036 	bcc	1998 <__udivsi3+0xe8>
    18bc:	e1500001 	cmp	r0, r1
    18c0:	9a000022 	bls	1950 <__udivsi3+0xa0>
    18c4:	e1110002 	tst	r1, r2
    18c8:	0a000023 	beq	195c <__udivsi3+0xac>
    18cc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    18d0:	01a01181 	lsleq	r1, r1, #3
    18d4:	03a03008 	moveq	r3, #8
    18d8:	13a03001 	movne	r3, #1
    18dc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    18e0:	31510000 	cmpcc	r1, r0
    18e4:	31a01201 	lslcc	r1, r1, #4
    18e8:	31a03203 	lslcc	r3, r3, #4
    18ec:	3afffffa 	bcc	18dc <__udivsi3+0x2c>
    18f0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    18f4:	31510000 	cmpcc	r1, r0
    18f8:	31a01081 	lslcc	r1, r1, #1
    18fc:	31a03083 	lslcc	r3, r3, #1
    1900:	3afffffa 	bcc	18f0 <__udivsi3+0x40>
    1904:	e3a02000 	mov	r2, #0
    1908:	e1500001 	cmp	r0, r1
    190c:	20400001 	subcs	r0, r0, r1
    1910:	21822003 	orrcs	r2, r2, r3
    1914:	e15000a1 	cmp	r0, r1, lsr #1
    1918:	204000a1 	subcs	r0, r0, r1, lsr #1
    191c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1920:	e1500121 	cmp	r0, r1, lsr #2
    1924:	20400121 	subcs	r0, r0, r1, lsr #2
    1928:	21822123 	orrcs	r2, r2, r3, lsr #2
    192c:	e15001a1 	cmp	r0, r1, lsr #3
    1930:	204001a1 	subcs	r0, r0, r1, lsr #3
    1934:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1938:	e3500000 	cmp	r0, #0
    193c:	11b03223 	lsrsne	r3, r3, #4
    1940:	11a01221 	lsrne	r1, r1, #4
    1944:	1affffef 	bne	1908 <__udivsi3+0x58>
    1948:	e1a00002 	mov	r0, r2
    194c:	e12fff1e 	bx	lr
    1950:	03a00001 	moveq	r0, #1
    1954:	13a00000 	movne	r0, #0
    1958:	e12fff1e 	bx	lr
    195c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1960:	21a01821 	lsrcs	r1, r1, #16
    1964:	23a02010 	movcs	r2, #16
    1968:	33a02000 	movcc	r2, #0
    196c:	e3510c01 	cmp	r1, #256	@ 0x100
    1970:	21a01421 	lsrcs	r1, r1, #8
    1974:	22822008 	addcs	r2, r2, #8
    1978:	e3510010 	cmp	r1, #16
    197c:	21a01221 	lsrcs	r1, r1, #4
    1980:	22822004 	addcs	r2, r2, #4
    1984:	e3510004 	cmp	r1, #4
    1988:	82822003 	addhi	r2, r2, #3
    198c:	908220a1 	addls	r2, r2, r1, lsr #1
    1990:	e1a00230 	lsr	r0, r0, r2
    1994:	e12fff1e 	bx	lr
    1998:	e3500000 	cmp	r0, #0
    199c:	13e00000 	mvnne	r0, #0
    19a0:	ea000007 	b	19c4 <__aeabi_idiv0>

000019a4 <__aeabi_uidivmod>:
    19a4:	e3510000 	cmp	r1, #0
    19a8:	0afffffa 	beq	1998 <__udivsi3+0xe8>
    19ac:	e92d4003 	push	{r0, r1, lr}
    19b0:	ebffffbe 	bl	18b0 <__udivsi3>
    19b4:	e8bd4006 	pop	{r1, r2, lr}
    19b8:	e0030092 	mul	r3, r2, r0
    19bc:	e0411003 	sub	r1, r1, r3
    19c0:	e12fff1e 	bx	lr

000019c4 <__aeabi_idiv0>:
    19c4:	e12fff1e 	bx	lr
