
_setticket:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530003 	cmp	r3, #3
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f1048 	ldr	r1, [pc, #72]	@ 70 <main+0x70>
      24:	e3a00002 	mov	r0, #2
      28:	eb0003f4 	bl	1000 <printf>
      2c:	eb000253 	bl	980 <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb000116 	bl	4a0 <atoi>
      44:	e1a04000 	mov	r4, r0
      48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      4c:	e2833008 	add	r3, r3, #8
      50:	e5933000 	ldr	r3, [r3]
      54:	e1a00003 	mov	r0, r3
      58:	eb000110 	bl	4a0 <atoi>
      5c:	e1a03000 	mov	r3, r0
      60:	e1a01003 	mov	r1, r3
      64:	e1a00004 	mov	r0, r4
      68:	eb00030a 	bl	c98 <setticket>
      6c:	eb000243 	bl	980 <exit>
      70:	000016bc 	.word	0x000016bc

00000074 <xchg>:
      74:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      78:	e28db000 	add	fp, sp, #0
      7c:	e24dd014 	sub	sp, sp, #20
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b1010 	ldr	r1, [fp, #-16]
      8c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      90:	e1912f9f 	ldrex	r2, [r1]
      94:	e1813f90 	strex	r3, r0, [r1]
      98:	e50b2008 	str	r2, [fp, #-8]
      9c:	e50b300c 	str	r3, [fp, #-12]
      a0:	e51b300c 	ldr	r3, [fp, #-12]
      a4:	e3530000 	cmp	r3, #0
      a8:	1afffff6 	bne	88 <xchg+0x14>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a00003 	mov	r0, r3
      b4:	e28bd000 	add	sp, fp, #0
      b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      bc:	e12fff1e 	bx	lr

000000c0 <strcpy>:
      c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      c4:	e28db000 	add	fp, sp, #0
      c8:	e24dd014 	sub	sp, sp, #20
      cc:	e50b0010 	str	r0, [fp, #-16]
      d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      d4:	e51b3010 	ldr	r3, [fp, #-16]
      d8:	e50b3008 	str	r3, [fp, #-8]
      dc:	e1a00000 	nop			@ (mov r0, r0)
      e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e4:	e2823001 	add	r3, r2, #1
      e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e2831001 	add	r1, r3, #1
      f4:	e50b1010 	str	r1, [fp, #-16]
      f8:	e5d22000 	ldrb	r2, [r2]
      fc:	e5c32000 	strb	r2, [r3]
     100:	e5d33000 	ldrb	r3, [r3]
     104:	e3530000 	cmp	r3, #0
     108:	1afffff4 	bne	e0 <strcpy+0x20>
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e1a00003 	mov	r0, r3
     114:	e28bd000 	add	sp, fp, #0
     118:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     11c:	e12fff1e 	bx	lr

00000120 <strcmp>:
     120:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     124:	e28db000 	add	fp, sp, #0
     128:	e24dd00c 	sub	sp, sp, #12
     12c:	e50b0008 	str	r0, [fp, #-8]
     130:	e50b100c 	str	r1, [fp, #-12]
     134:	ea000005 	b	150 <strcmp+0x30>
     138:	e51b3008 	ldr	r3, [fp, #-8]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b3008 	str	r3, [fp, #-8]
     144:	e51b300c 	ldr	r3, [fp, #-12]
     148:	e2833001 	add	r3, r3, #1
     14c:	e50b300c 	str	r3, [fp, #-12]
     150:	e51b3008 	ldr	r3, [fp, #-8]
     154:	e5d33000 	ldrb	r3, [r3]
     158:	e3530000 	cmp	r3, #0
     15c:	0a000005 	beq	178 <strcmp+0x58>
     160:	e51b3008 	ldr	r3, [fp, #-8]
     164:	e5d32000 	ldrb	r2, [r3]
     168:	e51b300c 	ldr	r3, [fp, #-12]
     16c:	e5d33000 	ldrb	r3, [r3]
     170:	e1520003 	cmp	r2, r3
     174:	0affffef 	beq	138 <strcmp+0x18>
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e1a02003 	mov	r2, r3
     184:	e51b300c 	ldr	r3, [fp, #-12]
     188:	e5d33000 	ldrb	r3, [r3]
     18c:	e0423003 	sub	r3, r2, r3
     190:	e1a00003 	mov	r0, r3
     194:	e28bd000 	add	sp, fp, #0
     198:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     19c:	e12fff1e 	bx	lr

000001a0 <strlen>:
     1a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a4:	e28db000 	add	fp, sp, #0
     1a8:	e24dd014 	sub	sp, sp, #20
     1ac:	e50b0010 	str	r0, [fp, #-16]
     1b0:	e3a03000 	mov	r3, #0
     1b4:	e50b3008 	str	r3, [fp, #-8]
     1b8:	ea000002 	b	1c8 <strlen+0x28>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b3008 	str	r3, [fp, #-8]
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e51b2010 	ldr	r2, [fp, #-16]
     1d0:	e0823003 	add	r3, r2, r3
     1d4:	e5d33000 	ldrb	r3, [r3]
     1d8:	e3530000 	cmp	r3, #0
     1dc:	1afffff6 	bne	1bc <strlen+0x1c>
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e1a00003 	mov	r0, r3
     1e8:	e28bd000 	add	sp, fp, #0
     1ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f0:	e12fff1e 	bx	lr

000001f4 <memset>:
     1f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f8:	e28db000 	add	fp, sp, #0
     1fc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     200:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     204:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     208:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     20c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     210:	e50b3008 	str	r3, [fp, #-8]
     214:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     218:	e54b300d 	strb	r3, [fp, #-13]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e1a03002 	mov	r3, r2
     224:	e1a03403 	lsl	r3, r3, #8
     228:	e0833002 	add	r3, r3, r2
     22c:	e1a03803 	lsl	r3, r3, #16
     230:	e1a02003 	mov	r2, r3
     234:	e55b300d 	ldrb	r3, [fp, #-13]
     238:	e1a03403 	lsl	r3, r3, #8
     23c:	e1822003 	orr	r2, r2, r3
     240:	e55b300d 	ldrb	r3, [fp, #-13]
     244:	e1823003 	orr	r3, r2, r3
     248:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     24c:	ea000008 	b	274 <memset+0x80>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e55b200d 	ldrb	r2, [fp, #-13]
     258:	e5c32000 	strb	r2, [r3]
     25c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     260:	e2433001 	sub	r3, r3, #1
     264:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e2833001 	add	r3, r3, #1
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     278:	e3530000 	cmp	r3, #0
     27c:	0a000003 	beq	290 <memset+0x9c>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e2033003 	and	r3, r3, #3
     288:	e3530000 	cmp	r3, #0
     28c:	1affffef 	bne	250 <memset+0x5c>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e50b300c 	str	r3, [fp, #-12]
     298:	ea000008 	b	2c0 <memset+0xcc>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2a4:	e5832000 	str	r2, [r3]
     2a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2ac:	e2433004 	sub	r3, r3, #4
     2b0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e51b300c 	ldr	r3, [fp, #-12]
     2b8:	e2833004 	add	r3, r3, #4
     2bc:	e50b300c 	str	r3, [fp, #-12]
     2c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c4:	e3530003 	cmp	r3, #3
     2c8:	8afffff3 	bhi	29c <memset+0xa8>
     2cc:	e51b300c 	ldr	r3, [fp, #-12]
     2d0:	e50b3008 	str	r3, [fp, #-8]
     2d4:	ea000008 	b	2fc <memset+0x108>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e55b200d 	ldrb	r2, [fp, #-13]
     2e0:	e5c32000 	strb	r2, [r3]
     2e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e8:	e2433001 	sub	r3, r3, #1
     2ec:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e50b3008 	str	r3, [fp, #-8]
     2fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     300:	e3530000 	cmp	r3, #0
     304:	1afffff3 	bne	2d8 <memset+0xe4>
     308:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     30c:	e1a00003 	mov	r0, r3
     310:	e28bd000 	add	sp, fp, #0
     314:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     318:	e12fff1e 	bx	lr

0000031c <strchr>:
     31c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     320:	e28db000 	add	fp, sp, #0
     324:	e24dd00c 	sub	sp, sp, #12
     328:	e50b0008 	str	r0, [fp, #-8]
     32c:	e1a03001 	mov	r3, r1
     330:	e54b3009 	strb	r3, [fp, #-9]
     334:	ea000009 	b	360 <strchr+0x44>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e5d33000 	ldrb	r3, [r3]
     340:	e55b2009 	ldrb	r2, [fp, #-9]
     344:	e1520003 	cmp	r2, r3
     348:	1a000001 	bne	354 <strchr+0x38>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	ea000007 	b	374 <strchr+0x58>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e2833001 	add	r3, r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e5d33000 	ldrb	r3, [r3]
     368:	e3530000 	cmp	r3, #0
     36c:	1afffff1 	bne	338 <strchr+0x1c>
     370:	e3a03000 	mov	r3, #0
     374:	e1a00003 	mov	r0, r3
     378:	e28bd000 	add	sp, fp, #0
     37c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     380:	e12fff1e 	bx	lr

00000384 <gets>:
     384:	e92d4800 	push	{fp, lr}
     388:	e28db004 	add	fp, sp, #4
     38c:	e24dd018 	sub	sp, sp, #24
     390:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     394:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     398:	e3a03000 	mov	r3, #0
     39c:	e50b3008 	str	r3, [fp, #-8]
     3a0:	ea000016 	b	400 <gets+0x7c>
     3a4:	e24b300d 	sub	r3, fp, #13
     3a8:	e3a02001 	mov	r2, #1
     3ac:	e1a01003 	mov	r1, r3
     3b0:	e3a00000 	mov	r0, #0
     3b4:	eb00018c 	bl	9ec <read>
     3b8:	e50b000c 	str	r0, [fp, #-12]
     3bc:	e51b300c 	ldr	r3, [fp, #-12]
     3c0:	e3530000 	cmp	r3, #0
     3c4:	da000013 	ble	418 <gets+0x94>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2832001 	add	r2, r3, #1
     3d0:	e50b2008 	str	r2, [fp, #-8]
     3d4:	e1a02003 	mov	r2, r3
     3d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3dc:	e0833002 	add	r3, r3, r2
     3e0:	e55b200d 	ldrb	r2, [fp, #-13]
     3e4:	e5c32000 	strb	r2, [r3]
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000a 	cmp	r3, #10
     3f0:	0a000009 	beq	41c <gets+0x98>
     3f4:	e55b300d 	ldrb	r3, [fp, #-13]
     3f8:	e353000d 	cmp	r3, #13
     3fc:	0a000006 	beq	41c <gets+0x98>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2833001 	add	r3, r3, #1
     408:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     40c:	e1520003 	cmp	r2, r3
     410:	caffffe3 	bgt	3a4 <gets+0x20>
     414:	ea000000 	b	41c <gets+0x98>
     418:	e1a00000 	nop			@ (mov r0, r0)
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     424:	e0823003 	add	r3, r2, r3
     428:	e3a02000 	mov	r2, #0
     42c:	e5c32000 	strb	r2, [r3]
     430:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     434:	e1a00003 	mov	r0, r3
     438:	e24bd004 	sub	sp, fp, #4
     43c:	e8bd8800 	pop	{fp, pc}

00000440 <stat>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd010 	sub	sp, sp, #16
     44c:	e50b0010 	str	r0, [fp, #-16]
     450:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     454:	e3a01000 	mov	r1, #0
     458:	e51b0010 	ldr	r0, [fp, #-16]
     45c:	eb00018f 	bl	aa0 <open>
     460:	e50b0008 	str	r0, [fp, #-8]
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e3530000 	cmp	r3, #0
     46c:	aa000001 	bge	478 <stat+0x38>
     470:	e3e03000 	mvn	r3, #0
     474:	ea000006 	b	494 <stat+0x54>
     478:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb0001a1 	bl	b0c <fstat>
     484:	e50b000c 	str	r0, [fp, #-12]
     488:	e51b0008 	ldr	r0, [fp, #-8]
     48c:	eb000168 	bl	a34 <close>
     490:	e51b300c 	ldr	r3, [fp, #-12]
     494:	e1a00003 	mov	r0, r3
     498:	e24bd004 	sub	sp, fp, #4
     49c:	e8bd8800 	pop	{fp, pc}

000004a0 <atoi>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd014 	sub	sp, sp, #20
     4ac:	e50b0010 	str	r0, [fp, #-16]
     4b0:	e3a03000 	mov	r3, #0
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	ea00000c 	b	4f0 <atoi+0x50>
     4bc:	e51b2008 	ldr	r2, [fp, #-8]
     4c0:	e1a03002 	mov	r3, r2
     4c4:	e1a03103 	lsl	r3, r3, #2
     4c8:	e0833002 	add	r3, r3, r2
     4cc:	e1a03083 	lsl	r3, r3, #1
     4d0:	e1a01003 	mov	r1, r3
     4d4:	e51b3010 	ldr	r3, [fp, #-16]
     4d8:	e2832001 	add	r2, r3, #1
     4dc:	e50b2010 	str	r2, [fp, #-16]
     4e0:	e5d33000 	ldrb	r3, [r3]
     4e4:	e0813003 	add	r3, r1, r3
     4e8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e353002f 	cmp	r3, #47	@ 0x2f
     4fc:	9a000003 	bls	510 <atoi+0x70>
     500:	e51b3010 	ldr	r3, [fp, #-16]
     504:	e5d33000 	ldrb	r3, [r3]
     508:	e3530039 	cmp	r3, #57	@ 0x39
     50c:	9affffea 	bls	4bc <atoi+0x1c>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e1a00003 	mov	r0, r3
     518:	e28bd000 	add	sp, fp, #0
     51c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     520:	e12fff1e 	bx	lr

00000524 <memmove>:
     524:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     528:	e28db000 	add	fp, sp, #0
     52c:	e24dd01c 	sub	sp, sp, #28
     530:	e50b0010 	str	r0, [fp, #-16]
     534:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     538:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     53c:	e51b3010 	ldr	r3, [fp, #-16]
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     548:	e50b300c 	str	r3, [fp, #-12]
     54c:	ea000007 	b	570 <memmove+0x4c>
     550:	e51b200c 	ldr	r2, [fp, #-12]
     554:	e2823001 	add	r3, r2, #1
     558:	e50b300c 	str	r3, [fp, #-12]
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e2831001 	add	r1, r3, #1
     564:	e50b1008 	str	r1, [fp, #-8]
     568:	e5d22000 	ldrb	r2, [r2]
     56c:	e5c32000 	strb	r2, [r3]
     570:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     574:	e2432001 	sub	r2, r3, #1
     578:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     57c:	e3530000 	cmp	r3, #0
     580:	cafffff2 	bgt	550 <memmove+0x2c>
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e1a00003 	mov	r0, r3
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <initiateLock>:
     598:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     59c:	e28db000 	add	fp, sp, #0
     5a0:	e24dd00c 	sub	sp, sp, #12
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e3a02000 	mov	r2, #0
     5b0:	e5832000 	str	r2, [r3]
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e3a02001 	mov	r2, #1
     5bc:	e5832004 	str	r2, [r3, #4]
     5c0:	e1a00000 	nop			@ (mov r0, r0)
     5c4:	e28bd000 	add	sp, fp, #0
     5c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <acquireLock>:
     5d0:	e92d4800 	push	{fp, lr}
     5d4:	e28db004 	add	fp, sp, #4
     5d8:	e24dd008 	sub	sp, sp, #8
     5dc:	e50b0008 	str	r0, [fp, #-8]
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e5933000 	ldr	r3, [r3]
     5e8:	e3730001 	cmn	r3, #1
     5ec:	1a000002 	bne	5fc <acquireLock+0x2c>
     5f0:	e59f1034 	ldr	r1, [pc, #52]	@ 62c <acquireLock+0x5c>
     5f4:	e3a00002 	mov	r0, #2
     5f8:	eb000280 	bl	1000 <printf>
     5fc:	e1a00000 	nop			@ (mov r0, r0)
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e3a01001 	mov	r1, #1
     608:	e1a00003 	mov	r0, r3
     60c:	ebfffe98 	bl	74 <xchg>
     610:	e1a03000 	mov	r3, r0
     614:	e3530000 	cmp	r3, #0
     618:	1afffff8 	bne	600 <acquireLock+0x30>
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e1a00000 	nop			@ (mov r0, r0)
     624:	e24bd004 	sub	sp, fp, #4
     628:	e8bd8800 	pop	{fp, pc}
     62c:	000016dc 	.word	0x000016dc

00000630 <releaseLock>:
     630:	e92d4800 	push	{fp, lr}
     634:	e28db004 	add	fp, sp, #4
     638:	e24dd008 	sub	sp, sp, #8
     63c:	e50b0008 	str	r0, [fp, #-8]
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e5933000 	ldr	r3, [r3]
     648:	e3530001 	cmp	r3, #1
     64c:	0a000002 	beq	65c <releaseLock+0x2c>
     650:	e59f1020 	ldr	r1, [pc, #32]	@ 678 <releaseLock+0x48>
     654:	e3a00002 	mov	r0, #2
     658:	eb000268 	bl	1000 <printf>
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e3a01000 	mov	r1, #0
     664:	e1a00003 	mov	r0, r3
     668:	ebfffe81 	bl	74 <xchg>
     66c:	e1a00000 	nop			@ (mov r0, r0)
     670:	e24bd004 	sub	sp, fp, #4
     674:	e8bd8800 	pop	{fp, pc}
     678:	0000170c 	.word	0x0000170c

0000067c <initiateCondVar>:
     67c:	e92d4800 	push	{fp, lr}
     680:	e28db004 	add	fp, sp, #4
     684:	e24dd008 	sub	sp, sp, #8
     688:	e50b0008 	str	r0, [fp, #-8]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e5933004 	ldr	r3, [r3, #4]
     694:	e3530000 	cmp	r3, #0
     698:	1a000007 	bne	6bc <initiateCondVar+0x40>
     69c:	eb0001e0 	bl	e24 <getChannel>
     6a0:	e1a02000 	mov	r2, r0
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5832000 	str	r2, [r3]
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e3a02001 	mov	r2, #1
     6b4:	e5832004 	str	r2, [r3, #4]
     6b8:	ea000000 	b	6c0 <initiateCondVar+0x44>
     6bc:	e1a00000 	nop			@ (mov r0, r0)
     6c0:	e24bd004 	sub	sp, fp, #4
     6c4:	e8bd8800 	pop	{fp, pc}

000006c8 <condWait>:
     6c8:	e92d4800 	push	{fp, lr}
     6cc:	e28db004 	add	fp, sp, #4
     6d0:	e24dd008 	sub	sp, sp, #8
     6d4:	e50b0008 	str	r0, [fp, #-8]
     6d8:	e50b100c 	str	r1, [fp, #-12]
     6dc:	e51b3008 	ldr	r3, [fp, #-8]
     6e0:	e5933004 	ldr	r3, [r3, #4]
     6e4:	e3530000 	cmp	r3, #0
     6e8:	1a000003 	bne	6fc <condWait+0x34>
     6ec:	e59f1050 	ldr	r1, [pc, #80]	@ 744 <condWait+0x7c>
     6f0:	e3a00002 	mov	r0, #2
     6f4:	eb000241 	bl	1000 <printf>
     6f8:	ea00000f 	b	73c <condWait+0x74>
     6fc:	e51b300c 	ldr	r3, [fp, #-12]
     700:	e5933004 	ldr	r3, [r3, #4]
     704:	e3530000 	cmp	r3, #0
     708:	1a000003 	bne	71c <condWait+0x54>
     70c:	e59f1034 	ldr	r1, [pc, #52]	@ 748 <condWait+0x80>
     710:	e3a00002 	mov	r0, #2
     714:	eb000239 	bl	1000 <printf>
     718:	ea000007 	b	73c <condWait+0x74>
     71c:	e51b000c 	ldr	r0, [fp, #-12]
     720:	ebffffc2 	bl	630 <releaseLock>
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5933000 	ldr	r3, [r3]
     72c:	e1a00003 	mov	r0, r3
     730:	eb0001b2 	bl	e00 <sleepChan>
     734:	e51b000c 	ldr	r0, [fp, #-12]
     738:	ebffffa4 	bl	5d0 <acquireLock>
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}
     744:	00001748 	.word	0x00001748
     748:	0000176c 	.word	0x0000176c

0000074c <broadcast>:
     74c:	e92d4800 	push	{fp, lr}
     750:	e28db004 	add	fp, sp, #4
     754:	e24dd008 	sub	sp, sp, #8
     758:	e50b0008 	str	r0, [fp, #-8]
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e5933004 	ldr	r3, [r3, #4]
     764:	e3530000 	cmp	r3, #0
     768:	1a000003 	bne	77c <broadcast+0x30>
     76c:	e59f1020 	ldr	r1, [pc, #32]	@ 794 <broadcast+0x48>
     770:	e3a00002 	mov	r0, #2
     774:	eb000221 	bl	1000 <printf>
     778:	ea000003 	b	78c <broadcast+0x40>
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e5933000 	ldr	r3, [r3]
     784:	e1a00003 	mov	r0, r3
     788:	eb0001ae 	bl	e48 <sigChan>
     78c:	e24bd004 	sub	sp, fp, #4
     790:	e8bd8800 	pop	{fp, pc}
     794:	00001748 	.word	0x00001748

00000798 <signal>:
     798:	e92d4800 	push	{fp, lr}
     79c:	e28db004 	add	fp, sp, #4
     7a0:	e24dd008 	sub	sp, sp, #8
     7a4:	e50b0008 	str	r0, [fp, #-8]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5933004 	ldr	r3, [r3, #4]
     7b0:	e3530000 	cmp	r3, #0
     7b4:	1a000003 	bne	7c8 <signal+0x30>
     7b8:	e59f1020 	ldr	r1, [pc, #32]	@ 7e0 <signal+0x48>
     7bc:	e3a00002 	mov	r0, #2
     7c0:	eb00020e 	bl	1000 <printf>
     7c4:	ea000003 	b	7d8 <signal+0x40>
     7c8:	e51b3008 	ldr	r3, [fp, #-8]
     7cc:	e5933000 	ldr	r3, [r3]
     7d0:	e1a00003 	mov	r0, r3
     7d4:	eb0001a4 	bl	e6c <sigOneChan>
     7d8:	e24bd004 	sub	sp, fp, #4
     7dc:	e8bd8800 	pop	{fp, pc}
     7e0:	00001748 	.word	0x00001748

000007e4 <semInit>:
     7e4:	e92d4800 	push	{fp, lr}
     7e8:	e28db004 	add	fp, sp, #4
     7ec:	e24dd008 	sub	sp, sp, #8
     7f0:	e50b0008 	str	r0, [fp, #-8]
     7f4:	e50b100c 	str	r1, [fp, #-12]
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e51b200c 	ldr	r2, [fp, #-12]
     800:	e5832000 	str	r2, [r3]
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e2833004 	add	r3, r3, #4
     80c:	e1a00003 	mov	r0, r3
     810:	ebffff60 	bl	598 <initiateLock>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e283300c 	add	r3, r3, #12
     81c:	e1a00003 	mov	r0, r3
     820:	ebffff95 	bl	67c <initiateCondVar>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e3a02001 	mov	r2, #1
     82c:	e5832014 	str	r2, [r3, #20]
     830:	e1a00000 	nop			@ (mov r0, r0)
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <semDown>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933014 	ldr	r3, [r3, #20]
     854:	e3530000 	cmp	r3, #0
     858:	1a000003 	bne	86c <semDown+0x30>
     85c:	e59f1074 	ldr	r1, [pc, #116]	@ 8d8 <semDown+0x9c>
     860:	e3a00002 	mov	r0, #2
     864:	eb0001e5 	bl	1000 <printf>
     868:	ea000018 	b	8d0 <semDown+0x94>
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e2833004 	add	r3, r3, #4
     874:	e1a00003 	mov	r0, r3
     878:	ebffff54 	bl	5d0 <acquireLock>
     87c:	ea000006 	b	89c <semDown+0x60>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e283200c 	add	r2, r3, #12
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833004 	add	r3, r3, #4
     890:	e1a01003 	mov	r1, r3
     894:	e1a00002 	mov	r0, r2
     898:	ebffff8a 	bl	6c8 <condWait>
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e5933000 	ldr	r3, [r3]
     8a4:	e3530000 	cmp	r3, #0
     8a8:	0afffff4 	beq	880 <semDown+0x44>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e5933000 	ldr	r3, [r3]
     8b4:	e2432001 	sub	r2, r3, #1
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5832000 	str	r2, [r3]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e2833004 	add	r3, r3, #4
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffff57 	bl	630 <releaseLock>
     8d0:	e24bd004 	sub	sp, fp, #4
     8d4:	e8bd8800 	pop	{fp, pc}
     8d8:	0000178c 	.word	0x0000178c

000008dc <semUp>:
     8dc:	e92d4800 	push	{fp, lr}
     8e0:	e28db004 	add	fp, sp, #4
     8e4:	e24dd008 	sub	sp, sp, #8
     8e8:	e50b0008 	str	r0, [fp, #-8]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5933014 	ldr	r3, [r3, #20]
     8f4:	e3530000 	cmp	r3, #0
     8f8:	1a000003 	bne	90c <semUp+0x30>
     8fc:	e59f1054 	ldr	r1, [pc, #84]	@ 958 <semUp+0x7c>
     900:	e3a00002 	mov	r0, #2
     904:	eb0001bd 	bl	1000 <printf>
     908:	ea000010 	b	950 <semUp+0x74>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2833004 	add	r3, r3, #4
     914:	e1a00003 	mov	r0, r3
     918:	ebffff2c 	bl	5d0 <acquireLock>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e5933000 	ldr	r3, [r3]
     924:	e2832001 	add	r2, r3, #1
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e5832000 	str	r2, [r3]
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e283300c 	add	r3, r3, #12
     938:	e1a00003 	mov	r0, r3
     93c:	ebffff95 	bl	798 <signal>
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e2833004 	add	r3, r3, #4
     948:	e1a00003 	mov	r0, r3
     94c:	ebffff37 	bl	630 <releaseLock>
     950:	e24bd004 	sub	sp, fp, #4
     954:	e8bd8800 	pop	{fp, pc}
     958:	0000178c 	.word	0x0000178c

0000095c <fork>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a00001 	mov	r0, #1
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <exit>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a00002 	mov	r0, #2
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <wait>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a00003 	mov	r0, #3
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <pipe>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a00004 	mov	r0, #4
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <read>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a00005 	mov	r0, #5
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <write>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00010 	mov	r0, #16
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <close>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00015 	mov	r0, #21
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <kill>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00006 	mov	r0, #6
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <exec>:
     a7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a80:	e1a04003 	mov	r4, r3
     a84:	e1a03002 	mov	r3, r2
     a88:	e1a02001 	mov	r2, r1
     a8c:	e1a01000 	mov	r1, r0
     a90:	e3a00007 	mov	r0, #7
     a94:	ef000000 	svc	0x00000000
     a98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a9c:	e12fff1e 	bx	lr

00000aa0 <open>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a0000f 	mov	r0, #15
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <mknod>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00011 	mov	r0, #17
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <unlink>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00012 	mov	r0, #18
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <fstat>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00008 	mov	r0, #8
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <link>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00013 	mov	r0, #19
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <mkdir>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00014 	mov	r0, #20
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <chdir>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00009 	mov	r0, #9
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <dup>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a0000a 	mov	r0, #10
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <getpid>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a0000b 	mov	r0, #11
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <sbrk>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a0000c 	mov	r0, #12
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <sleep>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0000d 	mov	r0, #13
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <uptime>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a0000e 	mov	r0, #14
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <disproc>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00016 	mov	r0, #22
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <srand>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00017 	mov	r0, #23
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <setticket>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00018 	mov	r0, #24
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <getpinfo>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00019 	mov	r0, #25
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <printPages>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a0001a 	mov	r0, #26
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <kpt>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a0001b 	mov	r0, #27
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <thread_create>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a0001c 	mov	r0, #28
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <thread_exit>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a0001d 	mov	r0, #29
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <thread_join>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0001e 	mov	r0, #30
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <waitpid>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0001f 	mov	r0, #31
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <barrier_init>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00020 	mov	r0, #32
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <barrier_check>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a00021 	mov	r0, #33	@ 0x21
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <sleepChan>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a00022 	mov	r0, #34	@ 0x22
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <getChannel>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00023 	mov	r0, #35	@ 0x23
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <sigChan>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a00024 	mov	r0, #36	@ 0x24
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <sigOneChan>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a00025 	mov	r0, #37	@ 0x25
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <putc>:
     e90:	e92d4800 	push	{fp, lr}
     e94:	e28db004 	add	fp, sp, #4
     e98:	e24dd008 	sub	sp, sp, #8
     e9c:	e50b0008 	str	r0, [fp, #-8]
     ea0:	e1a03001 	mov	r3, r1
     ea4:	e54b3009 	strb	r3, [fp, #-9]
     ea8:	e24b3009 	sub	r3, fp, #9
     eac:	e3a02001 	mov	r2, #1
     eb0:	e1a01003 	mov	r1, r3
     eb4:	e51b0008 	ldr	r0, [fp, #-8]
     eb8:	ebfffed4 	bl	a10 <write>
     ebc:	e1a00000 	nop			@ (mov r0, r0)
     ec0:	e24bd004 	sub	sp, fp, #4
     ec4:	e8bd8800 	pop	{fp, pc}

00000ec8 <printint>:
     ec8:	e92d4800 	push	{fp, lr}
     ecc:	e28db004 	add	fp, sp, #4
     ed0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ed4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ed8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     edc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ee0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ee4:	e3a03000 	mov	r3, #0
     ee8:	e50b300c 	str	r3, [fp, #-12]
     eec:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ef0:	e3530000 	cmp	r3, #0
     ef4:	0a000008 	beq	f1c <printint+0x54>
     ef8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     efc:	e3530000 	cmp	r3, #0
     f00:	aa000005 	bge	f1c <printint+0x54>
     f04:	e3a03001 	mov	r3, #1
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f10:	e2633000 	rsb	r3, r3, #0
     f14:	e50b3010 	str	r3, [fp, #-16]
     f18:	ea000001 	b	f24 <printint+0x5c>
     f1c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f20:	e50b3010 	str	r3, [fp, #-16]
     f24:	e3a03000 	mov	r3, #0
     f28:	e50b3008 	str	r3, [fp, #-8]
     f2c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e1a01002 	mov	r1, r2
     f38:	e1a00003 	mov	r0, r3
     f3c:	eb0001d5 	bl	1698 <__aeabi_uidivmod>
     f40:	e1a03001 	mov	r3, r1
     f44:	e1a01003 	mov	r1, r3
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e2832001 	add	r2, r3, #1
     f50:	e50b2008 	str	r2, [fp, #-8]
     f54:	e59f20a0 	ldr	r2, [pc, #160]	@ ffc <printint+0x134>
     f58:	e7d22001 	ldrb	r2, [r2, r1]
     f5c:	e2433004 	sub	r3, r3, #4
     f60:	e083300b 	add	r3, r3, fp
     f64:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f68:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0010 	ldr	r0, [fp, #-16]
     f74:	eb00018a 	bl	15a4 <__udivsi3>
     f78:	e1a03000 	mov	r3, r0
     f7c:	e50b3010 	str	r3, [fp, #-16]
     f80:	e51b3010 	ldr	r3, [fp, #-16]
     f84:	e3530000 	cmp	r3, #0
     f88:	1affffe7 	bne	f2c <printint+0x64>
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e3530000 	cmp	r3, #0
     f94:	0a00000e 	beq	fd4 <printint+0x10c>
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e2832001 	add	r2, r3, #1
     fa0:	e50b2008 	str	r2, [fp, #-8]
     fa4:	e2433004 	sub	r3, r3, #4
     fa8:	e083300b 	add	r3, r3, fp
     fac:	e3a0202d 	mov	r2, #45	@ 0x2d
     fb0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fb4:	ea000006 	b	fd4 <printint+0x10c>
     fb8:	e24b2020 	sub	r2, fp, #32
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e0823003 	add	r3, r2, r3
     fc4:	e5d33000 	ldrb	r3, [r3]
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fd0:	ebffffae 	bl	e90 <putc>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e2433001 	sub	r3, r3, #1
     fdc:	e50b3008 	str	r3, [fp, #-8]
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e3530000 	cmp	r3, #0
     fe8:	aafffff2 	bge	fb8 <printint+0xf0>
     fec:	e1a00000 	nop			@ (mov r0, r0)
     ff0:	e1a00000 	nop			@ (mov r0, r0)
     ff4:	e24bd004 	sub	sp, fp, #4
     ff8:	e8bd8800 	pop	{fp, pc}
     ffc:	000017b8 	.word	0x000017b8

00001000 <printf>:
    1000:	e92d000e 	push	{r1, r2, r3}
    1004:	e92d4800 	push	{fp, lr}
    1008:	e28db004 	add	fp, sp, #4
    100c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1010:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1014:	e3a03000 	mov	r3, #0
    1018:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    101c:	e28b3008 	add	r3, fp, #8
    1020:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1024:	e3a03000 	mov	r3, #0
    1028:	e50b3010 	str	r3, [fp, #-16]
    102c:	ea000074 	b	1204 <printf+0x204>
    1030:	e59b2004 	ldr	r2, [fp, #4]
    1034:	e51b3010 	ldr	r3, [fp, #-16]
    1038:	e0823003 	add	r3, r2, r3
    103c:	e5d33000 	ldrb	r3, [r3]
    1040:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1044:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1048:	e3530000 	cmp	r3, #0
    104c:	1a00000b 	bne	1080 <printf+0x80>
    1050:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1054:	e3530025 	cmp	r3, #37	@ 0x25
    1058:	1a000002 	bne	1068 <printf+0x68>
    105c:	e3a03025 	mov	r3, #37	@ 0x25
    1060:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1064:	ea000063 	b	11f8 <printf+0x1f8>
    1068:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    106c:	e6ef3073 	uxtb	r3, r3
    1070:	e1a01003 	mov	r1, r3
    1074:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1078:	ebffff84 	bl	e90 <putc>
    107c:	ea00005d 	b	11f8 <printf+0x1f8>
    1080:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1084:	e3530025 	cmp	r3, #37	@ 0x25
    1088:	1a00005a 	bne	11f8 <printf+0x1f8>
    108c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1090:	e3530064 	cmp	r3, #100	@ 0x64
    1094:	1a00000a 	bne	10c4 <printf+0xc4>
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e5933000 	ldr	r3, [r3]
    10a0:	e1a01003 	mov	r1, r3
    10a4:	e3a03001 	mov	r3, #1
    10a8:	e3a0200a 	mov	r2, #10
    10ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10b0:	ebffff84 	bl	ec8 <printint>
    10b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	e2833004 	add	r3, r3, #4
    10bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	ea00004a 	b	11f0 <printf+0x1f0>
    10c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e3530078 	cmp	r3, #120	@ 0x78
    10cc:	0a000002 	beq	10dc <printf+0xdc>
    10d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d4:	e3530070 	cmp	r3, #112	@ 0x70
    10d8:	1a00000a 	bne	1108 <printf+0x108>
    10dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e1a01003 	mov	r1, r3
    10e8:	e3a03000 	mov	r3, #0
    10ec:	e3a02010 	mov	r2, #16
    10f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f4:	ebffff73 	bl	ec8 <printint>
    10f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10fc:	e2833004 	add	r3, r3, #4
    1100:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1104:	ea000039 	b	11f0 <printf+0x1f0>
    1108:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    110c:	e3530073 	cmp	r3, #115	@ 0x73
    1110:	1a000018 	bne	1178 <printf+0x178>
    1114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e50b300c 	str	r3, [fp, #-12]
    1120:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1124:	e2833004 	add	r3, r3, #4
    1128:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    112c:	e51b300c 	ldr	r3, [fp, #-12]
    1130:	e3530000 	cmp	r3, #0
    1134:	1a00000a 	bne	1164 <printf+0x164>
    1138:	e59f30f4 	ldr	r3, [pc, #244]	@ 1234 <printf+0x234>
    113c:	e50b300c 	str	r3, [fp, #-12]
    1140:	ea000007 	b	1164 <printf+0x164>
    1144:	e51b300c 	ldr	r3, [fp, #-12]
    1148:	e5d33000 	ldrb	r3, [r3]
    114c:	e1a01003 	mov	r1, r3
    1150:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1154:	ebffff4d 	bl	e90 <putc>
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e2833001 	add	r3, r3, #1
    1160:	e50b300c 	str	r3, [fp, #-12]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5d33000 	ldrb	r3, [r3]
    116c:	e3530000 	cmp	r3, #0
    1170:	1afffff3 	bne	1144 <printf+0x144>
    1174:	ea00001d 	b	11f0 <printf+0x1f0>
    1178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    117c:	e3530063 	cmp	r3, #99	@ 0x63
    1180:	1a000009 	bne	11ac <printf+0x1ac>
    1184:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e6ef3073 	uxtb	r3, r3
    1190:	e1a01003 	mov	r1, r3
    1194:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1198:	ebffff3c 	bl	e90 <putc>
    119c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a0:	e2833004 	add	r3, r3, #4
    11a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11a8:	ea000010 	b	11f0 <printf+0x1f0>
    11ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b0:	e3530025 	cmp	r3, #37	@ 0x25
    11b4:	1a000005 	bne	11d0 <printf+0x1d0>
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e6ef3073 	uxtb	r3, r3
    11c0:	e1a01003 	mov	r1, r3
    11c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c8:	ebffff30 	bl	e90 <putc>
    11cc:	ea000007 	b	11f0 <printf+0x1f0>
    11d0:	e3a01025 	mov	r1, #37	@ 0x25
    11d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d8:	ebffff2c 	bl	e90 <putc>
    11dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11e0:	e6ef3073 	uxtb	r3, r3
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ec:	ebffff27 	bl	e90 <putc>
    11f0:	e3a03000 	mov	r3, #0
    11f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e2833001 	add	r3, r3, #1
    1200:	e50b3010 	str	r3, [fp, #-16]
    1204:	e59b2004 	ldr	r2, [fp, #4]
    1208:	e51b3010 	ldr	r3, [fp, #-16]
    120c:	e0823003 	add	r3, r2, r3
    1210:	e5d33000 	ldrb	r3, [r3]
    1214:	e3530000 	cmp	r3, #0
    1218:	1affff84 	bne	1030 <printf+0x30>
    121c:	e1a00000 	nop			@ (mov r0, r0)
    1220:	e1a00000 	nop			@ (mov r0, r0)
    1224:	e24bd004 	sub	sp, fp, #4
    1228:	e8bd4800 	pop	{fp, lr}
    122c:	e28dd00c 	add	sp, sp, #12
    1230:	e12fff1e 	bx	lr
    1234:	000017b0 	.word	0x000017b0

00001238 <free>:
    1238:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    123c:	e28db000 	add	fp, sp, #0
    1240:	e24dd014 	sub	sp, sp, #20
    1244:	e50b0010 	str	r0, [fp, #-16]
    1248:	e51b3010 	ldr	r3, [fp, #-16]
    124c:	e2433008 	sub	r3, r3, #8
    1250:	e50b300c 	str	r3, [fp, #-12]
    1254:	e59f3154 	ldr	r3, [pc, #340]	@ 13b0 <free+0x178>
    1258:	e5933000 	ldr	r3, [r3]
    125c:	e50b3008 	str	r3, [fp, #-8]
    1260:	ea000010 	b	12a8 <free+0x70>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5933000 	ldr	r3, [r3]
    126c:	e51b2008 	ldr	r2, [fp, #-8]
    1270:	e1520003 	cmp	r2, r3
    1274:	3a000008 	bcc	129c <free+0x64>
    1278:	e51b200c 	ldr	r2, [fp, #-12]
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e1520003 	cmp	r2, r3
    1284:	8a000010 	bhi	12cc <free+0x94>
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	e5933000 	ldr	r3, [r3]
    1290:	e51b200c 	ldr	r2, [fp, #-12]
    1294:	e1520003 	cmp	r2, r3
    1298:	3a00000b 	bcc	12cc <free+0x94>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e50b3008 	str	r3, [fp, #-8]
    12a8:	e51b200c 	ldr	r2, [fp, #-12]
    12ac:	e51b3008 	ldr	r3, [fp, #-8]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	9affffea 	bls	1264 <free+0x2c>
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e51b200c 	ldr	r2, [fp, #-12]
    12c4:	e1520003 	cmp	r2, r3
    12c8:	2affffe5 	bcs	1264 <free+0x2c>
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e5933004 	ldr	r3, [r3, #4]
    12d4:	e1a03183 	lsl	r3, r3, #3
    12d8:	e51b200c 	ldr	r2, [fp, #-12]
    12dc:	e0822003 	add	r2, r2, r3
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e1520003 	cmp	r2, r3
    12ec:	1a00000d 	bne	1328 <free+0xf0>
    12f0:	e51b300c 	ldr	r3, [fp, #-12]
    12f4:	e5932004 	ldr	r2, [r3, #4]
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e5933004 	ldr	r3, [r3, #4]
    1304:	e0822003 	add	r2, r2, r3
    1308:	e51b300c 	ldr	r3, [fp, #-12]
    130c:	e5832004 	str	r2, [r3, #4]
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e5932000 	ldr	r2, [r3]
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5832000 	str	r2, [r3]
    1324:	ea000003 	b	1338 <free+0x100>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5932000 	ldr	r2, [r3]
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e5832000 	str	r2, [r3]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933004 	ldr	r3, [r3, #4]
    1340:	e1a03183 	lsl	r3, r3, #3
    1344:	e51b2008 	ldr	r2, [fp, #-8]
    1348:	e0823003 	add	r3, r2, r3
    134c:	e51b200c 	ldr	r2, [fp, #-12]
    1350:	e1520003 	cmp	r2, r3
    1354:	1a00000b 	bne	1388 <free+0x150>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5932004 	ldr	r2, [r3, #4]
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5933004 	ldr	r3, [r3, #4]
    1368:	e0822003 	add	r2, r2, r3
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e5832004 	str	r2, [r3, #4]
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5932000 	ldr	r2, [r3]
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5832000 	str	r2, [r3]
    1384:	ea000002 	b	1394 <free+0x15c>
    1388:	e51b3008 	ldr	r3, [fp, #-8]
    138c:	e51b200c 	ldr	r2, [fp, #-12]
    1390:	e5832000 	str	r2, [r3]
    1394:	e59f2014 	ldr	r2, [pc, #20]	@ 13b0 <free+0x178>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5823000 	str	r3, [r2]
    13a0:	e1a00000 	nop			@ (mov r0, r0)
    13a4:	e28bd000 	add	sp, fp, #0
    13a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13ac:	e12fff1e 	bx	lr
    13b0:	000017d4 	.word	0x000017d4

000013b4 <morecore>:
    13b4:	e92d4800 	push	{fp, lr}
    13b8:	e28db004 	add	fp, sp, #4
    13bc:	e24dd010 	sub	sp, sp, #16
    13c0:	e50b0010 	str	r0, [fp, #-16]
    13c4:	e51b3010 	ldr	r3, [fp, #-16]
    13c8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13cc:	2a000001 	bcs	13d8 <morecore+0x24>
    13d0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13d4:	e50b3010 	str	r3, [fp, #-16]
    13d8:	e51b3010 	ldr	r3, [fp, #-16]
    13dc:	e1a03183 	lsl	r3, r3, #3
    13e0:	e1a00003 	mov	r0, r3
    13e4:	ebfffdfe 	bl	be4 <sbrk>
    13e8:	e50b0008 	str	r0, [fp, #-8]
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e3730001 	cmn	r3, #1
    13f4:	1a000001 	bne	1400 <morecore+0x4c>
    13f8:	e3a03000 	mov	r3, #0
    13fc:	ea00000a 	b	142c <morecore+0x78>
    1400:	e51b3008 	ldr	r3, [fp, #-8]
    1404:	e50b300c 	str	r3, [fp, #-12]
    1408:	e51b300c 	ldr	r3, [fp, #-12]
    140c:	e51b2010 	ldr	r2, [fp, #-16]
    1410:	e5832004 	str	r2, [r3, #4]
    1414:	e51b300c 	ldr	r3, [fp, #-12]
    1418:	e2833008 	add	r3, r3, #8
    141c:	e1a00003 	mov	r0, r3
    1420:	ebffff84 	bl	1238 <free>
    1424:	e59f300c 	ldr	r3, [pc, #12]	@ 1438 <morecore+0x84>
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e1a00003 	mov	r0, r3
    1430:	e24bd004 	sub	sp, fp, #4
    1434:	e8bd8800 	pop	{fp, pc}
    1438:	000017d4 	.word	0x000017d4

0000143c <malloc>:
    143c:	e92d4800 	push	{fp, lr}
    1440:	e28db004 	add	fp, sp, #4
    1444:	e24dd018 	sub	sp, sp, #24
    1448:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    144c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1450:	e2833007 	add	r3, r3, #7
    1454:	e1a031a3 	lsr	r3, r3, #3
    1458:	e2833001 	add	r3, r3, #1
    145c:	e50b3010 	str	r3, [fp, #-16]
    1460:	e59f3134 	ldr	r3, [pc, #308]	@ 159c <malloc+0x160>
    1464:	e5933000 	ldr	r3, [r3]
    1468:	e50b300c 	str	r3, [fp, #-12]
    146c:	e51b300c 	ldr	r3, [fp, #-12]
    1470:	e3530000 	cmp	r3, #0
    1474:	1a00000b 	bne	14a8 <malloc+0x6c>
    1478:	e59f3120 	ldr	r3, [pc, #288]	@ 15a0 <malloc+0x164>
    147c:	e50b300c 	str	r3, [fp, #-12]
    1480:	e59f2114 	ldr	r2, [pc, #276]	@ 159c <malloc+0x160>
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e5823000 	str	r3, [r2]
    148c:	e59f3108 	ldr	r3, [pc, #264]	@ 159c <malloc+0x160>
    1490:	e5933000 	ldr	r3, [r3]
    1494:	e59f2104 	ldr	r2, [pc, #260]	@ 15a0 <malloc+0x164>
    1498:	e5823000 	str	r3, [r2]
    149c:	e59f30fc 	ldr	r3, [pc, #252]	@ 15a0 <malloc+0x164>
    14a0:	e3a02000 	mov	r2, #0
    14a4:	e5832004 	str	r2, [r3, #4]
    14a8:	e51b300c 	ldr	r3, [fp, #-12]
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e50b3008 	str	r3, [fp, #-8]
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e5933004 	ldr	r3, [r3, #4]
    14bc:	e51b2010 	ldr	r2, [fp, #-16]
    14c0:	e1520003 	cmp	r2, r3
    14c4:	8a00001e 	bhi	1544 <malloc+0x108>
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5933004 	ldr	r3, [r3, #4]
    14d0:	e51b2010 	ldr	r2, [fp, #-16]
    14d4:	e1520003 	cmp	r2, r3
    14d8:	1a000004 	bne	14f0 <malloc+0xb4>
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5932000 	ldr	r2, [r3]
    14e4:	e51b300c 	ldr	r3, [fp, #-12]
    14e8:	e5832000 	str	r2, [r3]
    14ec:	ea00000e 	b	152c <malloc+0xf0>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5932004 	ldr	r2, [r3, #4]
    14f8:	e51b3010 	ldr	r3, [fp, #-16]
    14fc:	e0422003 	sub	r2, r2, r3
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5832004 	str	r2, [r3, #4]
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5933004 	ldr	r3, [r3, #4]
    1510:	e1a03183 	lsl	r3, r3, #3
    1514:	e51b2008 	ldr	r2, [fp, #-8]
    1518:	e0823003 	add	r3, r2, r3
    151c:	e50b3008 	str	r3, [fp, #-8]
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e51b2010 	ldr	r2, [fp, #-16]
    1528:	e5832004 	str	r2, [r3, #4]
    152c:	e59f2068 	ldr	r2, [pc, #104]	@ 159c <malloc+0x160>
    1530:	e51b300c 	ldr	r3, [fp, #-12]
    1534:	e5823000 	str	r3, [r2]
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e2833008 	add	r3, r3, #8
    1540:	ea000012 	b	1590 <malloc+0x154>
    1544:	e59f3050 	ldr	r3, [pc, #80]	@ 159c <malloc+0x160>
    1548:	e5933000 	ldr	r3, [r3]
    154c:	e51b2008 	ldr	r2, [fp, #-8]
    1550:	e1520003 	cmp	r2, r3
    1554:	1a000007 	bne	1578 <malloc+0x13c>
    1558:	e51b0010 	ldr	r0, [fp, #-16]
    155c:	ebffff94 	bl	13b4 <morecore>
    1560:	e50b0008 	str	r0, [fp, #-8]
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e3530000 	cmp	r3, #0
    156c:	1a000001 	bne	1578 <malloc+0x13c>
    1570:	e3a03000 	mov	r3, #0
    1574:	ea000005 	b	1590 <malloc+0x154>
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e50b300c 	str	r3, [fp, #-12]
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e5933000 	ldr	r3, [r3]
    1588:	e50b3008 	str	r3, [fp, #-8]
    158c:	eaffffc8 	b	14b4 <malloc+0x78>
    1590:	e1a00003 	mov	r0, r3
    1594:	e24bd004 	sub	sp, fp, #4
    1598:	e8bd8800 	pop	{fp, pc}
    159c:	000017d4 	.word	0x000017d4
    15a0:	000017cc 	.word	0x000017cc

000015a4 <__udivsi3>:
    15a4:	e2512001 	subs	r2, r1, #1
    15a8:	012fff1e 	bxeq	lr
    15ac:	3a000036 	bcc	168c <__udivsi3+0xe8>
    15b0:	e1500001 	cmp	r0, r1
    15b4:	9a000022 	bls	1644 <__udivsi3+0xa0>
    15b8:	e1110002 	tst	r1, r2
    15bc:	0a000023 	beq	1650 <__udivsi3+0xac>
    15c0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15c4:	01a01181 	lsleq	r1, r1, #3
    15c8:	03a03008 	moveq	r3, #8
    15cc:	13a03001 	movne	r3, #1
    15d0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15d4:	31510000 	cmpcc	r1, r0
    15d8:	31a01201 	lslcc	r1, r1, #4
    15dc:	31a03203 	lslcc	r3, r3, #4
    15e0:	3afffffa 	bcc	15d0 <__udivsi3+0x2c>
    15e4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15e8:	31510000 	cmpcc	r1, r0
    15ec:	31a01081 	lslcc	r1, r1, #1
    15f0:	31a03083 	lslcc	r3, r3, #1
    15f4:	3afffffa 	bcc	15e4 <__udivsi3+0x40>
    15f8:	e3a02000 	mov	r2, #0
    15fc:	e1500001 	cmp	r0, r1
    1600:	20400001 	subcs	r0, r0, r1
    1604:	21822003 	orrcs	r2, r2, r3
    1608:	e15000a1 	cmp	r0, r1, lsr #1
    160c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1610:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1614:	e1500121 	cmp	r0, r1, lsr #2
    1618:	20400121 	subcs	r0, r0, r1, lsr #2
    161c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1620:	e15001a1 	cmp	r0, r1, lsr #3
    1624:	204001a1 	subcs	r0, r0, r1, lsr #3
    1628:	218221a3 	orrcs	r2, r2, r3, lsr #3
    162c:	e3500000 	cmp	r0, #0
    1630:	11b03223 	lsrsne	r3, r3, #4
    1634:	11a01221 	lsrne	r1, r1, #4
    1638:	1affffef 	bne	15fc <__udivsi3+0x58>
    163c:	e1a00002 	mov	r0, r2
    1640:	e12fff1e 	bx	lr
    1644:	03a00001 	moveq	r0, #1
    1648:	13a00000 	movne	r0, #0
    164c:	e12fff1e 	bx	lr
    1650:	e3510801 	cmp	r1, #65536	@ 0x10000
    1654:	21a01821 	lsrcs	r1, r1, #16
    1658:	23a02010 	movcs	r2, #16
    165c:	33a02000 	movcc	r2, #0
    1660:	e3510c01 	cmp	r1, #256	@ 0x100
    1664:	21a01421 	lsrcs	r1, r1, #8
    1668:	22822008 	addcs	r2, r2, #8
    166c:	e3510010 	cmp	r1, #16
    1670:	21a01221 	lsrcs	r1, r1, #4
    1674:	22822004 	addcs	r2, r2, #4
    1678:	e3510004 	cmp	r1, #4
    167c:	82822003 	addhi	r2, r2, #3
    1680:	908220a1 	addls	r2, r2, r1, lsr #1
    1684:	e1a00230 	lsr	r0, r0, r2
    1688:	e12fff1e 	bx	lr
    168c:	e3500000 	cmp	r0, #0
    1690:	13e00000 	mvnne	r0, #0
    1694:	ea000007 	b	16b8 <__aeabi_idiv0>

00001698 <__aeabi_uidivmod>:
    1698:	e3510000 	cmp	r1, #0
    169c:	0afffffa 	beq	168c <__udivsi3+0xe8>
    16a0:	e92d4003 	push	{r0, r1, lr}
    16a4:	ebffffbe 	bl	15a4 <__udivsi3>
    16a8:	e8bd4006 	pop	{r1, r2, lr}
    16ac:	e0030092 	mul	r3, r2, r0
    16b0:	e0411003 	sub	r1, r1, r3
    16b4:	e12fff1e 	bx	lr

000016b8 <__aeabi_idiv0>:
    16b8:	e12fff1e 	bx	lr
