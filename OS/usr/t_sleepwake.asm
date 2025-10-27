
_t_sleepwake:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	eb000383 	bl	e20 <getChannel>
      10:	e50b0008 	str	r0, [fp, #-8]
      14:	eb00024f 	bl	958 <fork>
      18:	e50b000c 	str	r0, [fp, #-12]
      1c:	e51b300c 	ldr	r3, [fp, #-12]
      20:	e3530000 	cmp	r3, #0
      24:	1a000004 	bne	3c <main+0x3c>
      28:	e3a000c8 	mov	r0, #200	@ 0xc8
      2c:	eb0002f4 	bl	c04 <sleep>
      30:	e51b0008 	ldr	r0, [fp, #-8]
      34:	eb000382 	bl	e44 <sigChan>
      38:	eb00024f 	bl	97c <exit>
      3c:	e51b2008 	ldr	r2, [fp, #-8]
      40:	e59f1020 	ldr	r1, [pc, #32]	@ 68 <main+0x68>
      44:	e3a00001 	mov	r0, #1
      48:	eb0003eb 	bl	ffc <printf>
      4c:	e51b0008 	ldr	r0, [fp, #-8]
      50:	eb000369 	bl	dfc <sleepChan>
      54:	e59f1010 	ldr	r1, [pc, #16]	@ 6c <main+0x6c>
      58:	e3a00001 	mov	r0, #1
      5c:	eb0003e6 	bl	ffc <printf>
      60:	eb00024e 	bl	9a0 <wait>
      64:	eb000244 	bl	97c <exit>
      68:	000016b8 	.word	0x000016b8
      6c:	000016d8 	.word	0x000016d8

00000070 <xchg>:
      70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      74:	e28db000 	add	fp, sp, #0
      78:	e24dd014 	sub	sp, sp, #20
      7c:	e50b0010 	str	r0, [fp, #-16]
      80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      84:	e51b1010 	ldr	r1, [fp, #-16]
      88:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      8c:	e1912f9f 	ldrex	r2, [r1]
      90:	e1813f90 	strex	r3, r0, [r1]
      94:	e50b2008 	str	r2, [fp, #-8]
      98:	e50b300c 	str	r3, [fp, #-12]
      9c:	e51b300c 	ldr	r3, [fp, #-12]
      a0:	e3530000 	cmp	r3, #0
      a4:	1afffff6 	bne	84 <xchg+0x14>
      a8:	e51b3008 	ldr	r3, [fp, #-8]
      ac:	e1a00003 	mov	r0, r3
      b0:	e28bd000 	add	sp, fp, #0
      b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      b8:	e12fff1e 	bx	lr

000000bc <strcpy>:
      bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      c0:	e28db000 	add	fp, sp, #0
      c4:	e24dd014 	sub	sp, sp, #20
      c8:	e50b0010 	str	r0, [fp, #-16]
      cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e50b3008 	str	r3, [fp, #-8]
      d8:	e1a00000 	nop			@ (mov r0, r0)
      dc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e0:	e2823001 	add	r3, r2, #1
      e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e8:	e51b3010 	ldr	r3, [fp, #-16]
      ec:	e2831001 	add	r1, r3, #1
      f0:	e50b1010 	str	r1, [fp, #-16]
      f4:	e5d22000 	ldrb	r2, [r2]
      f8:	e5c32000 	strb	r2, [r3]
      fc:	e5d33000 	ldrb	r3, [r3]
     100:	e3530000 	cmp	r3, #0
     104:	1afffff4 	bne	dc <strcpy+0x20>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e1a00003 	mov	r0, r3
     110:	e28bd000 	add	sp, fp, #0
     114:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     118:	e12fff1e 	bx	lr

0000011c <strcmp>:
     11c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     120:	e28db000 	add	fp, sp, #0
     124:	e24dd00c 	sub	sp, sp, #12
     128:	e50b0008 	str	r0, [fp, #-8]
     12c:	e50b100c 	str	r1, [fp, #-12]
     130:	ea000005 	b	14c <strcmp+0x30>
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e2833001 	add	r3, r3, #1
     13c:	e50b3008 	str	r3, [fp, #-8]
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b300c 	str	r3, [fp, #-12]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e3530000 	cmp	r3, #0
     158:	0a000005 	beq	174 <strcmp+0x58>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e5d32000 	ldrb	r2, [r3]
     164:	e51b300c 	ldr	r3, [fp, #-12]
     168:	e5d33000 	ldrb	r3, [r3]
     16c:	e1520003 	cmp	r2, r3
     170:	0affffef 	beq	134 <strcmp+0x18>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e1a02003 	mov	r2, r3
     180:	e51b300c 	ldr	r3, [fp, #-12]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e0423003 	sub	r3, r2, r3
     18c:	e1a00003 	mov	r0, r3
     190:	e28bd000 	add	sp, fp, #0
     194:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     198:	e12fff1e 	bx	lr

0000019c <strlen>:
     19c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a0:	e28db000 	add	fp, sp, #0
     1a4:	e24dd014 	sub	sp, sp, #20
     1a8:	e50b0010 	str	r0, [fp, #-16]
     1ac:	e3a03000 	mov	r3, #0
     1b0:	e50b3008 	str	r3, [fp, #-8]
     1b4:	ea000002 	b	1c4 <strlen+0x28>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e2833001 	add	r3, r3, #1
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e51b2010 	ldr	r2, [fp, #-16]
     1cc:	e0823003 	add	r3, r2, r3
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e3530000 	cmp	r3, #0
     1d8:	1afffff6 	bne	1b8 <strlen+0x1c>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e1a00003 	mov	r0, r3
     1e4:	e28bd000 	add	sp, fp, #0
     1e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1ec:	e12fff1e 	bx	lr

000001f0 <memset>:
     1f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f4:	e28db000 	add	fp, sp, #0
     1f8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     200:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     204:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     20c:	e50b3008 	str	r3, [fp, #-8]
     210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     214:	e54b300d 	strb	r3, [fp, #-13]
     218:	e55b200d 	ldrb	r2, [fp, #-13]
     21c:	e1a03002 	mov	r3, r2
     220:	e1a03403 	lsl	r3, r3, #8
     224:	e0833002 	add	r3, r3, r2
     228:	e1a03803 	lsl	r3, r3, #16
     22c:	e1a02003 	mov	r2, r3
     230:	e55b300d 	ldrb	r3, [fp, #-13]
     234:	e1a03403 	lsl	r3, r3, #8
     238:	e1822003 	orr	r2, r2, r3
     23c:	e55b300d 	ldrb	r3, [fp, #-13]
     240:	e1823003 	orr	r3, r2, r3
     244:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     248:	ea000008 	b	270 <memset+0x80>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e55b200d 	ldrb	r2, [fp, #-13]
     254:	e5c32000 	strb	r2, [r3]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e2433001 	sub	r3, r3, #1
     260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e2833001 	add	r3, r3, #1
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e3530000 	cmp	r3, #0
     278:	0a000003 	beq	28c <memset+0x9c>
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e2033003 	and	r3, r3, #3
     284:	e3530000 	cmp	r3, #0
     288:	1affffef 	bne	24c <memset+0x5c>
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e50b300c 	str	r3, [fp, #-12]
     294:	ea000008 	b	2bc <memset+0xcc>
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2a0:	e5832000 	str	r2, [r3]
     2a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e2433004 	sub	r3, r3, #4
     2ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e2833004 	add	r3, r3, #4
     2b8:	e50b300c 	str	r3, [fp, #-12]
     2bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e3530003 	cmp	r3, #3
     2c4:	8afffff3 	bhi	298 <memset+0xa8>
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	ea000008 	b	2f8 <memset+0x108>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e5c32000 	strb	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433001 	sub	r3, r3, #1
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530000 	cmp	r3, #0
     300:	1afffff3 	bne	2d4 <memset+0xe4>
     304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     308:	e1a00003 	mov	r0, r3
     30c:	e28bd000 	add	sp, fp, #0
     310:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     314:	e12fff1e 	bx	lr

00000318 <strchr>:
     318:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     31c:	e28db000 	add	fp, sp, #0
     320:	e24dd00c 	sub	sp, sp, #12
     324:	e50b0008 	str	r0, [fp, #-8]
     328:	e1a03001 	mov	r3, r1
     32c:	e54b3009 	strb	r3, [fp, #-9]
     330:	ea000009 	b	35c <strchr+0x44>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e55b2009 	ldrb	r2, [fp, #-9]
     340:	e1520003 	cmp	r2, r3
     344:	1a000001 	bne	350 <strchr+0x38>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	ea000007 	b	370 <strchr+0x58>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e2833001 	add	r3, r3, #1
     358:	e50b3008 	str	r3, [fp, #-8]
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e5d33000 	ldrb	r3, [r3]
     364:	e3530000 	cmp	r3, #0
     368:	1afffff1 	bne	334 <strchr+0x1c>
     36c:	e3a03000 	mov	r3, #0
     370:	e1a00003 	mov	r0, r3
     374:	e28bd000 	add	sp, fp, #0
     378:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     37c:	e12fff1e 	bx	lr

00000380 <gets>:
     380:	e92d4800 	push	{fp, lr}
     384:	e28db004 	add	fp, sp, #4
     388:	e24dd018 	sub	sp, sp, #24
     38c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     390:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     394:	e3a03000 	mov	r3, #0
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	ea000016 	b	3fc <gets+0x7c>
     3a0:	e24b300d 	sub	r3, fp, #13
     3a4:	e3a02001 	mov	r2, #1
     3a8:	e1a01003 	mov	r1, r3
     3ac:	e3a00000 	mov	r0, #0
     3b0:	eb00018c 	bl	9e8 <read>
     3b4:	e50b000c 	str	r0, [fp, #-12]
     3b8:	e51b300c 	ldr	r3, [fp, #-12]
     3bc:	e3530000 	cmp	r3, #0
     3c0:	da000013 	ble	414 <gets+0x94>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e2832001 	add	r2, r3, #1
     3cc:	e50b2008 	str	r2, [fp, #-8]
     3d0:	e1a02003 	mov	r2, r3
     3d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d8:	e0833002 	add	r3, r3, r2
     3dc:	e55b200d 	ldrb	r2, [fp, #-13]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e55b300d 	ldrb	r3, [fp, #-13]
     3e8:	e353000a 	cmp	r3, #10
     3ec:	0a000009 	beq	418 <gets+0x98>
     3f0:	e55b300d 	ldrb	r3, [fp, #-13]
     3f4:	e353000d 	cmp	r3, #13
     3f8:	0a000006 	beq	418 <gets+0x98>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e2833001 	add	r3, r3, #1
     404:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     408:	e1520003 	cmp	r2, r3
     40c:	caffffe3 	bgt	3a0 <gets+0x20>
     410:	ea000000 	b	418 <gets+0x98>
     414:	e1a00000 	nop			@ (mov r0, r0)
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     420:	e0823003 	add	r3, r2, r3
     424:	e3a02000 	mov	r2, #0
     428:	e5c32000 	strb	r2, [r3]
     42c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     430:	e1a00003 	mov	r0, r3
     434:	e24bd004 	sub	sp, fp, #4
     438:	e8bd8800 	pop	{fp, pc}

0000043c <stat>:
     43c:	e92d4800 	push	{fp, lr}
     440:	e28db004 	add	fp, sp, #4
     444:	e24dd010 	sub	sp, sp, #16
     448:	e50b0010 	str	r0, [fp, #-16]
     44c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     450:	e3a01000 	mov	r1, #0
     454:	e51b0010 	ldr	r0, [fp, #-16]
     458:	eb00018f 	bl	a9c <open>
     45c:	e50b0008 	str	r0, [fp, #-8]
     460:	e51b3008 	ldr	r3, [fp, #-8]
     464:	e3530000 	cmp	r3, #0
     468:	aa000001 	bge	474 <stat+0x38>
     46c:	e3e03000 	mvn	r3, #0
     470:	ea000006 	b	490 <stat+0x54>
     474:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     478:	e51b0008 	ldr	r0, [fp, #-8]
     47c:	eb0001a1 	bl	b08 <fstat>
     480:	e50b000c 	str	r0, [fp, #-12]
     484:	e51b0008 	ldr	r0, [fp, #-8]
     488:	eb000168 	bl	a30 <close>
     48c:	e51b300c 	ldr	r3, [fp, #-12]
     490:	e1a00003 	mov	r0, r3
     494:	e24bd004 	sub	sp, fp, #4
     498:	e8bd8800 	pop	{fp, pc}

0000049c <atoi>:
     49c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a0:	e28db000 	add	fp, sp, #0
     4a4:	e24dd014 	sub	sp, sp, #20
     4a8:	e50b0010 	str	r0, [fp, #-16]
     4ac:	e3a03000 	mov	r3, #0
     4b0:	e50b3008 	str	r3, [fp, #-8]
     4b4:	ea00000c 	b	4ec <atoi+0x50>
     4b8:	e51b2008 	ldr	r2, [fp, #-8]
     4bc:	e1a03002 	mov	r3, r2
     4c0:	e1a03103 	lsl	r3, r3, #2
     4c4:	e0833002 	add	r3, r3, r2
     4c8:	e1a03083 	lsl	r3, r3, #1
     4cc:	e1a01003 	mov	r1, r3
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e2832001 	add	r2, r3, #1
     4d8:	e50b2010 	str	r2, [fp, #-16]
     4dc:	e5d33000 	ldrb	r3, [r3]
     4e0:	e0813003 	add	r3, r1, r3
     4e4:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e8:	e50b3008 	str	r3, [fp, #-8]
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e353002f 	cmp	r3, #47	@ 0x2f
     4f8:	9a000003 	bls	50c <atoi+0x70>
     4fc:	e51b3010 	ldr	r3, [fp, #-16]
     500:	e5d33000 	ldrb	r3, [r3]
     504:	e3530039 	cmp	r3, #57	@ 0x39
     508:	9affffea 	bls	4b8 <atoi+0x1c>
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e1a00003 	mov	r0, r3
     514:	e28bd000 	add	sp, fp, #0
     518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <memmove>:
     520:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     524:	e28db000 	add	fp, sp, #0
     528:	e24dd01c 	sub	sp, sp, #28
     52c:	e50b0010 	str	r0, [fp, #-16]
     530:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     534:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e50b3008 	str	r3, [fp, #-8]
     540:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     544:	e50b300c 	str	r3, [fp, #-12]
     548:	ea000007 	b	56c <memmove+0x4c>
     54c:	e51b200c 	ldr	r2, [fp, #-12]
     550:	e2823001 	add	r3, r2, #1
     554:	e50b300c 	str	r3, [fp, #-12]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2831001 	add	r1, r3, #1
     560:	e50b1008 	str	r1, [fp, #-8]
     564:	e5d22000 	ldrb	r2, [r2]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     570:	e2432001 	sub	r2, r3, #1
     574:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     578:	e3530000 	cmp	r3, #0
     57c:	cafffff2 	bgt	54c <memmove+0x2c>
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e1a00003 	mov	r0, r3
     588:	e28bd000 	add	sp, fp, #0
     58c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <initiateLock>:
     594:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     598:	e28db000 	add	fp, sp, #0
     59c:	e24dd00c 	sub	sp, sp, #12
     5a0:	e50b0008 	str	r0, [fp, #-8]
     5a4:	e51b3008 	ldr	r3, [fp, #-8]
     5a8:	e3a02000 	mov	r2, #0
     5ac:	e5832000 	str	r2, [r3]
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e3a02001 	mov	r2, #1
     5b8:	e5832004 	str	r2, [r3, #4]
     5bc:	e1a00000 	nop			@ (mov r0, r0)
     5c0:	e28bd000 	add	sp, fp, #0
     5c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <acquireLock>:
     5cc:	e92d4800 	push	{fp, lr}
     5d0:	e28db004 	add	fp, sp, #4
     5d4:	e24dd008 	sub	sp, sp, #8
     5d8:	e50b0008 	str	r0, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e5933000 	ldr	r3, [r3]
     5e4:	e3730001 	cmn	r3, #1
     5e8:	1a000002 	bne	5f8 <acquireLock+0x2c>
     5ec:	e59f1034 	ldr	r1, [pc, #52]	@ 628 <acquireLock+0x5c>
     5f0:	e3a00002 	mov	r0, #2
     5f4:	eb000280 	bl	ffc <printf>
     5f8:	e1a00000 	nop			@ (mov r0, r0)
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e3a01001 	mov	r1, #1
     604:	e1a00003 	mov	r0, r3
     608:	ebfffe98 	bl	70 <xchg>
     60c:	e1a03000 	mov	r3, r0
     610:	e3530000 	cmp	r3, #0
     614:	1afffff8 	bne	5fc <acquireLock+0x30>
     618:	e1a00000 	nop			@ (mov r0, r0)
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e24bd004 	sub	sp, fp, #4
     624:	e8bd8800 	pop	{fp, pc}
     628:	000016ec 	.word	0x000016ec

0000062c <releaseLock>:
     62c:	e92d4800 	push	{fp, lr}
     630:	e28db004 	add	fp, sp, #4
     634:	e24dd008 	sub	sp, sp, #8
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5933000 	ldr	r3, [r3]
     644:	e3530001 	cmp	r3, #1
     648:	0a000002 	beq	658 <releaseLock+0x2c>
     64c:	e59f1020 	ldr	r1, [pc, #32]	@ 674 <releaseLock+0x48>
     650:	e3a00002 	mov	r0, #2
     654:	eb000268 	bl	ffc <printf>
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e3a01000 	mov	r1, #0
     660:	e1a00003 	mov	r0, r3
     664:	ebfffe81 	bl	70 <xchg>
     668:	e1a00000 	nop			@ (mov r0, r0)
     66c:	e24bd004 	sub	sp, fp, #4
     670:	e8bd8800 	pop	{fp, pc}
     674:	0000171c 	.word	0x0000171c

00000678 <initiateCondVar>:
     678:	e92d4800 	push	{fp, lr}
     67c:	e28db004 	add	fp, sp, #4
     680:	e24dd008 	sub	sp, sp, #8
     684:	e50b0008 	str	r0, [fp, #-8]
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e5933004 	ldr	r3, [r3, #4]
     690:	e3530000 	cmp	r3, #0
     694:	1a000007 	bne	6b8 <initiateCondVar+0x40>
     698:	eb0001e0 	bl	e20 <getChannel>
     69c:	e1a02000 	mov	r2, r0
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e5832000 	str	r2, [r3]
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e3a02001 	mov	r2, #1
     6b0:	e5832004 	str	r2, [r3, #4]
     6b4:	ea000000 	b	6bc <initiateCondVar+0x44>
     6b8:	e1a00000 	nop			@ (mov r0, r0)
     6bc:	e24bd004 	sub	sp, fp, #4
     6c0:	e8bd8800 	pop	{fp, pc}

000006c4 <condWait>:
     6c4:	e92d4800 	push	{fp, lr}
     6c8:	e28db004 	add	fp, sp, #4
     6cc:	e24dd008 	sub	sp, sp, #8
     6d0:	e50b0008 	str	r0, [fp, #-8]
     6d4:	e50b100c 	str	r1, [fp, #-12]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e5933004 	ldr	r3, [r3, #4]
     6e0:	e3530000 	cmp	r3, #0
     6e4:	1a000003 	bne	6f8 <condWait+0x34>
     6e8:	e59f1050 	ldr	r1, [pc, #80]	@ 740 <condWait+0x7c>
     6ec:	e3a00002 	mov	r0, #2
     6f0:	eb000241 	bl	ffc <printf>
     6f4:	ea00000f 	b	738 <condWait+0x74>
     6f8:	e51b300c 	ldr	r3, [fp, #-12]
     6fc:	e5933004 	ldr	r3, [r3, #4]
     700:	e3530000 	cmp	r3, #0
     704:	1a000003 	bne	718 <condWait+0x54>
     708:	e59f1034 	ldr	r1, [pc, #52]	@ 744 <condWait+0x80>
     70c:	e3a00002 	mov	r0, #2
     710:	eb000239 	bl	ffc <printf>
     714:	ea000007 	b	738 <condWait+0x74>
     718:	e51b000c 	ldr	r0, [fp, #-12]
     71c:	ebffffc2 	bl	62c <releaseLock>
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e5933000 	ldr	r3, [r3]
     728:	e1a00003 	mov	r0, r3
     72c:	eb0001b2 	bl	dfc <sleepChan>
     730:	e51b000c 	ldr	r0, [fp, #-12]
     734:	ebffffa4 	bl	5cc <acquireLock>
     738:	e24bd004 	sub	sp, fp, #4
     73c:	e8bd8800 	pop	{fp, pc}
     740:	00001758 	.word	0x00001758
     744:	0000177c 	.word	0x0000177c

00000748 <broadcast>:
     748:	e92d4800 	push	{fp, lr}
     74c:	e28db004 	add	fp, sp, #4
     750:	e24dd008 	sub	sp, sp, #8
     754:	e50b0008 	str	r0, [fp, #-8]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5933004 	ldr	r3, [r3, #4]
     760:	e3530000 	cmp	r3, #0
     764:	1a000003 	bne	778 <broadcast+0x30>
     768:	e59f1020 	ldr	r1, [pc, #32]	@ 790 <broadcast+0x48>
     76c:	e3a00002 	mov	r0, #2
     770:	eb000221 	bl	ffc <printf>
     774:	ea000003 	b	788 <broadcast+0x40>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933000 	ldr	r3, [r3]
     780:	e1a00003 	mov	r0, r3
     784:	eb0001ae 	bl	e44 <sigChan>
     788:	e24bd004 	sub	sp, fp, #4
     78c:	e8bd8800 	pop	{fp, pc}
     790:	00001758 	.word	0x00001758

00000794 <signal>:
     794:	e92d4800 	push	{fp, lr}
     798:	e28db004 	add	fp, sp, #4
     79c:	e24dd008 	sub	sp, sp, #8
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e51b3008 	ldr	r3, [fp, #-8]
     7a8:	e5933004 	ldr	r3, [r3, #4]
     7ac:	e3530000 	cmp	r3, #0
     7b0:	1a000003 	bne	7c4 <signal+0x30>
     7b4:	e59f1020 	ldr	r1, [pc, #32]	@ 7dc <signal+0x48>
     7b8:	e3a00002 	mov	r0, #2
     7bc:	eb00020e 	bl	ffc <printf>
     7c0:	ea000003 	b	7d4 <signal+0x40>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933000 	ldr	r3, [r3]
     7cc:	e1a00003 	mov	r0, r3
     7d0:	eb0001a4 	bl	e68 <sigOneChan>
     7d4:	e24bd004 	sub	sp, fp, #4
     7d8:	e8bd8800 	pop	{fp, pc}
     7dc:	00001758 	.word	0x00001758

000007e0 <semInit>:
     7e0:	e92d4800 	push	{fp, lr}
     7e4:	e28db004 	add	fp, sp, #4
     7e8:	e24dd008 	sub	sp, sp, #8
     7ec:	e50b0008 	str	r0, [fp, #-8]
     7f0:	e50b100c 	str	r1, [fp, #-12]
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e51b200c 	ldr	r2, [fp, #-12]
     7fc:	e5832000 	str	r2, [r3]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e2833004 	add	r3, r3, #4
     808:	e1a00003 	mov	r0, r3
     80c:	ebffff60 	bl	594 <initiateLock>
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e283300c 	add	r3, r3, #12
     818:	e1a00003 	mov	r0, r3
     81c:	ebffff95 	bl	678 <initiateCondVar>
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e3a02001 	mov	r2, #1
     828:	e5832014 	str	r2, [r3, #20]
     82c:	e1a00000 	nop			@ (mov r0, r0)
     830:	e24bd004 	sub	sp, fp, #4
     834:	e8bd8800 	pop	{fp, pc}

00000838 <semDown>:
     838:	e92d4800 	push	{fp, lr}
     83c:	e28db004 	add	fp, sp, #4
     840:	e24dd008 	sub	sp, sp, #8
     844:	e50b0008 	str	r0, [fp, #-8]
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e5933014 	ldr	r3, [r3, #20]
     850:	e3530000 	cmp	r3, #0
     854:	1a000003 	bne	868 <semDown+0x30>
     858:	e59f1074 	ldr	r1, [pc, #116]	@ 8d4 <semDown+0x9c>
     85c:	e3a00002 	mov	r0, #2
     860:	eb0001e5 	bl	ffc <printf>
     864:	ea000018 	b	8cc <semDown+0x94>
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e2833004 	add	r3, r3, #4
     870:	e1a00003 	mov	r0, r3
     874:	ebffff54 	bl	5cc <acquireLock>
     878:	ea000006 	b	898 <semDown+0x60>
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e283200c 	add	r2, r3, #12
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e2833004 	add	r3, r3, #4
     88c:	e1a01003 	mov	r1, r3
     890:	e1a00002 	mov	r0, r2
     894:	ebffff8a 	bl	6c4 <condWait>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5933000 	ldr	r3, [r3]
     8a0:	e3530000 	cmp	r3, #0
     8a4:	0afffff4 	beq	87c <semDown+0x44>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933000 	ldr	r3, [r3]
     8b0:	e2432001 	sub	r2, r3, #1
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e5832000 	str	r2, [r3]
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e2833004 	add	r3, r3, #4
     8c4:	e1a00003 	mov	r0, r3
     8c8:	ebffff57 	bl	62c <releaseLock>
     8cc:	e24bd004 	sub	sp, fp, #4
     8d0:	e8bd8800 	pop	{fp, pc}
     8d4:	0000179c 	.word	0x0000179c

000008d8 <semUp>:
     8d8:	e92d4800 	push	{fp, lr}
     8dc:	e28db004 	add	fp, sp, #4
     8e0:	e24dd008 	sub	sp, sp, #8
     8e4:	e50b0008 	str	r0, [fp, #-8]
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e5933014 	ldr	r3, [r3, #20]
     8f0:	e3530000 	cmp	r3, #0
     8f4:	1a000003 	bne	908 <semUp+0x30>
     8f8:	e59f1054 	ldr	r1, [pc, #84]	@ 954 <semUp+0x7c>
     8fc:	e3a00002 	mov	r0, #2
     900:	eb0001bd 	bl	ffc <printf>
     904:	ea000010 	b	94c <semUp+0x74>
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e2833004 	add	r3, r3, #4
     910:	e1a00003 	mov	r0, r3
     914:	ebffff2c 	bl	5cc <acquireLock>
     918:	e51b3008 	ldr	r3, [fp, #-8]
     91c:	e5933000 	ldr	r3, [r3]
     920:	e2832001 	add	r2, r3, #1
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e5832000 	str	r2, [r3]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e283300c 	add	r3, r3, #12
     934:	e1a00003 	mov	r0, r3
     938:	ebffff95 	bl	794 <signal>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e2833004 	add	r3, r3, #4
     944:	e1a00003 	mov	r0, r3
     948:	ebffff37 	bl	62c <releaseLock>
     94c:	e24bd004 	sub	sp, fp, #4
     950:	e8bd8800 	pop	{fp, pc}
     954:	0000179c 	.word	0x0000179c

00000958 <fork>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00001 	mov	r0, #1
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <exit>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00002 	mov	r0, #2
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <wait>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00003 	mov	r0, #3
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <pipe>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00004 	mov	r0, #4
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <read>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00005 	mov	r0, #5
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <write>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00010 	mov	r0, #16
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <close>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00015 	mov	r0, #21
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <kill>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00006 	mov	r0, #6
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <exec>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a00007 	mov	r0, #7
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <open>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a0000f 	mov	r0, #15
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <mknod>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00011 	mov	r0, #17
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <unlink>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00012 	mov	r0, #18
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <fstat>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00008 	mov	r0, #8
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <link>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00013 	mov	r0, #19
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <mkdir>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00014 	mov	r0, #20
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <chdir>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00009 	mov	r0, #9
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <dup>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0000a 	mov	r0, #10
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <getpid>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0000b 	mov	r0, #11
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <sbrk>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0000c 	mov	r0, #12
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <sleep>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0000d 	mov	r0, #13
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <uptime>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a0000e 	mov	r0, #14
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <disproc>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00016 	mov	r0, #22
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <srand>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00017 	mov	r0, #23
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <setticket>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00018 	mov	r0, #24
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <getpinfo>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00019 	mov	r0, #25
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <printPages>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a0001a 	mov	r0, #26
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <kpt>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a0001b 	mov	r0, #27
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <thread_create>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a0001c 	mov	r0, #28
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <thread_exit>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a0001d 	mov	r0, #29
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <thread_join>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0001e 	mov	r0, #30
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <waitpid>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0001f 	mov	r0, #31
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <barrier_init>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a00020 	mov	r0, #32
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <barrier_check>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a00021 	mov	r0, #33	@ 0x21
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <sleepChan>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a00022 	mov	r0, #34	@ 0x22
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <getChannel>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00023 	mov	r0, #35	@ 0x23
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <sigChan>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00024 	mov	r0, #36	@ 0x24
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <sigOneChan>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00025 	mov	r0, #37	@ 0x25
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <putc>:
     e8c:	e92d4800 	push	{fp, lr}
     e90:	e28db004 	add	fp, sp, #4
     e94:	e24dd008 	sub	sp, sp, #8
     e98:	e50b0008 	str	r0, [fp, #-8]
     e9c:	e1a03001 	mov	r3, r1
     ea0:	e54b3009 	strb	r3, [fp, #-9]
     ea4:	e24b3009 	sub	r3, fp, #9
     ea8:	e3a02001 	mov	r2, #1
     eac:	e1a01003 	mov	r1, r3
     eb0:	e51b0008 	ldr	r0, [fp, #-8]
     eb4:	ebfffed4 	bl	a0c <write>
     eb8:	e1a00000 	nop			@ (mov r0, r0)
     ebc:	e24bd004 	sub	sp, fp, #4
     ec0:	e8bd8800 	pop	{fp, pc}

00000ec4 <printint>:
     ec4:	e92d4800 	push	{fp, lr}
     ec8:	e28db004 	add	fp, sp, #4
     ecc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ed0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ed4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ed8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     edc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ee0:	e3a03000 	mov	r3, #0
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     eec:	e3530000 	cmp	r3, #0
     ef0:	0a000008 	beq	f18 <printint+0x54>
     ef4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ef8:	e3530000 	cmp	r3, #0
     efc:	aa000005 	bge	f18 <printint+0x54>
     f00:	e3a03001 	mov	r3, #1
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f0c:	e2633000 	rsb	r3, r3, #0
     f10:	e50b3010 	str	r3, [fp, #-16]
     f14:	ea000001 	b	f20 <printint+0x5c>
     f18:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f1c:	e50b3010 	str	r3, [fp, #-16]
     f20:	e3a03000 	mov	r3, #0
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f2c:	e51b3010 	ldr	r3, [fp, #-16]
     f30:	e1a01002 	mov	r1, r2
     f34:	e1a00003 	mov	r0, r3
     f38:	eb0001d5 	bl	1694 <__aeabi_uidivmod>
     f3c:	e1a03001 	mov	r3, r1
     f40:	e1a01003 	mov	r1, r3
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e2832001 	add	r2, r3, #1
     f4c:	e50b2008 	str	r2, [fp, #-8]
     f50:	e59f20a0 	ldr	r2, [pc, #160]	@ ff8 <printint+0x134>
     f54:	e7d22001 	ldrb	r2, [r2, r1]
     f58:	e2433004 	sub	r3, r3, #4
     f5c:	e083300b 	add	r3, r3, fp
     f60:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f64:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f68:	e1a01003 	mov	r1, r3
     f6c:	e51b0010 	ldr	r0, [fp, #-16]
     f70:	eb00018a 	bl	15a0 <__udivsi3>
     f74:	e1a03000 	mov	r3, r0
     f78:	e50b3010 	str	r3, [fp, #-16]
     f7c:	e51b3010 	ldr	r3, [fp, #-16]
     f80:	e3530000 	cmp	r3, #0
     f84:	1affffe7 	bne	f28 <printint+0x64>
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e3530000 	cmp	r3, #0
     f90:	0a00000e 	beq	fd0 <printint+0x10c>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e2832001 	add	r2, r3, #1
     f9c:	e50b2008 	str	r2, [fp, #-8]
     fa0:	e2433004 	sub	r3, r3, #4
     fa4:	e083300b 	add	r3, r3, fp
     fa8:	e3a0202d 	mov	r2, #45	@ 0x2d
     fac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fb0:	ea000006 	b	fd0 <printint+0x10c>
     fb4:	e24b2020 	sub	r2, fp, #32
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e0823003 	add	r3, r2, r3
     fc0:	e5d33000 	ldrb	r3, [r3]
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fcc:	ebffffae 	bl	e8c <putc>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e2433001 	sub	r3, r3, #1
     fd8:	e50b3008 	str	r3, [fp, #-8]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e3530000 	cmp	r3, #0
     fe4:	aafffff2 	bge	fb4 <printint+0xf0>
     fe8:	e1a00000 	nop			@ (mov r0, r0)
     fec:	e1a00000 	nop			@ (mov r0, r0)
     ff0:	e24bd004 	sub	sp, fp, #4
     ff4:	e8bd8800 	pop	{fp, pc}
     ff8:	000017c8 	.word	0x000017c8

00000ffc <printf>:
     ffc:	e92d000e 	push	{r1, r2, r3}
    1000:	e92d4800 	push	{fp, lr}
    1004:	e28db004 	add	fp, sp, #4
    1008:	e24dd024 	sub	sp, sp, #36	@ 0x24
    100c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1010:	e3a03000 	mov	r3, #0
    1014:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1018:	e28b3008 	add	r3, fp, #8
    101c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1020:	e3a03000 	mov	r3, #0
    1024:	e50b3010 	str	r3, [fp, #-16]
    1028:	ea000074 	b	1200 <printf+0x204>
    102c:	e59b2004 	ldr	r2, [fp, #4]
    1030:	e51b3010 	ldr	r3, [fp, #-16]
    1034:	e0823003 	add	r3, r2, r3
    1038:	e5d33000 	ldrb	r3, [r3]
    103c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1044:	e3530000 	cmp	r3, #0
    1048:	1a00000b 	bne	107c <printf+0x80>
    104c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1050:	e3530025 	cmp	r3, #37	@ 0x25
    1054:	1a000002 	bne	1064 <printf+0x68>
    1058:	e3a03025 	mov	r3, #37	@ 0x25
    105c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1060:	ea000063 	b	11f4 <printf+0x1f8>
    1064:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1068:	e6ef3073 	uxtb	r3, r3
    106c:	e1a01003 	mov	r1, r3
    1070:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1074:	ebffff84 	bl	e8c <putc>
    1078:	ea00005d 	b	11f4 <printf+0x1f8>
    107c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1080:	e3530025 	cmp	r3, #37	@ 0x25
    1084:	1a00005a 	bne	11f4 <printf+0x1f8>
    1088:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    108c:	e3530064 	cmp	r3, #100	@ 0x64
    1090:	1a00000a 	bne	10c0 <printf+0xc4>
    1094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e1a01003 	mov	r1, r3
    10a0:	e3a03001 	mov	r3, #1
    10a4:	e3a0200a 	mov	r2, #10
    10a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10ac:	ebffff84 	bl	ec4 <printint>
    10b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	e2833004 	add	r3, r3, #4
    10b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10bc:	ea00004a 	b	11ec <printf+0x1f0>
    10c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c4:	e3530078 	cmp	r3, #120	@ 0x78
    10c8:	0a000002 	beq	10d8 <printf+0xdc>
    10cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d0:	e3530070 	cmp	r3, #112	@ 0x70
    10d4:	1a00000a 	bne	1104 <printf+0x108>
    10d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	e5933000 	ldr	r3, [r3]
    10e0:	e1a01003 	mov	r1, r3
    10e4:	e3a03000 	mov	r3, #0
    10e8:	e3a02010 	mov	r2, #16
    10ec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10f0:	ebffff73 	bl	ec4 <printint>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e2833004 	add	r3, r3, #4
    10fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1100:	ea000039 	b	11ec <printf+0x1f0>
    1104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e3530073 	cmp	r3, #115	@ 0x73
    110c:	1a000018 	bne	1174 <printf+0x178>
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e5933000 	ldr	r3, [r3]
    1118:	e50b300c 	str	r3, [fp, #-12]
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e2833004 	add	r3, r3, #4
    1124:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1128:	e51b300c 	ldr	r3, [fp, #-12]
    112c:	e3530000 	cmp	r3, #0
    1130:	1a00000a 	bne	1160 <printf+0x164>
    1134:	e59f30f4 	ldr	r3, [pc, #244]	@ 1230 <printf+0x234>
    1138:	e50b300c 	str	r3, [fp, #-12]
    113c:	ea000007 	b	1160 <printf+0x164>
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e5d33000 	ldrb	r3, [r3]
    1148:	e1a01003 	mov	r1, r3
    114c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1150:	ebffff4d 	bl	e8c <putc>
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e2833001 	add	r3, r3, #1
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5d33000 	ldrb	r3, [r3]
    1168:	e3530000 	cmp	r3, #0
    116c:	1afffff3 	bne	1140 <printf+0x144>
    1170:	ea00001d 	b	11ec <printf+0x1f0>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e3530063 	cmp	r3, #99	@ 0x63
    117c:	1a000009 	bne	11a8 <printf+0x1ac>
    1180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1184:	e5933000 	ldr	r3, [r3]
    1188:	e6ef3073 	uxtb	r3, r3
    118c:	e1a01003 	mov	r1, r3
    1190:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1194:	ebffff3c 	bl	e8c <putc>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e2833004 	add	r3, r3, #4
    11a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	ea000010 	b	11ec <printf+0x1f0>
    11a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11ac:	e3530025 	cmp	r3, #37	@ 0x25
    11b0:	1a000005 	bne	11cc <printf+0x1d0>
    11b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b8:	e6ef3073 	uxtb	r3, r3
    11bc:	e1a01003 	mov	r1, r3
    11c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11c4:	ebffff30 	bl	e8c <putc>
    11c8:	ea000007 	b	11ec <printf+0x1f0>
    11cc:	e3a01025 	mov	r1, #37	@ 0x25
    11d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d4:	ebffff2c 	bl	e8c <putc>
    11d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11dc:	e6ef3073 	uxtb	r3, r3
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e8:	ebffff27 	bl	e8c <putc>
    11ec:	e3a03000 	mov	r3, #0
    11f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f4:	e51b3010 	ldr	r3, [fp, #-16]
    11f8:	e2833001 	add	r3, r3, #1
    11fc:	e50b3010 	str	r3, [fp, #-16]
    1200:	e59b2004 	ldr	r2, [fp, #4]
    1204:	e51b3010 	ldr	r3, [fp, #-16]
    1208:	e0823003 	add	r3, r2, r3
    120c:	e5d33000 	ldrb	r3, [r3]
    1210:	e3530000 	cmp	r3, #0
    1214:	1affff84 	bne	102c <printf+0x30>
    1218:	e1a00000 	nop			@ (mov r0, r0)
    121c:	e1a00000 	nop			@ (mov r0, r0)
    1220:	e24bd004 	sub	sp, fp, #4
    1224:	e8bd4800 	pop	{fp, lr}
    1228:	e28dd00c 	add	sp, sp, #12
    122c:	e12fff1e 	bx	lr
    1230:	000017c0 	.word	0x000017c0

00001234 <free>:
    1234:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1238:	e28db000 	add	fp, sp, #0
    123c:	e24dd014 	sub	sp, sp, #20
    1240:	e50b0010 	str	r0, [fp, #-16]
    1244:	e51b3010 	ldr	r3, [fp, #-16]
    1248:	e2433008 	sub	r3, r3, #8
    124c:	e50b300c 	str	r3, [fp, #-12]
    1250:	e59f3154 	ldr	r3, [pc, #340]	@ 13ac <free+0x178>
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e50b3008 	str	r3, [fp, #-8]
    125c:	ea000010 	b	12a4 <free+0x70>
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e51b2008 	ldr	r2, [fp, #-8]
    126c:	e1520003 	cmp	r2, r3
    1270:	3a000008 	bcc	1298 <free+0x64>
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e1520003 	cmp	r2, r3
    1280:	8a000010 	bhi	12c8 <free+0x94>
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e51b200c 	ldr	r2, [fp, #-12]
    1290:	e1520003 	cmp	r2, r3
    1294:	3a00000b 	bcc	12c8 <free+0x94>
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e5933000 	ldr	r3, [r3]
    12a0:	e50b3008 	str	r3, [fp, #-8]
    12a4:	e51b200c 	ldr	r2, [fp, #-12]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e1520003 	cmp	r2, r3
    12b0:	9affffea 	bls	1260 <free+0x2c>
    12b4:	e51b3008 	ldr	r3, [fp, #-8]
    12b8:	e5933000 	ldr	r3, [r3]
    12bc:	e51b200c 	ldr	r2, [fp, #-12]
    12c0:	e1520003 	cmp	r2, r3
    12c4:	2affffe5 	bcs	1260 <free+0x2c>
    12c8:	e51b300c 	ldr	r3, [fp, #-12]
    12cc:	e5933004 	ldr	r3, [r3, #4]
    12d0:	e1a03183 	lsl	r3, r3, #3
    12d4:	e51b200c 	ldr	r2, [fp, #-12]
    12d8:	e0822003 	add	r2, r2, r3
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e1520003 	cmp	r2, r3
    12e8:	1a00000d 	bne	1324 <free+0xf0>
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5932004 	ldr	r2, [r3, #4]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e5933004 	ldr	r3, [r3, #4]
    1300:	e0822003 	add	r2, r2, r3
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e5832004 	str	r2, [r3, #4]
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e5932000 	ldr	r2, [r3]
    1318:	e51b300c 	ldr	r3, [fp, #-12]
    131c:	e5832000 	str	r2, [r3]
    1320:	ea000003 	b	1334 <free+0x100>
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5932000 	ldr	r2, [r3]
    132c:	e51b300c 	ldr	r3, [fp, #-12]
    1330:	e5832000 	str	r2, [r3]
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5933004 	ldr	r3, [r3, #4]
    133c:	e1a03183 	lsl	r3, r3, #3
    1340:	e51b2008 	ldr	r2, [fp, #-8]
    1344:	e0823003 	add	r3, r2, r3
    1348:	e51b200c 	ldr	r2, [fp, #-12]
    134c:	e1520003 	cmp	r2, r3
    1350:	1a00000b 	bne	1384 <free+0x150>
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5932004 	ldr	r2, [r3, #4]
    135c:	e51b300c 	ldr	r3, [fp, #-12]
    1360:	e5933004 	ldr	r3, [r3, #4]
    1364:	e0822003 	add	r2, r2, r3
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5832004 	str	r2, [r3, #4]
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5932000 	ldr	r2, [r3]
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5832000 	str	r2, [r3]
    1380:	ea000002 	b	1390 <free+0x15c>
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e51b200c 	ldr	r2, [fp, #-12]
    138c:	e5832000 	str	r2, [r3]
    1390:	e59f2014 	ldr	r2, [pc, #20]	@ 13ac <free+0x178>
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5823000 	str	r3, [r2]
    139c:	e1a00000 	nop			@ (mov r0, r0)
    13a0:	e28bd000 	add	sp, fp, #0
    13a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13a8:	e12fff1e 	bx	lr
    13ac:	000017e4 	.word	0x000017e4

000013b0 <morecore>:
    13b0:	e92d4800 	push	{fp, lr}
    13b4:	e28db004 	add	fp, sp, #4
    13b8:	e24dd010 	sub	sp, sp, #16
    13bc:	e50b0010 	str	r0, [fp, #-16]
    13c0:	e51b3010 	ldr	r3, [fp, #-16]
    13c4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13c8:	2a000001 	bcs	13d4 <morecore+0x24>
    13cc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13d0:	e50b3010 	str	r3, [fp, #-16]
    13d4:	e51b3010 	ldr	r3, [fp, #-16]
    13d8:	e1a03183 	lsl	r3, r3, #3
    13dc:	e1a00003 	mov	r0, r3
    13e0:	ebfffdfe 	bl	be0 <sbrk>
    13e4:	e50b0008 	str	r0, [fp, #-8]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e3730001 	cmn	r3, #1
    13f0:	1a000001 	bne	13fc <morecore+0x4c>
    13f4:	e3a03000 	mov	r3, #0
    13f8:	ea00000a 	b	1428 <morecore+0x78>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e50b300c 	str	r3, [fp, #-12]
    1404:	e51b300c 	ldr	r3, [fp, #-12]
    1408:	e51b2010 	ldr	r2, [fp, #-16]
    140c:	e5832004 	str	r2, [r3, #4]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e2833008 	add	r3, r3, #8
    1418:	e1a00003 	mov	r0, r3
    141c:	ebffff84 	bl	1234 <free>
    1420:	e59f300c 	ldr	r3, [pc, #12]	@ 1434 <morecore+0x84>
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e1a00003 	mov	r0, r3
    142c:	e24bd004 	sub	sp, fp, #4
    1430:	e8bd8800 	pop	{fp, pc}
    1434:	000017e4 	.word	0x000017e4

00001438 <malloc>:
    1438:	e92d4800 	push	{fp, lr}
    143c:	e28db004 	add	fp, sp, #4
    1440:	e24dd018 	sub	sp, sp, #24
    1444:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1448:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    144c:	e2833007 	add	r3, r3, #7
    1450:	e1a031a3 	lsr	r3, r3, #3
    1454:	e2833001 	add	r3, r3, #1
    1458:	e50b3010 	str	r3, [fp, #-16]
    145c:	e59f3134 	ldr	r3, [pc, #308]	@ 1598 <malloc+0x160>
    1460:	e5933000 	ldr	r3, [r3]
    1464:	e50b300c 	str	r3, [fp, #-12]
    1468:	e51b300c 	ldr	r3, [fp, #-12]
    146c:	e3530000 	cmp	r3, #0
    1470:	1a00000b 	bne	14a4 <malloc+0x6c>
    1474:	e59f3120 	ldr	r3, [pc, #288]	@ 159c <malloc+0x164>
    1478:	e50b300c 	str	r3, [fp, #-12]
    147c:	e59f2114 	ldr	r2, [pc, #276]	@ 1598 <malloc+0x160>
    1480:	e51b300c 	ldr	r3, [fp, #-12]
    1484:	e5823000 	str	r3, [r2]
    1488:	e59f3108 	ldr	r3, [pc, #264]	@ 1598 <malloc+0x160>
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e59f2104 	ldr	r2, [pc, #260]	@ 159c <malloc+0x164>
    1494:	e5823000 	str	r3, [r2]
    1498:	e59f30fc 	ldr	r3, [pc, #252]	@ 159c <malloc+0x164>
    149c:	e3a02000 	mov	r2, #0
    14a0:	e5832004 	str	r2, [r3, #4]
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5933000 	ldr	r3, [r3]
    14ac:	e50b3008 	str	r3, [fp, #-8]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5933004 	ldr	r3, [r3, #4]
    14b8:	e51b2010 	ldr	r2, [fp, #-16]
    14bc:	e1520003 	cmp	r2, r3
    14c0:	8a00001e 	bhi	1540 <malloc+0x108>
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e5933004 	ldr	r3, [r3, #4]
    14cc:	e51b2010 	ldr	r2, [fp, #-16]
    14d0:	e1520003 	cmp	r2, r3
    14d4:	1a000004 	bne	14ec <malloc+0xb4>
    14d8:	e51b3008 	ldr	r3, [fp, #-8]
    14dc:	e5932000 	ldr	r2, [r3]
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5832000 	str	r2, [r3]
    14e8:	ea00000e 	b	1528 <malloc+0xf0>
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5932004 	ldr	r2, [r3, #4]
    14f4:	e51b3010 	ldr	r3, [fp, #-16]
    14f8:	e0422003 	sub	r2, r2, r3
    14fc:	e51b3008 	ldr	r3, [fp, #-8]
    1500:	e5832004 	str	r2, [r3, #4]
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5933004 	ldr	r3, [r3, #4]
    150c:	e1a03183 	lsl	r3, r3, #3
    1510:	e51b2008 	ldr	r2, [fp, #-8]
    1514:	e0823003 	add	r3, r2, r3
    1518:	e50b3008 	str	r3, [fp, #-8]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e51b2010 	ldr	r2, [fp, #-16]
    1524:	e5832004 	str	r2, [r3, #4]
    1528:	e59f2068 	ldr	r2, [pc, #104]	@ 1598 <malloc+0x160>
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5823000 	str	r3, [r2]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e2833008 	add	r3, r3, #8
    153c:	ea000012 	b	158c <malloc+0x154>
    1540:	e59f3050 	ldr	r3, [pc, #80]	@ 1598 <malloc+0x160>
    1544:	e5933000 	ldr	r3, [r3]
    1548:	e51b2008 	ldr	r2, [fp, #-8]
    154c:	e1520003 	cmp	r2, r3
    1550:	1a000007 	bne	1574 <malloc+0x13c>
    1554:	e51b0010 	ldr	r0, [fp, #-16]
    1558:	ebffff94 	bl	13b0 <morecore>
    155c:	e50b0008 	str	r0, [fp, #-8]
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e3530000 	cmp	r3, #0
    1568:	1a000001 	bne	1574 <malloc+0x13c>
    156c:	e3a03000 	mov	r3, #0
    1570:	ea000005 	b	158c <malloc+0x154>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e50b300c 	str	r3, [fp, #-12]
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e5933000 	ldr	r3, [r3]
    1584:	e50b3008 	str	r3, [fp, #-8]
    1588:	eaffffc8 	b	14b0 <malloc+0x78>
    158c:	e1a00003 	mov	r0, r3
    1590:	e24bd004 	sub	sp, fp, #4
    1594:	e8bd8800 	pop	{fp, pc}
    1598:	000017e4 	.word	0x000017e4
    159c:	000017dc 	.word	0x000017dc

000015a0 <__udivsi3>:
    15a0:	e2512001 	subs	r2, r1, #1
    15a4:	012fff1e 	bxeq	lr
    15a8:	3a000036 	bcc	1688 <__udivsi3+0xe8>
    15ac:	e1500001 	cmp	r0, r1
    15b0:	9a000022 	bls	1640 <__udivsi3+0xa0>
    15b4:	e1110002 	tst	r1, r2
    15b8:	0a000023 	beq	164c <__udivsi3+0xac>
    15bc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15c0:	01a01181 	lsleq	r1, r1, #3
    15c4:	03a03008 	moveq	r3, #8
    15c8:	13a03001 	movne	r3, #1
    15cc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15d0:	31510000 	cmpcc	r1, r0
    15d4:	31a01201 	lslcc	r1, r1, #4
    15d8:	31a03203 	lslcc	r3, r3, #4
    15dc:	3afffffa 	bcc	15cc <__udivsi3+0x2c>
    15e0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15e4:	31510000 	cmpcc	r1, r0
    15e8:	31a01081 	lslcc	r1, r1, #1
    15ec:	31a03083 	lslcc	r3, r3, #1
    15f0:	3afffffa 	bcc	15e0 <__udivsi3+0x40>
    15f4:	e3a02000 	mov	r2, #0
    15f8:	e1500001 	cmp	r0, r1
    15fc:	20400001 	subcs	r0, r0, r1
    1600:	21822003 	orrcs	r2, r2, r3
    1604:	e15000a1 	cmp	r0, r1, lsr #1
    1608:	204000a1 	subcs	r0, r0, r1, lsr #1
    160c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1610:	e1500121 	cmp	r0, r1, lsr #2
    1614:	20400121 	subcs	r0, r0, r1, lsr #2
    1618:	21822123 	orrcs	r2, r2, r3, lsr #2
    161c:	e15001a1 	cmp	r0, r1, lsr #3
    1620:	204001a1 	subcs	r0, r0, r1, lsr #3
    1624:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1628:	e3500000 	cmp	r0, #0
    162c:	11b03223 	lsrsne	r3, r3, #4
    1630:	11a01221 	lsrne	r1, r1, #4
    1634:	1affffef 	bne	15f8 <__udivsi3+0x58>
    1638:	e1a00002 	mov	r0, r2
    163c:	e12fff1e 	bx	lr
    1640:	03a00001 	moveq	r0, #1
    1644:	13a00000 	movne	r0, #0
    1648:	e12fff1e 	bx	lr
    164c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1650:	21a01821 	lsrcs	r1, r1, #16
    1654:	23a02010 	movcs	r2, #16
    1658:	33a02000 	movcc	r2, #0
    165c:	e3510c01 	cmp	r1, #256	@ 0x100
    1660:	21a01421 	lsrcs	r1, r1, #8
    1664:	22822008 	addcs	r2, r2, #8
    1668:	e3510010 	cmp	r1, #16
    166c:	21a01221 	lsrcs	r1, r1, #4
    1670:	22822004 	addcs	r2, r2, #4
    1674:	e3510004 	cmp	r1, #4
    1678:	82822003 	addhi	r2, r2, #3
    167c:	908220a1 	addls	r2, r2, r1, lsr #1
    1680:	e1a00230 	lsr	r0, r0, r2
    1684:	e12fff1e 	bx	lr
    1688:	e3500000 	cmp	r0, #0
    168c:	13e00000 	mvnne	r0, #0
    1690:	ea000007 	b	16b4 <__aeabi_idiv0>

00001694 <__aeabi_uidivmod>:
    1694:	e3510000 	cmp	r1, #0
    1698:	0afffffa 	beq	1688 <__udivsi3+0xe8>
    169c:	e92d4003 	push	{r0, r1, lr}
    16a0:	ebffffbe 	bl	15a0 <__udivsi3>
    16a4:	e8bd4006 	pop	{r1, r2, lr}
    16a8:	e0030092 	mul	r3, r2, r0
    16ac:	e0411003 	sub	r1, r1, r3
    16b0:	e12fff1e 	bx	lr

000016b4 <__aeabi_idiv0>:
    16b4:	e12fff1e 	bx	lr
