
_mkdir:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb000404 	bl	1040 <printf>
      2c:	eb000263 	bl	9c0 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0002ce 	bl	b94 <mkdir>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	@ b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb0003ed 	bl	1040 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb000244 	bl	9c0 <exit>
      ac:	000016fc 	.word	0x000016fc
      b0:	00001714 	.word	0x00001714

000000b4 <xchg>:
      b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      c8:	e51b1010 	ldr	r1, [fp, #-16]
      cc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      d0:	e1912f9f 	ldrex	r2, [r1]
      d4:	e1813f90 	strex	r3, r0, [r1]
      d8:	e50b2008 	str	r2, [fp, #-8]
      dc:	e50b300c 	str	r3, [fp, #-12]
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e3530000 	cmp	r3, #0
      e8:	1afffff6 	bne	c8 <xchg+0x14>
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e1a00003 	mov	r0, r3
      f4:	e28bd000 	add	sp, fp, #0
      f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      fc:	e12fff1e 	bx	lr

00000100 <strcpy>:
     100:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     104:	e28db000 	add	fp, sp, #0
     108:	e24dd014 	sub	sp, sp, #20
     10c:	e50b0010 	str	r0, [fp, #-16]
     110:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     114:	e51b3010 	ldr	r3, [fp, #-16]
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	e1a00000 	nop			@ (mov r0, r0)
     120:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     124:	e2823001 	add	r3, r2, #1
     128:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     12c:	e51b3010 	ldr	r3, [fp, #-16]
     130:	e2831001 	add	r1, r3, #1
     134:	e50b1010 	str	r1, [fp, #-16]
     138:	e5d22000 	ldrb	r2, [r2]
     13c:	e5c32000 	strb	r2, [r3]
     140:	e5d33000 	ldrb	r3, [r3]
     144:	e3530000 	cmp	r3, #0
     148:	1afffff4 	bne	120 <strcpy+0x20>
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e1a00003 	mov	r0, r3
     154:	e28bd000 	add	sp, fp, #0
     158:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     15c:	e12fff1e 	bx	lr

00000160 <strcmp>:
     160:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     164:	e28db000 	add	fp, sp, #0
     168:	e24dd00c 	sub	sp, sp, #12
     16c:	e50b0008 	str	r0, [fp, #-8]
     170:	e50b100c 	str	r1, [fp, #-12]
     174:	ea000005 	b	190 <strcmp+0x30>
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e2833001 	add	r3, r3, #1
     180:	e50b3008 	str	r3, [fp, #-8]
     184:	e51b300c 	ldr	r3, [fp, #-12]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b300c 	str	r3, [fp, #-12]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e5d33000 	ldrb	r3, [r3]
     198:	e3530000 	cmp	r3, #0
     19c:	0a000005 	beq	1b8 <strcmp+0x58>
     1a0:	e51b3008 	ldr	r3, [fp, #-8]
     1a4:	e5d32000 	ldrb	r2, [r3]
     1a8:	e51b300c 	ldr	r3, [fp, #-12]
     1ac:	e5d33000 	ldrb	r3, [r3]
     1b0:	e1520003 	cmp	r2, r3
     1b4:	0affffef 	beq	178 <strcmp+0x18>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e1a02003 	mov	r2, r3
     1c4:	e51b300c 	ldr	r3, [fp, #-12]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e0423003 	sub	r3, r2, r3
     1d0:	e1a00003 	mov	r0, r3
     1d4:	e28bd000 	add	sp, fp, #0
     1d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1dc:	e12fff1e 	bx	lr

000001e0 <strlen>:
     1e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e4:	e28db000 	add	fp, sp, #0
     1e8:	e24dd014 	sub	sp, sp, #20
     1ec:	e50b0010 	str	r0, [fp, #-16]
     1f0:	e3a03000 	mov	r3, #0
     1f4:	e50b3008 	str	r3, [fp, #-8]
     1f8:	ea000002 	b	208 <strlen+0x28>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e2833001 	add	r3, r3, #1
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e51b2010 	ldr	r2, [fp, #-16]
     210:	e0823003 	add	r3, r2, r3
     214:	e5d33000 	ldrb	r3, [r3]
     218:	e3530000 	cmp	r3, #0
     21c:	1afffff6 	bne	1fc <strlen+0x1c>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e1a00003 	mov	r0, r3
     228:	e28bd000 	add	sp, fp, #0
     22c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     230:	e12fff1e 	bx	lr

00000234 <memset>:
     234:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     238:	e28db000 	add	fp, sp, #0
     23c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     240:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     244:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     248:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     24c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     250:	e50b3008 	str	r3, [fp, #-8]
     254:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     258:	e54b300d 	strb	r3, [fp, #-13]
     25c:	e55b200d 	ldrb	r2, [fp, #-13]
     260:	e1a03002 	mov	r3, r2
     264:	e1a03403 	lsl	r3, r3, #8
     268:	e0833002 	add	r3, r3, r2
     26c:	e1a03803 	lsl	r3, r3, #16
     270:	e1a02003 	mov	r2, r3
     274:	e55b300d 	ldrb	r3, [fp, #-13]
     278:	e1a03403 	lsl	r3, r3, #8
     27c:	e1822003 	orr	r2, r2, r3
     280:	e55b300d 	ldrb	r3, [fp, #-13]
     284:	e1823003 	orr	r3, r2, r3
     288:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     28c:	ea000008 	b	2b4 <memset+0x80>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e55b200d 	ldrb	r2, [fp, #-13]
     298:	e5c32000 	strb	r2, [r3]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e2433001 	sub	r3, r3, #1
     2a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e2833001 	add	r3, r3, #1
     2b0:	e50b3008 	str	r3, [fp, #-8]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e3530000 	cmp	r3, #0
     2bc:	0a000003 	beq	2d0 <memset+0x9c>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2033003 	and	r3, r3, #3
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1affffef 	bne	290 <memset+0x5c>
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e50b300c 	str	r3, [fp, #-12]
     2d8:	ea000008 	b	300 <memset+0xcc>
     2dc:	e51b300c 	ldr	r3, [fp, #-12]
     2e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2e4:	e5832000 	str	r2, [r3]
     2e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e2433004 	sub	r3, r3, #4
     2f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e51b300c 	ldr	r3, [fp, #-12]
     2f8:	e2833004 	add	r3, r3, #4
     2fc:	e50b300c 	str	r3, [fp, #-12]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e3530003 	cmp	r3, #3
     308:	8afffff3 	bhi	2dc <memset+0xa8>
     30c:	e51b300c 	ldr	r3, [fp, #-12]
     310:	e50b3008 	str	r3, [fp, #-8]
     314:	ea000008 	b	33c <memset+0x108>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e55b200d 	ldrb	r2, [fp, #-13]
     320:	e5c32000 	strb	r2, [r3]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e2433001 	sub	r3, r3, #1
     32c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2833001 	add	r3, r3, #1
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     340:	e3530000 	cmp	r3, #0
     344:	1afffff3 	bne	318 <memset+0xe4>
     348:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     34c:	e1a00003 	mov	r0, r3
     350:	e28bd000 	add	sp, fp, #0
     354:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     358:	e12fff1e 	bx	lr

0000035c <strchr>:
     35c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     360:	e28db000 	add	fp, sp, #0
     364:	e24dd00c 	sub	sp, sp, #12
     368:	e50b0008 	str	r0, [fp, #-8]
     36c:	e1a03001 	mov	r3, r1
     370:	e54b3009 	strb	r3, [fp, #-9]
     374:	ea000009 	b	3a0 <strchr+0x44>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e5d33000 	ldrb	r3, [r3]
     380:	e55b2009 	ldrb	r2, [fp, #-9]
     384:	e1520003 	cmp	r2, r3
     388:	1a000001 	bne	394 <strchr+0x38>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	ea000007 	b	3b4 <strchr+0x58>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2833001 	add	r3, r3, #1
     39c:	e50b3008 	str	r3, [fp, #-8]
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e5d33000 	ldrb	r3, [r3]
     3a8:	e3530000 	cmp	r3, #0
     3ac:	1afffff1 	bne	378 <strchr+0x1c>
     3b0:	e3a03000 	mov	r3, #0
     3b4:	e1a00003 	mov	r0, r3
     3b8:	e28bd000 	add	sp, fp, #0
     3bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c0:	e12fff1e 	bx	lr

000003c4 <gets>:
     3c4:	e92d4800 	push	{fp, lr}
     3c8:	e28db004 	add	fp, sp, #4
     3cc:	e24dd018 	sub	sp, sp, #24
     3d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d8:	e3a03000 	mov	r3, #0
     3dc:	e50b3008 	str	r3, [fp, #-8]
     3e0:	ea000016 	b	440 <gets+0x7c>
     3e4:	e24b300d 	sub	r3, fp, #13
     3e8:	e3a02001 	mov	r2, #1
     3ec:	e1a01003 	mov	r1, r3
     3f0:	e3a00000 	mov	r0, #0
     3f4:	eb00018c 	bl	a2c <read>
     3f8:	e50b000c 	str	r0, [fp, #-12]
     3fc:	e51b300c 	ldr	r3, [fp, #-12]
     400:	e3530000 	cmp	r3, #0
     404:	da000013 	ble	458 <gets+0x94>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	e2832001 	add	r2, r3, #1
     410:	e50b2008 	str	r2, [fp, #-8]
     414:	e1a02003 	mov	r2, r3
     418:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     41c:	e0833002 	add	r3, r3, r2
     420:	e55b200d 	ldrb	r2, [fp, #-13]
     424:	e5c32000 	strb	r2, [r3]
     428:	e55b300d 	ldrb	r3, [fp, #-13]
     42c:	e353000a 	cmp	r3, #10
     430:	0a000009 	beq	45c <gets+0x98>
     434:	e55b300d 	ldrb	r3, [fp, #-13]
     438:	e353000d 	cmp	r3, #13
     43c:	0a000006 	beq	45c <gets+0x98>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e2833001 	add	r3, r3, #1
     448:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     44c:	e1520003 	cmp	r2, r3
     450:	caffffe3 	bgt	3e4 <gets+0x20>
     454:	ea000000 	b	45c <gets+0x98>
     458:	e1a00000 	nop			@ (mov r0, r0)
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     464:	e0823003 	add	r3, r2, r3
     468:	e3a02000 	mov	r2, #0
     46c:	e5c32000 	strb	r2, [r3]
     470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     474:	e1a00003 	mov	r0, r3
     478:	e24bd004 	sub	sp, fp, #4
     47c:	e8bd8800 	pop	{fp, pc}

00000480 <stat>:
     480:	e92d4800 	push	{fp, lr}
     484:	e28db004 	add	fp, sp, #4
     488:	e24dd010 	sub	sp, sp, #16
     48c:	e50b0010 	str	r0, [fp, #-16]
     490:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     494:	e3a01000 	mov	r1, #0
     498:	e51b0010 	ldr	r0, [fp, #-16]
     49c:	eb00018f 	bl	ae0 <open>
     4a0:	e50b0008 	str	r0, [fp, #-8]
     4a4:	e51b3008 	ldr	r3, [fp, #-8]
     4a8:	e3530000 	cmp	r3, #0
     4ac:	aa000001 	bge	4b8 <stat+0x38>
     4b0:	e3e03000 	mvn	r3, #0
     4b4:	ea000006 	b	4d4 <stat+0x54>
     4b8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4bc:	e51b0008 	ldr	r0, [fp, #-8]
     4c0:	eb0001a1 	bl	b4c <fstat>
     4c4:	e50b000c 	str	r0, [fp, #-12]
     4c8:	e51b0008 	ldr	r0, [fp, #-8]
     4cc:	eb000168 	bl	a74 <close>
     4d0:	e51b300c 	ldr	r3, [fp, #-12]
     4d4:	e1a00003 	mov	r0, r3
     4d8:	e24bd004 	sub	sp, fp, #4
     4dc:	e8bd8800 	pop	{fp, pc}

000004e0 <atoi>:
     4e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4e4:	e28db000 	add	fp, sp, #0
     4e8:	e24dd014 	sub	sp, sp, #20
     4ec:	e50b0010 	str	r0, [fp, #-16]
     4f0:	e3a03000 	mov	r3, #0
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	ea00000c 	b	530 <atoi+0x50>
     4fc:	e51b2008 	ldr	r2, [fp, #-8]
     500:	e1a03002 	mov	r3, r2
     504:	e1a03103 	lsl	r3, r3, #2
     508:	e0833002 	add	r3, r3, r2
     50c:	e1a03083 	lsl	r3, r3, #1
     510:	e1a01003 	mov	r1, r3
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e2832001 	add	r2, r3, #1
     51c:	e50b2010 	str	r2, [fp, #-16]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e0813003 	add	r3, r1, r3
     528:	e2433030 	sub	r3, r3, #48	@ 0x30
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e5d33000 	ldrb	r3, [r3]
     538:	e353002f 	cmp	r3, #47	@ 0x2f
     53c:	9a000003 	bls	550 <atoi+0x70>
     540:	e51b3010 	ldr	r3, [fp, #-16]
     544:	e5d33000 	ldrb	r3, [r3]
     548:	e3530039 	cmp	r3, #57	@ 0x39
     54c:	9affffea 	bls	4fc <atoi+0x1c>
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e1a00003 	mov	r0, r3
     558:	e28bd000 	add	sp, fp, #0
     55c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     560:	e12fff1e 	bx	lr

00000564 <memmove>:
     564:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     568:	e28db000 	add	fp, sp, #0
     56c:	e24dd01c 	sub	sp, sp, #28
     570:	e50b0010 	str	r0, [fp, #-16]
     574:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     578:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     57c:	e51b3010 	ldr	r3, [fp, #-16]
     580:	e50b3008 	str	r3, [fp, #-8]
     584:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     588:	e50b300c 	str	r3, [fp, #-12]
     58c:	ea000007 	b	5b0 <memmove+0x4c>
     590:	e51b200c 	ldr	r2, [fp, #-12]
     594:	e2823001 	add	r3, r2, #1
     598:	e50b300c 	str	r3, [fp, #-12]
     59c:	e51b3008 	ldr	r3, [fp, #-8]
     5a0:	e2831001 	add	r1, r3, #1
     5a4:	e50b1008 	str	r1, [fp, #-8]
     5a8:	e5d22000 	ldrb	r2, [r2]
     5ac:	e5c32000 	strb	r2, [r3]
     5b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b4:	e2432001 	sub	r2, r3, #1
     5b8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5bc:	e3530000 	cmp	r3, #0
     5c0:	cafffff2 	bgt	590 <memmove+0x2c>
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e1a00003 	mov	r0, r3
     5cc:	e28bd000 	add	sp, fp, #0
     5d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <initiateLock>:
     5d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5dc:	e28db000 	add	fp, sp, #0
     5e0:	e24dd00c 	sub	sp, sp, #12
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3a02000 	mov	r2, #0
     5f0:	e5832000 	str	r2, [r3]
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e3a02001 	mov	r2, #1
     5fc:	e5832004 	str	r2, [r3, #4]
     600:	e1a00000 	nop			@ (mov r0, r0)
     604:	e28bd000 	add	sp, fp, #0
     608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <acquireLock>:
     610:	e92d4800 	push	{fp, lr}
     614:	e28db004 	add	fp, sp, #4
     618:	e24dd008 	sub	sp, sp, #8
     61c:	e50b0008 	str	r0, [fp, #-8]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e5933000 	ldr	r3, [r3]
     628:	e3730001 	cmn	r3, #1
     62c:	1a000002 	bne	63c <acquireLock+0x2c>
     630:	e59f1034 	ldr	r1, [pc, #52]	@ 66c <acquireLock+0x5c>
     634:	e3a00002 	mov	r0, #2
     638:	eb000280 	bl	1040 <printf>
     63c:	e1a00000 	nop			@ (mov r0, r0)
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e3a01001 	mov	r1, #1
     648:	e1a00003 	mov	r0, r3
     64c:	ebfffe98 	bl	b4 <xchg>
     650:	e1a03000 	mov	r3, r0
     654:	e3530000 	cmp	r3, #0
     658:	1afffff8 	bne	640 <acquireLock+0x30>
     65c:	e1a00000 	nop			@ (mov r0, r0)
     660:	e1a00000 	nop			@ (mov r0, r0)
     664:	e24bd004 	sub	sp, fp, #4
     668:	e8bd8800 	pop	{fp, pc}
     66c:	00001730 	.word	0x00001730

00000670 <releaseLock>:
     670:	e92d4800 	push	{fp, lr}
     674:	e28db004 	add	fp, sp, #4
     678:	e24dd008 	sub	sp, sp, #8
     67c:	e50b0008 	str	r0, [fp, #-8]
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e5933000 	ldr	r3, [r3]
     688:	e3530001 	cmp	r3, #1
     68c:	0a000002 	beq	69c <releaseLock+0x2c>
     690:	e59f1020 	ldr	r1, [pc, #32]	@ 6b8 <releaseLock+0x48>
     694:	e3a00002 	mov	r0, #2
     698:	eb000268 	bl	1040 <printf>
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e3a01000 	mov	r1, #0
     6a4:	e1a00003 	mov	r0, r3
     6a8:	ebfffe81 	bl	b4 <xchg>
     6ac:	e1a00000 	nop			@ (mov r0, r0)
     6b0:	e24bd004 	sub	sp, fp, #4
     6b4:	e8bd8800 	pop	{fp, pc}
     6b8:	00001760 	.word	0x00001760

000006bc <initiateCondVar>:
     6bc:	e92d4800 	push	{fp, lr}
     6c0:	e28db004 	add	fp, sp, #4
     6c4:	e24dd008 	sub	sp, sp, #8
     6c8:	e50b0008 	str	r0, [fp, #-8]
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e5933004 	ldr	r3, [r3, #4]
     6d4:	e3530000 	cmp	r3, #0
     6d8:	1a000007 	bne	6fc <initiateCondVar+0x40>
     6dc:	eb0001e0 	bl	e64 <getChannel>
     6e0:	e1a02000 	mov	r2, r0
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e5832000 	str	r2, [r3]
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e3a02001 	mov	r2, #1
     6f4:	e5832004 	str	r2, [r3, #4]
     6f8:	ea000000 	b	700 <initiateCondVar+0x44>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e24bd004 	sub	sp, fp, #4
     704:	e8bd8800 	pop	{fp, pc}

00000708 <condWait>:
     708:	e92d4800 	push	{fp, lr}
     70c:	e28db004 	add	fp, sp, #4
     710:	e24dd008 	sub	sp, sp, #8
     714:	e50b0008 	str	r0, [fp, #-8]
     718:	e50b100c 	str	r1, [fp, #-12]
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e5933004 	ldr	r3, [r3, #4]
     724:	e3530000 	cmp	r3, #0
     728:	1a000003 	bne	73c <condWait+0x34>
     72c:	e59f1050 	ldr	r1, [pc, #80]	@ 784 <condWait+0x7c>
     730:	e3a00002 	mov	r0, #2
     734:	eb000241 	bl	1040 <printf>
     738:	ea00000f 	b	77c <condWait+0x74>
     73c:	e51b300c 	ldr	r3, [fp, #-12]
     740:	e5933004 	ldr	r3, [r3, #4]
     744:	e3530000 	cmp	r3, #0
     748:	1a000003 	bne	75c <condWait+0x54>
     74c:	e59f1034 	ldr	r1, [pc, #52]	@ 788 <condWait+0x80>
     750:	e3a00002 	mov	r0, #2
     754:	eb000239 	bl	1040 <printf>
     758:	ea000007 	b	77c <condWait+0x74>
     75c:	e51b000c 	ldr	r0, [fp, #-12]
     760:	ebffffc2 	bl	670 <releaseLock>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e5933000 	ldr	r3, [r3]
     76c:	e1a00003 	mov	r0, r3
     770:	eb0001b2 	bl	e40 <sleepChan>
     774:	e51b000c 	ldr	r0, [fp, #-12]
     778:	ebffffa4 	bl	610 <acquireLock>
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}
     784:	0000179c 	.word	0x0000179c
     788:	000017c0 	.word	0x000017c0

0000078c <broadcast>:
     78c:	e92d4800 	push	{fp, lr}
     790:	e28db004 	add	fp, sp, #4
     794:	e24dd008 	sub	sp, sp, #8
     798:	e50b0008 	str	r0, [fp, #-8]
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e5933004 	ldr	r3, [r3, #4]
     7a4:	e3530000 	cmp	r3, #0
     7a8:	1a000003 	bne	7bc <broadcast+0x30>
     7ac:	e59f1020 	ldr	r1, [pc, #32]	@ 7d4 <broadcast+0x48>
     7b0:	e3a00002 	mov	r0, #2
     7b4:	eb000221 	bl	1040 <printf>
     7b8:	ea000003 	b	7cc <broadcast+0x40>
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e5933000 	ldr	r3, [r3]
     7c4:	e1a00003 	mov	r0, r3
     7c8:	eb0001ae 	bl	e88 <sigChan>
     7cc:	e24bd004 	sub	sp, fp, #4
     7d0:	e8bd8800 	pop	{fp, pc}
     7d4:	0000179c 	.word	0x0000179c

000007d8 <signal>:
     7d8:	e92d4800 	push	{fp, lr}
     7dc:	e28db004 	add	fp, sp, #4
     7e0:	e24dd008 	sub	sp, sp, #8
     7e4:	e50b0008 	str	r0, [fp, #-8]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5933004 	ldr	r3, [r3, #4]
     7f0:	e3530000 	cmp	r3, #0
     7f4:	1a000003 	bne	808 <signal+0x30>
     7f8:	e59f1020 	ldr	r1, [pc, #32]	@ 820 <signal+0x48>
     7fc:	e3a00002 	mov	r0, #2
     800:	eb00020e 	bl	1040 <printf>
     804:	ea000003 	b	818 <signal+0x40>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e5933000 	ldr	r3, [r3]
     810:	e1a00003 	mov	r0, r3
     814:	eb0001a4 	bl	eac <sigOneChan>
     818:	e24bd004 	sub	sp, fp, #4
     81c:	e8bd8800 	pop	{fp, pc}
     820:	0000179c 	.word	0x0000179c

00000824 <semInit>:
     824:	e92d4800 	push	{fp, lr}
     828:	e28db004 	add	fp, sp, #4
     82c:	e24dd008 	sub	sp, sp, #8
     830:	e50b0008 	str	r0, [fp, #-8]
     834:	e50b100c 	str	r1, [fp, #-12]
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e51b200c 	ldr	r2, [fp, #-12]
     840:	e5832000 	str	r2, [r3]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e2833004 	add	r3, r3, #4
     84c:	e1a00003 	mov	r0, r3
     850:	ebffff60 	bl	5d8 <initiateLock>
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e283300c 	add	r3, r3, #12
     85c:	e1a00003 	mov	r0, r3
     860:	ebffff95 	bl	6bc <initiateCondVar>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e3a02001 	mov	r2, #1
     86c:	e5832014 	str	r2, [r3, #20]
     870:	e1a00000 	nop			@ (mov r0, r0)
     874:	e24bd004 	sub	sp, fp, #4
     878:	e8bd8800 	pop	{fp, pc}

0000087c <semDown>:
     87c:	e92d4800 	push	{fp, lr}
     880:	e28db004 	add	fp, sp, #4
     884:	e24dd008 	sub	sp, sp, #8
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e5933014 	ldr	r3, [r3, #20]
     894:	e3530000 	cmp	r3, #0
     898:	1a000003 	bne	8ac <semDown+0x30>
     89c:	e59f1074 	ldr	r1, [pc, #116]	@ 918 <semDown+0x9c>
     8a0:	e3a00002 	mov	r0, #2
     8a4:	eb0001e5 	bl	1040 <printf>
     8a8:	ea000018 	b	910 <semDown+0x94>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e2833004 	add	r3, r3, #4
     8b4:	e1a00003 	mov	r0, r3
     8b8:	ebffff54 	bl	610 <acquireLock>
     8bc:	ea000006 	b	8dc <semDown+0x60>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e283200c 	add	r2, r3, #12
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e2833004 	add	r3, r3, #4
     8d0:	e1a01003 	mov	r1, r3
     8d4:	e1a00002 	mov	r0, r2
     8d8:	ebffff8a 	bl	708 <condWait>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5933000 	ldr	r3, [r3]
     8e4:	e3530000 	cmp	r3, #0
     8e8:	0afffff4 	beq	8c0 <semDown+0x44>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5933000 	ldr	r3, [r3]
     8f4:	e2432001 	sub	r2, r3, #1
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e5832000 	str	r2, [r3]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e2833004 	add	r3, r3, #4
     908:	e1a00003 	mov	r0, r3
     90c:	ebffff57 	bl	670 <releaseLock>
     910:	e24bd004 	sub	sp, fp, #4
     914:	e8bd8800 	pop	{fp, pc}
     918:	000017e0 	.word	0x000017e0

0000091c <semUp>:
     91c:	e92d4800 	push	{fp, lr}
     920:	e28db004 	add	fp, sp, #4
     924:	e24dd008 	sub	sp, sp, #8
     928:	e50b0008 	str	r0, [fp, #-8]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5933014 	ldr	r3, [r3, #20]
     934:	e3530000 	cmp	r3, #0
     938:	1a000003 	bne	94c <semUp+0x30>
     93c:	e59f1054 	ldr	r1, [pc, #84]	@ 998 <semUp+0x7c>
     940:	e3a00002 	mov	r0, #2
     944:	eb0001bd 	bl	1040 <printf>
     948:	ea000010 	b	990 <semUp+0x74>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e2833004 	add	r3, r3, #4
     954:	e1a00003 	mov	r0, r3
     958:	ebffff2c 	bl	610 <acquireLock>
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e5933000 	ldr	r3, [r3]
     964:	e2832001 	add	r2, r3, #1
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e5832000 	str	r2, [r3]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e283300c 	add	r3, r3, #12
     978:	e1a00003 	mov	r0, r3
     97c:	ebffff95 	bl	7d8 <signal>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e2833004 	add	r3, r3, #4
     988:	e1a00003 	mov	r0, r3
     98c:	ebffff37 	bl	670 <releaseLock>
     990:	e24bd004 	sub	sp, fp, #4
     994:	e8bd8800 	pop	{fp, pc}
     998:	000017e0 	.word	0x000017e0

0000099c <fork>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00001 	mov	r0, #1
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <exit>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00002 	mov	r0, #2
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <wait>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00003 	mov	r0, #3
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <pipe>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00004 	mov	r0, #4
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <read>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00005 	mov	r0, #5
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <write>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00010 	mov	r0, #16
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <close>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00015 	mov	r0, #21
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <kill>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00006 	mov	r0, #6
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <exec>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00007 	mov	r0, #7
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <open>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a0000f 	mov	r0, #15
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <mknod>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00011 	mov	r0, #17
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <unlink>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00012 	mov	r0, #18
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <fstat>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a00008 	mov	r0, #8
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <link>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00013 	mov	r0, #19
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <mkdir>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00014 	mov	r0, #20
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <chdir>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a00009 	mov	r0, #9
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <dup>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a0000a 	mov	r0, #10
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <getpid>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a0000b 	mov	r0, #11
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <sbrk>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a0000c 	mov	r0, #12
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <sleep>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a0000d 	mov	r0, #13
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <uptime>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a0000e 	mov	r0, #14
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <disproc>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00016 	mov	r0, #22
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <srand>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00017 	mov	r0, #23
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <setticket>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00018 	mov	r0, #24
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <getpinfo>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a00019 	mov	r0, #25
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <printPages>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a0001a 	mov	r0, #26
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <kpt>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a0001b 	mov	r0, #27
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <thread_create>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a0001c 	mov	r0, #28
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <thread_exit>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a0001d 	mov	r0, #29
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <thread_join>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a0001e 	mov	r0, #30
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <waitpid>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a0001f 	mov	r0, #31
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <barrier_init>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00020 	mov	r0, #32
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <barrier_check>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00021 	mov	r0, #33	@ 0x21
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <sleepChan>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00022 	mov	r0, #34	@ 0x22
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <getChannel>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00023 	mov	r0, #35	@ 0x23
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <sigChan>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00024 	mov	r0, #36	@ 0x24
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <sigOneChan>:
     eac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb0:	e1a04003 	mov	r4, r3
     eb4:	e1a03002 	mov	r3, r2
     eb8:	e1a02001 	mov	r2, r1
     ebc:	e1a01000 	mov	r1, r0
     ec0:	e3a00025 	mov	r0, #37	@ 0x25
     ec4:	ef000000 	svc	0x00000000
     ec8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ecc:	e12fff1e 	bx	lr

00000ed0 <putc>:
     ed0:	e92d4800 	push	{fp, lr}
     ed4:	e28db004 	add	fp, sp, #4
     ed8:	e24dd008 	sub	sp, sp, #8
     edc:	e50b0008 	str	r0, [fp, #-8]
     ee0:	e1a03001 	mov	r3, r1
     ee4:	e54b3009 	strb	r3, [fp, #-9]
     ee8:	e24b3009 	sub	r3, fp, #9
     eec:	e3a02001 	mov	r2, #1
     ef0:	e1a01003 	mov	r1, r3
     ef4:	e51b0008 	ldr	r0, [fp, #-8]
     ef8:	ebfffed4 	bl	a50 <write>
     efc:	e1a00000 	nop			@ (mov r0, r0)
     f00:	e24bd004 	sub	sp, fp, #4
     f04:	e8bd8800 	pop	{fp, pc}

00000f08 <printint>:
     f08:	e92d4800 	push	{fp, lr}
     f0c:	e28db004 	add	fp, sp, #4
     f10:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f14:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f18:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f1c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f20:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f24:	e3a03000 	mov	r3, #0
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f30:	e3530000 	cmp	r3, #0
     f34:	0a000008 	beq	f5c <printint+0x54>
     f38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f3c:	e3530000 	cmp	r3, #0
     f40:	aa000005 	bge	f5c <printint+0x54>
     f44:	e3a03001 	mov	r3, #1
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f50:	e2633000 	rsb	r3, r3, #0
     f54:	e50b3010 	str	r3, [fp, #-16]
     f58:	ea000001 	b	f64 <printint+0x5c>
     f5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f60:	e50b3010 	str	r3, [fp, #-16]
     f64:	e3a03000 	mov	r3, #0
     f68:	e50b3008 	str	r3, [fp, #-8]
     f6c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f70:	e51b3010 	ldr	r3, [fp, #-16]
     f74:	e1a01002 	mov	r1, r2
     f78:	e1a00003 	mov	r0, r3
     f7c:	eb0001d5 	bl	16d8 <__aeabi_uidivmod>
     f80:	e1a03001 	mov	r3, r1
     f84:	e1a01003 	mov	r1, r3
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e2832001 	add	r2, r3, #1
     f90:	e50b2008 	str	r2, [fp, #-8]
     f94:	e59f20a0 	ldr	r2, [pc, #160]	@ 103c <printint+0x134>
     f98:	e7d22001 	ldrb	r2, [r2, r1]
     f9c:	e2433004 	sub	r3, r3, #4
     fa0:	e083300b 	add	r3, r3, fp
     fa4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fa8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fac:	e1a01003 	mov	r1, r3
     fb0:	e51b0010 	ldr	r0, [fp, #-16]
     fb4:	eb00018a 	bl	15e4 <__udivsi3>
     fb8:	e1a03000 	mov	r3, r0
     fbc:	e50b3010 	str	r3, [fp, #-16]
     fc0:	e51b3010 	ldr	r3, [fp, #-16]
     fc4:	e3530000 	cmp	r3, #0
     fc8:	1affffe7 	bne	f6c <printint+0x64>
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e3530000 	cmp	r3, #0
     fd4:	0a00000e 	beq	1014 <printint+0x10c>
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e2832001 	add	r2, r3, #1
     fe0:	e50b2008 	str	r2, [fp, #-8]
     fe4:	e2433004 	sub	r3, r3, #4
     fe8:	e083300b 	add	r3, r3, fp
     fec:	e3a0202d 	mov	r2, #45	@ 0x2d
     ff0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ff4:	ea000006 	b	1014 <printint+0x10c>
     ff8:	e24b2020 	sub	r2, fp, #32
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e0823003 	add	r3, r2, r3
    1004:	e5d33000 	ldrb	r3, [r3]
    1008:	e1a01003 	mov	r1, r3
    100c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1010:	ebffffae 	bl	ed0 <putc>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e2433001 	sub	r3, r3, #1
    101c:	e50b3008 	str	r3, [fp, #-8]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e3530000 	cmp	r3, #0
    1028:	aafffff2 	bge	ff8 <printint+0xf0>
    102c:	e1a00000 	nop			@ (mov r0, r0)
    1030:	e1a00000 	nop			@ (mov r0, r0)
    1034:	e24bd004 	sub	sp, fp, #4
    1038:	e8bd8800 	pop	{fp, pc}
    103c:	0000180c 	.word	0x0000180c

00001040 <printf>:
    1040:	e92d000e 	push	{r1, r2, r3}
    1044:	e92d4800 	push	{fp, lr}
    1048:	e28db004 	add	fp, sp, #4
    104c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1050:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1054:	e3a03000 	mov	r3, #0
    1058:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    105c:	e28b3008 	add	r3, fp, #8
    1060:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1064:	e3a03000 	mov	r3, #0
    1068:	e50b3010 	str	r3, [fp, #-16]
    106c:	ea000074 	b	1244 <printf+0x204>
    1070:	e59b2004 	ldr	r2, [fp, #4]
    1074:	e51b3010 	ldr	r3, [fp, #-16]
    1078:	e0823003 	add	r3, r2, r3
    107c:	e5d33000 	ldrb	r3, [r3]
    1080:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1088:	e3530000 	cmp	r3, #0
    108c:	1a00000b 	bne	10c0 <printf+0x80>
    1090:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1094:	e3530025 	cmp	r3, #37	@ 0x25
    1098:	1a000002 	bne	10a8 <printf+0x68>
    109c:	e3a03025 	mov	r3, #37	@ 0x25
    10a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10a4:	ea000063 	b	1238 <printf+0x1f8>
    10a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ac:	e6ef3073 	uxtb	r3, r3
    10b0:	e1a01003 	mov	r1, r3
    10b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10b8:	ebffff84 	bl	ed0 <putc>
    10bc:	ea00005d 	b	1238 <printf+0x1f8>
    10c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10c4:	e3530025 	cmp	r3, #37	@ 0x25
    10c8:	1a00005a 	bne	1238 <printf+0x1f8>
    10cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d0:	e3530064 	cmp	r3, #100	@ 0x64
    10d4:	1a00000a 	bne	1104 <printf+0xc4>
    10d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e1a01003 	mov	r1, r3
    10e4:	e3a03001 	mov	r3, #1
    10e8:	e3a0200a 	mov	r2, #10
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff84 	bl	f08 <printint>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e2833004 	add	r3, r3, #4
    10fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1100:	ea00004a 	b	1230 <printf+0x1f0>
    1104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e3530078 	cmp	r3, #120	@ 0x78
    110c:	0a000002 	beq	111c <printf+0xdc>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e3530070 	cmp	r3, #112	@ 0x70
    1118:	1a00000a 	bne	1148 <printf+0x108>
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e1a01003 	mov	r1, r3
    1128:	e3a03000 	mov	r3, #0
    112c:	e3a02010 	mov	r2, #16
    1130:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1134:	ebffff73 	bl	f08 <printint>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e2833004 	add	r3, r3, #4
    1140:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1144:	ea000039 	b	1230 <printf+0x1f0>
    1148:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e3530073 	cmp	r3, #115	@ 0x73
    1150:	1a000018 	bne	11b8 <printf+0x178>
    1154:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1158:	e5933000 	ldr	r3, [r3]
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1164:	e2833004 	add	r3, r3, #4
    1168:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    116c:	e51b300c 	ldr	r3, [fp, #-12]
    1170:	e3530000 	cmp	r3, #0
    1174:	1a00000a 	bne	11a4 <printf+0x164>
    1178:	e59f30f4 	ldr	r3, [pc, #244]	@ 1274 <printf+0x234>
    117c:	e50b300c 	str	r3, [fp, #-12]
    1180:	ea000007 	b	11a4 <printf+0x164>
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5d33000 	ldrb	r3, [r3]
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1194:	ebffff4d 	bl	ed0 <putc>
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e2833001 	add	r3, r3, #1
    11a0:	e50b300c 	str	r3, [fp, #-12]
    11a4:	e51b300c 	ldr	r3, [fp, #-12]
    11a8:	e5d33000 	ldrb	r3, [r3]
    11ac:	e3530000 	cmp	r3, #0
    11b0:	1afffff3 	bne	1184 <printf+0x144>
    11b4:	ea00001d 	b	1230 <printf+0x1f0>
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e3530063 	cmp	r3, #99	@ 0x63
    11c0:	1a000009 	bne	11ec <printf+0x1ac>
    11c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e6ef3073 	uxtb	r3, r3
    11d0:	e1a01003 	mov	r1, r3
    11d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d8:	ebffff3c 	bl	ed0 <putc>
    11dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e0:	e2833004 	add	r3, r3, #4
    11e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11e8:	ea000010 	b	1230 <printf+0x1f0>
    11ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f0:	e3530025 	cmp	r3, #37	@ 0x25
    11f4:	1a000005 	bne	1210 <printf+0x1d0>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e6ef3073 	uxtb	r3, r3
    1200:	e1a01003 	mov	r1, r3
    1204:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1208:	ebffff30 	bl	ed0 <putc>
    120c:	ea000007 	b	1230 <printf+0x1f0>
    1210:	e3a01025 	mov	r1, #37	@ 0x25
    1214:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1218:	ebffff2c 	bl	ed0 <putc>
    121c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1220:	e6ef3073 	uxtb	r3, r3
    1224:	e1a01003 	mov	r1, r3
    1228:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    122c:	ebffff27 	bl	ed0 <putc>
    1230:	e3a03000 	mov	r3, #0
    1234:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1238:	e51b3010 	ldr	r3, [fp, #-16]
    123c:	e2833001 	add	r3, r3, #1
    1240:	e50b3010 	str	r3, [fp, #-16]
    1244:	e59b2004 	ldr	r2, [fp, #4]
    1248:	e51b3010 	ldr	r3, [fp, #-16]
    124c:	e0823003 	add	r3, r2, r3
    1250:	e5d33000 	ldrb	r3, [r3]
    1254:	e3530000 	cmp	r3, #0
    1258:	1affff84 	bne	1070 <printf+0x30>
    125c:	e1a00000 	nop			@ (mov r0, r0)
    1260:	e1a00000 	nop			@ (mov r0, r0)
    1264:	e24bd004 	sub	sp, fp, #4
    1268:	e8bd4800 	pop	{fp, lr}
    126c:	e28dd00c 	add	sp, sp, #12
    1270:	e12fff1e 	bx	lr
    1274:	00001804 	.word	0x00001804

00001278 <free>:
    1278:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    127c:	e28db000 	add	fp, sp, #0
    1280:	e24dd014 	sub	sp, sp, #20
    1284:	e50b0010 	str	r0, [fp, #-16]
    1288:	e51b3010 	ldr	r3, [fp, #-16]
    128c:	e2433008 	sub	r3, r3, #8
    1290:	e50b300c 	str	r3, [fp, #-12]
    1294:	e59f3154 	ldr	r3, [pc, #340]	@ 13f0 <free+0x178>
    1298:	e5933000 	ldr	r3, [r3]
    129c:	e50b3008 	str	r3, [fp, #-8]
    12a0:	ea000010 	b	12e8 <free+0x70>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e5933000 	ldr	r3, [r3]
    12ac:	e51b2008 	ldr	r2, [fp, #-8]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	3a000008 	bcc	12dc <free+0x64>
    12b8:	e51b200c 	ldr	r2, [fp, #-12]
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e1520003 	cmp	r2, r3
    12c4:	8a000010 	bhi	130c <free+0x94>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e5933000 	ldr	r3, [r3]
    12d0:	e51b200c 	ldr	r2, [fp, #-12]
    12d4:	e1520003 	cmp	r2, r3
    12d8:	3a00000b 	bcc	130c <free+0x94>
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e50b3008 	str	r3, [fp, #-8]
    12e8:	e51b200c 	ldr	r2, [fp, #-12]
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e1520003 	cmp	r2, r3
    12f4:	9affffea 	bls	12a4 <free+0x2c>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e51b200c 	ldr	r2, [fp, #-12]
    1304:	e1520003 	cmp	r2, r3
    1308:	2affffe5 	bcs	12a4 <free+0x2c>
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5933004 	ldr	r3, [r3, #4]
    1314:	e1a03183 	lsl	r3, r3, #3
    1318:	e51b200c 	ldr	r2, [fp, #-12]
    131c:	e0822003 	add	r2, r2, r3
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e1520003 	cmp	r2, r3
    132c:	1a00000d 	bne	1368 <free+0xf0>
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e5932004 	ldr	r2, [r3, #4]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e5933004 	ldr	r3, [r3, #4]
    1344:	e0822003 	add	r2, r2, r3
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e5832004 	str	r2, [r3, #4]
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e5932000 	ldr	r2, [r3]
    135c:	e51b300c 	ldr	r3, [fp, #-12]
    1360:	e5832000 	str	r2, [r3]
    1364:	ea000003 	b	1378 <free+0x100>
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5932000 	ldr	r2, [r3]
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5832000 	str	r2, [r3]
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5933004 	ldr	r3, [r3, #4]
    1380:	e1a03183 	lsl	r3, r3, #3
    1384:	e51b2008 	ldr	r2, [fp, #-8]
    1388:	e0823003 	add	r3, r2, r3
    138c:	e51b200c 	ldr	r2, [fp, #-12]
    1390:	e1520003 	cmp	r2, r3
    1394:	1a00000b 	bne	13c8 <free+0x150>
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5932004 	ldr	r2, [r3, #4]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e5933004 	ldr	r3, [r3, #4]
    13a8:	e0822003 	add	r2, r2, r3
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5832004 	str	r2, [r3, #4]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5932000 	ldr	r2, [r3]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e5832000 	str	r2, [r3]
    13c4:	ea000002 	b	13d4 <free+0x15c>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e51b200c 	ldr	r2, [fp, #-12]
    13d0:	e5832000 	str	r2, [r3]
    13d4:	e59f2014 	ldr	r2, [pc, #20]	@ 13f0 <free+0x178>
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5823000 	str	r3, [r2]
    13e0:	e1a00000 	nop			@ (mov r0, r0)
    13e4:	e28bd000 	add	sp, fp, #0
    13e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13ec:	e12fff1e 	bx	lr
    13f0:	00001828 	.word	0x00001828

000013f4 <morecore>:
    13f4:	e92d4800 	push	{fp, lr}
    13f8:	e28db004 	add	fp, sp, #4
    13fc:	e24dd010 	sub	sp, sp, #16
    1400:	e50b0010 	str	r0, [fp, #-16]
    1404:	e51b3010 	ldr	r3, [fp, #-16]
    1408:	e3530a01 	cmp	r3, #4096	@ 0x1000
    140c:	2a000001 	bcs	1418 <morecore+0x24>
    1410:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1414:	e50b3010 	str	r3, [fp, #-16]
    1418:	e51b3010 	ldr	r3, [fp, #-16]
    141c:	e1a03183 	lsl	r3, r3, #3
    1420:	e1a00003 	mov	r0, r3
    1424:	ebfffdfe 	bl	c24 <sbrk>
    1428:	e50b0008 	str	r0, [fp, #-8]
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e3730001 	cmn	r3, #1
    1434:	1a000001 	bne	1440 <morecore+0x4c>
    1438:	e3a03000 	mov	r3, #0
    143c:	ea00000a 	b	146c <morecore+0x78>
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e50b300c 	str	r3, [fp, #-12]
    1448:	e51b300c 	ldr	r3, [fp, #-12]
    144c:	e51b2010 	ldr	r2, [fp, #-16]
    1450:	e5832004 	str	r2, [r3, #4]
    1454:	e51b300c 	ldr	r3, [fp, #-12]
    1458:	e2833008 	add	r3, r3, #8
    145c:	e1a00003 	mov	r0, r3
    1460:	ebffff84 	bl	1278 <free>
    1464:	e59f300c 	ldr	r3, [pc, #12]	@ 1478 <morecore+0x84>
    1468:	e5933000 	ldr	r3, [r3]
    146c:	e1a00003 	mov	r0, r3
    1470:	e24bd004 	sub	sp, fp, #4
    1474:	e8bd8800 	pop	{fp, pc}
    1478:	00001828 	.word	0x00001828

0000147c <malloc>:
    147c:	e92d4800 	push	{fp, lr}
    1480:	e28db004 	add	fp, sp, #4
    1484:	e24dd018 	sub	sp, sp, #24
    1488:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    148c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1490:	e2833007 	add	r3, r3, #7
    1494:	e1a031a3 	lsr	r3, r3, #3
    1498:	e2833001 	add	r3, r3, #1
    149c:	e50b3010 	str	r3, [fp, #-16]
    14a0:	e59f3134 	ldr	r3, [pc, #308]	@ 15dc <malloc+0x160>
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e50b300c 	str	r3, [fp, #-12]
    14ac:	e51b300c 	ldr	r3, [fp, #-12]
    14b0:	e3530000 	cmp	r3, #0
    14b4:	1a00000b 	bne	14e8 <malloc+0x6c>
    14b8:	e59f3120 	ldr	r3, [pc, #288]	@ 15e0 <malloc+0x164>
    14bc:	e50b300c 	str	r3, [fp, #-12]
    14c0:	e59f2114 	ldr	r2, [pc, #276]	@ 15dc <malloc+0x160>
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e5823000 	str	r3, [r2]
    14cc:	e59f3108 	ldr	r3, [pc, #264]	@ 15dc <malloc+0x160>
    14d0:	e5933000 	ldr	r3, [r3]
    14d4:	e59f2104 	ldr	r2, [pc, #260]	@ 15e0 <malloc+0x164>
    14d8:	e5823000 	str	r3, [r2]
    14dc:	e59f30fc 	ldr	r3, [pc, #252]	@ 15e0 <malloc+0x164>
    14e0:	e3a02000 	mov	r2, #0
    14e4:	e5832004 	str	r2, [r3, #4]
    14e8:	e51b300c 	ldr	r3, [fp, #-12]
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e50b3008 	str	r3, [fp, #-8]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e5933004 	ldr	r3, [r3, #4]
    14fc:	e51b2010 	ldr	r2, [fp, #-16]
    1500:	e1520003 	cmp	r2, r3
    1504:	8a00001e 	bhi	1584 <malloc+0x108>
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5933004 	ldr	r3, [r3, #4]
    1510:	e51b2010 	ldr	r2, [fp, #-16]
    1514:	e1520003 	cmp	r2, r3
    1518:	1a000004 	bne	1530 <malloc+0xb4>
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5932000 	ldr	r2, [r3]
    1524:	e51b300c 	ldr	r3, [fp, #-12]
    1528:	e5832000 	str	r2, [r3]
    152c:	ea00000e 	b	156c <malloc+0xf0>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5932004 	ldr	r2, [r3, #4]
    1538:	e51b3010 	ldr	r3, [fp, #-16]
    153c:	e0422003 	sub	r2, r2, r3
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e5832004 	str	r2, [r3, #4]
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933004 	ldr	r3, [r3, #4]
    1550:	e1a03183 	lsl	r3, r3, #3
    1554:	e51b2008 	ldr	r2, [fp, #-8]
    1558:	e0823003 	add	r3, r2, r3
    155c:	e50b3008 	str	r3, [fp, #-8]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e51b2010 	ldr	r2, [fp, #-16]
    1568:	e5832004 	str	r2, [r3, #4]
    156c:	e59f2068 	ldr	r2, [pc, #104]	@ 15dc <malloc+0x160>
    1570:	e51b300c 	ldr	r3, [fp, #-12]
    1574:	e5823000 	str	r3, [r2]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e2833008 	add	r3, r3, #8
    1580:	ea000012 	b	15d0 <malloc+0x154>
    1584:	e59f3050 	ldr	r3, [pc, #80]	@ 15dc <malloc+0x160>
    1588:	e5933000 	ldr	r3, [r3]
    158c:	e51b2008 	ldr	r2, [fp, #-8]
    1590:	e1520003 	cmp	r2, r3
    1594:	1a000007 	bne	15b8 <malloc+0x13c>
    1598:	e51b0010 	ldr	r0, [fp, #-16]
    159c:	ebffff94 	bl	13f4 <morecore>
    15a0:	e50b0008 	str	r0, [fp, #-8]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e3530000 	cmp	r3, #0
    15ac:	1a000001 	bne	15b8 <malloc+0x13c>
    15b0:	e3a03000 	mov	r3, #0
    15b4:	ea000005 	b	15d0 <malloc+0x154>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e50b300c 	str	r3, [fp, #-12]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e5933000 	ldr	r3, [r3]
    15c8:	e50b3008 	str	r3, [fp, #-8]
    15cc:	eaffffc8 	b	14f4 <malloc+0x78>
    15d0:	e1a00003 	mov	r0, r3
    15d4:	e24bd004 	sub	sp, fp, #4
    15d8:	e8bd8800 	pop	{fp, pc}
    15dc:	00001828 	.word	0x00001828
    15e0:	00001820 	.word	0x00001820

000015e4 <__udivsi3>:
    15e4:	e2512001 	subs	r2, r1, #1
    15e8:	012fff1e 	bxeq	lr
    15ec:	3a000036 	bcc	16cc <__udivsi3+0xe8>
    15f0:	e1500001 	cmp	r0, r1
    15f4:	9a000022 	bls	1684 <__udivsi3+0xa0>
    15f8:	e1110002 	tst	r1, r2
    15fc:	0a000023 	beq	1690 <__udivsi3+0xac>
    1600:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1604:	01a01181 	lsleq	r1, r1, #3
    1608:	03a03008 	moveq	r3, #8
    160c:	13a03001 	movne	r3, #1
    1610:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1614:	31510000 	cmpcc	r1, r0
    1618:	31a01201 	lslcc	r1, r1, #4
    161c:	31a03203 	lslcc	r3, r3, #4
    1620:	3afffffa 	bcc	1610 <__udivsi3+0x2c>
    1624:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1628:	31510000 	cmpcc	r1, r0
    162c:	31a01081 	lslcc	r1, r1, #1
    1630:	31a03083 	lslcc	r3, r3, #1
    1634:	3afffffa 	bcc	1624 <__udivsi3+0x40>
    1638:	e3a02000 	mov	r2, #0
    163c:	e1500001 	cmp	r0, r1
    1640:	20400001 	subcs	r0, r0, r1
    1644:	21822003 	orrcs	r2, r2, r3
    1648:	e15000a1 	cmp	r0, r1, lsr #1
    164c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1650:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1654:	e1500121 	cmp	r0, r1, lsr #2
    1658:	20400121 	subcs	r0, r0, r1, lsr #2
    165c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1660:	e15001a1 	cmp	r0, r1, lsr #3
    1664:	204001a1 	subcs	r0, r0, r1, lsr #3
    1668:	218221a3 	orrcs	r2, r2, r3, lsr #3
    166c:	e3500000 	cmp	r0, #0
    1670:	11b03223 	lsrsne	r3, r3, #4
    1674:	11a01221 	lsrne	r1, r1, #4
    1678:	1affffef 	bne	163c <__udivsi3+0x58>
    167c:	e1a00002 	mov	r0, r2
    1680:	e12fff1e 	bx	lr
    1684:	03a00001 	moveq	r0, #1
    1688:	13a00000 	movne	r0, #0
    168c:	e12fff1e 	bx	lr
    1690:	e3510801 	cmp	r1, #65536	@ 0x10000
    1694:	21a01821 	lsrcs	r1, r1, #16
    1698:	23a02010 	movcs	r2, #16
    169c:	33a02000 	movcc	r2, #0
    16a0:	e3510c01 	cmp	r1, #256	@ 0x100
    16a4:	21a01421 	lsrcs	r1, r1, #8
    16a8:	22822008 	addcs	r2, r2, #8
    16ac:	e3510010 	cmp	r1, #16
    16b0:	21a01221 	lsrcs	r1, r1, #4
    16b4:	22822004 	addcs	r2, r2, #4
    16b8:	e3510004 	cmp	r1, #4
    16bc:	82822003 	addhi	r2, r2, #3
    16c0:	908220a1 	addls	r2, r2, r1, lsr #1
    16c4:	e1a00230 	lsr	r0, r0, r2
    16c8:	e12fff1e 	bx	lr
    16cc:	e3500000 	cmp	r0, #0
    16d0:	13e00000 	mvnne	r0, #0
    16d4:	ea000007 	b	16f8 <__aeabi_idiv0>

000016d8 <__aeabi_uidivmod>:
    16d8:	e3510000 	cmp	r1, #0
    16dc:	0afffffa 	beq	16cc <__udivsi3+0xe8>
    16e0:	e92d4003 	push	{r0, r1, lr}
    16e4:	ebffffbe 	bl	15e4 <__udivsi3>
    16e8:	e8bd4006 	pop	{r1, r2, lr}
    16ec:	e0030092 	mul	r3, r2, r0
    16f0:	e0411003 	sub	r1, r1, r3
    16f4:	e12fff1e 	bx	lr

000016f8 <__aeabi_idiv0>:
    16f8:	e12fff1e 	bx	lr
