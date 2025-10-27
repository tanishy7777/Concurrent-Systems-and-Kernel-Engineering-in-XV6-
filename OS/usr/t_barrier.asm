
_t_barrier:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a00003 	mov	r0, #3
      10:	eb00037e 	bl	e10 <barrier_init>
      14:	eb000266 	bl	9b4 <fork>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e3530000 	cmp	r3, #0
      24:	1a000009 	bne	50 <main+0x50>
      28:	e3a0000a 	mov	r0, #10
      2c:	eb00030b 	bl	c60 <sleep>
      30:	e59f107c 	ldr	r1, [pc, #124]	@ b4 <main+0xb4>
      34:	e3a00001 	mov	r0, #1
      38:	eb000406 	bl	1058 <printf>
      3c:	eb00037c 	bl	e34 <barrier_check>
      40:	e59f1070 	ldr	r1, [pc, #112]	@ b8 <main+0xb8>
      44:	e3a00001 	mov	r0, #1
      48:	eb000402 	bl	1058 <printf>
      4c:	eb000261 	bl	9d8 <exit>
      50:	eb000257 	bl	9b4 <fork>
      54:	e50b000c 	str	r0, [fp, #-12]
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e3530000 	cmp	r3, #0
      60:	1a000009 	bne	8c <main+0x8c>
      64:	e3a00014 	mov	r0, #20
      68:	eb0002fc 	bl	c60 <sleep>
      6c:	e59f1048 	ldr	r1, [pc, #72]	@ bc <main+0xbc>
      70:	e3a00001 	mov	r0, #1
      74:	eb0003f7 	bl	1058 <printf>
      78:	eb00036d 	bl	e34 <barrier_check>
      7c:	e59f103c 	ldr	r1, [pc, #60]	@ c0 <main+0xc0>
      80:	e3a00001 	mov	r0, #1
      84:	eb0003f3 	bl	1058 <printf>
      88:	eb000252 	bl	9d8 <exit>
      8c:	e59f1030 	ldr	r1, [pc, #48]	@ c4 <main+0xc4>
      90:	e3a00001 	mov	r0, #1
      94:	eb0003ef 	bl	1058 <printf>
      98:	eb000365 	bl	e34 <barrier_check>
      9c:	e59f1024 	ldr	r1, [pc, #36]	@ c8 <main+0xc8>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb0003eb 	bl	1058 <printf>
      a8:	eb000253 	bl	9fc <wait>
      ac:	eb000252 	bl	9fc <wait>
      b0:	eb000248 	bl	9d8 <exit>
      b4:	00001714 	.word	0x00001714
      b8:	00001728 	.word	0x00001728
      bc:	00001744 	.word	0x00001744
      c0:	00001758 	.word	0x00001758
      c4:	00001774 	.word	0x00001774
      c8:	00001788 	.word	0x00001788

000000cc <xchg>:
      cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d0:	e28db000 	add	fp, sp, #0
      d4:	e24dd014 	sub	sp, sp, #20
      d8:	e50b0010 	str	r0, [fp, #-16]
      dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      e0:	e51b1010 	ldr	r1, [fp, #-16]
      e4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      e8:	e1912f9f 	ldrex	r2, [r1]
      ec:	e1813f90 	strex	r3, r0, [r1]
      f0:	e50b2008 	str	r2, [fp, #-8]
      f4:	e50b300c 	str	r3, [fp, #-12]
      f8:	e51b300c 	ldr	r3, [fp, #-12]
      fc:	e3530000 	cmp	r3, #0
     100:	1afffff6 	bne	e0 <xchg+0x14>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e1a00003 	mov	r0, r3
     10c:	e28bd000 	add	sp, fp, #0
     110:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     114:	e12fff1e 	bx	lr

00000118 <strcpy>:
     118:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     11c:	e28db000 	add	fp, sp, #0
     120:	e24dd014 	sub	sp, sp, #20
     124:	e50b0010 	str	r0, [fp, #-16]
     128:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     12c:	e51b3010 	ldr	r3, [fp, #-16]
     130:	e50b3008 	str	r3, [fp, #-8]
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     13c:	e2823001 	add	r3, r2, #1
     140:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     144:	e51b3010 	ldr	r3, [fp, #-16]
     148:	e2831001 	add	r1, r3, #1
     14c:	e50b1010 	str	r1, [fp, #-16]
     150:	e5d22000 	ldrb	r2, [r2]
     154:	e5c32000 	strb	r2, [r3]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e3530000 	cmp	r3, #0
     160:	1afffff4 	bne	138 <strcpy+0x20>
     164:	e51b3008 	ldr	r3, [fp, #-8]
     168:	e1a00003 	mov	r0, r3
     16c:	e28bd000 	add	sp, fp, #0
     170:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     174:	e12fff1e 	bx	lr

00000178 <strcmp>:
     178:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     17c:	e28db000 	add	fp, sp, #0
     180:	e24dd00c 	sub	sp, sp, #12
     184:	e50b0008 	str	r0, [fp, #-8]
     188:	e50b100c 	str	r1, [fp, #-12]
     18c:	ea000005 	b	1a8 <strcmp+0x30>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e2833001 	add	r3, r3, #1
     198:	e50b3008 	str	r3, [fp, #-8]
     19c:	e51b300c 	ldr	r3, [fp, #-12]
     1a0:	e2833001 	add	r3, r3, #1
     1a4:	e50b300c 	str	r3, [fp, #-12]
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e5d33000 	ldrb	r3, [r3]
     1b0:	e3530000 	cmp	r3, #0
     1b4:	0a000005 	beq	1d0 <strcmp+0x58>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e5d32000 	ldrb	r2, [r3]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e5d33000 	ldrb	r3, [r3]
     1c8:	e1520003 	cmp	r2, r3
     1cc:	0affffef 	beq	190 <strcmp+0x18>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e5d33000 	ldrb	r3, [r3]
     1d8:	e1a02003 	mov	r2, r3
     1dc:	e51b300c 	ldr	r3, [fp, #-12]
     1e0:	e5d33000 	ldrb	r3, [r3]
     1e4:	e0423003 	sub	r3, r2, r3
     1e8:	e1a00003 	mov	r0, r3
     1ec:	e28bd000 	add	sp, fp, #0
     1f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f4:	e12fff1e 	bx	lr

000001f8 <strlen>:
     1f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1fc:	e28db000 	add	fp, sp, #0
     200:	e24dd014 	sub	sp, sp, #20
     204:	e50b0010 	str	r0, [fp, #-16]
     208:	e3a03000 	mov	r3, #0
     20c:	e50b3008 	str	r3, [fp, #-8]
     210:	ea000002 	b	220 <strlen+0x28>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e51b2010 	ldr	r2, [fp, #-16]
     228:	e0823003 	add	r3, r2, r3
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e3530000 	cmp	r3, #0
     234:	1afffff6 	bne	214 <strlen+0x1c>
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e1a00003 	mov	r0, r3
     240:	e28bd000 	add	sp, fp, #0
     244:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     248:	e12fff1e 	bx	lr

0000024c <memset>:
     24c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     250:	e28db000 	add	fp, sp, #0
     254:	e24dd024 	sub	sp, sp, #36	@ 0x24
     258:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     25c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     260:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     268:	e50b3008 	str	r3, [fp, #-8]
     26c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     270:	e54b300d 	strb	r3, [fp, #-13]
     274:	e55b200d 	ldrb	r2, [fp, #-13]
     278:	e1a03002 	mov	r3, r2
     27c:	e1a03403 	lsl	r3, r3, #8
     280:	e0833002 	add	r3, r3, r2
     284:	e1a03803 	lsl	r3, r3, #16
     288:	e1a02003 	mov	r2, r3
     28c:	e55b300d 	ldrb	r3, [fp, #-13]
     290:	e1a03403 	lsl	r3, r3, #8
     294:	e1822003 	orr	r2, r2, r3
     298:	e55b300d 	ldrb	r3, [fp, #-13]
     29c:	e1823003 	orr	r3, r2, r3
     2a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a4:	ea000008 	b	2cc <memset+0x80>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433001 	sub	r3, r3, #1
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	0a000003 	beq	2e8 <memset+0x9c>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e2033003 	and	r3, r3, #3
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1affffef 	bne	2a8 <memset+0x5c>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e50b300c 	str	r3, [fp, #-12]
     2f0:	ea000008 	b	318 <memset+0xcc>
     2f4:	e51b300c 	ldr	r3, [fp, #-12]
     2f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2fc:	e5832000 	str	r2, [r3]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e2433004 	sub	r3, r3, #4
     308:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e51b300c 	ldr	r3, [fp, #-12]
     310:	e2833004 	add	r3, r3, #4
     314:	e50b300c 	str	r3, [fp, #-12]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e3530003 	cmp	r3, #3
     320:	8afffff3 	bhi	2f4 <memset+0xa8>
     324:	e51b300c 	ldr	r3, [fp, #-12]
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	ea000008 	b	354 <memset+0x108>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e55b200d 	ldrb	r2, [fp, #-13]
     338:	e5c32000 	strb	r2, [r3]
     33c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     340:	e2433001 	sub	r3, r3, #1
     344:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     358:	e3530000 	cmp	r3, #0
     35c:	1afffff3 	bne	330 <memset+0xe4>
     360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     364:	e1a00003 	mov	r0, r3
     368:	e28bd000 	add	sp, fp, #0
     36c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     370:	e12fff1e 	bx	lr

00000374 <strchr>:
     374:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     378:	e28db000 	add	fp, sp, #0
     37c:	e24dd00c 	sub	sp, sp, #12
     380:	e50b0008 	str	r0, [fp, #-8]
     384:	e1a03001 	mov	r3, r1
     388:	e54b3009 	strb	r3, [fp, #-9]
     38c:	ea000009 	b	3b8 <strchr+0x44>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e5d33000 	ldrb	r3, [r3]
     398:	e55b2009 	ldrb	r2, [fp, #-9]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000001 	bne	3ac <strchr+0x38>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	ea000007 	b	3cc <strchr+0x58>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e5d33000 	ldrb	r3, [r3]
     3c0:	e3530000 	cmp	r3, #0
     3c4:	1afffff1 	bne	390 <strchr+0x1c>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e28bd000 	add	sp, fp, #0
     3d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d8:	e12fff1e 	bx	lr

000003dc <gets>:
     3dc:	e92d4800 	push	{fp, lr}
     3e0:	e28db004 	add	fp, sp, #4
     3e4:	e24dd018 	sub	sp, sp, #24
     3e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3ec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3f0:	e3a03000 	mov	r3, #0
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	ea000016 	b	458 <gets+0x7c>
     3fc:	e24b300d 	sub	r3, fp, #13
     400:	e3a02001 	mov	r2, #1
     404:	e1a01003 	mov	r1, r3
     408:	e3a00000 	mov	r0, #0
     40c:	eb00018c 	bl	a44 <read>
     410:	e50b000c 	str	r0, [fp, #-12]
     414:	e51b300c 	ldr	r3, [fp, #-12]
     418:	e3530000 	cmp	r3, #0
     41c:	da000013 	ble	470 <gets+0x94>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2008 	str	r2, [fp, #-8]
     42c:	e1a02003 	mov	r2, r3
     430:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     434:	e0833002 	add	r3, r3, r2
     438:	e55b200d 	ldrb	r2, [fp, #-13]
     43c:	e5c32000 	strb	r2, [r3]
     440:	e55b300d 	ldrb	r3, [fp, #-13]
     444:	e353000a 	cmp	r3, #10
     448:	0a000009 	beq	474 <gets+0x98>
     44c:	e55b300d 	ldrb	r3, [fp, #-13]
     450:	e353000d 	cmp	r3, #13
     454:	0a000006 	beq	474 <gets+0x98>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e2833001 	add	r3, r3, #1
     460:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     464:	e1520003 	cmp	r2, r3
     468:	caffffe3 	bgt	3fc <gets+0x20>
     46c:	ea000000 	b	474 <gets+0x98>
     470:	e1a00000 	nop			@ (mov r0, r0)
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     47c:	e0823003 	add	r3, r2, r3
     480:	e3a02000 	mov	r2, #0
     484:	e5c32000 	strb	r2, [r3]
     488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     48c:	e1a00003 	mov	r0, r3
     490:	e24bd004 	sub	sp, fp, #4
     494:	e8bd8800 	pop	{fp, pc}

00000498 <stat>:
     498:	e92d4800 	push	{fp, lr}
     49c:	e28db004 	add	fp, sp, #4
     4a0:	e24dd010 	sub	sp, sp, #16
     4a4:	e50b0010 	str	r0, [fp, #-16]
     4a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4ac:	e3a01000 	mov	r1, #0
     4b0:	e51b0010 	ldr	r0, [fp, #-16]
     4b4:	eb00018f 	bl	af8 <open>
     4b8:	e50b0008 	str	r0, [fp, #-8]
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e3530000 	cmp	r3, #0
     4c4:	aa000001 	bge	4d0 <stat+0x38>
     4c8:	e3e03000 	mvn	r3, #0
     4cc:	ea000006 	b	4ec <stat+0x54>
     4d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4d4:	e51b0008 	ldr	r0, [fp, #-8]
     4d8:	eb0001a1 	bl	b64 <fstat>
     4dc:	e50b000c 	str	r0, [fp, #-12]
     4e0:	e51b0008 	ldr	r0, [fp, #-8]
     4e4:	eb000168 	bl	a8c <close>
     4e8:	e51b300c 	ldr	r3, [fp, #-12]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e24bd004 	sub	sp, fp, #4
     4f4:	e8bd8800 	pop	{fp, pc}

000004f8 <atoi>:
     4f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4fc:	e28db000 	add	fp, sp, #0
     500:	e24dd014 	sub	sp, sp, #20
     504:	e50b0010 	str	r0, [fp, #-16]
     508:	e3a03000 	mov	r3, #0
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	ea00000c 	b	548 <atoi+0x50>
     514:	e51b2008 	ldr	r2, [fp, #-8]
     518:	e1a03002 	mov	r3, r2
     51c:	e1a03103 	lsl	r3, r3, #2
     520:	e0833002 	add	r3, r3, r2
     524:	e1a03083 	lsl	r3, r3, #1
     528:	e1a01003 	mov	r1, r3
     52c:	e51b3010 	ldr	r3, [fp, #-16]
     530:	e2832001 	add	r2, r3, #1
     534:	e50b2010 	str	r2, [fp, #-16]
     538:	e5d33000 	ldrb	r3, [r3]
     53c:	e0813003 	add	r3, r1, r3
     540:	e2433030 	sub	r3, r3, #48	@ 0x30
     544:	e50b3008 	str	r3, [fp, #-8]
     548:	e51b3010 	ldr	r3, [fp, #-16]
     54c:	e5d33000 	ldrb	r3, [r3]
     550:	e353002f 	cmp	r3, #47	@ 0x2f
     554:	9a000003 	bls	568 <atoi+0x70>
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e5d33000 	ldrb	r3, [r3]
     560:	e3530039 	cmp	r3, #57	@ 0x39
     564:	9affffea 	bls	514 <atoi+0x1c>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e1a00003 	mov	r0, r3
     570:	e28bd000 	add	sp, fp, #0
     574:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     578:	e12fff1e 	bx	lr

0000057c <memmove>:
     57c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     580:	e28db000 	add	fp, sp, #0
     584:	e24dd01c 	sub	sp, sp, #28
     588:	e50b0010 	str	r0, [fp, #-16]
     58c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     590:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     594:	e51b3010 	ldr	r3, [fp, #-16]
     598:	e50b3008 	str	r3, [fp, #-8]
     59c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	ea000007 	b	5c8 <memmove+0x4c>
     5a8:	e51b200c 	ldr	r2, [fp, #-12]
     5ac:	e2823001 	add	r3, r2, #1
     5b0:	e50b300c 	str	r3, [fp, #-12]
     5b4:	e51b3008 	ldr	r3, [fp, #-8]
     5b8:	e2831001 	add	r1, r3, #1
     5bc:	e50b1008 	str	r1, [fp, #-8]
     5c0:	e5d22000 	ldrb	r2, [r2]
     5c4:	e5c32000 	strb	r2, [r3]
     5c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5cc:	e2432001 	sub	r2, r3, #1
     5d0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d4:	e3530000 	cmp	r3, #0
     5d8:	cafffff2 	bgt	5a8 <memmove+0x2c>
     5dc:	e51b3010 	ldr	r3, [fp, #-16]
     5e0:	e1a00003 	mov	r0, r3
     5e4:	e28bd000 	add	sp, fp, #0
     5e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <initiateLock>:
     5f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f4:	e28db000 	add	fp, sp, #0
     5f8:	e24dd00c 	sub	sp, sp, #12
     5fc:	e50b0008 	str	r0, [fp, #-8]
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e3a02000 	mov	r2, #0
     608:	e5832000 	str	r2, [r3]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e3a02001 	mov	r2, #1
     614:	e5832004 	str	r2, [r3, #4]
     618:	e1a00000 	nop			@ (mov r0, r0)
     61c:	e28bd000 	add	sp, fp, #0
     620:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     624:	e12fff1e 	bx	lr

00000628 <acquireLock>:
     628:	e92d4800 	push	{fp, lr}
     62c:	e28db004 	add	fp, sp, #4
     630:	e24dd008 	sub	sp, sp, #8
     634:	e50b0008 	str	r0, [fp, #-8]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e5933000 	ldr	r3, [r3]
     640:	e3730001 	cmn	r3, #1
     644:	1a000002 	bne	654 <acquireLock+0x2c>
     648:	e59f1034 	ldr	r1, [pc, #52]	@ 684 <acquireLock+0x5c>
     64c:	e3a00002 	mov	r0, #2
     650:	eb000280 	bl	1058 <printf>
     654:	e1a00000 	nop			@ (mov r0, r0)
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e3a01001 	mov	r1, #1
     660:	e1a00003 	mov	r0, r3
     664:	ebfffe98 	bl	cc <xchg>
     668:	e1a03000 	mov	r3, r0
     66c:	e3530000 	cmp	r3, #0
     670:	1afffff8 	bne	658 <acquireLock+0x30>
     674:	e1a00000 	nop			@ (mov r0, r0)
     678:	e1a00000 	nop			@ (mov r0, r0)
     67c:	e24bd004 	sub	sp, fp, #4
     680:	e8bd8800 	pop	{fp, pc}
     684:	000017a0 	.word	0x000017a0

00000688 <releaseLock>:
     688:	e92d4800 	push	{fp, lr}
     68c:	e28db004 	add	fp, sp, #4
     690:	e24dd008 	sub	sp, sp, #8
     694:	e50b0008 	str	r0, [fp, #-8]
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e5933000 	ldr	r3, [r3]
     6a0:	e3530001 	cmp	r3, #1
     6a4:	0a000002 	beq	6b4 <releaseLock+0x2c>
     6a8:	e59f1020 	ldr	r1, [pc, #32]	@ 6d0 <releaseLock+0x48>
     6ac:	e3a00002 	mov	r0, #2
     6b0:	eb000268 	bl	1058 <printf>
     6b4:	e51b3008 	ldr	r3, [fp, #-8]
     6b8:	e3a01000 	mov	r1, #0
     6bc:	e1a00003 	mov	r0, r3
     6c0:	ebfffe81 	bl	cc <xchg>
     6c4:	e1a00000 	nop			@ (mov r0, r0)
     6c8:	e24bd004 	sub	sp, fp, #4
     6cc:	e8bd8800 	pop	{fp, pc}
     6d0:	000017d0 	.word	0x000017d0

000006d4 <initiateCondVar>:
     6d4:	e92d4800 	push	{fp, lr}
     6d8:	e28db004 	add	fp, sp, #4
     6dc:	e24dd008 	sub	sp, sp, #8
     6e0:	e50b0008 	str	r0, [fp, #-8]
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e5933004 	ldr	r3, [r3, #4]
     6ec:	e3530000 	cmp	r3, #0
     6f0:	1a000007 	bne	714 <initiateCondVar+0x40>
     6f4:	eb0001e0 	bl	e7c <getChannel>
     6f8:	e1a02000 	mov	r2, r0
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5832000 	str	r2, [r3]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e3a02001 	mov	r2, #1
     70c:	e5832004 	str	r2, [r3, #4]
     710:	ea000000 	b	718 <initiateCondVar+0x44>
     714:	e1a00000 	nop			@ (mov r0, r0)
     718:	e24bd004 	sub	sp, fp, #4
     71c:	e8bd8800 	pop	{fp, pc}

00000720 <condWait>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd008 	sub	sp, sp, #8
     72c:	e50b0008 	str	r0, [fp, #-8]
     730:	e50b100c 	str	r1, [fp, #-12]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e5933004 	ldr	r3, [r3, #4]
     73c:	e3530000 	cmp	r3, #0
     740:	1a000003 	bne	754 <condWait+0x34>
     744:	e59f1050 	ldr	r1, [pc, #80]	@ 79c <condWait+0x7c>
     748:	e3a00002 	mov	r0, #2
     74c:	eb000241 	bl	1058 <printf>
     750:	ea00000f 	b	794 <condWait+0x74>
     754:	e51b300c 	ldr	r3, [fp, #-12]
     758:	e5933004 	ldr	r3, [r3, #4]
     75c:	e3530000 	cmp	r3, #0
     760:	1a000003 	bne	774 <condWait+0x54>
     764:	e59f1034 	ldr	r1, [pc, #52]	@ 7a0 <condWait+0x80>
     768:	e3a00002 	mov	r0, #2
     76c:	eb000239 	bl	1058 <printf>
     770:	ea000007 	b	794 <condWait+0x74>
     774:	e51b000c 	ldr	r0, [fp, #-12]
     778:	ebffffc2 	bl	688 <releaseLock>
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e5933000 	ldr	r3, [r3]
     784:	e1a00003 	mov	r0, r3
     788:	eb0001b2 	bl	e58 <sleepChan>
     78c:	e51b000c 	ldr	r0, [fp, #-12]
     790:	ebffffa4 	bl	628 <acquireLock>
     794:	e24bd004 	sub	sp, fp, #4
     798:	e8bd8800 	pop	{fp, pc}
     79c:	0000180c 	.word	0x0000180c
     7a0:	00001830 	.word	0x00001830

000007a4 <broadcast>:
     7a4:	e92d4800 	push	{fp, lr}
     7a8:	e28db004 	add	fp, sp, #4
     7ac:	e24dd008 	sub	sp, sp, #8
     7b0:	e50b0008 	str	r0, [fp, #-8]
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5933004 	ldr	r3, [r3, #4]
     7bc:	e3530000 	cmp	r3, #0
     7c0:	1a000003 	bne	7d4 <broadcast+0x30>
     7c4:	e59f1020 	ldr	r1, [pc, #32]	@ 7ec <broadcast+0x48>
     7c8:	e3a00002 	mov	r0, #2
     7cc:	eb000221 	bl	1058 <printf>
     7d0:	ea000003 	b	7e4 <broadcast+0x40>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933000 	ldr	r3, [r3]
     7dc:	e1a00003 	mov	r0, r3
     7e0:	eb0001ae 	bl	ea0 <sigChan>
     7e4:	e24bd004 	sub	sp, fp, #4
     7e8:	e8bd8800 	pop	{fp, pc}
     7ec:	0000180c 	.word	0x0000180c

000007f0 <signal>:
     7f0:	e92d4800 	push	{fp, lr}
     7f4:	e28db004 	add	fp, sp, #4
     7f8:	e24dd008 	sub	sp, sp, #8
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e5933004 	ldr	r3, [r3, #4]
     808:	e3530000 	cmp	r3, #0
     80c:	1a000003 	bne	820 <signal+0x30>
     810:	e59f1020 	ldr	r1, [pc, #32]	@ 838 <signal+0x48>
     814:	e3a00002 	mov	r0, #2
     818:	eb00020e 	bl	1058 <printf>
     81c:	ea000003 	b	830 <signal+0x40>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5933000 	ldr	r3, [r3]
     828:	e1a00003 	mov	r0, r3
     82c:	eb0001a4 	bl	ec4 <sigOneChan>
     830:	e24bd004 	sub	sp, fp, #4
     834:	e8bd8800 	pop	{fp, pc}
     838:	0000180c 	.word	0x0000180c

0000083c <semInit>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e50b100c 	str	r1, [fp, #-12]
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e51b200c 	ldr	r2, [fp, #-12]
     858:	e5832000 	str	r2, [r3]
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e2833004 	add	r3, r3, #4
     864:	e1a00003 	mov	r0, r3
     868:	ebffff60 	bl	5f0 <initiateLock>
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e283300c 	add	r3, r3, #12
     874:	e1a00003 	mov	r0, r3
     878:	ebffff95 	bl	6d4 <initiateCondVar>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e3a02001 	mov	r2, #1
     884:	e5832014 	str	r2, [r3, #20]
     888:	e1a00000 	nop			@ (mov r0, r0)
     88c:	e24bd004 	sub	sp, fp, #4
     890:	e8bd8800 	pop	{fp, pc}

00000894 <semDown>:
     894:	e92d4800 	push	{fp, lr}
     898:	e28db004 	add	fp, sp, #4
     89c:	e24dd008 	sub	sp, sp, #8
     8a0:	e50b0008 	str	r0, [fp, #-8]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e5933014 	ldr	r3, [r3, #20]
     8ac:	e3530000 	cmp	r3, #0
     8b0:	1a000003 	bne	8c4 <semDown+0x30>
     8b4:	e59f1074 	ldr	r1, [pc, #116]	@ 930 <semDown+0x9c>
     8b8:	e3a00002 	mov	r0, #2
     8bc:	eb0001e5 	bl	1058 <printf>
     8c0:	ea000018 	b	928 <semDown+0x94>
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e2833004 	add	r3, r3, #4
     8cc:	e1a00003 	mov	r0, r3
     8d0:	ebffff54 	bl	628 <acquireLock>
     8d4:	ea000006 	b	8f4 <semDown+0x60>
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e283200c 	add	r2, r3, #12
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e2833004 	add	r3, r3, #4
     8e8:	e1a01003 	mov	r1, r3
     8ec:	e1a00002 	mov	r0, r2
     8f0:	ebffff8a 	bl	720 <condWait>
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e5933000 	ldr	r3, [r3]
     8fc:	e3530000 	cmp	r3, #0
     900:	0afffff4 	beq	8d8 <semDown+0x44>
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e5933000 	ldr	r3, [r3]
     90c:	e2432001 	sub	r2, r3, #1
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5832000 	str	r2, [r3]
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e2833004 	add	r3, r3, #4
     920:	e1a00003 	mov	r0, r3
     924:	ebffff57 	bl	688 <releaseLock>
     928:	e24bd004 	sub	sp, fp, #4
     92c:	e8bd8800 	pop	{fp, pc}
     930:	00001850 	.word	0x00001850

00000934 <semUp>:
     934:	e92d4800 	push	{fp, lr}
     938:	e28db004 	add	fp, sp, #4
     93c:	e24dd008 	sub	sp, sp, #8
     940:	e50b0008 	str	r0, [fp, #-8]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e5933014 	ldr	r3, [r3, #20]
     94c:	e3530000 	cmp	r3, #0
     950:	1a000003 	bne	964 <semUp+0x30>
     954:	e59f1054 	ldr	r1, [pc, #84]	@ 9b0 <semUp+0x7c>
     958:	e3a00002 	mov	r0, #2
     95c:	eb0001bd 	bl	1058 <printf>
     960:	ea000010 	b	9a8 <semUp+0x74>
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e2833004 	add	r3, r3, #4
     96c:	e1a00003 	mov	r0, r3
     970:	ebffff2c 	bl	628 <acquireLock>
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e5933000 	ldr	r3, [r3]
     97c:	e2832001 	add	r2, r3, #1
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e5832000 	str	r2, [r3]
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e283300c 	add	r3, r3, #12
     990:	e1a00003 	mov	r0, r3
     994:	ebffff95 	bl	7f0 <signal>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e2833004 	add	r3, r3, #4
     9a0:	e1a00003 	mov	r0, r3
     9a4:	ebffff37 	bl	688 <releaseLock>
     9a8:	e24bd004 	sub	sp, fp, #4
     9ac:	e8bd8800 	pop	{fp, pc}
     9b0:	00001850 	.word	0x00001850

000009b4 <fork>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00001 	mov	r0, #1
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <exit>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00002 	mov	r0, #2
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <wait>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00003 	mov	r0, #3
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <pipe>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00004 	mov	r0, #4
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <read>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00005 	mov	r0, #5
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <write>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00010 	mov	r0, #16
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <close>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00015 	mov	r0, #21
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <kill>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00006 	mov	r0, #6
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <exec>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00007 	mov	r0, #7
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <open>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a0000f 	mov	r0, #15
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <mknod>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00011 	mov	r0, #17
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <unlink>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00012 	mov	r0, #18
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <fstat>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a00008 	mov	r0, #8
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <link>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00013 	mov	r0, #19
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <mkdir>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00014 	mov	r0, #20
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <chdir>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00009 	mov	r0, #9
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <dup>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a0000a 	mov	r0, #10
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <getpid>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a0000b 	mov	r0, #11
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <sbrk>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a0000c 	mov	r0, #12
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <sleep>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a0000d 	mov	r0, #13
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <uptime>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a0000e 	mov	r0, #14
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <disproc>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a00016 	mov	r0, #22
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <srand>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a00017 	mov	r0, #23
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <setticket>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a00018 	mov	r0, #24
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <getpinfo>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00019 	mov	r0, #25
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <printPages>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a0001a 	mov	r0, #26
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <kpt>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a0001b 	mov	r0, #27
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <thread_create>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a0001c 	mov	r0, #28
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <thread_exit>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a0001d 	mov	r0, #29
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <thread_join>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a0001e 	mov	r0, #30
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <waitpid>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a0001f 	mov	r0, #31
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <barrier_init>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a00020 	mov	r0, #32
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <barrier_check>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00021 	mov	r0, #33	@ 0x21
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <sleepChan>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a00022 	mov	r0, #34	@ 0x22
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <getChannel>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00023 	mov	r0, #35	@ 0x23
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <sigChan>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00024 	mov	r0, #36	@ 0x24
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <sigOneChan>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00025 	mov	r0, #37	@ 0x25
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <putc>:
     ee8:	e92d4800 	push	{fp, lr}
     eec:	e28db004 	add	fp, sp, #4
     ef0:	e24dd008 	sub	sp, sp, #8
     ef4:	e50b0008 	str	r0, [fp, #-8]
     ef8:	e1a03001 	mov	r3, r1
     efc:	e54b3009 	strb	r3, [fp, #-9]
     f00:	e24b3009 	sub	r3, fp, #9
     f04:	e3a02001 	mov	r2, #1
     f08:	e1a01003 	mov	r1, r3
     f0c:	e51b0008 	ldr	r0, [fp, #-8]
     f10:	ebfffed4 	bl	a68 <write>
     f14:	e1a00000 	nop			@ (mov r0, r0)
     f18:	e24bd004 	sub	sp, fp, #4
     f1c:	e8bd8800 	pop	{fp, pc}

00000f20 <printint>:
     f20:	e92d4800 	push	{fp, lr}
     f24:	e28db004 	add	fp, sp, #4
     f28:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f2c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f30:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f34:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f38:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f3c:	e3a03000 	mov	r3, #0
     f40:	e50b300c 	str	r3, [fp, #-12]
     f44:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f48:	e3530000 	cmp	r3, #0
     f4c:	0a000008 	beq	f74 <printint+0x54>
     f50:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f54:	e3530000 	cmp	r3, #0
     f58:	aa000005 	bge	f74 <printint+0x54>
     f5c:	e3a03001 	mov	r3, #1
     f60:	e50b300c 	str	r3, [fp, #-12]
     f64:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f68:	e2633000 	rsb	r3, r3, #0
     f6c:	e50b3010 	str	r3, [fp, #-16]
     f70:	ea000001 	b	f7c <printint+0x5c>
     f74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e3a03000 	mov	r3, #0
     f80:	e50b3008 	str	r3, [fp, #-8]
     f84:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f88:	e51b3010 	ldr	r3, [fp, #-16]
     f8c:	e1a01002 	mov	r1, r2
     f90:	e1a00003 	mov	r0, r3
     f94:	eb0001d5 	bl	16f0 <__aeabi_uidivmod>
     f98:	e1a03001 	mov	r3, r1
     f9c:	e1a01003 	mov	r1, r3
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e2832001 	add	r2, r3, #1
     fa8:	e50b2008 	str	r2, [fp, #-8]
     fac:	e59f20a0 	ldr	r2, [pc, #160]	@ 1054 <printint+0x134>
     fb0:	e7d22001 	ldrb	r2, [r2, r1]
     fb4:	e2433004 	sub	r3, r3, #4
     fb8:	e083300b 	add	r3, r3, fp
     fbc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fc0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0010 	ldr	r0, [fp, #-16]
     fcc:	eb00018a 	bl	15fc <__udivsi3>
     fd0:	e1a03000 	mov	r3, r0
     fd4:	e50b3010 	str	r3, [fp, #-16]
     fd8:	e51b3010 	ldr	r3, [fp, #-16]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	1affffe7 	bne	f84 <printint+0x64>
     fe4:	e51b300c 	ldr	r3, [fp, #-12]
     fe8:	e3530000 	cmp	r3, #0
     fec:	0a00000e 	beq	102c <printint+0x10c>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e2832001 	add	r2, r3, #1
     ff8:	e50b2008 	str	r2, [fp, #-8]
     ffc:	e2433004 	sub	r3, r3, #4
    1000:	e083300b 	add	r3, r3, fp
    1004:	e3a0202d 	mov	r2, #45	@ 0x2d
    1008:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    100c:	ea000006 	b	102c <printint+0x10c>
    1010:	e24b2020 	sub	r2, fp, #32
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e0823003 	add	r3, r2, r3
    101c:	e5d33000 	ldrb	r3, [r3]
    1020:	e1a01003 	mov	r1, r3
    1024:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1028:	ebffffae 	bl	ee8 <putc>
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e2433001 	sub	r3, r3, #1
    1034:	e50b3008 	str	r3, [fp, #-8]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e3530000 	cmp	r3, #0
    1040:	aafffff2 	bge	1010 <printint+0xf0>
    1044:	e1a00000 	nop			@ (mov r0, r0)
    1048:	e1a00000 	nop			@ (mov r0, r0)
    104c:	e24bd004 	sub	sp, fp, #4
    1050:	e8bd8800 	pop	{fp, pc}
    1054:	0000187c 	.word	0x0000187c

00001058 <printf>:
    1058:	e92d000e 	push	{r1, r2, r3}
    105c:	e92d4800 	push	{fp, lr}
    1060:	e28db004 	add	fp, sp, #4
    1064:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1068:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    106c:	e3a03000 	mov	r3, #0
    1070:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1074:	e28b3008 	add	r3, fp, #8
    1078:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    107c:	e3a03000 	mov	r3, #0
    1080:	e50b3010 	str	r3, [fp, #-16]
    1084:	ea000074 	b	125c <printf+0x204>
    1088:	e59b2004 	ldr	r2, [fp, #4]
    108c:	e51b3010 	ldr	r3, [fp, #-16]
    1090:	e0823003 	add	r3, r2, r3
    1094:	e5d33000 	ldrb	r3, [r3]
    1098:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    109c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10a0:	e3530000 	cmp	r3, #0
    10a4:	1a00000b 	bne	10d8 <printf+0x80>
    10a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ac:	e3530025 	cmp	r3, #37	@ 0x25
    10b0:	1a000002 	bne	10c0 <printf+0x68>
    10b4:	e3a03025 	mov	r3, #37	@ 0x25
    10b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10bc:	ea000063 	b	1250 <printf+0x1f8>
    10c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e6ef3073 	uxtb	r3, r3
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	ebffff84 	bl	ee8 <putc>
    10d4:	ea00005d 	b	1250 <printf+0x1f8>
    10d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10dc:	e3530025 	cmp	r3, #37	@ 0x25
    10e0:	1a00005a 	bne	1250 <printf+0x1f8>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e3530064 	cmp	r3, #100	@ 0x64
    10ec:	1a00000a 	bne	111c <printf+0xc4>
    10f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e3a03001 	mov	r3, #1
    1100:	e3a0200a 	mov	r2, #10
    1104:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1108:	ebffff84 	bl	f20 <printint>
    110c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e2833004 	add	r3, r3, #4
    1114:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1118:	ea00004a 	b	1248 <printf+0x1f0>
    111c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1120:	e3530078 	cmp	r3, #120	@ 0x78
    1124:	0a000002 	beq	1134 <printf+0xdc>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e3530070 	cmp	r3, #112	@ 0x70
    1130:	1a00000a 	bne	1160 <printf+0x108>
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e1a01003 	mov	r1, r3
    1140:	e3a03000 	mov	r3, #0
    1144:	e3a02010 	mov	r2, #16
    1148:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    114c:	ebffff73 	bl	f20 <printint>
    1150:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1154:	e2833004 	add	r3, r3, #4
    1158:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    115c:	ea000039 	b	1248 <printf+0x1f0>
    1160:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1164:	e3530073 	cmp	r3, #115	@ 0x73
    1168:	1a000018 	bne	11d0 <printf+0x178>
    116c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e50b300c 	str	r3, [fp, #-12]
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833004 	add	r3, r3, #4
    1180:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e3530000 	cmp	r3, #0
    118c:	1a00000a 	bne	11bc <printf+0x164>
    1190:	e59f30f4 	ldr	r3, [pc, #244]	@ 128c <printf+0x234>
    1194:	e50b300c 	str	r3, [fp, #-12]
    1198:	ea000007 	b	11bc <printf+0x164>
    119c:	e51b300c 	ldr	r3, [fp, #-12]
    11a0:	e5d33000 	ldrb	r3, [r3]
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ac:	ebffff4d 	bl	ee8 <putc>
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e2833001 	add	r3, r3, #1
    11b8:	e50b300c 	str	r3, [fp, #-12]
    11bc:	e51b300c 	ldr	r3, [fp, #-12]
    11c0:	e5d33000 	ldrb	r3, [r3]
    11c4:	e3530000 	cmp	r3, #0
    11c8:	1afffff3 	bne	119c <printf+0x144>
    11cc:	ea00001d 	b	1248 <printf+0x1f0>
    11d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d4:	e3530063 	cmp	r3, #99	@ 0x63
    11d8:	1a000009 	bne	1204 <printf+0x1ac>
    11dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e6ef3073 	uxtb	r3, r3
    11e8:	e1a01003 	mov	r1, r3
    11ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f0:	ebffff3c 	bl	ee8 <putc>
    11f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f8:	e2833004 	add	r3, r3, #4
    11fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1200:	ea000010 	b	1248 <printf+0x1f0>
    1204:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1208:	e3530025 	cmp	r3, #37	@ 0x25
    120c:	1a000005 	bne	1228 <printf+0x1d0>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e6ef3073 	uxtb	r3, r3
    1218:	e1a01003 	mov	r1, r3
    121c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1220:	ebffff30 	bl	ee8 <putc>
    1224:	ea000007 	b	1248 <printf+0x1f0>
    1228:	e3a01025 	mov	r1, #37	@ 0x25
    122c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1230:	ebffff2c 	bl	ee8 <putc>
    1234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1238:	e6ef3073 	uxtb	r3, r3
    123c:	e1a01003 	mov	r1, r3
    1240:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1244:	ebffff27 	bl	ee8 <putc>
    1248:	e3a03000 	mov	r3, #0
    124c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1250:	e51b3010 	ldr	r3, [fp, #-16]
    1254:	e2833001 	add	r3, r3, #1
    1258:	e50b3010 	str	r3, [fp, #-16]
    125c:	e59b2004 	ldr	r2, [fp, #4]
    1260:	e51b3010 	ldr	r3, [fp, #-16]
    1264:	e0823003 	add	r3, r2, r3
    1268:	e5d33000 	ldrb	r3, [r3]
    126c:	e3530000 	cmp	r3, #0
    1270:	1affff84 	bne	1088 <printf+0x30>
    1274:	e1a00000 	nop			@ (mov r0, r0)
    1278:	e1a00000 	nop			@ (mov r0, r0)
    127c:	e24bd004 	sub	sp, fp, #4
    1280:	e8bd4800 	pop	{fp, lr}
    1284:	e28dd00c 	add	sp, sp, #12
    1288:	e12fff1e 	bx	lr
    128c:	00001874 	.word	0x00001874

00001290 <free>:
    1290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1294:	e28db000 	add	fp, sp, #0
    1298:	e24dd014 	sub	sp, sp, #20
    129c:	e50b0010 	str	r0, [fp, #-16]
    12a0:	e51b3010 	ldr	r3, [fp, #-16]
    12a4:	e2433008 	sub	r3, r3, #8
    12a8:	e50b300c 	str	r3, [fp, #-12]
    12ac:	e59f3154 	ldr	r3, [pc, #340]	@ 1408 <free+0x178>
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b3008 	str	r3, [fp, #-8]
    12b8:	ea000010 	b	1300 <free+0x70>
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e5933000 	ldr	r3, [r3]
    12c4:	e51b2008 	ldr	r2, [fp, #-8]
    12c8:	e1520003 	cmp	r2, r3
    12cc:	3a000008 	bcc	12f4 <free+0x64>
    12d0:	e51b200c 	ldr	r2, [fp, #-12]
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e1520003 	cmp	r2, r3
    12dc:	8a000010 	bhi	1324 <free+0x94>
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5933000 	ldr	r3, [r3]
    12e8:	e51b200c 	ldr	r2, [fp, #-12]
    12ec:	e1520003 	cmp	r2, r3
    12f0:	3a00000b 	bcc	1324 <free+0x94>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e50b3008 	str	r3, [fp, #-8]
    1300:	e51b200c 	ldr	r2, [fp, #-12]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e1520003 	cmp	r2, r3
    130c:	9affffea 	bls	12bc <free+0x2c>
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e51b200c 	ldr	r2, [fp, #-12]
    131c:	e1520003 	cmp	r2, r3
    1320:	2affffe5 	bcs	12bc <free+0x2c>
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5933004 	ldr	r3, [r3, #4]
    132c:	e1a03183 	lsl	r3, r3, #3
    1330:	e51b200c 	ldr	r2, [fp, #-12]
    1334:	e0822003 	add	r2, r2, r3
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e1520003 	cmp	r2, r3
    1344:	1a00000d 	bne	1380 <free+0xf0>
    1348:	e51b300c 	ldr	r3, [fp, #-12]
    134c:	e5932004 	ldr	r2, [r3, #4]
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5933000 	ldr	r3, [r3]
    1358:	e5933004 	ldr	r3, [r3, #4]
    135c:	e0822003 	add	r2, r2, r3
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5832004 	str	r2, [r3, #4]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e5932000 	ldr	r2, [r3]
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5832000 	str	r2, [r3]
    137c:	ea000003 	b	1390 <free+0x100>
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5932000 	ldr	r2, [r3]
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e5832000 	str	r2, [r3]
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933004 	ldr	r3, [r3, #4]
    1398:	e1a03183 	lsl	r3, r3, #3
    139c:	e51b2008 	ldr	r2, [fp, #-8]
    13a0:	e0823003 	add	r3, r2, r3
    13a4:	e51b200c 	ldr	r2, [fp, #-12]
    13a8:	e1520003 	cmp	r2, r3
    13ac:	1a00000b 	bne	13e0 <free+0x150>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e5932004 	ldr	r2, [r3, #4]
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e5933004 	ldr	r3, [r3, #4]
    13c0:	e0822003 	add	r2, r2, r3
    13c4:	e51b3008 	ldr	r3, [fp, #-8]
    13c8:	e5832004 	str	r2, [r3, #4]
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e5932000 	ldr	r2, [r3]
    13d4:	e51b3008 	ldr	r3, [fp, #-8]
    13d8:	e5832000 	str	r2, [r3]
    13dc:	ea000002 	b	13ec <free+0x15c>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e51b200c 	ldr	r2, [fp, #-12]
    13e8:	e5832000 	str	r2, [r3]
    13ec:	e59f2014 	ldr	r2, [pc, #20]	@ 1408 <free+0x178>
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5823000 	str	r3, [r2]
    13f8:	e1a00000 	nop			@ (mov r0, r0)
    13fc:	e28bd000 	add	sp, fp, #0
    1400:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1404:	e12fff1e 	bx	lr
    1408:	00001898 	.word	0x00001898

0000140c <morecore>:
    140c:	e92d4800 	push	{fp, lr}
    1410:	e28db004 	add	fp, sp, #4
    1414:	e24dd010 	sub	sp, sp, #16
    1418:	e50b0010 	str	r0, [fp, #-16]
    141c:	e51b3010 	ldr	r3, [fp, #-16]
    1420:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1424:	2a000001 	bcs	1430 <morecore+0x24>
    1428:	e3a03a01 	mov	r3, #4096	@ 0x1000
    142c:	e50b3010 	str	r3, [fp, #-16]
    1430:	e51b3010 	ldr	r3, [fp, #-16]
    1434:	e1a03183 	lsl	r3, r3, #3
    1438:	e1a00003 	mov	r0, r3
    143c:	ebfffdfe 	bl	c3c <sbrk>
    1440:	e50b0008 	str	r0, [fp, #-8]
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e3730001 	cmn	r3, #1
    144c:	1a000001 	bne	1458 <morecore+0x4c>
    1450:	e3a03000 	mov	r3, #0
    1454:	ea00000a 	b	1484 <morecore+0x78>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e50b300c 	str	r3, [fp, #-12]
    1460:	e51b300c 	ldr	r3, [fp, #-12]
    1464:	e51b2010 	ldr	r2, [fp, #-16]
    1468:	e5832004 	str	r2, [r3, #4]
    146c:	e51b300c 	ldr	r3, [fp, #-12]
    1470:	e2833008 	add	r3, r3, #8
    1474:	e1a00003 	mov	r0, r3
    1478:	ebffff84 	bl	1290 <free>
    147c:	e59f300c 	ldr	r3, [pc, #12]	@ 1490 <morecore+0x84>
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e1a00003 	mov	r0, r3
    1488:	e24bd004 	sub	sp, fp, #4
    148c:	e8bd8800 	pop	{fp, pc}
    1490:	00001898 	.word	0x00001898

00001494 <malloc>:
    1494:	e92d4800 	push	{fp, lr}
    1498:	e28db004 	add	fp, sp, #4
    149c:	e24dd018 	sub	sp, sp, #24
    14a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a8:	e2833007 	add	r3, r3, #7
    14ac:	e1a031a3 	lsr	r3, r3, #3
    14b0:	e2833001 	add	r3, r3, #1
    14b4:	e50b3010 	str	r3, [fp, #-16]
    14b8:	e59f3134 	ldr	r3, [pc, #308]	@ 15f4 <malloc+0x160>
    14bc:	e5933000 	ldr	r3, [r3]
    14c0:	e50b300c 	str	r3, [fp, #-12]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e3530000 	cmp	r3, #0
    14cc:	1a00000b 	bne	1500 <malloc+0x6c>
    14d0:	e59f3120 	ldr	r3, [pc, #288]	@ 15f8 <malloc+0x164>
    14d4:	e50b300c 	str	r3, [fp, #-12]
    14d8:	e59f2114 	ldr	r2, [pc, #276]	@ 15f4 <malloc+0x160>
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e5823000 	str	r3, [r2]
    14e4:	e59f3108 	ldr	r3, [pc, #264]	@ 15f4 <malloc+0x160>
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e59f2104 	ldr	r2, [pc, #260]	@ 15f8 <malloc+0x164>
    14f0:	e5823000 	str	r3, [r2]
    14f4:	e59f30fc 	ldr	r3, [pc, #252]	@ 15f8 <malloc+0x164>
    14f8:	e3a02000 	mov	r2, #0
    14fc:	e5832004 	str	r2, [r3, #4]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5933000 	ldr	r3, [r3]
    1508:	e50b3008 	str	r3, [fp, #-8]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5933004 	ldr	r3, [r3, #4]
    1514:	e51b2010 	ldr	r2, [fp, #-16]
    1518:	e1520003 	cmp	r2, r3
    151c:	8a00001e 	bhi	159c <malloc+0x108>
    1520:	e51b3008 	ldr	r3, [fp, #-8]
    1524:	e5933004 	ldr	r3, [r3, #4]
    1528:	e51b2010 	ldr	r2, [fp, #-16]
    152c:	e1520003 	cmp	r2, r3
    1530:	1a000004 	bne	1548 <malloc+0xb4>
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e5932000 	ldr	r2, [r3]
    153c:	e51b300c 	ldr	r3, [fp, #-12]
    1540:	e5832000 	str	r2, [r3]
    1544:	ea00000e 	b	1584 <malloc+0xf0>
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5932004 	ldr	r2, [r3, #4]
    1550:	e51b3010 	ldr	r3, [fp, #-16]
    1554:	e0422003 	sub	r2, r2, r3
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e5832004 	str	r2, [r3, #4]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5933004 	ldr	r3, [r3, #4]
    1568:	e1a03183 	lsl	r3, r3, #3
    156c:	e51b2008 	ldr	r2, [fp, #-8]
    1570:	e0823003 	add	r3, r2, r3
    1574:	e50b3008 	str	r3, [fp, #-8]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e51b2010 	ldr	r2, [fp, #-16]
    1580:	e5832004 	str	r2, [r3, #4]
    1584:	e59f2068 	ldr	r2, [pc, #104]	@ 15f4 <malloc+0x160>
    1588:	e51b300c 	ldr	r3, [fp, #-12]
    158c:	e5823000 	str	r3, [r2]
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e2833008 	add	r3, r3, #8
    1598:	ea000012 	b	15e8 <malloc+0x154>
    159c:	e59f3050 	ldr	r3, [pc, #80]	@ 15f4 <malloc+0x160>
    15a0:	e5933000 	ldr	r3, [r3]
    15a4:	e51b2008 	ldr	r2, [fp, #-8]
    15a8:	e1520003 	cmp	r2, r3
    15ac:	1a000007 	bne	15d0 <malloc+0x13c>
    15b0:	e51b0010 	ldr	r0, [fp, #-16]
    15b4:	ebffff94 	bl	140c <morecore>
    15b8:	e50b0008 	str	r0, [fp, #-8]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e3530000 	cmp	r3, #0
    15c4:	1a000001 	bne	15d0 <malloc+0x13c>
    15c8:	e3a03000 	mov	r3, #0
    15cc:	ea000005 	b	15e8 <malloc+0x154>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e50b300c 	str	r3, [fp, #-12]
    15d8:	e51b3008 	ldr	r3, [fp, #-8]
    15dc:	e5933000 	ldr	r3, [r3]
    15e0:	e50b3008 	str	r3, [fp, #-8]
    15e4:	eaffffc8 	b	150c <malloc+0x78>
    15e8:	e1a00003 	mov	r0, r3
    15ec:	e24bd004 	sub	sp, fp, #4
    15f0:	e8bd8800 	pop	{fp, pc}
    15f4:	00001898 	.word	0x00001898
    15f8:	00001890 	.word	0x00001890

000015fc <__udivsi3>:
    15fc:	e2512001 	subs	r2, r1, #1
    1600:	012fff1e 	bxeq	lr
    1604:	3a000036 	bcc	16e4 <__udivsi3+0xe8>
    1608:	e1500001 	cmp	r0, r1
    160c:	9a000022 	bls	169c <__udivsi3+0xa0>
    1610:	e1110002 	tst	r1, r2
    1614:	0a000023 	beq	16a8 <__udivsi3+0xac>
    1618:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    161c:	01a01181 	lsleq	r1, r1, #3
    1620:	03a03008 	moveq	r3, #8
    1624:	13a03001 	movne	r3, #1
    1628:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    162c:	31510000 	cmpcc	r1, r0
    1630:	31a01201 	lslcc	r1, r1, #4
    1634:	31a03203 	lslcc	r3, r3, #4
    1638:	3afffffa 	bcc	1628 <__udivsi3+0x2c>
    163c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1640:	31510000 	cmpcc	r1, r0
    1644:	31a01081 	lslcc	r1, r1, #1
    1648:	31a03083 	lslcc	r3, r3, #1
    164c:	3afffffa 	bcc	163c <__udivsi3+0x40>
    1650:	e3a02000 	mov	r2, #0
    1654:	e1500001 	cmp	r0, r1
    1658:	20400001 	subcs	r0, r0, r1
    165c:	21822003 	orrcs	r2, r2, r3
    1660:	e15000a1 	cmp	r0, r1, lsr #1
    1664:	204000a1 	subcs	r0, r0, r1, lsr #1
    1668:	218220a3 	orrcs	r2, r2, r3, lsr #1
    166c:	e1500121 	cmp	r0, r1, lsr #2
    1670:	20400121 	subcs	r0, r0, r1, lsr #2
    1674:	21822123 	orrcs	r2, r2, r3, lsr #2
    1678:	e15001a1 	cmp	r0, r1, lsr #3
    167c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1680:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1684:	e3500000 	cmp	r0, #0
    1688:	11b03223 	lsrsne	r3, r3, #4
    168c:	11a01221 	lsrne	r1, r1, #4
    1690:	1affffef 	bne	1654 <__udivsi3+0x58>
    1694:	e1a00002 	mov	r0, r2
    1698:	e12fff1e 	bx	lr
    169c:	03a00001 	moveq	r0, #1
    16a0:	13a00000 	movne	r0, #0
    16a4:	e12fff1e 	bx	lr
    16a8:	e3510801 	cmp	r1, #65536	@ 0x10000
    16ac:	21a01821 	lsrcs	r1, r1, #16
    16b0:	23a02010 	movcs	r2, #16
    16b4:	33a02000 	movcc	r2, #0
    16b8:	e3510c01 	cmp	r1, #256	@ 0x100
    16bc:	21a01421 	lsrcs	r1, r1, #8
    16c0:	22822008 	addcs	r2, r2, #8
    16c4:	e3510010 	cmp	r1, #16
    16c8:	21a01221 	lsrcs	r1, r1, #4
    16cc:	22822004 	addcs	r2, r2, #4
    16d0:	e3510004 	cmp	r1, #4
    16d4:	82822003 	addhi	r2, r2, #3
    16d8:	908220a1 	addls	r2, r2, r1, lsr #1
    16dc:	e1a00230 	lsr	r0, r0, r2
    16e0:	e12fff1e 	bx	lr
    16e4:	e3500000 	cmp	r0, #0
    16e8:	13e00000 	mvnne	r0, #0
    16ec:	ea000007 	b	1710 <__aeabi_idiv0>

000016f0 <__aeabi_uidivmod>:
    16f0:	e3510000 	cmp	r1, #0
    16f4:	0afffffa 	beq	16e4 <__udivsi3+0xe8>
    16f8:	e92d4003 	push	{r0, r1, lr}
    16fc:	ebffffbe 	bl	15fc <__udivsi3>
    1700:	e8bd4006 	pop	{r1, r2, lr}
    1704:	e0030092 	mul	r3, r2, r0
    1708:	e0411003 	sub	r1, r1, r3
    170c:	e12fff1e 	bx	lr

00001710 <__aeabi_idiv0>:
    1710:	e12fff1e 	bx	lr
