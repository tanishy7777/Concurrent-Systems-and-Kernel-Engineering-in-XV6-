
_test_sleep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde52 	sub	sp, sp, #1312	@ 0x520
       c:	e24dd008 	sub	sp, sp, #8
      10:	e50b0518 	str	r0, [fp, #-1304]	@ 0xfffffae8
      14:	e50b151c 	str	r1, [fp, #-1308]	@ 0xfffffae4
      18:	eb0002e1 	bl	ba4 <fork>
      1c:	e50b000c 	str	r0, [fp, #-12]
      20:	e51b300c 	ldr	r3, [fp, #-12]
      24:	e3530000 	cmp	r3, #0
      28:	1a000006 	bne	48 <main+0x48>
      2c:	e59f125c 	ldr	r1, [pc, #604]	@ 290 <main+0x290>
      30:	e3a00001 	mov	r0, #1
      34:	eb000483 	bl	1248 <printf>
      38:	e3a00014 	mov	r0, #20
      3c:	eb000383 	bl	e50 <sleep>
      40:	e1a00000 	nop			@ (mov r0, r0)
      44:	eafffffd 	b	40 <main+0x40>
      48:	e51b300c 	ldr	r3, [fp, #-12]
      4c:	e3530000 	cmp	r3, #0
      50:	aa000003 	bge	64 <main+0x64>
      54:	e59f1238 	ldr	r1, [pc, #568]	@ 294 <main+0x294>
      58:	e3a00001 	mov	r0, #1
      5c:	eb000479 	bl	1248 <printf>
      60:	ea000005 	b	7c <main+0x7c>
      64:	e59f122c 	ldr	r1, [pc, #556]	@ 298 <main+0x298>
      68:	e3a00001 	mov	r0, #1
      6c:	eb000475 	bl	1248 <printf>
      70:	e51b100c 	ldr	r1, [fp, #-12]
      74:	e3a00010 	mov	r0, #16
      78:	eb000398 	bl	ee0 <setticket>
      7c:	eb0002c8 	bl	ba4 <fork>
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e3530000 	cmp	r3, #0
      8c:	1a000004 	bne	a4 <main+0xa4>
      90:	e59f1204 	ldr	r1, [pc, #516]	@ 29c <main+0x29c>
      94:	e3a00001 	mov	r0, #1
      98:	eb00046a 	bl	1248 <printf>
      9c:	e1a00000 	nop			@ (mov r0, r0)
      a0:	eafffffd 	b	9c <main+0x9c>
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e3530000 	cmp	r3, #0
      ac:	aa000003 	bge	c0 <main+0xc0>
      b0:	e59f11dc 	ldr	r1, [pc, #476]	@ 294 <main+0x294>
      b4:	e3a00001 	mov	r0, #1
      b8:	eb000462 	bl	1248 <printf>
      bc:	ea000005 	b	d8 <main+0xd8>
      c0:	e59f11d8 	ldr	r1, [pc, #472]	@ 2a0 <main+0x2a0>
      c4:	e3a00001 	mov	r0, #1
      c8:	eb00045e 	bl	1248 <printf>
      cc:	e51b1010 	ldr	r1, [fp, #-16]
      d0:	e3a00004 	mov	r0, #4
      d4:	eb000381 	bl	ee0 <setticket>
      d8:	eb0002b1 	bl	ba4 <fork>
      dc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e4:	e3530000 	cmp	r3, #0
      e8:	1a000007 	bne	10c <main+0x10c>
      ec:	e59f11b0 	ldr	r1, [pc, #432]	@ 2a4 <main+0x2a4>
      f0:	e3a00001 	mov	r0, #1
      f4:	eb000453 	bl	1248 <printf>
      f8:	e3a00014 	mov	r0, #20
      fc:	eb000353 	bl	e50 <sleep>
     100:	e3a00014 	mov	r0, #20
     104:	eb000351 	bl	e50 <sleep>
     108:	eb0002ae 	bl	bc8 <exit>
     10c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     110:	e3530000 	cmp	r3, #0
     114:	aa000003 	bge	128 <main+0x128>
     118:	e59f1174 	ldr	r1, [pc, #372]	@ 294 <main+0x294>
     11c:	e3a00001 	mov	r0, #1
     120:	eb000448 	bl	1248 <printf>
     124:	ea000005 	b	140 <main+0x140>
     128:	e59f1178 	ldr	r1, [pc, #376]	@ 2a8 <main+0x2a8>
     12c:	e3a00001 	mov	r0, #1
     130:	eb000444 	bl	1248 <printf>
     134:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     138:	e3a00050 	mov	r0, #80	@ 0x50
     13c:	eb000367 	bl	ee0 <setticket>
     140:	e3a00064 	mov	r0, #100	@ 0x64
     144:	eb000341 	bl	e50 <sleep>
     148:	e24b3e51 	sub	r3, fp, #1296	@ 0x510
     14c:	e2433004 	sub	r3, r3, #4
     150:	e1a00003 	mov	r0, r3
     154:	eb00036a 	bl	f04 <getpinfo>
     158:	e1a03000 	mov	r3, r0
     15c:	e3530000 	cmp	r3, #0
     160:	aa000003 	bge	174 <main+0x174>
     164:	e59f1140 	ldr	r1, [pc, #320]	@ 2ac <main+0x2ac>
     168:	e3a00001 	mov	r0, #1
     16c:	eb000435 	bl	1248 <printf>
     170:	eb000294 	bl	bc8 <exit>
     174:	e59f1134 	ldr	r1, [pc, #308]	@ 2b0 <main+0x2b0>
     178:	e3a00001 	mov	r0, #1
     17c:	eb000431 	bl	1248 <printf>
     180:	e59f112c 	ldr	r1, [pc, #300]	@ 2b4 <main+0x2b4>
     184:	e3a00001 	mov	r0, #1
     188:	eb00042e 	bl	1248 <printf>
     18c:	e3a03000 	mov	r3, #0
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	ea000030 	b	25c <main+0x25c>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e1a03103 	lsl	r3, r3, #2
     1a0:	e2433004 	sub	r3, r3, #4
     1a4:	e083300b 	add	r3, r3, fp
     1a8:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a000025 	beq	24c <main+0x24c>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e1a03103 	lsl	r3, r3, #2
     1bc:	e2433004 	sub	r3, r3, #4
     1c0:	e083300b 	add	r3, r3, fp
     1c4:	e5130510 	ldr	r0, [r3, #-1296]	@ 0xfffffaf0
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e2833040 	add	r3, r3, #64	@ 0x40
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e2433004 	sub	r3, r3, #4
     1d8:	e083300b 	add	r3, r3, fp
     1dc:	e513c510 	ldr	ip, [r3, #-1296]	@ 0xfffffaf0
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e2833080 	add	r3, r3, #128	@ 0x80
     1e8:	e1a03103 	lsl	r3, r3, #2
     1ec:	e2433004 	sub	r3, r3, #4
     1f0:	e083300b 	add	r3, r3, fp
     1f4:	e5132510 	ldr	r2, [r3, #-1296]	@ 0xfffffaf0
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e28330c0 	add	r3, r3, #192	@ 0xc0
     200:	e1a03103 	lsl	r3, r3, #2
     204:	e2433004 	sub	r3, r3, #4
     208:	e083300b 	add	r3, r3, fp
     20c:	e5131510 	ldr	r1, [r3, #-1296]	@ 0xfffffaf0
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e2833c01 	add	r3, r3, #256	@ 0x100
     218:	e1a03103 	lsl	r3, r3, #2
     21c:	e2433004 	sub	r3, r3, #4
     220:	e083300b 	add	r3, r3, fp
     224:	e5133510 	ldr	r3, [r3, #-1296]	@ 0xfffffaf0
     228:	e58d3008 	str	r3, [sp, #8]
     22c:	e58d1004 	str	r1, [sp, #4]
     230:	e58d2000 	str	r2, [sp]
     234:	e1a0300c 	mov	r3, ip
     238:	e1a02000 	mov	r2, r0
     23c:	e59f1074 	ldr	r1, [pc, #116]	@ 2b8 <main+0x2b8>
     240:	e3a00001 	mov	r0, #1
     244:	eb0003ff 	bl	1248 <printf>
     248:	ea000000 	b	250 <main+0x250>
     24c:	e1a00000 	nop			@ (mov r0, r0)
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2833001 	add	r3, r3, #1
     258:	e50b3008 	str	r3, [fp, #-8]
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e353003f 	cmp	r3, #63	@ 0x3f
     264:	daffffcb 	ble	198 <main+0x198>
     268:	e51b000c 	ldr	r0, [fp, #-12]
     26c:	eb00028b 	bl	ca0 <kill>
     270:	e51b0010 	ldr	r0, [fp, #-16]
     274:	eb000289 	bl	ca0 <kill>
     278:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     27c:	eb000287 	bl	ca0 <kill>
     280:	eb000259 	bl	bec <wait>
     284:	eb000258 	bl	bec <wait>
     288:	eb000257 	bl	bec <wait>
     28c:	eb00024d 	bl	bc8 <exit>
     290:	00001904 	.word	0x00001904
     294:	00001910 	.word	0x00001910
     298:	00001920 	.word	0x00001920
     29c:	0000192c 	.word	0x0000192c
     2a0:	00001938 	.word	0x00001938
     2a4:	00001944 	.word	0x00001944
     2a8:	00001950 	.word	0x00001950
     2ac:	0000195c 	.word	0x0000195c
     2b0:	00001970 	.word	0x00001970
     2b4:	00001984 	.word	0x00001984
     2b8:	000019b0 	.word	0x000019b0

000002bc <xchg>:
     2bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2c0:	e28db000 	add	fp, sp, #0
     2c4:	e24dd014 	sub	sp, sp, #20
     2c8:	e50b0010 	str	r0, [fp, #-16]
     2cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     2d0:	e51b1010 	ldr	r1, [fp, #-16]
     2d4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     2d8:	e1912f9f 	ldrex	r2, [r1]
     2dc:	e1813f90 	strex	r3, r0, [r1]
     2e0:	e50b2008 	str	r2, [fp, #-8]
     2e4:	e50b300c 	str	r3, [fp, #-12]
     2e8:	e51b300c 	ldr	r3, [fp, #-12]
     2ec:	e3530000 	cmp	r3, #0
     2f0:	1afffff6 	bne	2d0 <xchg+0x14>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e1a00003 	mov	r0, r3
     2fc:	e28bd000 	add	sp, fp, #0
     300:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     304:	e12fff1e 	bx	lr

00000308 <strcpy>:
     308:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     30c:	e28db000 	add	fp, sp, #0
     310:	e24dd014 	sub	sp, sp, #20
     314:	e50b0010 	str	r0, [fp, #-16]
     318:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     31c:	e51b3010 	ldr	r3, [fp, #-16]
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e1a00000 	nop			@ (mov r0, r0)
     328:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     32c:	e2823001 	add	r3, r2, #1
     330:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     334:	e51b3010 	ldr	r3, [fp, #-16]
     338:	e2831001 	add	r1, r3, #1
     33c:	e50b1010 	str	r1, [fp, #-16]
     340:	e5d22000 	ldrb	r2, [r2]
     344:	e5c32000 	strb	r2, [r3]
     348:	e5d33000 	ldrb	r3, [r3]
     34c:	e3530000 	cmp	r3, #0
     350:	1afffff4 	bne	328 <strcpy+0x20>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e1a00003 	mov	r0, r3
     35c:	e28bd000 	add	sp, fp, #0
     360:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     364:	e12fff1e 	bx	lr

00000368 <strcmp>:
     368:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     36c:	e28db000 	add	fp, sp, #0
     370:	e24dd00c 	sub	sp, sp, #12
     374:	e50b0008 	str	r0, [fp, #-8]
     378:	e50b100c 	str	r1, [fp, #-12]
     37c:	ea000005 	b	398 <strcmp+0x30>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b300c 	str	r3, [fp, #-12]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	0a000005 	beq	3c0 <strcmp+0x58>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e5d32000 	ldrb	r2, [r3]
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e5d33000 	ldrb	r3, [r3]
     3b8:	e1520003 	cmp	r2, r3
     3bc:	0affffef 	beq	380 <strcmp+0x18>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e5d33000 	ldrb	r3, [r3]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b300c 	ldr	r3, [fp, #-12]
     3d0:	e5d33000 	ldrb	r3, [r3]
     3d4:	e0423003 	sub	r3, r2, r3
     3d8:	e1a00003 	mov	r0, r3
     3dc:	e28bd000 	add	sp, fp, #0
     3e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3e4:	e12fff1e 	bx	lr

000003e8 <strlen>:
     3e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3ec:	e28db000 	add	fp, sp, #0
     3f0:	e24dd014 	sub	sp, sp, #20
     3f4:	e50b0010 	str	r0, [fp, #-16]
     3f8:	e3a03000 	mov	r3, #0
     3fc:	e50b3008 	str	r3, [fp, #-8]
     400:	ea000002 	b	410 <strlen+0x28>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2833001 	add	r3, r3, #1
     40c:	e50b3008 	str	r3, [fp, #-8]
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e51b2010 	ldr	r2, [fp, #-16]
     418:	e0823003 	add	r3, r2, r3
     41c:	e5d33000 	ldrb	r3, [r3]
     420:	e3530000 	cmp	r3, #0
     424:	1afffff6 	bne	404 <strlen+0x1c>
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e1a00003 	mov	r0, r3
     430:	e28bd000 	add	sp, fp, #0
     434:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     438:	e12fff1e 	bx	lr

0000043c <memset>:
     43c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     440:	e28db000 	add	fp, sp, #0
     444:	e24dd024 	sub	sp, sp, #36	@ 0x24
     448:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     44c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     450:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     454:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     460:	e54b300d 	strb	r3, [fp, #-13]
     464:	e55b200d 	ldrb	r2, [fp, #-13]
     468:	e1a03002 	mov	r3, r2
     46c:	e1a03403 	lsl	r3, r3, #8
     470:	e0833002 	add	r3, r3, r2
     474:	e1a03803 	lsl	r3, r3, #16
     478:	e1a02003 	mov	r2, r3
     47c:	e55b300d 	ldrb	r3, [fp, #-13]
     480:	e1a03403 	lsl	r3, r3, #8
     484:	e1822003 	orr	r2, r2, r3
     488:	e55b300d 	ldrb	r3, [fp, #-13]
     48c:	e1823003 	orr	r3, r2, r3
     490:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     494:	ea000008 	b	4bc <memset+0x80>
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4a8:	e2433001 	sub	r3, r3, #1
     4ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e2833001 	add	r3, r3, #1
     4b8:	e50b3008 	str	r3, [fp, #-8]
     4bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4c0:	e3530000 	cmp	r3, #0
     4c4:	0a000003 	beq	4d8 <memset+0x9c>
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2033003 	and	r3, r3, #3
     4d0:	e3530000 	cmp	r3, #0
     4d4:	1affffef 	bne	498 <memset+0x5c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e50b300c 	str	r3, [fp, #-12]
     4e0:	ea000008 	b	508 <memset+0xcc>
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4ec:	e5832000 	str	r2, [r3]
     4f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4f4:	e2433004 	sub	r3, r3, #4
     4f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4fc:	e51b300c 	ldr	r3, [fp, #-12]
     500:	e2833004 	add	r3, r3, #4
     504:	e50b300c 	str	r3, [fp, #-12]
     508:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     50c:	e3530003 	cmp	r3, #3
     510:	8afffff3 	bhi	4e4 <memset+0xa8>
     514:	e51b300c 	ldr	r3, [fp, #-12]
     518:	e50b3008 	str	r3, [fp, #-8]
     51c:	ea000008 	b	544 <memset+0x108>
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e55b200d 	ldrb	r2, [fp, #-13]
     528:	e5c32000 	strb	r2, [r3]
     52c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     530:	e2433001 	sub	r3, r3, #1
     534:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     538:	e51b3008 	ldr	r3, [fp, #-8]
     53c:	e2833001 	add	r3, r3, #1
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     548:	e3530000 	cmp	r3, #0
     54c:	1afffff3 	bne	520 <memset+0xe4>
     550:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     554:	e1a00003 	mov	r0, r3
     558:	e28bd000 	add	sp, fp, #0
     55c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     560:	e12fff1e 	bx	lr

00000564 <strchr>:
     564:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     568:	e28db000 	add	fp, sp, #0
     56c:	e24dd00c 	sub	sp, sp, #12
     570:	e50b0008 	str	r0, [fp, #-8]
     574:	e1a03001 	mov	r3, r1
     578:	e54b3009 	strb	r3, [fp, #-9]
     57c:	ea000009 	b	5a8 <strchr+0x44>
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e5d33000 	ldrb	r3, [r3]
     588:	e55b2009 	ldrb	r2, [fp, #-9]
     58c:	e1520003 	cmp	r2, r3
     590:	1a000001 	bne	59c <strchr+0x38>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	ea000007 	b	5bc <strchr+0x58>
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e2833001 	add	r3, r3, #1
     5a4:	e50b3008 	str	r3, [fp, #-8]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e5d33000 	ldrb	r3, [r3]
     5b0:	e3530000 	cmp	r3, #0
     5b4:	1afffff1 	bne	580 <strchr+0x1c>
     5b8:	e3a03000 	mov	r3, #0
     5bc:	e1a00003 	mov	r0, r3
     5c0:	e28bd000 	add	sp, fp, #0
     5c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <gets>:
     5cc:	e92d4800 	push	{fp, lr}
     5d0:	e28db004 	add	fp, sp, #4
     5d4:	e24dd018 	sub	sp, sp, #24
     5d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5dc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5e0:	e3a03000 	mov	r3, #0
     5e4:	e50b3008 	str	r3, [fp, #-8]
     5e8:	ea000016 	b	648 <gets+0x7c>
     5ec:	e24b300d 	sub	r3, fp, #13
     5f0:	e3a02001 	mov	r2, #1
     5f4:	e1a01003 	mov	r1, r3
     5f8:	e3a00000 	mov	r0, #0
     5fc:	eb00018c 	bl	c34 <read>
     600:	e50b000c 	str	r0, [fp, #-12]
     604:	e51b300c 	ldr	r3, [fp, #-12]
     608:	e3530000 	cmp	r3, #0
     60c:	da000013 	ble	660 <gets+0x94>
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	e2832001 	add	r2, r3, #1
     618:	e50b2008 	str	r2, [fp, #-8]
     61c:	e1a02003 	mov	r2, r3
     620:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     624:	e0833002 	add	r3, r3, r2
     628:	e55b200d 	ldrb	r2, [fp, #-13]
     62c:	e5c32000 	strb	r2, [r3]
     630:	e55b300d 	ldrb	r3, [fp, #-13]
     634:	e353000a 	cmp	r3, #10
     638:	0a000009 	beq	664 <gets+0x98>
     63c:	e55b300d 	ldrb	r3, [fp, #-13]
     640:	e353000d 	cmp	r3, #13
     644:	0a000006 	beq	664 <gets+0x98>
     648:	e51b3008 	ldr	r3, [fp, #-8]
     64c:	e2833001 	add	r3, r3, #1
     650:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     654:	e1520003 	cmp	r2, r3
     658:	caffffe3 	bgt	5ec <gets+0x20>
     65c:	ea000000 	b	664 <gets+0x98>
     660:	e1a00000 	nop			@ (mov r0, r0)
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e0823003 	add	r3, r2, r3
     670:	e3a02000 	mov	r2, #0
     674:	e5c32000 	strb	r2, [r3]
     678:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     67c:	e1a00003 	mov	r0, r3
     680:	e24bd004 	sub	sp, fp, #4
     684:	e8bd8800 	pop	{fp, pc}

00000688 <stat>:
     688:	e92d4800 	push	{fp, lr}
     68c:	e28db004 	add	fp, sp, #4
     690:	e24dd010 	sub	sp, sp, #16
     694:	e50b0010 	str	r0, [fp, #-16]
     698:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     69c:	e3a01000 	mov	r1, #0
     6a0:	e51b0010 	ldr	r0, [fp, #-16]
     6a4:	eb00018f 	bl	ce8 <open>
     6a8:	e50b0008 	str	r0, [fp, #-8]
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e3530000 	cmp	r3, #0
     6b4:	aa000001 	bge	6c0 <stat+0x38>
     6b8:	e3e03000 	mvn	r3, #0
     6bc:	ea000006 	b	6dc <stat+0x54>
     6c0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     6c4:	e51b0008 	ldr	r0, [fp, #-8]
     6c8:	eb0001a1 	bl	d54 <fstat>
     6cc:	e50b000c 	str	r0, [fp, #-12]
     6d0:	e51b0008 	ldr	r0, [fp, #-8]
     6d4:	eb000168 	bl	c7c <close>
     6d8:	e51b300c 	ldr	r3, [fp, #-12]
     6dc:	e1a00003 	mov	r0, r3
     6e0:	e24bd004 	sub	sp, fp, #4
     6e4:	e8bd8800 	pop	{fp, pc}

000006e8 <atoi>:
     6e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ec:	e28db000 	add	fp, sp, #0
     6f0:	e24dd014 	sub	sp, sp, #20
     6f4:	e50b0010 	str	r0, [fp, #-16]
     6f8:	e3a03000 	mov	r3, #0
     6fc:	e50b3008 	str	r3, [fp, #-8]
     700:	ea00000c 	b	738 <atoi+0x50>
     704:	e51b2008 	ldr	r2, [fp, #-8]
     708:	e1a03002 	mov	r3, r2
     70c:	e1a03103 	lsl	r3, r3, #2
     710:	e0833002 	add	r3, r3, r2
     714:	e1a03083 	lsl	r3, r3, #1
     718:	e1a01003 	mov	r1, r3
     71c:	e51b3010 	ldr	r3, [fp, #-16]
     720:	e2832001 	add	r2, r3, #1
     724:	e50b2010 	str	r2, [fp, #-16]
     728:	e5d33000 	ldrb	r3, [r3]
     72c:	e0813003 	add	r3, r1, r3
     730:	e2433030 	sub	r3, r3, #48	@ 0x30
     734:	e50b3008 	str	r3, [fp, #-8]
     738:	e51b3010 	ldr	r3, [fp, #-16]
     73c:	e5d33000 	ldrb	r3, [r3]
     740:	e353002f 	cmp	r3, #47	@ 0x2f
     744:	9a000003 	bls	758 <atoi+0x70>
     748:	e51b3010 	ldr	r3, [fp, #-16]
     74c:	e5d33000 	ldrb	r3, [r3]
     750:	e3530039 	cmp	r3, #57	@ 0x39
     754:	9affffea 	bls	704 <atoi+0x1c>
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e1a00003 	mov	r0, r3
     760:	e28bd000 	add	sp, fp, #0
     764:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     768:	e12fff1e 	bx	lr

0000076c <memmove>:
     76c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     770:	e28db000 	add	fp, sp, #0
     774:	e24dd01c 	sub	sp, sp, #28
     778:	e50b0010 	str	r0, [fp, #-16]
     77c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     780:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     784:	e51b3010 	ldr	r3, [fp, #-16]
     788:	e50b3008 	str	r3, [fp, #-8]
     78c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     790:	e50b300c 	str	r3, [fp, #-12]
     794:	ea000007 	b	7b8 <memmove+0x4c>
     798:	e51b200c 	ldr	r2, [fp, #-12]
     79c:	e2823001 	add	r3, r2, #1
     7a0:	e50b300c 	str	r3, [fp, #-12]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e2831001 	add	r1, r3, #1
     7ac:	e50b1008 	str	r1, [fp, #-8]
     7b0:	e5d22000 	ldrb	r2, [r2]
     7b4:	e5c32000 	strb	r2, [r3]
     7b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7bc:	e2432001 	sub	r2, r3, #1
     7c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     7c4:	e3530000 	cmp	r3, #0
     7c8:	cafffff2 	bgt	798 <memmove+0x2c>
     7cc:	e51b3010 	ldr	r3, [fp, #-16]
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e28bd000 	add	sp, fp, #0
     7d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <initiateLock>:
     7e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7e4:	e28db000 	add	fp, sp, #0
     7e8:	e24dd00c 	sub	sp, sp, #12
     7ec:	e50b0008 	str	r0, [fp, #-8]
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e3a02000 	mov	r2, #0
     7f8:	e5832000 	str	r2, [r3]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e3a02001 	mov	r2, #1
     804:	e5832004 	str	r2, [r3, #4]
     808:	e1a00000 	nop			@ (mov r0, r0)
     80c:	e28bd000 	add	sp, fp, #0
     810:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <acquireLock>:
     818:	e92d4800 	push	{fp, lr}
     81c:	e28db004 	add	fp, sp, #4
     820:	e24dd008 	sub	sp, sp, #8
     824:	e50b0008 	str	r0, [fp, #-8]
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e5933000 	ldr	r3, [r3]
     830:	e3730001 	cmn	r3, #1
     834:	1a000002 	bne	844 <acquireLock+0x2c>
     838:	e59f1034 	ldr	r1, [pc, #52]	@ 874 <acquireLock+0x5c>
     83c:	e3a00002 	mov	r0, #2
     840:	eb000280 	bl	1248 <printf>
     844:	e1a00000 	nop			@ (mov r0, r0)
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e3a01001 	mov	r1, #1
     850:	e1a00003 	mov	r0, r3
     854:	ebfffe98 	bl	2bc <xchg>
     858:	e1a03000 	mov	r3, r0
     85c:	e3530000 	cmp	r3, #0
     860:	1afffff8 	bne	848 <acquireLock+0x30>
     864:	e1a00000 	nop			@ (mov r0, r0)
     868:	e1a00000 	nop			@ (mov r0, r0)
     86c:	e24bd004 	sub	sp, fp, #4
     870:	e8bd8800 	pop	{fp, pc}
     874:	000019c4 	.word	0x000019c4

00000878 <releaseLock>:
     878:	e92d4800 	push	{fp, lr}
     87c:	e28db004 	add	fp, sp, #4
     880:	e24dd008 	sub	sp, sp, #8
     884:	e50b0008 	str	r0, [fp, #-8]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5933000 	ldr	r3, [r3]
     890:	e3530001 	cmp	r3, #1
     894:	0a000002 	beq	8a4 <releaseLock+0x2c>
     898:	e59f1020 	ldr	r1, [pc, #32]	@ 8c0 <releaseLock+0x48>
     89c:	e3a00002 	mov	r0, #2
     8a0:	eb000268 	bl	1248 <printf>
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e3a01000 	mov	r1, #0
     8ac:	e1a00003 	mov	r0, r3
     8b0:	ebfffe81 	bl	2bc <xchg>
     8b4:	e1a00000 	nop			@ (mov r0, r0)
     8b8:	e24bd004 	sub	sp, fp, #4
     8bc:	e8bd8800 	pop	{fp, pc}
     8c0:	000019f4 	.word	0x000019f4

000008c4 <initiateCondVar>:
     8c4:	e92d4800 	push	{fp, lr}
     8c8:	e28db004 	add	fp, sp, #4
     8cc:	e24dd008 	sub	sp, sp, #8
     8d0:	e50b0008 	str	r0, [fp, #-8]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e5933004 	ldr	r3, [r3, #4]
     8dc:	e3530000 	cmp	r3, #0
     8e0:	1a000007 	bne	904 <initiateCondVar+0x40>
     8e4:	eb0001e0 	bl	106c <getChannel>
     8e8:	e1a02000 	mov	r2, r0
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5832000 	str	r2, [r3]
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e3a02001 	mov	r2, #1
     8fc:	e5832004 	str	r2, [r3, #4]
     900:	ea000000 	b	908 <initiateCondVar+0x44>
     904:	e1a00000 	nop			@ (mov r0, r0)
     908:	e24bd004 	sub	sp, fp, #4
     90c:	e8bd8800 	pop	{fp, pc}

00000910 <condWait>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd008 	sub	sp, sp, #8
     91c:	e50b0008 	str	r0, [fp, #-8]
     920:	e50b100c 	str	r1, [fp, #-12]
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e5933004 	ldr	r3, [r3, #4]
     92c:	e3530000 	cmp	r3, #0
     930:	1a000003 	bne	944 <condWait+0x34>
     934:	e59f1050 	ldr	r1, [pc, #80]	@ 98c <condWait+0x7c>
     938:	e3a00002 	mov	r0, #2
     93c:	eb000241 	bl	1248 <printf>
     940:	ea00000f 	b	984 <condWait+0x74>
     944:	e51b300c 	ldr	r3, [fp, #-12]
     948:	e5933004 	ldr	r3, [r3, #4]
     94c:	e3530000 	cmp	r3, #0
     950:	1a000003 	bne	964 <condWait+0x54>
     954:	e59f1034 	ldr	r1, [pc, #52]	@ 990 <condWait+0x80>
     958:	e3a00002 	mov	r0, #2
     95c:	eb000239 	bl	1248 <printf>
     960:	ea000007 	b	984 <condWait+0x74>
     964:	e51b000c 	ldr	r0, [fp, #-12]
     968:	ebffffc2 	bl	878 <releaseLock>
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e5933000 	ldr	r3, [r3]
     974:	e1a00003 	mov	r0, r3
     978:	eb0001b2 	bl	1048 <sleepChan>
     97c:	e51b000c 	ldr	r0, [fp, #-12]
     980:	ebffffa4 	bl	818 <acquireLock>
     984:	e24bd004 	sub	sp, fp, #4
     988:	e8bd8800 	pop	{fp, pc}
     98c:	00001a30 	.word	0x00001a30
     990:	00001a54 	.word	0x00001a54

00000994 <broadcast>:
     994:	e92d4800 	push	{fp, lr}
     998:	e28db004 	add	fp, sp, #4
     99c:	e24dd008 	sub	sp, sp, #8
     9a0:	e50b0008 	str	r0, [fp, #-8]
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5933004 	ldr	r3, [r3, #4]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	1a000003 	bne	9c4 <broadcast+0x30>
     9b4:	e59f1020 	ldr	r1, [pc, #32]	@ 9dc <broadcast+0x48>
     9b8:	e3a00002 	mov	r0, #2
     9bc:	eb000221 	bl	1248 <printf>
     9c0:	ea000003 	b	9d4 <broadcast+0x40>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e5933000 	ldr	r3, [r3]
     9cc:	e1a00003 	mov	r0, r3
     9d0:	eb0001ae 	bl	1090 <sigChan>
     9d4:	e24bd004 	sub	sp, fp, #4
     9d8:	e8bd8800 	pop	{fp, pc}
     9dc:	00001a30 	.word	0x00001a30

000009e0 <signal>:
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd008 	sub	sp, sp, #8
     9ec:	e50b0008 	str	r0, [fp, #-8]
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e5933004 	ldr	r3, [r3, #4]
     9f8:	e3530000 	cmp	r3, #0
     9fc:	1a000003 	bne	a10 <signal+0x30>
     a00:	e59f1020 	ldr	r1, [pc, #32]	@ a28 <signal+0x48>
     a04:	e3a00002 	mov	r0, #2
     a08:	eb00020e 	bl	1248 <printf>
     a0c:	ea000003 	b	a20 <signal+0x40>
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e5933000 	ldr	r3, [r3]
     a18:	e1a00003 	mov	r0, r3
     a1c:	eb0001a4 	bl	10b4 <sigOneChan>
     a20:	e24bd004 	sub	sp, fp, #4
     a24:	e8bd8800 	pop	{fp, pc}
     a28:	00001a30 	.word	0x00001a30

00000a2c <semInit>:
     a2c:	e92d4800 	push	{fp, lr}
     a30:	e28db004 	add	fp, sp, #4
     a34:	e24dd008 	sub	sp, sp, #8
     a38:	e50b0008 	str	r0, [fp, #-8]
     a3c:	e50b100c 	str	r1, [fp, #-12]
     a40:	e51b3008 	ldr	r3, [fp, #-8]
     a44:	e51b200c 	ldr	r2, [fp, #-12]
     a48:	e5832000 	str	r2, [r3]
     a4c:	e51b3008 	ldr	r3, [fp, #-8]
     a50:	e2833004 	add	r3, r3, #4
     a54:	e1a00003 	mov	r0, r3
     a58:	ebffff60 	bl	7e0 <initiateLock>
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e283300c 	add	r3, r3, #12
     a64:	e1a00003 	mov	r0, r3
     a68:	ebffff95 	bl	8c4 <initiateCondVar>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e3a02001 	mov	r2, #1
     a74:	e5832014 	str	r2, [r3, #20]
     a78:	e1a00000 	nop			@ (mov r0, r0)
     a7c:	e24bd004 	sub	sp, fp, #4
     a80:	e8bd8800 	pop	{fp, pc}

00000a84 <semDown>:
     a84:	e92d4800 	push	{fp, lr}
     a88:	e28db004 	add	fp, sp, #4
     a8c:	e24dd008 	sub	sp, sp, #8
     a90:	e50b0008 	str	r0, [fp, #-8]
     a94:	e51b3008 	ldr	r3, [fp, #-8]
     a98:	e5933014 	ldr	r3, [r3, #20]
     a9c:	e3530000 	cmp	r3, #0
     aa0:	1a000003 	bne	ab4 <semDown+0x30>
     aa4:	e59f1074 	ldr	r1, [pc, #116]	@ b20 <semDown+0x9c>
     aa8:	e3a00002 	mov	r0, #2
     aac:	eb0001e5 	bl	1248 <printf>
     ab0:	ea000018 	b	b18 <semDown+0x94>
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e2833004 	add	r3, r3, #4
     abc:	e1a00003 	mov	r0, r3
     ac0:	ebffff54 	bl	818 <acquireLock>
     ac4:	ea000006 	b	ae4 <semDown+0x60>
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e283200c 	add	r2, r3, #12
     ad0:	e51b3008 	ldr	r3, [fp, #-8]
     ad4:	e2833004 	add	r3, r3, #4
     ad8:	e1a01003 	mov	r1, r3
     adc:	e1a00002 	mov	r0, r2
     ae0:	ebffff8a 	bl	910 <condWait>
     ae4:	e51b3008 	ldr	r3, [fp, #-8]
     ae8:	e5933000 	ldr	r3, [r3]
     aec:	e3530000 	cmp	r3, #0
     af0:	0afffff4 	beq	ac8 <semDown+0x44>
     af4:	e51b3008 	ldr	r3, [fp, #-8]
     af8:	e5933000 	ldr	r3, [r3]
     afc:	e2432001 	sub	r2, r3, #1
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e5832000 	str	r2, [r3]
     b08:	e51b3008 	ldr	r3, [fp, #-8]
     b0c:	e2833004 	add	r3, r3, #4
     b10:	e1a00003 	mov	r0, r3
     b14:	ebffff57 	bl	878 <releaseLock>
     b18:	e24bd004 	sub	sp, fp, #4
     b1c:	e8bd8800 	pop	{fp, pc}
     b20:	00001a74 	.word	0x00001a74

00000b24 <semUp>:
     b24:	e92d4800 	push	{fp, lr}
     b28:	e28db004 	add	fp, sp, #4
     b2c:	e24dd008 	sub	sp, sp, #8
     b30:	e50b0008 	str	r0, [fp, #-8]
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e5933014 	ldr	r3, [r3, #20]
     b3c:	e3530000 	cmp	r3, #0
     b40:	1a000003 	bne	b54 <semUp+0x30>
     b44:	e59f1054 	ldr	r1, [pc, #84]	@ ba0 <semUp+0x7c>
     b48:	e3a00002 	mov	r0, #2
     b4c:	eb0001bd 	bl	1248 <printf>
     b50:	ea000010 	b	b98 <semUp+0x74>
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e1a00003 	mov	r0, r3
     b60:	ebffff2c 	bl	818 <acquireLock>
     b64:	e51b3008 	ldr	r3, [fp, #-8]
     b68:	e5933000 	ldr	r3, [r3]
     b6c:	e2832001 	add	r2, r3, #1
     b70:	e51b3008 	ldr	r3, [fp, #-8]
     b74:	e5832000 	str	r2, [r3]
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e283300c 	add	r3, r3, #12
     b80:	e1a00003 	mov	r0, r3
     b84:	ebffff95 	bl	9e0 <signal>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e2833004 	add	r3, r3, #4
     b90:	e1a00003 	mov	r0, r3
     b94:	ebffff37 	bl	878 <releaseLock>
     b98:	e24bd004 	sub	sp, fp, #4
     b9c:	e8bd8800 	pop	{fp, pc}
     ba0:	00001a74 	.word	0x00001a74

00000ba4 <fork>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00001 	mov	r0, #1
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <exit>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00002 	mov	r0, #2
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <wait>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00003 	mov	r0, #3
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <pipe>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00004 	mov	r0, #4
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <read>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00005 	mov	r0, #5
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <write>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00010 	mov	r0, #16
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <close>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00015 	mov	r0, #21
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <kill>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a00006 	mov	r0, #6
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <exec>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00007 	mov	r0, #7
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <open>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0000f 	mov	r0, #15
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <mknod>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00011 	mov	r0, #17
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <unlink>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00012 	mov	r0, #18
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <fstat>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00008 	mov	r0, #8
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <link>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00013 	mov	r0, #19
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <mkdir>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00014 	mov	r0, #20
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <chdir>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00009 	mov	r0, #9
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <dup>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0000a 	mov	r0, #10
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <getpid>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0000b 	mov	r0, #11
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <sbrk>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0000c 	mov	r0, #12
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <sleep>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a0000d 	mov	r0, #13
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <uptime>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a0000e 	mov	r0, #14
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <disproc>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00016 	mov	r0, #22
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <srand>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00017 	mov	r0, #23
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <setticket>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00018 	mov	r0, #24
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <getpinfo>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00019 	mov	r0, #25
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <printPages>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a0001a 	mov	r0, #26
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <kpt>:
     f4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f50:	e1a04003 	mov	r4, r3
     f54:	e1a03002 	mov	r3, r2
     f58:	e1a02001 	mov	r2, r1
     f5c:	e1a01000 	mov	r1, r0
     f60:	e3a0001b 	mov	r0, #27
     f64:	ef000000 	svc	0x00000000
     f68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f6c:	e12fff1e 	bx	lr

00000f70 <thread_create>:
     f70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f74:	e1a04003 	mov	r4, r3
     f78:	e1a03002 	mov	r3, r2
     f7c:	e1a02001 	mov	r2, r1
     f80:	e1a01000 	mov	r1, r0
     f84:	e3a0001c 	mov	r0, #28
     f88:	ef000000 	svc	0x00000000
     f8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f90:	e12fff1e 	bx	lr

00000f94 <thread_exit>:
     f94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f98:	e1a04003 	mov	r4, r3
     f9c:	e1a03002 	mov	r3, r2
     fa0:	e1a02001 	mov	r2, r1
     fa4:	e1a01000 	mov	r1, r0
     fa8:	e3a0001d 	mov	r0, #29
     fac:	ef000000 	svc	0x00000000
     fb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fb4:	e12fff1e 	bx	lr

00000fb8 <thread_join>:
     fb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fbc:	e1a04003 	mov	r4, r3
     fc0:	e1a03002 	mov	r3, r2
     fc4:	e1a02001 	mov	r2, r1
     fc8:	e1a01000 	mov	r1, r0
     fcc:	e3a0001e 	mov	r0, #30
     fd0:	ef000000 	svc	0x00000000
     fd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd8:	e12fff1e 	bx	lr

00000fdc <waitpid>:
     fdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fe0:	e1a04003 	mov	r4, r3
     fe4:	e1a03002 	mov	r3, r2
     fe8:	e1a02001 	mov	r2, r1
     fec:	e1a01000 	mov	r1, r0
     ff0:	e3a0001f 	mov	r0, #31
     ff4:	ef000000 	svc	0x00000000
     ff8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ffc:	e12fff1e 	bx	lr

00001000 <barrier_init>:
    1000:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1004:	e1a04003 	mov	r4, r3
    1008:	e1a03002 	mov	r3, r2
    100c:	e1a02001 	mov	r2, r1
    1010:	e1a01000 	mov	r1, r0
    1014:	e3a00020 	mov	r0, #32
    1018:	ef000000 	svc	0x00000000
    101c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1020:	e12fff1e 	bx	lr

00001024 <barrier_check>:
    1024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1028:	e1a04003 	mov	r4, r3
    102c:	e1a03002 	mov	r3, r2
    1030:	e1a02001 	mov	r2, r1
    1034:	e1a01000 	mov	r1, r0
    1038:	e3a00021 	mov	r0, #33	@ 0x21
    103c:	ef000000 	svc	0x00000000
    1040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1044:	e12fff1e 	bx	lr

00001048 <sleepChan>:
    1048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    104c:	e1a04003 	mov	r4, r3
    1050:	e1a03002 	mov	r3, r2
    1054:	e1a02001 	mov	r2, r1
    1058:	e1a01000 	mov	r1, r0
    105c:	e3a00022 	mov	r0, #34	@ 0x22
    1060:	ef000000 	svc	0x00000000
    1064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1068:	e12fff1e 	bx	lr

0000106c <getChannel>:
    106c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1070:	e1a04003 	mov	r4, r3
    1074:	e1a03002 	mov	r3, r2
    1078:	e1a02001 	mov	r2, r1
    107c:	e1a01000 	mov	r1, r0
    1080:	e3a00023 	mov	r0, #35	@ 0x23
    1084:	ef000000 	svc	0x00000000
    1088:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    108c:	e12fff1e 	bx	lr

00001090 <sigChan>:
    1090:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1094:	e1a04003 	mov	r4, r3
    1098:	e1a03002 	mov	r3, r2
    109c:	e1a02001 	mov	r2, r1
    10a0:	e1a01000 	mov	r1, r0
    10a4:	e3a00024 	mov	r0, #36	@ 0x24
    10a8:	ef000000 	svc	0x00000000
    10ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10b0:	e12fff1e 	bx	lr

000010b4 <sigOneChan>:
    10b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10b8:	e1a04003 	mov	r4, r3
    10bc:	e1a03002 	mov	r3, r2
    10c0:	e1a02001 	mov	r2, r1
    10c4:	e1a01000 	mov	r1, r0
    10c8:	e3a00025 	mov	r0, #37	@ 0x25
    10cc:	ef000000 	svc	0x00000000
    10d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10d4:	e12fff1e 	bx	lr

000010d8 <putc>:
    10d8:	e92d4800 	push	{fp, lr}
    10dc:	e28db004 	add	fp, sp, #4
    10e0:	e24dd008 	sub	sp, sp, #8
    10e4:	e50b0008 	str	r0, [fp, #-8]
    10e8:	e1a03001 	mov	r3, r1
    10ec:	e54b3009 	strb	r3, [fp, #-9]
    10f0:	e24b3009 	sub	r3, fp, #9
    10f4:	e3a02001 	mov	r2, #1
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e51b0008 	ldr	r0, [fp, #-8]
    1100:	ebfffed4 	bl	c58 <write>
    1104:	e1a00000 	nop			@ (mov r0, r0)
    1108:	e24bd004 	sub	sp, fp, #4
    110c:	e8bd8800 	pop	{fp, pc}

00001110 <printint>:
    1110:	e92d4800 	push	{fp, lr}
    1114:	e28db004 	add	fp, sp, #4
    1118:	e24dd030 	sub	sp, sp, #48	@ 0x30
    111c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1120:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1124:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1128:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    112c:	e3a03000 	mov	r3, #0
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1138:	e3530000 	cmp	r3, #0
    113c:	0a000008 	beq	1164 <printint+0x54>
    1140:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1144:	e3530000 	cmp	r3, #0
    1148:	aa000005 	bge	1164 <printint+0x54>
    114c:	e3a03001 	mov	r3, #1
    1150:	e50b300c 	str	r3, [fp, #-12]
    1154:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1158:	e2633000 	rsb	r3, r3, #0
    115c:	e50b3010 	str	r3, [fp, #-16]
    1160:	ea000001 	b	116c <printint+0x5c>
    1164:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1168:	e50b3010 	str	r3, [fp, #-16]
    116c:	e3a03000 	mov	r3, #0
    1170:	e50b3008 	str	r3, [fp, #-8]
    1174:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1178:	e51b3010 	ldr	r3, [fp, #-16]
    117c:	e1a01002 	mov	r1, r2
    1180:	e1a00003 	mov	r0, r3
    1184:	eb0001d5 	bl	18e0 <__aeabi_uidivmod>
    1188:	e1a03001 	mov	r3, r1
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b3008 	ldr	r3, [fp, #-8]
    1194:	e2832001 	add	r2, r3, #1
    1198:	e50b2008 	str	r2, [fp, #-8]
    119c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1244 <printint+0x134>
    11a0:	e7d22001 	ldrb	r2, [r2, r1]
    11a4:	e2433004 	sub	r3, r3, #4
    11a8:	e083300b 	add	r3, r3, fp
    11ac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11b0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    11b4:	e1a01003 	mov	r1, r3
    11b8:	e51b0010 	ldr	r0, [fp, #-16]
    11bc:	eb00018a 	bl	17ec <__udivsi3>
    11c0:	e1a03000 	mov	r3, r0
    11c4:	e50b3010 	str	r3, [fp, #-16]
    11c8:	e51b3010 	ldr	r3, [fp, #-16]
    11cc:	e3530000 	cmp	r3, #0
    11d0:	1affffe7 	bne	1174 <printint+0x64>
    11d4:	e51b300c 	ldr	r3, [fp, #-12]
    11d8:	e3530000 	cmp	r3, #0
    11dc:	0a00000e 	beq	121c <printint+0x10c>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e2832001 	add	r2, r3, #1
    11e8:	e50b2008 	str	r2, [fp, #-8]
    11ec:	e2433004 	sub	r3, r3, #4
    11f0:	e083300b 	add	r3, r3, fp
    11f4:	e3a0202d 	mov	r2, #45	@ 0x2d
    11f8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    11fc:	ea000006 	b	121c <printint+0x10c>
    1200:	e24b2020 	sub	r2, fp, #32
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e0823003 	add	r3, r2, r3
    120c:	e5d33000 	ldrb	r3, [r3]
    1210:	e1a01003 	mov	r1, r3
    1214:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1218:	ebffffae 	bl	10d8 <putc>
    121c:	e51b3008 	ldr	r3, [fp, #-8]
    1220:	e2433001 	sub	r3, r3, #1
    1224:	e50b3008 	str	r3, [fp, #-8]
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e3530000 	cmp	r3, #0
    1230:	aafffff2 	bge	1200 <printint+0xf0>
    1234:	e1a00000 	nop			@ (mov r0, r0)
    1238:	e1a00000 	nop			@ (mov r0, r0)
    123c:	e24bd004 	sub	sp, fp, #4
    1240:	e8bd8800 	pop	{fp, pc}
    1244:	00001aa0 	.word	0x00001aa0

00001248 <printf>:
    1248:	e92d000e 	push	{r1, r2, r3}
    124c:	e92d4800 	push	{fp, lr}
    1250:	e28db004 	add	fp, sp, #4
    1254:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1258:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    125c:	e3a03000 	mov	r3, #0
    1260:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1264:	e28b3008 	add	r3, fp, #8
    1268:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    126c:	e3a03000 	mov	r3, #0
    1270:	e50b3010 	str	r3, [fp, #-16]
    1274:	ea000074 	b	144c <printf+0x204>
    1278:	e59b2004 	ldr	r2, [fp, #4]
    127c:	e51b3010 	ldr	r3, [fp, #-16]
    1280:	e0823003 	add	r3, r2, r3
    1284:	e5d33000 	ldrb	r3, [r3]
    1288:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    128c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1290:	e3530000 	cmp	r3, #0
    1294:	1a00000b 	bne	12c8 <printf+0x80>
    1298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    129c:	e3530025 	cmp	r3, #37	@ 0x25
    12a0:	1a000002 	bne	12b0 <printf+0x68>
    12a4:	e3a03025 	mov	r3, #37	@ 0x25
    12a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12ac:	ea000063 	b	1440 <printf+0x1f8>
    12b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b4:	e6ef3073 	uxtb	r3, r3
    12b8:	e1a01003 	mov	r1, r3
    12bc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c0:	ebffff84 	bl	10d8 <putc>
    12c4:	ea00005d 	b	1440 <printf+0x1f8>
    12c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12cc:	e3530025 	cmp	r3, #37	@ 0x25
    12d0:	1a00005a 	bne	1440 <printf+0x1f8>
    12d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d8:	e3530064 	cmp	r3, #100	@ 0x64
    12dc:	1a00000a 	bne	130c <printf+0xc4>
    12e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e1a01003 	mov	r1, r3
    12ec:	e3a03001 	mov	r3, #1
    12f0:	e3a0200a 	mov	r2, #10
    12f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f8:	ebffff84 	bl	1110 <printint>
    12fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1300:	e2833004 	add	r3, r3, #4
    1304:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1308:	ea00004a 	b	1438 <printf+0x1f0>
    130c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1310:	e3530078 	cmp	r3, #120	@ 0x78
    1314:	0a000002 	beq	1324 <printf+0xdc>
    1318:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    131c:	e3530070 	cmp	r3, #112	@ 0x70
    1320:	1a00000a 	bne	1350 <printf+0x108>
    1324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e1a01003 	mov	r1, r3
    1330:	e3a03000 	mov	r3, #0
    1334:	e3a02010 	mov	r2, #16
    1338:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    133c:	ebffff73 	bl	1110 <printint>
    1340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1344:	e2833004 	add	r3, r3, #4
    1348:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    134c:	ea000039 	b	1438 <printf+0x1f0>
    1350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1354:	e3530073 	cmp	r3, #115	@ 0x73
    1358:	1a000018 	bne	13c0 <printf+0x178>
    135c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e50b300c 	str	r3, [fp, #-12]
    1368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    136c:	e2833004 	add	r3, r3, #4
    1370:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e3530000 	cmp	r3, #0
    137c:	1a00000a 	bne	13ac <printf+0x164>
    1380:	e59f30f4 	ldr	r3, [pc, #244]	@ 147c <printf+0x234>
    1384:	e50b300c 	str	r3, [fp, #-12]
    1388:	ea000007 	b	13ac <printf+0x164>
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5d33000 	ldrb	r3, [r3]
    1394:	e1a01003 	mov	r1, r3
    1398:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    139c:	ebffff4d 	bl	10d8 <putc>
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e2833001 	add	r3, r3, #1
    13a8:	e50b300c 	str	r3, [fp, #-12]
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5d33000 	ldrb	r3, [r3]
    13b4:	e3530000 	cmp	r3, #0
    13b8:	1afffff3 	bne	138c <printf+0x144>
    13bc:	ea00001d 	b	1438 <printf+0x1f0>
    13c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c4:	e3530063 	cmp	r3, #99	@ 0x63
    13c8:	1a000009 	bne	13f4 <printf+0x1ac>
    13cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d0:	e5933000 	ldr	r3, [r3]
    13d4:	e6ef3073 	uxtb	r3, r3
    13d8:	e1a01003 	mov	r1, r3
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff3c 	bl	10d8 <putc>
    13e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e8:	e2833004 	add	r3, r3, #4
    13ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13f0:	ea000010 	b	1438 <printf+0x1f0>
    13f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f8:	e3530025 	cmp	r3, #37	@ 0x25
    13fc:	1a000005 	bne	1418 <printf+0x1d0>
    1400:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1404:	e6ef3073 	uxtb	r3, r3
    1408:	e1a01003 	mov	r1, r3
    140c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1410:	ebffff30 	bl	10d8 <putc>
    1414:	ea000007 	b	1438 <printf+0x1f0>
    1418:	e3a01025 	mov	r1, #37	@ 0x25
    141c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1420:	ebffff2c 	bl	10d8 <putc>
    1424:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1428:	e6ef3073 	uxtb	r3, r3
    142c:	e1a01003 	mov	r1, r3
    1430:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1434:	ebffff27 	bl	10d8 <putc>
    1438:	e3a03000 	mov	r3, #0
    143c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1440:	e51b3010 	ldr	r3, [fp, #-16]
    1444:	e2833001 	add	r3, r3, #1
    1448:	e50b3010 	str	r3, [fp, #-16]
    144c:	e59b2004 	ldr	r2, [fp, #4]
    1450:	e51b3010 	ldr	r3, [fp, #-16]
    1454:	e0823003 	add	r3, r2, r3
    1458:	e5d33000 	ldrb	r3, [r3]
    145c:	e3530000 	cmp	r3, #0
    1460:	1affff84 	bne	1278 <printf+0x30>
    1464:	e1a00000 	nop			@ (mov r0, r0)
    1468:	e1a00000 	nop			@ (mov r0, r0)
    146c:	e24bd004 	sub	sp, fp, #4
    1470:	e8bd4800 	pop	{fp, lr}
    1474:	e28dd00c 	add	sp, sp, #12
    1478:	e12fff1e 	bx	lr
    147c:	00001a98 	.word	0x00001a98

00001480 <free>:
    1480:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1484:	e28db000 	add	fp, sp, #0
    1488:	e24dd014 	sub	sp, sp, #20
    148c:	e50b0010 	str	r0, [fp, #-16]
    1490:	e51b3010 	ldr	r3, [fp, #-16]
    1494:	e2433008 	sub	r3, r3, #8
    1498:	e50b300c 	str	r3, [fp, #-12]
    149c:	e59f3154 	ldr	r3, [pc, #340]	@ 15f8 <free+0x178>
    14a0:	e5933000 	ldr	r3, [r3]
    14a4:	e50b3008 	str	r3, [fp, #-8]
    14a8:	ea000010 	b	14f0 <free+0x70>
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933000 	ldr	r3, [r3]
    14b4:	e51b2008 	ldr	r2, [fp, #-8]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	3a000008 	bcc	14e4 <free+0x64>
    14c0:	e51b200c 	ldr	r2, [fp, #-12]
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e1520003 	cmp	r2, r3
    14cc:	8a000010 	bhi	1514 <free+0x94>
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933000 	ldr	r3, [r3]
    14d8:	e51b200c 	ldr	r2, [fp, #-12]
    14dc:	e1520003 	cmp	r2, r3
    14e0:	3a00000b 	bcc	1514 <free+0x94>
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e50b3008 	str	r3, [fp, #-8]
    14f0:	e51b200c 	ldr	r2, [fp, #-12]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e1520003 	cmp	r2, r3
    14fc:	9affffea 	bls	14ac <free+0x2c>
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e51b200c 	ldr	r2, [fp, #-12]
    150c:	e1520003 	cmp	r2, r3
    1510:	2affffe5 	bcs	14ac <free+0x2c>
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e5933004 	ldr	r3, [r3, #4]
    151c:	e1a03183 	lsl	r3, r3, #3
    1520:	e51b200c 	ldr	r2, [fp, #-12]
    1524:	e0822003 	add	r2, r2, r3
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5933000 	ldr	r3, [r3]
    1530:	e1520003 	cmp	r2, r3
    1534:	1a00000d 	bne	1570 <free+0xf0>
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5932004 	ldr	r2, [r3, #4]
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e5933004 	ldr	r3, [r3, #4]
    154c:	e0822003 	add	r2, r2, r3
    1550:	e51b300c 	ldr	r3, [fp, #-12]
    1554:	e5832004 	str	r2, [r3, #4]
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e5932000 	ldr	r2, [r3]
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e5832000 	str	r2, [r3]
    156c:	ea000003 	b	1580 <free+0x100>
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5932000 	ldr	r2, [r3]
    1578:	e51b300c 	ldr	r3, [fp, #-12]
    157c:	e5832000 	str	r2, [r3]
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e5933004 	ldr	r3, [r3, #4]
    1588:	e1a03183 	lsl	r3, r3, #3
    158c:	e51b2008 	ldr	r2, [fp, #-8]
    1590:	e0823003 	add	r3, r2, r3
    1594:	e51b200c 	ldr	r2, [fp, #-12]
    1598:	e1520003 	cmp	r2, r3
    159c:	1a00000b 	bne	15d0 <free+0x150>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5932004 	ldr	r2, [r3, #4]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e5933004 	ldr	r3, [r3, #4]
    15b0:	e0822003 	add	r2, r2, r3
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5832004 	str	r2, [r3, #4]
    15bc:	e51b300c 	ldr	r3, [fp, #-12]
    15c0:	e5932000 	ldr	r2, [r3]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5832000 	str	r2, [r3]
    15cc:	ea000002 	b	15dc <free+0x15c>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e51b200c 	ldr	r2, [fp, #-12]
    15d8:	e5832000 	str	r2, [r3]
    15dc:	e59f2014 	ldr	r2, [pc, #20]	@ 15f8 <free+0x178>
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5823000 	str	r3, [r2]
    15e8:	e1a00000 	nop			@ (mov r0, r0)
    15ec:	e28bd000 	add	sp, fp, #0
    15f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15f4:	e12fff1e 	bx	lr
    15f8:	00001abc 	.word	0x00001abc

000015fc <morecore>:
    15fc:	e92d4800 	push	{fp, lr}
    1600:	e28db004 	add	fp, sp, #4
    1604:	e24dd010 	sub	sp, sp, #16
    1608:	e50b0010 	str	r0, [fp, #-16]
    160c:	e51b3010 	ldr	r3, [fp, #-16]
    1610:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1614:	2a000001 	bcs	1620 <morecore+0x24>
    1618:	e3a03a01 	mov	r3, #4096	@ 0x1000
    161c:	e50b3010 	str	r3, [fp, #-16]
    1620:	e51b3010 	ldr	r3, [fp, #-16]
    1624:	e1a03183 	lsl	r3, r3, #3
    1628:	e1a00003 	mov	r0, r3
    162c:	ebfffdfe 	bl	e2c <sbrk>
    1630:	e50b0008 	str	r0, [fp, #-8]
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e3730001 	cmn	r3, #1
    163c:	1a000001 	bne	1648 <morecore+0x4c>
    1640:	e3a03000 	mov	r3, #0
    1644:	ea00000a 	b	1674 <morecore+0x78>
    1648:	e51b3008 	ldr	r3, [fp, #-8]
    164c:	e50b300c 	str	r3, [fp, #-12]
    1650:	e51b300c 	ldr	r3, [fp, #-12]
    1654:	e51b2010 	ldr	r2, [fp, #-16]
    1658:	e5832004 	str	r2, [r3, #4]
    165c:	e51b300c 	ldr	r3, [fp, #-12]
    1660:	e2833008 	add	r3, r3, #8
    1664:	e1a00003 	mov	r0, r3
    1668:	ebffff84 	bl	1480 <free>
    166c:	e59f300c 	ldr	r3, [pc, #12]	@ 1680 <morecore+0x84>
    1670:	e5933000 	ldr	r3, [r3]
    1674:	e1a00003 	mov	r0, r3
    1678:	e24bd004 	sub	sp, fp, #4
    167c:	e8bd8800 	pop	{fp, pc}
    1680:	00001abc 	.word	0x00001abc

00001684 <malloc>:
    1684:	e92d4800 	push	{fp, lr}
    1688:	e28db004 	add	fp, sp, #4
    168c:	e24dd018 	sub	sp, sp, #24
    1690:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1694:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1698:	e2833007 	add	r3, r3, #7
    169c:	e1a031a3 	lsr	r3, r3, #3
    16a0:	e2833001 	add	r3, r3, #1
    16a4:	e50b3010 	str	r3, [fp, #-16]
    16a8:	e59f3134 	ldr	r3, [pc, #308]	@ 17e4 <malloc+0x160>
    16ac:	e5933000 	ldr	r3, [r3]
    16b0:	e50b300c 	str	r3, [fp, #-12]
    16b4:	e51b300c 	ldr	r3, [fp, #-12]
    16b8:	e3530000 	cmp	r3, #0
    16bc:	1a00000b 	bne	16f0 <malloc+0x6c>
    16c0:	e59f3120 	ldr	r3, [pc, #288]	@ 17e8 <malloc+0x164>
    16c4:	e50b300c 	str	r3, [fp, #-12]
    16c8:	e59f2114 	ldr	r2, [pc, #276]	@ 17e4 <malloc+0x160>
    16cc:	e51b300c 	ldr	r3, [fp, #-12]
    16d0:	e5823000 	str	r3, [r2]
    16d4:	e59f3108 	ldr	r3, [pc, #264]	@ 17e4 <malloc+0x160>
    16d8:	e5933000 	ldr	r3, [r3]
    16dc:	e59f2104 	ldr	r2, [pc, #260]	@ 17e8 <malloc+0x164>
    16e0:	e5823000 	str	r3, [r2]
    16e4:	e59f30fc 	ldr	r3, [pc, #252]	@ 17e8 <malloc+0x164>
    16e8:	e3a02000 	mov	r2, #0
    16ec:	e5832004 	str	r2, [r3, #4]
    16f0:	e51b300c 	ldr	r3, [fp, #-12]
    16f4:	e5933000 	ldr	r3, [r3]
    16f8:	e50b3008 	str	r3, [fp, #-8]
    16fc:	e51b3008 	ldr	r3, [fp, #-8]
    1700:	e5933004 	ldr	r3, [r3, #4]
    1704:	e51b2010 	ldr	r2, [fp, #-16]
    1708:	e1520003 	cmp	r2, r3
    170c:	8a00001e 	bhi	178c <malloc+0x108>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e5933004 	ldr	r3, [r3, #4]
    1718:	e51b2010 	ldr	r2, [fp, #-16]
    171c:	e1520003 	cmp	r2, r3
    1720:	1a000004 	bne	1738 <malloc+0xb4>
    1724:	e51b3008 	ldr	r3, [fp, #-8]
    1728:	e5932000 	ldr	r2, [r3]
    172c:	e51b300c 	ldr	r3, [fp, #-12]
    1730:	e5832000 	str	r2, [r3]
    1734:	ea00000e 	b	1774 <malloc+0xf0>
    1738:	e51b3008 	ldr	r3, [fp, #-8]
    173c:	e5932004 	ldr	r2, [r3, #4]
    1740:	e51b3010 	ldr	r3, [fp, #-16]
    1744:	e0422003 	sub	r2, r2, r3
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e5832004 	str	r2, [r3, #4]
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e5933004 	ldr	r3, [r3, #4]
    1758:	e1a03183 	lsl	r3, r3, #3
    175c:	e51b2008 	ldr	r2, [fp, #-8]
    1760:	e0823003 	add	r3, r2, r3
    1764:	e50b3008 	str	r3, [fp, #-8]
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e51b2010 	ldr	r2, [fp, #-16]
    1770:	e5832004 	str	r2, [r3, #4]
    1774:	e59f2068 	ldr	r2, [pc, #104]	@ 17e4 <malloc+0x160>
    1778:	e51b300c 	ldr	r3, [fp, #-12]
    177c:	e5823000 	str	r3, [r2]
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e2833008 	add	r3, r3, #8
    1788:	ea000012 	b	17d8 <malloc+0x154>
    178c:	e59f3050 	ldr	r3, [pc, #80]	@ 17e4 <malloc+0x160>
    1790:	e5933000 	ldr	r3, [r3]
    1794:	e51b2008 	ldr	r2, [fp, #-8]
    1798:	e1520003 	cmp	r2, r3
    179c:	1a000007 	bne	17c0 <malloc+0x13c>
    17a0:	e51b0010 	ldr	r0, [fp, #-16]
    17a4:	ebffff94 	bl	15fc <morecore>
    17a8:	e50b0008 	str	r0, [fp, #-8]
    17ac:	e51b3008 	ldr	r3, [fp, #-8]
    17b0:	e3530000 	cmp	r3, #0
    17b4:	1a000001 	bne	17c0 <malloc+0x13c>
    17b8:	e3a03000 	mov	r3, #0
    17bc:	ea000005 	b	17d8 <malloc+0x154>
    17c0:	e51b3008 	ldr	r3, [fp, #-8]
    17c4:	e50b300c 	str	r3, [fp, #-12]
    17c8:	e51b3008 	ldr	r3, [fp, #-8]
    17cc:	e5933000 	ldr	r3, [r3]
    17d0:	e50b3008 	str	r3, [fp, #-8]
    17d4:	eaffffc8 	b	16fc <malloc+0x78>
    17d8:	e1a00003 	mov	r0, r3
    17dc:	e24bd004 	sub	sp, fp, #4
    17e0:	e8bd8800 	pop	{fp, pc}
    17e4:	00001abc 	.word	0x00001abc
    17e8:	00001ab4 	.word	0x00001ab4

000017ec <__udivsi3>:
    17ec:	e2512001 	subs	r2, r1, #1
    17f0:	012fff1e 	bxeq	lr
    17f4:	3a000036 	bcc	18d4 <__udivsi3+0xe8>
    17f8:	e1500001 	cmp	r0, r1
    17fc:	9a000022 	bls	188c <__udivsi3+0xa0>
    1800:	e1110002 	tst	r1, r2
    1804:	0a000023 	beq	1898 <__udivsi3+0xac>
    1808:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    180c:	01a01181 	lsleq	r1, r1, #3
    1810:	03a03008 	moveq	r3, #8
    1814:	13a03001 	movne	r3, #1
    1818:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    181c:	31510000 	cmpcc	r1, r0
    1820:	31a01201 	lslcc	r1, r1, #4
    1824:	31a03203 	lslcc	r3, r3, #4
    1828:	3afffffa 	bcc	1818 <__udivsi3+0x2c>
    182c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1830:	31510000 	cmpcc	r1, r0
    1834:	31a01081 	lslcc	r1, r1, #1
    1838:	31a03083 	lslcc	r3, r3, #1
    183c:	3afffffa 	bcc	182c <__udivsi3+0x40>
    1840:	e3a02000 	mov	r2, #0
    1844:	e1500001 	cmp	r0, r1
    1848:	20400001 	subcs	r0, r0, r1
    184c:	21822003 	orrcs	r2, r2, r3
    1850:	e15000a1 	cmp	r0, r1, lsr #1
    1854:	204000a1 	subcs	r0, r0, r1, lsr #1
    1858:	218220a3 	orrcs	r2, r2, r3, lsr #1
    185c:	e1500121 	cmp	r0, r1, lsr #2
    1860:	20400121 	subcs	r0, r0, r1, lsr #2
    1864:	21822123 	orrcs	r2, r2, r3, lsr #2
    1868:	e15001a1 	cmp	r0, r1, lsr #3
    186c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1870:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1874:	e3500000 	cmp	r0, #0
    1878:	11b03223 	lsrsne	r3, r3, #4
    187c:	11a01221 	lsrne	r1, r1, #4
    1880:	1affffef 	bne	1844 <__udivsi3+0x58>
    1884:	e1a00002 	mov	r0, r2
    1888:	e12fff1e 	bx	lr
    188c:	03a00001 	moveq	r0, #1
    1890:	13a00000 	movne	r0, #0
    1894:	e12fff1e 	bx	lr
    1898:	e3510801 	cmp	r1, #65536	@ 0x10000
    189c:	21a01821 	lsrcs	r1, r1, #16
    18a0:	23a02010 	movcs	r2, #16
    18a4:	33a02000 	movcc	r2, #0
    18a8:	e3510c01 	cmp	r1, #256	@ 0x100
    18ac:	21a01421 	lsrcs	r1, r1, #8
    18b0:	22822008 	addcs	r2, r2, #8
    18b4:	e3510010 	cmp	r1, #16
    18b8:	21a01221 	lsrcs	r1, r1, #4
    18bc:	22822004 	addcs	r2, r2, #4
    18c0:	e3510004 	cmp	r1, #4
    18c4:	82822003 	addhi	r2, r2, #3
    18c8:	908220a1 	addls	r2, r2, r1, lsr #1
    18cc:	e1a00230 	lsr	r0, r0, r2
    18d0:	e12fff1e 	bx	lr
    18d4:	e3500000 	cmp	r0, #0
    18d8:	13e00000 	mvnne	r0, #0
    18dc:	ea000007 	b	1900 <__aeabi_idiv0>

000018e0 <__aeabi_uidivmod>:
    18e0:	e3510000 	cmp	r1, #0
    18e4:	0afffffa 	beq	18d4 <__udivsi3+0xe8>
    18e8:	e92d4003 	push	{r0, r1, lr}
    18ec:	ebffffbe 	bl	17ec <__udivsi3>
    18f0:	e8bd4006 	pop	{r1, r2, lr}
    18f4:	e0030092 	mul	r3, r2, r0
    18f8:	e0411003 	sub	r1, r1, r3
    18fc:	e12fff1e 	bx	lr

00001900 <__aeabi_idiv0>:
    1900:	e12fff1e 	bx	lr
