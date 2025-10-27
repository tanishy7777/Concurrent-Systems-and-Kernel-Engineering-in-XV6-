
_srand:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530002 	cmp	r3, #2
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f102c 	ldr	r1, [pc, #44]	@ 54 <main+0x54>
      24:	e3a00002 	mov	r0, #2
      28:	eb0003ed 	bl	fe4 <printf>
      2c:	eb00024c 	bl	964 <exit>
      30:	e51b300c 	ldr	r3, [fp, #-12]
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb00010f 	bl	484 <atoi>
      44:	e1a03000 	mov	r3, r0
      48:	e1a00003 	mov	r0, r3
      4c:	eb000301 	bl	c58 <srand>
      50:	eb000243 	bl	964 <exit>
      54:	000016a0 	.word	0x000016a0

00000058 <xchg>:
      58:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      5c:	e28db000 	add	fp, sp, #0
      60:	e24dd014 	sub	sp, sp, #20
      64:	e50b0010 	str	r0, [fp, #-16]
      68:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      6c:	e51b1010 	ldr	r1, [fp, #-16]
      70:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      74:	e1912f9f 	ldrex	r2, [r1]
      78:	e1813f90 	strex	r3, r0, [r1]
      7c:	e50b2008 	str	r2, [fp, #-8]
      80:	e50b300c 	str	r3, [fp, #-12]
      84:	e51b300c 	ldr	r3, [fp, #-12]
      88:	e3530000 	cmp	r3, #0
      8c:	1afffff6 	bne	6c <xchg+0x14>
      90:	e51b3008 	ldr	r3, [fp, #-8]
      94:	e1a00003 	mov	r0, r3
      98:	e28bd000 	add	sp, fp, #0
      9c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      a0:	e12fff1e 	bx	lr

000000a4 <strcpy>:
      a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      a8:	e28db000 	add	fp, sp, #0
      ac:	e24dd014 	sub	sp, sp, #20
      b0:	e50b0010 	str	r0, [fp, #-16]
      b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      b8:	e51b3010 	ldr	r3, [fp, #-16]
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	e1a00000 	nop			@ (mov r0, r0)
      c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      c8:	e2823001 	add	r3, r2, #1
      cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e2831001 	add	r1, r3, #1
      d8:	e50b1010 	str	r1, [fp, #-16]
      dc:	e5d22000 	ldrb	r2, [r2]
      e0:	e5c32000 	strb	r2, [r3]
      e4:	e5d33000 	ldrb	r3, [r3]
      e8:	e3530000 	cmp	r3, #0
      ec:	1afffff4 	bne	c4 <strcpy+0x20>
      f0:	e51b3008 	ldr	r3, [fp, #-8]
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strcmp>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd00c 	sub	sp, sp, #12
     110:	e50b0008 	str	r0, [fp, #-8]
     114:	e50b100c 	str	r1, [fp, #-12]
     118:	ea000005 	b	134 <strcmp+0x30>
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e2833001 	add	r3, r3, #1
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	e51b300c 	ldr	r3, [fp, #-12]
     12c:	e2833001 	add	r3, r3, #1
     130:	e50b300c 	str	r3, [fp, #-12]
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	0a000005 	beq	15c <strcmp+0x58>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d32000 	ldrb	r2, [r3]
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e1520003 	cmp	r2, r3
     158:	0affffef 	beq	11c <strcmp+0x18>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1a02003 	mov	r2, r3
     168:	e51b300c 	ldr	r3, [fp, #-12]
     16c:	e5d33000 	ldrb	r3, [r3]
     170:	e0423003 	sub	r3, r2, r3
     174:	e1a00003 	mov	r0, r3
     178:	e28bd000 	add	sp, fp, #0
     17c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     180:	e12fff1e 	bx	lr

00000184 <strlen>:
     184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     188:	e28db000 	add	fp, sp, #0
     18c:	e24dd014 	sub	sp, sp, #20
     190:	e50b0010 	str	r0, [fp, #-16]
     194:	e3a03000 	mov	r3, #0
     198:	e50b3008 	str	r3, [fp, #-8]
     19c:	ea000002 	b	1ac <strlen+0x28>
     1a0:	e51b3008 	ldr	r3, [fp, #-8]
     1a4:	e2833001 	add	r3, r3, #1
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e51b2010 	ldr	r2, [fp, #-16]
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e3530000 	cmp	r3, #0
     1c0:	1afffff6 	bne	1a0 <strlen+0x1c>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <memset>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1f4:	e50b3008 	str	r3, [fp, #-8]
     1f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1fc:	e54b300d 	strb	r3, [fp, #-13]
     200:	e55b200d 	ldrb	r2, [fp, #-13]
     204:	e1a03002 	mov	r3, r2
     208:	e1a03403 	lsl	r3, r3, #8
     20c:	e0833002 	add	r3, r3, r2
     210:	e1a03803 	lsl	r3, r3, #16
     214:	e1a02003 	mov	r2, r3
     218:	e55b300d 	ldrb	r3, [fp, #-13]
     21c:	e1a03403 	lsl	r3, r3, #8
     220:	e1822003 	orr	r2, r2, r3
     224:	e55b300d 	ldrb	r3, [fp, #-13]
     228:	e1823003 	orr	r3, r2, r3
     22c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     230:	ea000008 	b	258 <memset+0x80>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e55b200d 	ldrb	r2, [fp, #-13]
     23c:	e5c32000 	strb	r2, [r3]
     240:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     244:	e2433001 	sub	r3, r3, #1
     248:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2833001 	add	r3, r3, #1
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e3530000 	cmp	r3, #0
     260:	0a000003 	beq	274 <memset+0x9c>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e2033003 	and	r3, r3, #3
     26c:	e3530000 	cmp	r3, #0
     270:	1affffef 	bne	234 <memset+0x5c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e50b300c 	str	r3, [fp, #-12]
     27c:	ea000008 	b	2a4 <memset+0xcc>
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     288:	e5832000 	str	r2, [r3]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     290:	e2433004 	sub	r3, r3, #4
     294:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e2833004 	add	r3, r3, #4
     2a0:	e50b300c 	str	r3, [fp, #-12]
     2a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e3530003 	cmp	r3, #3
     2ac:	8afffff3 	bhi	280 <memset+0xa8>
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	ea000008 	b	2e0 <memset+0x108>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e55b200d 	ldrb	r2, [fp, #-13]
     2c4:	e5c32000 	strb	r2, [r3]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e2433001 	sub	r3, r3, #1
     2d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2833001 	add	r3, r3, #1
     2dc:	e50b3008 	str	r3, [fp, #-8]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e3530000 	cmp	r3, #0
     2e8:	1afffff3 	bne	2bc <memset+0xe4>
     2ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2f0:	e1a00003 	mov	r0, r3
     2f4:	e28bd000 	add	sp, fp, #0
     2f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2fc:	e12fff1e 	bx	lr

00000300 <strchr>:
     300:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     304:	e28db000 	add	fp, sp, #0
     308:	e24dd00c 	sub	sp, sp, #12
     30c:	e50b0008 	str	r0, [fp, #-8]
     310:	e1a03001 	mov	r3, r1
     314:	e54b3009 	strb	r3, [fp, #-9]
     318:	ea000009 	b	344 <strchr+0x44>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e5d33000 	ldrb	r3, [r3]
     324:	e55b2009 	ldrb	r2, [fp, #-9]
     328:	e1520003 	cmp	r2, r3
     32c:	1a000001 	bne	338 <strchr+0x38>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	ea000007 	b	358 <strchr+0x58>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e2833001 	add	r3, r3, #1
     340:	e50b3008 	str	r3, [fp, #-8]
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e5d33000 	ldrb	r3, [r3]
     34c:	e3530000 	cmp	r3, #0
     350:	1afffff1 	bne	31c <strchr+0x1c>
     354:	e3a03000 	mov	r3, #0
     358:	e1a00003 	mov	r0, r3
     35c:	e28bd000 	add	sp, fp, #0
     360:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     364:	e12fff1e 	bx	lr

00000368 <gets>:
     368:	e92d4800 	push	{fp, lr}
     36c:	e28db004 	add	fp, sp, #4
     370:	e24dd018 	sub	sp, sp, #24
     374:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     378:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     37c:	e3a03000 	mov	r3, #0
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	ea000016 	b	3e4 <gets+0x7c>
     388:	e24b300d 	sub	r3, fp, #13
     38c:	e3a02001 	mov	r2, #1
     390:	e1a01003 	mov	r1, r3
     394:	e3a00000 	mov	r0, #0
     398:	eb00018c 	bl	9d0 <read>
     39c:	e50b000c 	str	r0, [fp, #-12]
     3a0:	e51b300c 	ldr	r3, [fp, #-12]
     3a4:	e3530000 	cmp	r3, #0
     3a8:	da000013 	ble	3fc <gets+0x94>
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2832001 	add	r2, r3, #1
     3b4:	e50b2008 	str	r2, [fp, #-8]
     3b8:	e1a02003 	mov	r2, r3
     3bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c0:	e0833002 	add	r3, r3, r2
     3c4:	e55b200d 	ldrb	r2, [fp, #-13]
     3c8:	e5c32000 	strb	r2, [r3]
     3cc:	e55b300d 	ldrb	r3, [fp, #-13]
     3d0:	e353000a 	cmp	r3, #10
     3d4:	0a000009 	beq	400 <gets+0x98>
     3d8:	e55b300d 	ldrb	r3, [fp, #-13]
     3dc:	e353000d 	cmp	r3, #13
     3e0:	0a000006 	beq	400 <gets+0x98>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2833001 	add	r3, r3, #1
     3ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3f0:	e1520003 	cmp	r2, r3
     3f4:	caffffe3 	bgt	388 <gets+0x20>
     3f8:	ea000000 	b	400 <gets+0x98>
     3fc:	e1a00000 	nop			@ (mov r0, r0)
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     408:	e0823003 	add	r3, r2, r3
     40c:	e3a02000 	mov	r2, #0
     410:	e5c32000 	strb	r2, [r3]
     414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     418:	e1a00003 	mov	r0, r3
     41c:	e24bd004 	sub	sp, fp, #4
     420:	e8bd8800 	pop	{fp, pc}

00000424 <stat>:
     424:	e92d4800 	push	{fp, lr}
     428:	e28db004 	add	fp, sp, #4
     42c:	e24dd010 	sub	sp, sp, #16
     430:	e50b0010 	str	r0, [fp, #-16]
     434:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     438:	e3a01000 	mov	r1, #0
     43c:	e51b0010 	ldr	r0, [fp, #-16]
     440:	eb00018f 	bl	a84 <open>
     444:	e50b0008 	str	r0, [fp, #-8]
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e3530000 	cmp	r3, #0
     450:	aa000001 	bge	45c <stat+0x38>
     454:	e3e03000 	mvn	r3, #0
     458:	ea000006 	b	478 <stat+0x54>
     45c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     460:	e51b0008 	ldr	r0, [fp, #-8]
     464:	eb0001a1 	bl	af0 <fstat>
     468:	e50b000c 	str	r0, [fp, #-12]
     46c:	e51b0008 	ldr	r0, [fp, #-8]
     470:	eb000168 	bl	a18 <close>
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e1a00003 	mov	r0, r3
     47c:	e24bd004 	sub	sp, fp, #4
     480:	e8bd8800 	pop	{fp, pc}

00000484 <atoi>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea00000c 	b	4d4 <atoi+0x50>
     4a0:	e51b2008 	ldr	r2, [fp, #-8]
     4a4:	e1a03002 	mov	r3, r2
     4a8:	e1a03103 	lsl	r3, r3, #2
     4ac:	e0833002 	add	r3, r3, r2
     4b0:	e1a03083 	lsl	r3, r3, #1
     4b4:	e1a01003 	mov	r1, r3
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e2832001 	add	r2, r3, #1
     4c0:	e50b2010 	str	r2, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e0813003 	add	r3, r1, r3
     4cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	e51b3010 	ldr	r3, [fp, #-16]
     4d8:	e5d33000 	ldrb	r3, [r3]
     4dc:	e353002f 	cmp	r3, #47	@ 0x2f
     4e0:	9a000003 	bls	4f4 <atoi+0x70>
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530039 	cmp	r3, #57	@ 0x39
     4f0:	9affffea 	bls	4a0 <atoi+0x1c>
     4f4:	e51b3008 	ldr	r3, [fp, #-8]
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <memmove>:
     508:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     50c:	e28db000 	add	fp, sp, #0
     510:	e24dd01c 	sub	sp, sp, #28
     514:	e50b0010 	str	r0, [fp, #-16]
     518:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     51c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     520:	e51b3010 	ldr	r3, [fp, #-16]
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     52c:	e50b300c 	str	r3, [fp, #-12]
     530:	ea000007 	b	554 <memmove+0x4c>
     534:	e51b200c 	ldr	r2, [fp, #-12]
     538:	e2823001 	add	r3, r2, #1
     53c:	e50b300c 	str	r3, [fp, #-12]
     540:	e51b3008 	ldr	r3, [fp, #-8]
     544:	e2831001 	add	r1, r3, #1
     548:	e50b1008 	str	r1, [fp, #-8]
     54c:	e5d22000 	ldrb	r2, [r2]
     550:	e5c32000 	strb	r2, [r3]
     554:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     558:	e2432001 	sub	r2, r3, #1
     55c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     560:	e3530000 	cmp	r3, #0
     564:	cafffff2 	bgt	534 <memmove+0x2c>
     568:	e51b3010 	ldr	r3, [fp, #-16]
     56c:	e1a00003 	mov	r0, r3
     570:	e28bd000 	add	sp, fp, #0
     574:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     578:	e12fff1e 	bx	lr

0000057c <initiateLock>:
     57c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     580:	e28db000 	add	fp, sp, #0
     584:	e24dd00c 	sub	sp, sp, #12
     588:	e50b0008 	str	r0, [fp, #-8]
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e3a02000 	mov	r2, #0
     594:	e5832000 	str	r2, [r3]
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e3a02001 	mov	r2, #1
     5a0:	e5832004 	str	r2, [r3, #4]
     5a4:	e1a00000 	nop			@ (mov r0, r0)
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <acquireLock>:
     5b4:	e92d4800 	push	{fp, lr}
     5b8:	e28db004 	add	fp, sp, #4
     5bc:	e24dd008 	sub	sp, sp, #8
     5c0:	e50b0008 	str	r0, [fp, #-8]
     5c4:	e51b3008 	ldr	r3, [fp, #-8]
     5c8:	e5933000 	ldr	r3, [r3]
     5cc:	e3730001 	cmn	r3, #1
     5d0:	1a000002 	bne	5e0 <acquireLock+0x2c>
     5d4:	e59f1034 	ldr	r1, [pc, #52]	@ 610 <acquireLock+0x5c>
     5d8:	e3a00002 	mov	r0, #2
     5dc:	eb000280 	bl	fe4 <printf>
     5e0:	e1a00000 	nop			@ (mov r0, r0)
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e3a01001 	mov	r1, #1
     5ec:	e1a00003 	mov	r0, r3
     5f0:	ebfffe98 	bl	58 <xchg>
     5f4:	e1a03000 	mov	r3, r0
     5f8:	e3530000 	cmp	r3, #0
     5fc:	1afffff8 	bne	5e4 <acquireLock+0x30>
     600:	e1a00000 	nop			@ (mov r0, r0)
     604:	e1a00000 	nop			@ (mov r0, r0)
     608:	e24bd004 	sub	sp, fp, #4
     60c:	e8bd8800 	pop	{fp, pc}
     610:	000016c0 	.word	0x000016c0

00000614 <releaseLock>:
     614:	e92d4800 	push	{fp, lr}
     618:	e28db004 	add	fp, sp, #4
     61c:	e24dd008 	sub	sp, sp, #8
     620:	e50b0008 	str	r0, [fp, #-8]
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e5933000 	ldr	r3, [r3]
     62c:	e3530001 	cmp	r3, #1
     630:	0a000002 	beq	640 <releaseLock+0x2c>
     634:	e59f1020 	ldr	r1, [pc, #32]	@ 65c <releaseLock+0x48>
     638:	e3a00002 	mov	r0, #2
     63c:	eb000268 	bl	fe4 <printf>
     640:	e51b3008 	ldr	r3, [fp, #-8]
     644:	e3a01000 	mov	r1, #0
     648:	e1a00003 	mov	r0, r3
     64c:	ebfffe81 	bl	58 <xchg>
     650:	e1a00000 	nop			@ (mov r0, r0)
     654:	e24bd004 	sub	sp, fp, #4
     658:	e8bd8800 	pop	{fp, pc}
     65c:	000016f0 	.word	0x000016f0

00000660 <initiateCondVar>:
     660:	e92d4800 	push	{fp, lr}
     664:	e28db004 	add	fp, sp, #4
     668:	e24dd008 	sub	sp, sp, #8
     66c:	e50b0008 	str	r0, [fp, #-8]
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e5933004 	ldr	r3, [r3, #4]
     678:	e3530000 	cmp	r3, #0
     67c:	1a000007 	bne	6a0 <initiateCondVar+0x40>
     680:	eb0001e0 	bl	e08 <getChannel>
     684:	e1a02000 	mov	r2, r0
     688:	e51b3008 	ldr	r3, [fp, #-8]
     68c:	e5832000 	str	r2, [r3]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e3a02001 	mov	r2, #1
     698:	e5832004 	str	r2, [r3, #4]
     69c:	ea000000 	b	6a4 <initiateCondVar+0x44>
     6a0:	e1a00000 	nop			@ (mov r0, r0)
     6a4:	e24bd004 	sub	sp, fp, #4
     6a8:	e8bd8800 	pop	{fp, pc}

000006ac <condWait>:
     6ac:	e92d4800 	push	{fp, lr}
     6b0:	e28db004 	add	fp, sp, #4
     6b4:	e24dd008 	sub	sp, sp, #8
     6b8:	e50b0008 	str	r0, [fp, #-8]
     6bc:	e50b100c 	str	r1, [fp, #-12]
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e5933004 	ldr	r3, [r3, #4]
     6c8:	e3530000 	cmp	r3, #0
     6cc:	1a000003 	bne	6e0 <condWait+0x34>
     6d0:	e59f1050 	ldr	r1, [pc, #80]	@ 728 <condWait+0x7c>
     6d4:	e3a00002 	mov	r0, #2
     6d8:	eb000241 	bl	fe4 <printf>
     6dc:	ea00000f 	b	720 <condWait+0x74>
     6e0:	e51b300c 	ldr	r3, [fp, #-12]
     6e4:	e5933004 	ldr	r3, [r3, #4]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	1a000003 	bne	700 <condWait+0x54>
     6f0:	e59f1034 	ldr	r1, [pc, #52]	@ 72c <condWait+0x80>
     6f4:	e3a00002 	mov	r0, #2
     6f8:	eb000239 	bl	fe4 <printf>
     6fc:	ea000007 	b	720 <condWait+0x74>
     700:	e51b000c 	ldr	r0, [fp, #-12]
     704:	ebffffc2 	bl	614 <releaseLock>
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e5933000 	ldr	r3, [r3]
     710:	e1a00003 	mov	r0, r3
     714:	eb0001b2 	bl	de4 <sleepChan>
     718:	e51b000c 	ldr	r0, [fp, #-12]
     71c:	ebffffa4 	bl	5b4 <acquireLock>
     720:	e24bd004 	sub	sp, fp, #4
     724:	e8bd8800 	pop	{fp, pc}
     728:	0000172c 	.word	0x0000172c
     72c:	00001750 	.word	0x00001750

00000730 <broadcast>:
     730:	e92d4800 	push	{fp, lr}
     734:	e28db004 	add	fp, sp, #4
     738:	e24dd008 	sub	sp, sp, #8
     73c:	e50b0008 	str	r0, [fp, #-8]
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5933004 	ldr	r3, [r3, #4]
     748:	e3530000 	cmp	r3, #0
     74c:	1a000003 	bne	760 <broadcast+0x30>
     750:	e59f1020 	ldr	r1, [pc, #32]	@ 778 <broadcast+0x48>
     754:	e3a00002 	mov	r0, #2
     758:	eb000221 	bl	fe4 <printf>
     75c:	ea000003 	b	770 <broadcast+0x40>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5933000 	ldr	r3, [r3]
     768:	e1a00003 	mov	r0, r3
     76c:	eb0001ae 	bl	e2c <sigChan>
     770:	e24bd004 	sub	sp, fp, #4
     774:	e8bd8800 	pop	{fp, pc}
     778:	0000172c 	.word	0x0000172c

0000077c <signal>:
     77c:	e92d4800 	push	{fp, lr}
     780:	e28db004 	add	fp, sp, #4
     784:	e24dd008 	sub	sp, sp, #8
     788:	e50b0008 	str	r0, [fp, #-8]
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e5933004 	ldr	r3, [r3, #4]
     794:	e3530000 	cmp	r3, #0
     798:	1a000003 	bne	7ac <signal+0x30>
     79c:	e59f1020 	ldr	r1, [pc, #32]	@ 7c4 <signal+0x48>
     7a0:	e3a00002 	mov	r0, #2
     7a4:	eb00020e 	bl	fe4 <printf>
     7a8:	ea000003 	b	7bc <signal+0x40>
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e5933000 	ldr	r3, [r3]
     7b4:	e1a00003 	mov	r0, r3
     7b8:	eb0001a4 	bl	e50 <sigOneChan>
     7bc:	e24bd004 	sub	sp, fp, #4
     7c0:	e8bd8800 	pop	{fp, pc}
     7c4:	0000172c 	.word	0x0000172c

000007c8 <semInit>:
     7c8:	e92d4800 	push	{fp, lr}
     7cc:	e28db004 	add	fp, sp, #4
     7d0:	e24dd008 	sub	sp, sp, #8
     7d4:	e50b0008 	str	r0, [fp, #-8]
     7d8:	e50b100c 	str	r1, [fp, #-12]
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e51b200c 	ldr	r2, [fp, #-12]
     7e4:	e5832000 	str	r2, [r3]
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e2833004 	add	r3, r3, #4
     7f0:	e1a00003 	mov	r0, r3
     7f4:	ebffff60 	bl	57c <initiateLock>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e283300c 	add	r3, r3, #12
     800:	e1a00003 	mov	r0, r3
     804:	ebffff95 	bl	660 <initiateCondVar>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e3a02001 	mov	r2, #1
     810:	e5832014 	str	r2, [r3, #20]
     814:	e1a00000 	nop			@ (mov r0, r0)
     818:	e24bd004 	sub	sp, fp, #4
     81c:	e8bd8800 	pop	{fp, pc}

00000820 <semDown>:
     820:	e92d4800 	push	{fp, lr}
     824:	e28db004 	add	fp, sp, #4
     828:	e24dd008 	sub	sp, sp, #8
     82c:	e50b0008 	str	r0, [fp, #-8]
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e5933014 	ldr	r3, [r3, #20]
     838:	e3530000 	cmp	r3, #0
     83c:	1a000003 	bne	850 <semDown+0x30>
     840:	e59f1074 	ldr	r1, [pc, #116]	@ 8bc <semDown+0x9c>
     844:	e3a00002 	mov	r0, #2
     848:	eb0001e5 	bl	fe4 <printf>
     84c:	ea000018 	b	8b4 <semDown+0x94>
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e2833004 	add	r3, r3, #4
     858:	e1a00003 	mov	r0, r3
     85c:	ebffff54 	bl	5b4 <acquireLock>
     860:	ea000006 	b	880 <semDown+0x60>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e283200c 	add	r2, r3, #12
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e2833004 	add	r3, r3, #4
     874:	e1a01003 	mov	r1, r3
     878:	e1a00002 	mov	r0, r2
     87c:	ebffff8a 	bl	6ac <condWait>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5933000 	ldr	r3, [r3]
     888:	e3530000 	cmp	r3, #0
     88c:	0afffff4 	beq	864 <semDown+0x44>
     890:	e51b3008 	ldr	r3, [fp, #-8]
     894:	e5933000 	ldr	r3, [r3]
     898:	e2432001 	sub	r2, r3, #1
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e5832000 	str	r2, [r3]
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e2833004 	add	r3, r3, #4
     8ac:	e1a00003 	mov	r0, r3
     8b0:	ebffff57 	bl	614 <releaseLock>
     8b4:	e24bd004 	sub	sp, fp, #4
     8b8:	e8bd8800 	pop	{fp, pc}
     8bc:	00001770 	.word	0x00001770

000008c0 <semUp>:
     8c0:	e92d4800 	push	{fp, lr}
     8c4:	e28db004 	add	fp, sp, #4
     8c8:	e24dd008 	sub	sp, sp, #8
     8cc:	e50b0008 	str	r0, [fp, #-8]
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e5933014 	ldr	r3, [r3, #20]
     8d8:	e3530000 	cmp	r3, #0
     8dc:	1a000003 	bne	8f0 <semUp+0x30>
     8e0:	e59f1054 	ldr	r1, [pc, #84]	@ 93c <semUp+0x7c>
     8e4:	e3a00002 	mov	r0, #2
     8e8:	eb0001bd 	bl	fe4 <printf>
     8ec:	ea000010 	b	934 <semUp+0x74>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e2833004 	add	r3, r3, #4
     8f8:	e1a00003 	mov	r0, r3
     8fc:	ebffff2c 	bl	5b4 <acquireLock>
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e5933000 	ldr	r3, [r3]
     908:	e2832001 	add	r2, r3, #1
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5832000 	str	r2, [r3]
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e283300c 	add	r3, r3, #12
     91c:	e1a00003 	mov	r0, r3
     920:	ebffff95 	bl	77c <signal>
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e2833004 	add	r3, r3, #4
     92c:	e1a00003 	mov	r0, r3
     930:	ebffff37 	bl	614 <releaseLock>
     934:	e24bd004 	sub	sp, fp, #4
     938:	e8bd8800 	pop	{fp, pc}
     93c:	00001770 	.word	0x00001770

00000940 <fork>:
     940:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     944:	e1a04003 	mov	r4, r3
     948:	e1a03002 	mov	r3, r2
     94c:	e1a02001 	mov	r2, r1
     950:	e1a01000 	mov	r1, r0
     954:	e3a00001 	mov	r0, #1
     958:	ef000000 	svc	0x00000000
     95c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     960:	e12fff1e 	bx	lr

00000964 <exit>:
     964:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     968:	e1a04003 	mov	r4, r3
     96c:	e1a03002 	mov	r3, r2
     970:	e1a02001 	mov	r2, r1
     974:	e1a01000 	mov	r1, r0
     978:	e3a00002 	mov	r0, #2
     97c:	ef000000 	svc	0x00000000
     980:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     984:	e12fff1e 	bx	lr

00000988 <wait>:
     988:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     98c:	e1a04003 	mov	r4, r3
     990:	e1a03002 	mov	r3, r2
     994:	e1a02001 	mov	r2, r1
     998:	e1a01000 	mov	r1, r0
     99c:	e3a00003 	mov	r0, #3
     9a0:	ef000000 	svc	0x00000000
     9a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <pipe>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00004 	mov	r0, #4
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <read>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00005 	mov	r0, #5
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <write>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00010 	mov	r0, #16
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <close>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00015 	mov	r0, #21
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <kill>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00006 	mov	r0, #6
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <exec>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00007 	mov	r0, #7
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <open>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a0000f 	mov	r0, #15
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <mknod>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00011 	mov	r0, #17
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <unlink>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00012 	mov	r0, #18
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <fstat>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00008 	mov	r0, #8
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <link>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00013 	mov	r0, #19
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <mkdir>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00014 	mov	r0, #20
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <chdir>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00009 	mov	r0, #9
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <dup>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a0000a 	mov	r0, #10
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <getpid>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a0000b 	mov	r0, #11
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <sbrk>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a0000c 	mov	r0, #12
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <sleep>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a0000d 	mov	r0, #13
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <uptime>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a0000e 	mov	r0, #14
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <disproc>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00016 	mov	r0, #22
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <srand>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a00017 	mov	r0, #23
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <setticket>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a00018 	mov	r0, #24
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <getpinfo>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a00019 	mov	r0, #25
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <printPages>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0001a 	mov	r0, #26
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <kpt>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0001b 	mov	r0, #27
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <thread_create>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a0001c 	mov	r0, #28
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <thread_exit>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a0001d 	mov	r0, #29
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <thread_join>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a0001e 	mov	r0, #30
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <waitpid>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a0001f 	mov	r0, #31
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <barrier_init>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a00020 	mov	r0, #32
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <barrier_check>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a00021 	mov	r0, #33	@ 0x21
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <sleepChan>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a00022 	mov	r0, #34	@ 0x22
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <getChannel>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a00023 	mov	r0, #35	@ 0x23
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <sigChan>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a00024 	mov	r0, #36	@ 0x24
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <sigOneChan>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a00025 	mov	r0, #37	@ 0x25
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <putc>:
     e74:	e92d4800 	push	{fp, lr}
     e78:	e28db004 	add	fp, sp, #4
     e7c:	e24dd008 	sub	sp, sp, #8
     e80:	e50b0008 	str	r0, [fp, #-8]
     e84:	e1a03001 	mov	r3, r1
     e88:	e54b3009 	strb	r3, [fp, #-9]
     e8c:	e24b3009 	sub	r3, fp, #9
     e90:	e3a02001 	mov	r2, #1
     e94:	e1a01003 	mov	r1, r3
     e98:	e51b0008 	ldr	r0, [fp, #-8]
     e9c:	ebfffed4 	bl	9f4 <write>
     ea0:	e1a00000 	nop			@ (mov r0, r0)
     ea4:	e24bd004 	sub	sp, fp, #4
     ea8:	e8bd8800 	pop	{fp, pc}

00000eac <printint>:
     eac:	e92d4800 	push	{fp, lr}
     eb0:	e28db004 	add	fp, sp, #4
     eb4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     eb8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ebc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ec0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ec4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ec8:	e3a03000 	mov	r3, #0
     ecc:	e50b300c 	str	r3, [fp, #-12]
     ed0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ed4:	e3530000 	cmp	r3, #0
     ed8:	0a000008 	beq	f00 <printint+0x54>
     edc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ee0:	e3530000 	cmp	r3, #0
     ee4:	aa000005 	bge	f00 <printint+0x54>
     ee8:	e3a03001 	mov	r3, #1
     eec:	e50b300c 	str	r3, [fp, #-12]
     ef0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ef4:	e2633000 	rsb	r3, r3, #0
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	ea000001 	b	f08 <printint+0x5c>
     f00:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f04:	e50b3010 	str	r3, [fp, #-16]
     f08:	e3a03000 	mov	r3, #0
     f0c:	e50b3008 	str	r3, [fp, #-8]
     f10:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f14:	e51b3010 	ldr	r3, [fp, #-16]
     f18:	e1a01002 	mov	r1, r2
     f1c:	e1a00003 	mov	r0, r3
     f20:	eb0001d5 	bl	167c <__aeabi_uidivmod>
     f24:	e1a03001 	mov	r3, r1
     f28:	e1a01003 	mov	r1, r3
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e2832001 	add	r2, r3, #1
     f34:	e50b2008 	str	r2, [fp, #-8]
     f38:	e59f20a0 	ldr	r2, [pc, #160]	@ fe0 <printint+0x134>
     f3c:	e7d22001 	ldrb	r2, [r2, r1]
     f40:	e2433004 	sub	r3, r3, #4
     f44:	e083300b 	add	r3, r3, fp
     f48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f4c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f50:	e1a01003 	mov	r1, r3
     f54:	e51b0010 	ldr	r0, [fp, #-16]
     f58:	eb00018a 	bl	1588 <__udivsi3>
     f5c:	e1a03000 	mov	r3, r0
     f60:	e50b3010 	str	r3, [fp, #-16]
     f64:	e51b3010 	ldr	r3, [fp, #-16]
     f68:	e3530000 	cmp	r3, #0
     f6c:	1affffe7 	bne	f10 <printint+0x64>
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e3530000 	cmp	r3, #0
     f78:	0a00000e 	beq	fb8 <printint+0x10c>
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e2832001 	add	r2, r3, #1
     f84:	e50b2008 	str	r2, [fp, #-8]
     f88:	e2433004 	sub	r3, r3, #4
     f8c:	e083300b 	add	r3, r3, fp
     f90:	e3a0202d 	mov	r2, #45	@ 0x2d
     f94:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f98:	ea000006 	b	fb8 <printint+0x10c>
     f9c:	e24b2020 	sub	r2, fp, #32
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e0823003 	add	r3, r2, r3
     fa8:	e5d33000 	ldrb	r3, [r3]
     fac:	e1a01003 	mov	r1, r3
     fb0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fb4:	ebffffae 	bl	e74 <putc>
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e2433001 	sub	r3, r3, #1
     fc0:	e50b3008 	str	r3, [fp, #-8]
     fc4:	e51b3008 	ldr	r3, [fp, #-8]
     fc8:	e3530000 	cmp	r3, #0
     fcc:	aafffff2 	bge	f9c <printint+0xf0>
     fd0:	e1a00000 	nop			@ (mov r0, r0)
     fd4:	e1a00000 	nop			@ (mov r0, r0)
     fd8:	e24bd004 	sub	sp, fp, #4
     fdc:	e8bd8800 	pop	{fp, pc}
     fe0:	0000179c 	.word	0x0000179c

00000fe4 <printf>:
     fe4:	e92d000e 	push	{r1, r2, r3}
     fe8:	e92d4800 	push	{fp, lr}
     fec:	e28db004 	add	fp, sp, #4
     ff0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ff4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ff8:	e3a03000 	mov	r3, #0
     ffc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1000:	e28b3008 	add	r3, fp, #8
    1004:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1008:	e3a03000 	mov	r3, #0
    100c:	e50b3010 	str	r3, [fp, #-16]
    1010:	ea000074 	b	11e8 <printf+0x204>
    1014:	e59b2004 	ldr	r2, [fp, #4]
    1018:	e51b3010 	ldr	r3, [fp, #-16]
    101c:	e0823003 	add	r3, r2, r3
    1020:	e5d33000 	ldrb	r3, [r3]
    1024:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1028:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    102c:	e3530000 	cmp	r3, #0
    1030:	1a00000b 	bne	1064 <printf+0x80>
    1034:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1038:	e3530025 	cmp	r3, #37	@ 0x25
    103c:	1a000002 	bne	104c <printf+0x68>
    1040:	e3a03025 	mov	r3, #37	@ 0x25
    1044:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1048:	ea000063 	b	11dc <printf+0x1f8>
    104c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1050:	e6ef3073 	uxtb	r3, r3
    1054:	e1a01003 	mov	r1, r3
    1058:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    105c:	ebffff84 	bl	e74 <putc>
    1060:	ea00005d 	b	11dc <printf+0x1f8>
    1064:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1068:	e3530025 	cmp	r3, #37	@ 0x25
    106c:	1a00005a 	bne	11dc <printf+0x1f8>
    1070:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1074:	e3530064 	cmp	r3, #100	@ 0x64
    1078:	1a00000a 	bne	10a8 <printf+0xc4>
    107c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1080:	e5933000 	ldr	r3, [r3]
    1084:	e1a01003 	mov	r1, r3
    1088:	e3a03001 	mov	r3, #1
    108c:	e3a0200a 	mov	r2, #10
    1090:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1094:	ebffff84 	bl	eac <printint>
    1098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    109c:	e2833004 	add	r3, r3, #4
    10a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a4:	ea00004a 	b	11d4 <printf+0x1f0>
    10a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ac:	e3530078 	cmp	r3, #120	@ 0x78
    10b0:	0a000002 	beq	10c0 <printf+0xdc>
    10b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b8:	e3530070 	cmp	r3, #112	@ 0x70
    10bc:	1a00000a 	bne	10ec <printf+0x108>
    10c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e5933000 	ldr	r3, [r3]
    10c8:	e1a01003 	mov	r1, r3
    10cc:	e3a03000 	mov	r3, #0
    10d0:	e3a02010 	mov	r2, #16
    10d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d8:	ebffff73 	bl	eac <printint>
    10dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e2833004 	add	r3, r3, #4
    10e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e8:	ea000039 	b	11d4 <printf+0x1f0>
    10ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f0:	e3530073 	cmp	r3, #115	@ 0x73
    10f4:	1a000018 	bne	115c <printf+0x178>
    10f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e50b300c 	str	r3, [fp, #-12]
    1104:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1108:	e2833004 	add	r3, r3, #4
    110c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e51b300c 	ldr	r3, [fp, #-12]
    1114:	e3530000 	cmp	r3, #0
    1118:	1a00000a 	bne	1148 <printf+0x164>
    111c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1218 <printf+0x234>
    1120:	e50b300c 	str	r3, [fp, #-12]
    1124:	ea000007 	b	1148 <printf+0x164>
    1128:	e51b300c 	ldr	r3, [fp, #-12]
    112c:	e5d33000 	ldrb	r3, [r3]
    1130:	e1a01003 	mov	r1, r3
    1134:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1138:	ebffff4d 	bl	e74 <putc>
    113c:	e51b300c 	ldr	r3, [fp, #-12]
    1140:	e2833001 	add	r3, r3, #1
    1144:	e50b300c 	str	r3, [fp, #-12]
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e5d33000 	ldrb	r3, [r3]
    1150:	e3530000 	cmp	r3, #0
    1154:	1afffff3 	bne	1128 <printf+0x144>
    1158:	ea00001d 	b	11d4 <printf+0x1f0>
    115c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1160:	e3530063 	cmp	r3, #99	@ 0x63
    1164:	1a000009 	bne	1190 <printf+0x1ac>
    1168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    116c:	e5933000 	ldr	r3, [r3]
    1170:	e6ef3073 	uxtb	r3, r3
    1174:	e1a01003 	mov	r1, r3
    1178:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    117c:	ebffff3c 	bl	e74 <putc>
    1180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1184:	e2833004 	add	r3, r3, #4
    1188:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    118c:	ea000010 	b	11d4 <printf+0x1f0>
    1190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1194:	e3530025 	cmp	r3, #37	@ 0x25
    1198:	1a000005 	bne	11b4 <printf+0x1d0>
    119c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a0:	e6ef3073 	uxtb	r3, r3
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ac:	ebffff30 	bl	e74 <putc>
    11b0:	ea000007 	b	11d4 <printf+0x1f0>
    11b4:	e3a01025 	mov	r1, #37	@ 0x25
    11b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11bc:	ebffff2c 	bl	e74 <putc>
    11c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c4:	e6ef3073 	uxtb	r3, r3
    11c8:	e1a01003 	mov	r1, r3
    11cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d0:	ebffff27 	bl	e74 <putc>
    11d4:	e3a03000 	mov	r3, #0
    11d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11dc:	e51b3010 	ldr	r3, [fp, #-16]
    11e0:	e2833001 	add	r3, r3, #1
    11e4:	e50b3010 	str	r3, [fp, #-16]
    11e8:	e59b2004 	ldr	r2, [fp, #4]
    11ec:	e51b3010 	ldr	r3, [fp, #-16]
    11f0:	e0823003 	add	r3, r2, r3
    11f4:	e5d33000 	ldrb	r3, [r3]
    11f8:	e3530000 	cmp	r3, #0
    11fc:	1affff84 	bne	1014 <printf+0x30>
    1200:	e1a00000 	nop			@ (mov r0, r0)
    1204:	e1a00000 	nop			@ (mov r0, r0)
    1208:	e24bd004 	sub	sp, fp, #4
    120c:	e8bd4800 	pop	{fp, lr}
    1210:	e28dd00c 	add	sp, sp, #12
    1214:	e12fff1e 	bx	lr
    1218:	00001794 	.word	0x00001794

0000121c <free>:
    121c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1220:	e28db000 	add	fp, sp, #0
    1224:	e24dd014 	sub	sp, sp, #20
    1228:	e50b0010 	str	r0, [fp, #-16]
    122c:	e51b3010 	ldr	r3, [fp, #-16]
    1230:	e2433008 	sub	r3, r3, #8
    1234:	e50b300c 	str	r3, [fp, #-12]
    1238:	e59f3154 	ldr	r3, [pc, #340]	@ 1394 <free+0x178>
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e50b3008 	str	r3, [fp, #-8]
    1244:	ea000010 	b	128c <free+0x70>
    1248:	e51b3008 	ldr	r3, [fp, #-8]
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e51b2008 	ldr	r2, [fp, #-8]
    1254:	e1520003 	cmp	r2, r3
    1258:	3a000008 	bcc	1280 <free+0x64>
    125c:	e51b200c 	ldr	r2, [fp, #-12]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e1520003 	cmp	r2, r3
    1268:	8a000010 	bhi	12b0 <free+0x94>
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e5933000 	ldr	r3, [r3]
    1274:	e51b200c 	ldr	r2, [fp, #-12]
    1278:	e1520003 	cmp	r2, r3
    127c:	3a00000b 	bcc	12b0 <free+0x94>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e50b3008 	str	r3, [fp, #-8]
    128c:	e51b200c 	ldr	r2, [fp, #-12]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e1520003 	cmp	r2, r3
    1298:	9affffea 	bls	1248 <free+0x2c>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e51b200c 	ldr	r2, [fp, #-12]
    12a8:	e1520003 	cmp	r2, r3
    12ac:	2affffe5 	bcs	1248 <free+0x2c>
    12b0:	e51b300c 	ldr	r3, [fp, #-12]
    12b4:	e5933004 	ldr	r3, [r3, #4]
    12b8:	e1a03183 	lsl	r3, r3, #3
    12bc:	e51b200c 	ldr	r2, [fp, #-12]
    12c0:	e0822003 	add	r2, r2, r3
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e5933000 	ldr	r3, [r3]
    12cc:	e1520003 	cmp	r2, r3
    12d0:	1a00000d 	bne	130c <free+0xf0>
    12d4:	e51b300c 	ldr	r3, [fp, #-12]
    12d8:	e5932004 	ldr	r2, [r3, #4]
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e5933004 	ldr	r3, [r3, #4]
    12e8:	e0822003 	add	r2, r2, r3
    12ec:	e51b300c 	ldr	r3, [fp, #-12]
    12f0:	e5832004 	str	r2, [r3, #4]
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e5932000 	ldr	r2, [r3]
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e5832000 	str	r2, [r3]
    1308:	ea000003 	b	131c <free+0x100>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5932000 	ldr	r2, [r3]
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5832000 	str	r2, [r3]
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5933004 	ldr	r3, [r3, #4]
    1324:	e1a03183 	lsl	r3, r3, #3
    1328:	e51b2008 	ldr	r2, [fp, #-8]
    132c:	e0823003 	add	r3, r2, r3
    1330:	e51b200c 	ldr	r2, [fp, #-12]
    1334:	e1520003 	cmp	r2, r3
    1338:	1a00000b 	bne	136c <free+0x150>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5932004 	ldr	r2, [r3, #4]
    1344:	e51b300c 	ldr	r3, [fp, #-12]
    1348:	e5933004 	ldr	r3, [r3, #4]
    134c:	e0822003 	add	r2, r2, r3
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e5832004 	str	r2, [r3, #4]
    1358:	e51b300c 	ldr	r3, [fp, #-12]
    135c:	e5932000 	ldr	r2, [r3]
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5832000 	str	r2, [r3]
    1368:	ea000002 	b	1378 <free+0x15c>
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e51b200c 	ldr	r2, [fp, #-12]
    1374:	e5832000 	str	r2, [r3]
    1378:	e59f2014 	ldr	r2, [pc, #20]	@ 1394 <free+0x178>
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5823000 	str	r3, [r2]
    1384:	e1a00000 	nop			@ (mov r0, r0)
    1388:	e28bd000 	add	sp, fp, #0
    138c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1390:	e12fff1e 	bx	lr
    1394:	000017b8 	.word	0x000017b8

00001398 <morecore>:
    1398:	e92d4800 	push	{fp, lr}
    139c:	e28db004 	add	fp, sp, #4
    13a0:	e24dd010 	sub	sp, sp, #16
    13a4:	e50b0010 	str	r0, [fp, #-16]
    13a8:	e51b3010 	ldr	r3, [fp, #-16]
    13ac:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13b0:	2a000001 	bcs	13bc <morecore+0x24>
    13b4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13b8:	e50b3010 	str	r3, [fp, #-16]
    13bc:	e51b3010 	ldr	r3, [fp, #-16]
    13c0:	e1a03183 	lsl	r3, r3, #3
    13c4:	e1a00003 	mov	r0, r3
    13c8:	ebfffdfe 	bl	bc8 <sbrk>
    13cc:	e50b0008 	str	r0, [fp, #-8]
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e3730001 	cmn	r3, #1
    13d8:	1a000001 	bne	13e4 <morecore+0x4c>
    13dc:	e3a03000 	mov	r3, #0
    13e0:	ea00000a 	b	1410 <morecore+0x78>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e50b300c 	str	r3, [fp, #-12]
    13ec:	e51b300c 	ldr	r3, [fp, #-12]
    13f0:	e51b2010 	ldr	r2, [fp, #-16]
    13f4:	e5832004 	str	r2, [r3, #4]
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e2833008 	add	r3, r3, #8
    1400:	e1a00003 	mov	r0, r3
    1404:	ebffff84 	bl	121c <free>
    1408:	e59f300c 	ldr	r3, [pc, #12]	@ 141c <morecore+0x84>
    140c:	e5933000 	ldr	r3, [r3]
    1410:	e1a00003 	mov	r0, r3
    1414:	e24bd004 	sub	sp, fp, #4
    1418:	e8bd8800 	pop	{fp, pc}
    141c:	000017b8 	.word	0x000017b8

00001420 <malloc>:
    1420:	e92d4800 	push	{fp, lr}
    1424:	e28db004 	add	fp, sp, #4
    1428:	e24dd018 	sub	sp, sp, #24
    142c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1430:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1434:	e2833007 	add	r3, r3, #7
    1438:	e1a031a3 	lsr	r3, r3, #3
    143c:	e2833001 	add	r3, r3, #1
    1440:	e50b3010 	str	r3, [fp, #-16]
    1444:	e59f3134 	ldr	r3, [pc, #308]	@ 1580 <malloc+0x160>
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e50b300c 	str	r3, [fp, #-12]
    1450:	e51b300c 	ldr	r3, [fp, #-12]
    1454:	e3530000 	cmp	r3, #0
    1458:	1a00000b 	bne	148c <malloc+0x6c>
    145c:	e59f3120 	ldr	r3, [pc, #288]	@ 1584 <malloc+0x164>
    1460:	e50b300c 	str	r3, [fp, #-12]
    1464:	e59f2114 	ldr	r2, [pc, #276]	@ 1580 <malloc+0x160>
    1468:	e51b300c 	ldr	r3, [fp, #-12]
    146c:	e5823000 	str	r3, [r2]
    1470:	e59f3108 	ldr	r3, [pc, #264]	@ 1580 <malloc+0x160>
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e59f2104 	ldr	r2, [pc, #260]	@ 1584 <malloc+0x164>
    147c:	e5823000 	str	r3, [r2]
    1480:	e59f30fc 	ldr	r3, [pc, #252]	@ 1584 <malloc+0x164>
    1484:	e3a02000 	mov	r2, #0
    1488:	e5832004 	str	r2, [r3, #4]
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e5933000 	ldr	r3, [r3]
    1494:	e50b3008 	str	r3, [fp, #-8]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e5933004 	ldr	r3, [r3, #4]
    14a0:	e51b2010 	ldr	r2, [fp, #-16]
    14a4:	e1520003 	cmp	r2, r3
    14a8:	8a00001e 	bhi	1528 <malloc+0x108>
    14ac:	e51b3008 	ldr	r3, [fp, #-8]
    14b0:	e5933004 	ldr	r3, [r3, #4]
    14b4:	e51b2010 	ldr	r2, [fp, #-16]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	1a000004 	bne	14d4 <malloc+0xb4>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5932000 	ldr	r2, [r3]
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5832000 	str	r2, [r3]
    14d0:	ea00000e 	b	1510 <malloc+0xf0>
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e5932004 	ldr	r2, [r3, #4]
    14dc:	e51b3010 	ldr	r3, [fp, #-16]
    14e0:	e0422003 	sub	r2, r2, r3
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5832004 	str	r2, [r3, #4]
    14ec:	e51b3008 	ldr	r3, [fp, #-8]
    14f0:	e5933004 	ldr	r3, [r3, #4]
    14f4:	e1a03183 	lsl	r3, r3, #3
    14f8:	e51b2008 	ldr	r2, [fp, #-8]
    14fc:	e0823003 	add	r3, r2, r3
    1500:	e50b3008 	str	r3, [fp, #-8]
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e51b2010 	ldr	r2, [fp, #-16]
    150c:	e5832004 	str	r2, [r3, #4]
    1510:	e59f2068 	ldr	r2, [pc, #104]	@ 1580 <malloc+0x160>
    1514:	e51b300c 	ldr	r3, [fp, #-12]
    1518:	e5823000 	str	r3, [r2]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e2833008 	add	r3, r3, #8
    1524:	ea000012 	b	1574 <malloc+0x154>
    1528:	e59f3050 	ldr	r3, [pc, #80]	@ 1580 <malloc+0x160>
    152c:	e5933000 	ldr	r3, [r3]
    1530:	e51b2008 	ldr	r2, [fp, #-8]
    1534:	e1520003 	cmp	r2, r3
    1538:	1a000007 	bne	155c <malloc+0x13c>
    153c:	e51b0010 	ldr	r0, [fp, #-16]
    1540:	ebffff94 	bl	1398 <morecore>
    1544:	e50b0008 	str	r0, [fp, #-8]
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e3530000 	cmp	r3, #0
    1550:	1a000001 	bne	155c <malloc+0x13c>
    1554:	e3a03000 	mov	r3, #0
    1558:	ea000005 	b	1574 <malloc+0x154>
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e50b300c 	str	r3, [fp, #-12]
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e50b3008 	str	r3, [fp, #-8]
    1570:	eaffffc8 	b	1498 <malloc+0x78>
    1574:	e1a00003 	mov	r0, r3
    1578:	e24bd004 	sub	sp, fp, #4
    157c:	e8bd8800 	pop	{fp, pc}
    1580:	000017b8 	.word	0x000017b8
    1584:	000017b0 	.word	0x000017b0

00001588 <__udivsi3>:
    1588:	e2512001 	subs	r2, r1, #1
    158c:	012fff1e 	bxeq	lr
    1590:	3a000036 	bcc	1670 <__udivsi3+0xe8>
    1594:	e1500001 	cmp	r0, r1
    1598:	9a000022 	bls	1628 <__udivsi3+0xa0>
    159c:	e1110002 	tst	r1, r2
    15a0:	0a000023 	beq	1634 <__udivsi3+0xac>
    15a4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15a8:	01a01181 	lsleq	r1, r1, #3
    15ac:	03a03008 	moveq	r3, #8
    15b0:	13a03001 	movne	r3, #1
    15b4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15b8:	31510000 	cmpcc	r1, r0
    15bc:	31a01201 	lslcc	r1, r1, #4
    15c0:	31a03203 	lslcc	r3, r3, #4
    15c4:	3afffffa 	bcc	15b4 <__udivsi3+0x2c>
    15c8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15cc:	31510000 	cmpcc	r1, r0
    15d0:	31a01081 	lslcc	r1, r1, #1
    15d4:	31a03083 	lslcc	r3, r3, #1
    15d8:	3afffffa 	bcc	15c8 <__udivsi3+0x40>
    15dc:	e3a02000 	mov	r2, #0
    15e0:	e1500001 	cmp	r0, r1
    15e4:	20400001 	subcs	r0, r0, r1
    15e8:	21822003 	orrcs	r2, r2, r3
    15ec:	e15000a1 	cmp	r0, r1, lsr #1
    15f0:	204000a1 	subcs	r0, r0, r1, lsr #1
    15f4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15f8:	e1500121 	cmp	r0, r1, lsr #2
    15fc:	20400121 	subcs	r0, r0, r1, lsr #2
    1600:	21822123 	orrcs	r2, r2, r3, lsr #2
    1604:	e15001a1 	cmp	r0, r1, lsr #3
    1608:	204001a1 	subcs	r0, r0, r1, lsr #3
    160c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1610:	e3500000 	cmp	r0, #0
    1614:	11b03223 	lsrsne	r3, r3, #4
    1618:	11a01221 	lsrne	r1, r1, #4
    161c:	1affffef 	bne	15e0 <__udivsi3+0x58>
    1620:	e1a00002 	mov	r0, r2
    1624:	e12fff1e 	bx	lr
    1628:	03a00001 	moveq	r0, #1
    162c:	13a00000 	movne	r0, #0
    1630:	e12fff1e 	bx	lr
    1634:	e3510801 	cmp	r1, #65536	@ 0x10000
    1638:	21a01821 	lsrcs	r1, r1, #16
    163c:	23a02010 	movcs	r2, #16
    1640:	33a02000 	movcc	r2, #0
    1644:	e3510c01 	cmp	r1, #256	@ 0x100
    1648:	21a01421 	lsrcs	r1, r1, #8
    164c:	22822008 	addcs	r2, r2, #8
    1650:	e3510010 	cmp	r1, #16
    1654:	21a01221 	lsrcs	r1, r1, #4
    1658:	22822004 	addcs	r2, r2, #4
    165c:	e3510004 	cmp	r1, #4
    1660:	82822003 	addhi	r2, r2, #3
    1664:	908220a1 	addls	r2, r2, r1, lsr #1
    1668:	e1a00230 	lsr	r0, r0, r2
    166c:	e12fff1e 	bx	lr
    1670:	e3500000 	cmp	r0, #0
    1674:	13e00000 	mvnne	r0, #0
    1678:	ea000007 	b	169c <__aeabi_idiv0>

0000167c <__aeabi_uidivmod>:
    167c:	e3510000 	cmp	r1, #0
    1680:	0afffffa 	beq	1670 <__udivsi3+0xe8>
    1684:	e92d4003 	push	{r0, r1, lr}
    1688:	ebffffbe 	bl	1588 <__udivsi3>
    168c:	e8bd4006 	pop	{r1, r2, lr}
    1690:	e0030092 	mul	r3, r2, r0
    1694:	e0411003 	sub	r1, r1, r3
    1698:	e12fff1e 	bx	lr

0000169c <__aeabi_idiv0>:
    169c:	e12fff1e 	bx	lr
