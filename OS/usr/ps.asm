
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530001 	cmp	r3, #1
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f1010 	ldr	r1, [pc, #16]	@ 38 <main+0x38>
      24:	e3a00002 	mov	r0, #2
      28:	eb0003e6 	bl	fc8 <printf>
      2c:	eb000245 	bl	948 <exit>
      30:	eb0002f8 	bl	c18 <disproc>
      34:	eb000243 	bl	948 <exit>
      38:	00001684 	.word	0x00001684

0000003c <xchg>:
      3c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      40:	e28db000 	add	fp, sp, #0
      44:	e24dd014 	sub	sp, sp, #20
      48:	e50b0010 	str	r0, [fp, #-16]
      4c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      50:	e51b1010 	ldr	r1, [fp, #-16]
      54:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      58:	e1912f9f 	ldrex	r2, [r1]
      5c:	e1813f90 	strex	r3, r0, [r1]
      60:	e50b2008 	str	r2, [fp, #-8]
      64:	e50b300c 	str	r3, [fp, #-12]
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e3530000 	cmp	r3, #0
      70:	1afffff6 	bne	50 <xchg+0x14>
      74:	e51b3008 	ldr	r3, [fp, #-8]
      78:	e1a00003 	mov	r0, r3
      7c:	e28bd000 	add	sp, fp, #0
      80:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      84:	e12fff1e 	bx	lr

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb00018c 	bl	9b4 <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb00018f 	bl	a68 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb0001a1 	bl	ad4 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000168 	bl	9fc <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b200c 	ldr	r2, [fp, #-12]
     51c:	e2823001 	add	r3, r2, #1
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2831001 	add	r1, r3, #1
     52c:	e50b1008 	str	r1, [fp, #-8]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <initiateLock>:
     560:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     564:	e28db000 	add	fp, sp, #0
     568:	e24dd00c 	sub	sp, sp, #12
     56c:	e50b0008 	str	r0, [fp, #-8]
     570:	e51b3008 	ldr	r3, [fp, #-8]
     574:	e3a02000 	mov	r2, #0
     578:	e5832000 	str	r2, [r3]
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e3a02001 	mov	r2, #1
     584:	e5832004 	str	r2, [r3, #4]
     588:	e1a00000 	nop			@ (mov r0, r0)
     58c:	e28bd000 	add	sp, fp, #0
     590:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     594:	e12fff1e 	bx	lr

00000598 <acquireLock>:
     598:	e92d4800 	push	{fp, lr}
     59c:	e28db004 	add	fp, sp, #4
     5a0:	e24dd008 	sub	sp, sp, #8
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e5933000 	ldr	r3, [r3]
     5b0:	e3730001 	cmn	r3, #1
     5b4:	1a000002 	bne	5c4 <acquireLock+0x2c>
     5b8:	e59f1034 	ldr	r1, [pc, #52]	@ 5f4 <acquireLock+0x5c>
     5bc:	e3a00002 	mov	r0, #2
     5c0:	eb000280 	bl	fc8 <printf>
     5c4:	e1a00000 	nop			@ (mov r0, r0)
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e3a01001 	mov	r1, #1
     5d0:	e1a00003 	mov	r0, r3
     5d4:	ebfffe98 	bl	3c <xchg>
     5d8:	e1a03000 	mov	r3, r0
     5dc:	e3530000 	cmp	r3, #0
     5e0:	1afffff8 	bne	5c8 <acquireLock+0x30>
     5e4:	e1a00000 	nop			@ (mov r0, r0)
     5e8:	e1a00000 	nop			@ (mov r0, r0)
     5ec:	e24bd004 	sub	sp, fp, #4
     5f0:	e8bd8800 	pop	{fp, pc}
     5f4:	00001698 	.word	0x00001698

000005f8 <releaseLock>:
     5f8:	e92d4800 	push	{fp, lr}
     5fc:	e28db004 	add	fp, sp, #4
     600:	e24dd008 	sub	sp, sp, #8
     604:	e50b0008 	str	r0, [fp, #-8]
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e5933000 	ldr	r3, [r3]
     610:	e3530001 	cmp	r3, #1
     614:	0a000002 	beq	624 <releaseLock+0x2c>
     618:	e59f1020 	ldr	r1, [pc, #32]	@ 640 <releaseLock+0x48>
     61c:	e3a00002 	mov	r0, #2
     620:	eb000268 	bl	fc8 <printf>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e3a01000 	mov	r1, #0
     62c:	e1a00003 	mov	r0, r3
     630:	ebfffe81 	bl	3c <xchg>
     634:	e1a00000 	nop			@ (mov r0, r0)
     638:	e24bd004 	sub	sp, fp, #4
     63c:	e8bd8800 	pop	{fp, pc}
     640:	000016c8 	.word	0x000016c8

00000644 <initiateCondVar>:
     644:	e92d4800 	push	{fp, lr}
     648:	e28db004 	add	fp, sp, #4
     64c:	e24dd008 	sub	sp, sp, #8
     650:	e50b0008 	str	r0, [fp, #-8]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5933004 	ldr	r3, [r3, #4]
     65c:	e3530000 	cmp	r3, #0
     660:	1a000007 	bne	684 <initiateCondVar+0x40>
     664:	eb0001e0 	bl	dec <getChannel>
     668:	e1a02000 	mov	r2, r0
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e5832000 	str	r2, [r3]
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e3a02001 	mov	r2, #1
     67c:	e5832004 	str	r2, [r3, #4]
     680:	ea000000 	b	688 <initiateCondVar+0x44>
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	e24bd004 	sub	sp, fp, #4
     68c:	e8bd8800 	pop	{fp, pc}

00000690 <condWait>:
     690:	e92d4800 	push	{fp, lr}
     694:	e28db004 	add	fp, sp, #4
     698:	e24dd008 	sub	sp, sp, #8
     69c:	e50b0008 	str	r0, [fp, #-8]
     6a0:	e50b100c 	str	r1, [fp, #-12]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5933004 	ldr	r3, [r3, #4]
     6ac:	e3530000 	cmp	r3, #0
     6b0:	1a000003 	bne	6c4 <condWait+0x34>
     6b4:	e59f1050 	ldr	r1, [pc, #80]	@ 70c <condWait+0x7c>
     6b8:	e3a00002 	mov	r0, #2
     6bc:	eb000241 	bl	fc8 <printf>
     6c0:	ea00000f 	b	704 <condWait+0x74>
     6c4:	e51b300c 	ldr	r3, [fp, #-12]
     6c8:	e5933004 	ldr	r3, [r3, #4]
     6cc:	e3530000 	cmp	r3, #0
     6d0:	1a000003 	bne	6e4 <condWait+0x54>
     6d4:	e59f1034 	ldr	r1, [pc, #52]	@ 710 <condWait+0x80>
     6d8:	e3a00002 	mov	r0, #2
     6dc:	eb000239 	bl	fc8 <printf>
     6e0:	ea000007 	b	704 <condWait+0x74>
     6e4:	e51b000c 	ldr	r0, [fp, #-12]
     6e8:	ebffffc2 	bl	5f8 <releaseLock>
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e5933000 	ldr	r3, [r3]
     6f4:	e1a00003 	mov	r0, r3
     6f8:	eb0001b2 	bl	dc8 <sleepChan>
     6fc:	e51b000c 	ldr	r0, [fp, #-12]
     700:	ebffffa4 	bl	598 <acquireLock>
     704:	e24bd004 	sub	sp, fp, #4
     708:	e8bd8800 	pop	{fp, pc}
     70c:	00001704 	.word	0x00001704
     710:	00001728 	.word	0x00001728

00000714 <broadcast>:
     714:	e92d4800 	push	{fp, lr}
     718:	e28db004 	add	fp, sp, #4
     71c:	e24dd008 	sub	sp, sp, #8
     720:	e50b0008 	str	r0, [fp, #-8]
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5933004 	ldr	r3, [r3, #4]
     72c:	e3530000 	cmp	r3, #0
     730:	1a000003 	bne	744 <broadcast+0x30>
     734:	e59f1020 	ldr	r1, [pc, #32]	@ 75c <broadcast+0x48>
     738:	e3a00002 	mov	r0, #2
     73c:	eb000221 	bl	fc8 <printf>
     740:	ea000003 	b	754 <broadcast+0x40>
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e5933000 	ldr	r3, [r3]
     74c:	e1a00003 	mov	r0, r3
     750:	eb0001ae 	bl	e10 <sigChan>
     754:	e24bd004 	sub	sp, fp, #4
     758:	e8bd8800 	pop	{fp, pc}
     75c:	00001704 	.word	0x00001704

00000760 <signal>:
     760:	e92d4800 	push	{fp, lr}
     764:	e28db004 	add	fp, sp, #4
     768:	e24dd008 	sub	sp, sp, #8
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e5933004 	ldr	r3, [r3, #4]
     778:	e3530000 	cmp	r3, #0
     77c:	1a000003 	bne	790 <signal+0x30>
     780:	e59f1020 	ldr	r1, [pc, #32]	@ 7a8 <signal+0x48>
     784:	e3a00002 	mov	r0, #2
     788:	eb00020e 	bl	fc8 <printf>
     78c:	ea000003 	b	7a0 <signal+0x40>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5933000 	ldr	r3, [r3]
     798:	e1a00003 	mov	r0, r3
     79c:	eb0001a4 	bl	e34 <sigOneChan>
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}
     7a8:	00001704 	.word	0x00001704

000007ac <semInit>:
     7ac:	e92d4800 	push	{fp, lr}
     7b0:	e28db004 	add	fp, sp, #4
     7b4:	e24dd008 	sub	sp, sp, #8
     7b8:	e50b0008 	str	r0, [fp, #-8]
     7bc:	e50b100c 	str	r1, [fp, #-12]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e51b200c 	ldr	r2, [fp, #-12]
     7c8:	e5832000 	str	r2, [r3]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e2833004 	add	r3, r3, #4
     7d4:	e1a00003 	mov	r0, r3
     7d8:	ebffff60 	bl	560 <initiateLock>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e283300c 	add	r3, r3, #12
     7e4:	e1a00003 	mov	r0, r3
     7e8:	ebffff95 	bl	644 <initiateCondVar>
     7ec:	e51b3008 	ldr	r3, [fp, #-8]
     7f0:	e3a02001 	mov	r2, #1
     7f4:	e5832014 	str	r2, [r3, #20]
     7f8:	e1a00000 	nop			@ (mov r0, r0)
     7fc:	e24bd004 	sub	sp, fp, #4
     800:	e8bd8800 	pop	{fp, pc}

00000804 <semDown>:
     804:	e92d4800 	push	{fp, lr}
     808:	e28db004 	add	fp, sp, #4
     80c:	e24dd008 	sub	sp, sp, #8
     810:	e50b0008 	str	r0, [fp, #-8]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5933014 	ldr	r3, [r3, #20]
     81c:	e3530000 	cmp	r3, #0
     820:	1a000003 	bne	834 <semDown+0x30>
     824:	e59f1074 	ldr	r1, [pc, #116]	@ 8a0 <semDown+0x9c>
     828:	e3a00002 	mov	r0, #2
     82c:	eb0001e5 	bl	fc8 <printf>
     830:	ea000018 	b	898 <semDown+0x94>
     834:	e51b3008 	ldr	r3, [fp, #-8]
     838:	e2833004 	add	r3, r3, #4
     83c:	e1a00003 	mov	r0, r3
     840:	ebffff54 	bl	598 <acquireLock>
     844:	ea000006 	b	864 <semDown+0x60>
     848:	e51b3008 	ldr	r3, [fp, #-8]
     84c:	e283200c 	add	r2, r3, #12
     850:	e51b3008 	ldr	r3, [fp, #-8]
     854:	e2833004 	add	r3, r3, #4
     858:	e1a01003 	mov	r1, r3
     85c:	e1a00002 	mov	r0, r2
     860:	ebffff8a 	bl	690 <condWait>
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e5933000 	ldr	r3, [r3]
     86c:	e3530000 	cmp	r3, #0
     870:	0afffff4 	beq	848 <semDown+0x44>
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5933000 	ldr	r3, [r3]
     87c:	e2432001 	sub	r2, r3, #1
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e5832000 	str	r2, [r3]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833004 	add	r3, r3, #4
     890:	e1a00003 	mov	r0, r3
     894:	ebffff57 	bl	5f8 <releaseLock>
     898:	e24bd004 	sub	sp, fp, #4
     89c:	e8bd8800 	pop	{fp, pc}
     8a0:	00001748 	.word	0x00001748

000008a4 <semUp>:
     8a4:	e92d4800 	push	{fp, lr}
     8a8:	e28db004 	add	fp, sp, #4
     8ac:	e24dd008 	sub	sp, sp, #8
     8b0:	e50b0008 	str	r0, [fp, #-8]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e5933014 	ldr	r3, [r3, #20]
     8bc:	e3530000 	cmp	r3, #0
     8c0:	1a000003 	bne	8d4 <semUp+0x30>
     8c4:	e59f1054 	ldr	r1, [pc, #84]	@ 920 <semUp+0x7c>
     8c8:	e3a00002 	mov	r0, #2
     8cc:	eb0001bd 	bl	fc8 <printf>
     8d0:	ea000010 	b	918 <semUp+0x74>
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e2833004 	add	r3, r3, #4
     8dc:	e1a00003 	mov	r0, r3
     8e0:	ebffff2c 	bl	598 <acquireLock>
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e5933000 	ldr	r3, [r3]
     8ec:	e2832001 	add	r2, r3, #1
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e5832000 	str	r2, [r3]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e283300c 	add	r3, r3, #12
     900:	e1a00003 	mov	r0, r3
     904:	ebffff95 	bl	760 <signal>
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e2833004 	add	r3, r3, #4
     910:	e1a00003 	mov	r0, r3
     914:	ebffff37 	bl	5f8 <releaseLock>
     918:	e24bd004 	sub	sp, fp, #4
     91c:	e8bd8800 	pop	{fp, pc}
     920:	00001748 	.word	0x00001748

00000924 <fork>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a00001 	mov	r0, #1
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <exit>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00002 	mov	r0, #2
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <wait>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00003 	mov	r0, #3
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <pipe>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00004 	mov	r0, #4
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <read>:
     9b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b8:	e1a04003 	mov	r4, r3
     9bc:	e1a03002 	mov	r3, r2
     9c0:	e1a02001 	mov	r2, r1
     9c4:	e1a01000 	mov	r1, r0
     9c8:	e3a00005 	mov	r0, #5
     9cc:	ef000000 	svc	0x00000000
     9d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d4:	e12fff1e 	bx	lr

000009d8 <write>:
     9d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9dc:	e1a04003 	mov	r4, r3
     9e0:	e1a03002 	mov	r3, r2
     9e4:	e1a02001 	mov	r2, r1
     9e8:	e1a01000 	mov	r1, r0
     9ec:	e3a00010 	mov	r0, #16
     9f0:	ef000000 	svc	0x00000000
     9f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f8:	e12fff1e 	bx	lr

000009fc <close>:
     9fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a00:	e1a04003 	mov	r4, r3
     a04:	e1a03002 	mov	r3, r2
     a08:	e1a02001 	mov	r2, r1
     a0c:	e1a01000 	mov	r1, r0
     a10:	e3a00015 	mov	r0, #21
     a14:	ef000000 	svc	0x00000000
     a18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a1c:	e12fff1e 	bx	lr

00000a20 <kill>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00006 	mov	r0, #6
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <exec>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00007 	mov	r0, #7
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <open>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a0000f 	mov	r0, #15
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <mknod>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00011 	mov	r0, #17
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <unlink>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00012 	mov	r0, #18
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <fstat>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00008 	mov	r0, #8
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <link>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00013 	mov	r0, #19
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <mkdir>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00014 	mov	r0, #20
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <chdir>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00009 	mov	r0, #9
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <dup>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a0000a 	mov	r0, #10
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <getpid>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a0000b 	mov	r0, #11
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <sbrk>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a0000c 	mov	r0, #12
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <sleep>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a0000d 	mov	r0, #13
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <uptime>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a0000e 	mov	r0, #14
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <disproc>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a00016 	mov	r0, #22
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <srand>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00017 	mov	r0, #23
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <setticket>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a00018 	mov	r0, #24
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <getpinfo>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a00019 	mov	r0, #25
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <printPages>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a0001a 	mov	r0, #26
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <kpt>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a0001b 	mov	r0, #27
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <thread_create>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a0001c 	mov	r0, #28
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <thread_exit>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a0001d 	mov	r0, #29
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <thread_join>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a0001e 	mov	r0, #30
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <waitpid>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a0001f 	mov	r0, #31
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <barrier_init>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00020 	mov	r0, #32
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <barrier_check>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a00021 	mov	r0, #33	@ 0x21
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <sleepChan>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a00022 	mov	r0, #34	@ 0x22
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <getChannel>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a00023 	mov	r0, #35	@ 0x23
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <sigChan>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a00024 	mov	r0, #36	@ 0x24
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <sigOneChan>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a00025 	mov	r0, #37	@ 0x25
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <putc>:
     e58:	e92d4800 	push	{fp, lr}
     e5c:	e28db004 	add	fp, sp, #4
     e60:	e24dd008 	sub	sp, sp, #8
     e64:	e50b0008 	str	r0, [fp, #-8]
     e68:	e1a03001 	mov	r3, r1
     e6c:	e54b3009 	strb	r3, [fp, #-9]
     e70:	e24b3009 	sub	r3, fp, #9
     e74:	e3a02001 	mov	r2, #1
     e78:	e1a01003 	mov	r1, r3
     e7c:	e51b0008 	ldr	r0, [fp, #-8]
     e80:	ebfffed4 	bl	9d8 <write>
     e84:	e1a00000 	nop			@ (mov r0, r0)
     e88:	e24bd004 	sub	sp, fp, #4
     e8c:	e8bd8800 	pop	{fp, pc}

00000e90 <printint>:
     e90:	e92d4800 	push	{fp, lr}
     e94:	e28db004 	add	fp, sp, #4
     e98:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e9c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ea0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ea4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ea8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     eac:	e3a03000 	mov	r3, #0
     eb0:	e50b300c 	str	r3, [fp, #-12]
     eb4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     eb8:	e3530000 	cmp	r3, #0
     ebc:	0a000008 	beq	ee4 <printint+0x54>
     ec0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ec4:	e3530000 	cmp	r3, #0
     ec8:	aa000005 	bge	ee4 <printint+0x54>
     ecc:	e3a03001 	mov	r3, #1
     ed0:	e50b300c 	str	r3, [fp, #-12]
     ed4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ed8:	e2633000 	rsb	r3, r3, #0
     edc:	e50b3010 	str	r3, [fp, #-16]
     ee0:	ea000001 	b	eec <printint+0x5c>
     ee4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ee8:	e50b3010 	str	r3, [fp, #-16]
     eec:	e3a03000 	mov	r3, #0
     ef0:	e50b3008 	str	r3, [fp, #-8]
     ef4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ef8:	e51b3010 	ldr	r3, [fp, #-16]
     efc:	e1a01002 	mov	r1, r2
     f00:	e1a00003 	mov	r0, r3
     f04:	eb0001d5 	bl	1660 <__aeabi_uidivmod>
     f08:	e1a03001 	mov	r3, r1
     f0c:	e1a01003 	mov	r1, r3
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e2832001 	add	r2, r3, #1
     f18:	e50b2008 	str	r2, [fp, #-8]
     f1c:	e59f20a0 	ldr	r2, [pc, #160]	@ fc4 <printint+0x134>
     f20:	e7d22001 	ldrb	r2, [r2, r1]
     f24:	e2433004 	sub	r3, r3, #4
     f28:	e083300b 	add	r3, r3, fp
     f2c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f30:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f34:	e1a01003 	mov	r1, r3
     f38:	e51b0010 	ldr	r0, [fp, #-16]
     f3c:	eb00018a 	bl	156c <__udivsi3>
     f40:	e1a03000 	mov	r3, r0
     f44:	e50b3010 	str	r3, [fp, #-16]
     f48:	e51b3010 	ldr	r3, [fp, #-16]
     f4c:	e3530000 	cmp	r3, #0
     f50:	1affffe7 	bne	ef4 <printint+0x64>
     f54:	e51b300c 	ldr	r3, [fp, #-12]
     f58:	e3530000 	cmp	r3, #0
     f5c:	0a00000e 	beq	f9c <printint+0x10c>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e2832001 	add	r2, r3, #1
     f68:	e50b2008 	str	r2, [fp, #-8]
     f6c:	e2433004 	sub	r3, r3, #4
     f70:	e083300b 	add	r3, r3, fp
     f74:	e3a0202d 	mov	r2, #45	@ 0x2d
     f78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f7c:	ea000006 	b	f9c <printint+0x10c>
     f80:	e24b2020 	sub	r2, fp, #32
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e0823003 	add	r3, r2, r3
     f8c:	e5d33000 	ldrb	r3, [r3]
     f90:	e1a01003 	mov	r1, r3
     f94:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f98:	ebffffae 	bl	e58 <putc>
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e2433001 	sub	r3, r3, #1
     fa4:	e50b3008 	str	r3, [fp, #-8]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e3530000 	cmp	r3, #0
     fb0:	aafffff2 	bge	f80 <printint+0xf0>
     fb4:	e1a00000 	nop			@ (mov r0, r0)
     fb8:	e1a00000 	nop			@ (mov r0, r0)
     fbc:	e24bd004 	sub	sp, fp, #4
     fc0:	e8bd8800 	pop	{fp, pc}
     fc4:	00001774 	.word	0x00001774

00000fc8 <printf>:
     fc8:	e92d000e 	push	{r1, r2, r3}
     fcc:	e92d4800 	push	{fp, lr}
     fd0:	e28db004 	add	fp, sp, #4
     fd4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fd8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fdc:	e3a03000 	mov	r3, #0
     fe0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fe4:	e28b3008 	add	r3, fp, #8
     fe8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fec:	e3a03000 	mov	r3, #0
     ff0:	e50b3010 	str	r3, [fp, #-16]
     ff4:	ea000074 	b	11cc <printf+0x204>
     ff8:	e59b2004 	ldr	r2, [fp, #4]
     ffc:	e51b3010 	ldr	r3, [fp, #-16]
    1000:	e0823003 	add	r3, r2, r3
    1004:	e5d33000 	ldrb	r3, [r3]
    1008:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    100c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1010:	e3530000 	cmp	r3, #0
    1014:	1a00000b 	bne	1048 <printf+0x80>
    1018:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    101c:	e3530025 	cmp	r3, #37	@ 0x25
    1020:	1a000002 	bne	1030 <printf+0x68>
    1024:	e3a03025 	mov	r3, #37	@ 0x25
    1028:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    102c:	ea000063 	b	11c0 <printf+0x1f8>
    1030:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1034:	e6ef3073 	uxtb	r3, r3
    1038:	e1a01003 	mov	r1, r3
    103c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1040:	ebffff84 	bl	e58 <putc>
    1044:	ea00005d 	b	11c0 <printf+0x1f8>
    1048:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    104c:	e3530025 	cmp	r3, #37	@ 0x25
    1050:	1a00005a 	bne	11c0 <printf+0x1f8>
    1054:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1058:	e3530064 	cmp	r3, #100	@ 0x64
    105c:	1a00000a 	bne	108c <printf+0xc4>
    1060:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e1a01003 	mov	r1, r3
    106c:	e3a03001 	mov	r3, #1
    1070:	e3a0200a 	mov	r2, #10
    1074:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1078:	ebffff84 	bl	e90 <printint>
    107c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1080:	e2833004 	add	r3, r3, #4
    1084:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1088:	ea00004a 	b	11b8 <printf+0x1f0>
    108c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1090:	e3530078 	cmp	r3, #120	@ 0x78
    1094:	0a000002 	beq	10a4 <printf+0xdc>
    1098:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    109c:	e3530070 	cmp	r3, #112	@ 0x70
    10a0:	1a00000a 	bne	10d0 <printf+0x108>
    10a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e1a01003 	mov	r1, r3
    10b0:	e3a03000 	mov	r3, #0
    10b4:	e3a02010 	mov	r2, #16
    10b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10bc:	ebffff73 	bl	e90 <printint>
    10c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c4:	e2833004 	add	r3, r3, #4
    10c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10cc:	ea000039 	b	11b8 <printf+0x1f0>
    10d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d4:	e3530073 	cmp	r3, #115	@ 0x73
    10d8:	1a000018 	bne	1140 <printf+0x178>
    10dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e5933000 	ldr	r3, [r3]
    10e4:	e50b300c 	str	r3, [fp, #-12]
    10e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10ec:	e2833004 	add	r3, r3, #4
    10f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e3530000 	cmp	r3, #0
    10fc:	1a00000a 	bne	112c <printf+0x164>
    1100:	e59f30f4 	ldr	r3, [pc, #244]	@ 11fc <printf+0x234>
    1104:	e50b300c 	str	r3, [fp, #-12]
    1108:	ea000007 	b	112c <printf+0x164>
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5d33000 	ldrb	r3, [r3]
    1114:	e1a01003 	mov	r1, r3
    1118:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    111c:	ebffff4d 	bl	e58 <putc>
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e2833001 	add	r3, r3, #1
    1128:	e50b300c 	str	r3, [fp, #-12]
    112c:	e51b300c 	ldr	r3, [fp, #-12]
    1130:	e5d33000 	ldrb	r3, [r3]
    1134:	e3530000 	cmp	r3, #0
    1138:	1afffff3 	bne	110c <printf+0x144>
    113c:	ea00001d 	b	11b8 <printf+0x1f0>
    1140:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1144:	e3530063 	cmp	r3, #99	@ 0x63
    1148:	1a000009 	bne	1174 <printf+0x1ac>
    114c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e5933000 	ldr	r3, [r3]
    1154:	e6ef3073 	uxtb	r3, r3
    1158:	e1a01003 	mov	r1, r3
    115c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1160:	ebffff3c 	bl	e58 <putc>
    1164:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1168:	e2833004 	add	r3, r3, #4
    116c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1170:	ea000010 	b	11b8 <printf+0x1f0>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e3530025 	cmp	r3, #37	@ 0x25
    117c:	1a000005 	bne	1198 <printf+0x1d0>
    1180:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1184:	e6ef3073 	uxtb	r3, r3
    1188:	e1a01003 	mov	r1, r3
    118c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1190:	ebffff30 	bl	e58 <putc>
    1194:	ea000007 	b	11b8 <printf+0x1f0>
    1198:	e3a01025 	mov	r1, #37	@ 0x25
    119c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a0:	ebffff2c 	bl	e58 <putc>
    11a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11a8:	e6ef3073 	uxtb	r3, r3
    11ac:	e1a01003 	mov	r1, r3
    11b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	ebffff27 	bl	e58 <putc>
    11b8:	e3a03000 	mov	r3, #0
    11bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11c0:	e51b3010 	ldr	r3, [fp, #-16]
    11c4:	e2833001 	add	r3, r3, #1
    11c8:	e50b3010 	str	r3, [fp, #-16]
    11cc:	e59b2004 	ldr	r2, [fp, #4]
    11d0:	e51b3010 	ldr	r3, [fp, #-16]
    11d4:	e0823003 	add	r3, r2, r3
    11d8:	e5d33000 	ldrb	r3, [r3]
    11dc:	e3530000 	cmp	r3, #0
    11e0:	1affff84 	bne	ff8 <printf+0x30>
    11e4:	e1a00000 	nop			@ (mov r0, r0)
    11e8:	e1a00000 	nop			@ (mov r0, r0)
    11ec:	e24bd004 	sub	sp, fp, #4
    11f0:	e8bd4800 	pop	{fp, lr}
    11f4:	e28dd00c 	add	sp, sp, #12
    11f8:	e12fff1e 	bx	lr
    11fc:	0000176c 	.word	0x0000176c

00001200 <free>:
    1200:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1204:	e28db000 	add	fp, sp, #0
    1208:	e24dd014 	sub	sp, sp, #20
    120c:	e50b0010 	str	r0, [fp, #-16]
    1210:	e51b3010 	ldr	r3, [fp, #-16]
    1214:	e2433008 	sub	r3, r3, #8
    1218:	e50b300c 	str	r3, [fp, #-12]
    121c:	e59f3154 	ldr	r3, [pc, #340]	@ 1378 <free+0x178>
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e50b3008 	str	r3, [fp, #-8]
    1228:	ea000010 	b	1270 <free+0x70>
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e5933000 	ldr	r3, [r3]
    1234:	e51b2008 	ldr	r2, [fp, #-8]
    1238:	e1520003 	cmp	r2, r3
    123c:	3a000008 	bcc	1264 <free+0x64>
    1240:	e51b200c 	ldr	r2, [fp, #-12]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e1520003 	cmp	r2, r3
    124c:	8a000010 	bhi	1294 <free+0x94>
    1250:	e51b3008 	ldr	r3, [fp, #-8]
    1254:	e5933000 	ldr	r3, [r3]
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e1520003 	cmp	r2, r3
    1260:	3a00000b 	bcc	1294 <free+0x94>
    1264:	e51b3008 	ldr	r3, [fp, #-8]
    1268:	e5933000 	ldr	r3, [r3]
    126c:	e50b3008 	str	r3, [fp, #-8]
    1270:	e51b200c 	ldr	r2, [fp, #-12]
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e1520003 	cmp	r2, r3
    127c:	9affffea 	bls	122c <free+0x2c>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e1520003 	cmp	r2, r3
    1290:	2affffe5 	bcs	122c <free+0x2c>
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e5933004 	ldr	r3, [r3, #4]
    129c:	e1a03183 	lsl	r3, r3, #3
    12a0:	e51b200c 	ldr	r2, [fp, #-12]
    12a4:	e0822003 	add	r2, r2, r3
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	1a00000d 	bne	12f0 <free+0xf0>
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5932004 	ldr	r2, [r3, #4]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e5933004 	ldr	r3, [r3, #4]
    12cc:	e0822003 	add	r2, r2, r3
    12d0:	e51b300c 	ldr	r3, [fp, #-12]
    12d4:	e5832004 	str	r2, [r3, #4]
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e5932000 	ldr	r2, [r3]
    12e4:	e51b300c 	ldr	r3, [fp, #-12]
    12e8:	e5832000 	str	r2, [r3]
    12ec:	ea000003 	b	1300 <free+0x100>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5932000 	ldr	r2, [r3]
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e5832000 	str	r2, [r3]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e5933004 	ldr	r3, [r3, #4]
    1308:	e1a03183 	lsl	r3, r3, #3
    130c:	e51b2008 	ldr	r2, [fp, #-8]
    1310:	e0823003 	add	r3, r2, r3
    1314:	e51b200c 	ldr	r2, [fp, #-12]
    1318:	e1520003 	cmp	r2, r3
    131c:	1a00000b 	bne	1350 <free+0x150>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5932004 	ldr	r2, [r3, #4]
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5933004 	ldr	r3, [r3, #4]
    1330:	e0822003 	add	r2, r2, r3
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5832004 	str	r2, [r3, #4]
    133c:	e51b300c 	ldr	r3, [fp, #-12]
    1340:	e5932000 	ldr	r2, [r3]
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5832000 	str	r2, [r3]
    134c:	ea000002 	b	135c <free+0x15c>
    1350:	e51b3008 	ldr	r3, [fp, #-8]
    1354:	e51b200c 	ldr	r2, [fp, #-12]
    1358:	e5832000 	str	r2, [r3]
    135c:	e59f2014 	ldr	r2, [pc, #20]	@ 1378 <free+0x178>
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5823000 	str	r3, [r2]
    1368:	e1a00000 	nop			@ (mov r0, r0)
    136c:	e28bd000 	add	sp, fp, #0
    1370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1374:	e12fff1e 	bx	lr
    1378:	00001790 	.word	0x00001790

0000137c <morecore>:
    137c:	e92d4800 	push	{fp, lr}
    1380:	e28db004 	add	fp, sp, #4
    1384:	e24dd010 	sub	sp, sp, #16
    1388:	e50b0010 	str	r0, [fp, #-16]
    138c:	e51b3010 	ldr	r3, [fp, #-16]
    1390:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1394:	2a000001 	bcs	13a0 <morecore+0x24>
    1398:	e3a03a01 	mov	r3, #4096	@ 0x1000
    139c:	e50b3010 	str	r3, [fp, #-16]
    13a0:	e51b3010 	ldr	r3, [fp, #-16]
    13a4:	e1a03183 	lsl	r3, r3, #3
    13a8:	e1a00003 	mov	r0, r3
    13ac:	ebfffdfe 	bl	bac <sbrk>
    13b0:	e50b0008 	str	r0, [fp, #-8]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e3730001 	cmn	r3, #1
    13bc:	1a000001 	bne	13c8 <morecore+0x4c>
    13c0:	e3a03000 	mov	r3, #0
    13c4:	ea00000a 	b	13f4 <morecore+0x78>
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e50b300c 	str	r3, [fp, #-12]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e51b2010 	ldr	r2, [fp, #-16]
    13d8:	e5832004 	str	r2, [r3, #4]
    13dc:	e51b300c 	ldr	r3, [fp, #-12]
    13e0:	e2833008 	add	r3, r3, #8
    13e4:	e1a00003 	mov	r0, r3
    13e8:	ebffff84 	bl	1200 <free>
    13ec:	e59f300c 	ldr	r3, [pc, #12]	@ 1400 <morecore+0x84>
    13f0:	e5933000 	ldr	r3, [r3]
    13f4:	e1a00003 	mov	r0, r3
    13f8:	e24bd004 	sub	sp, fp, #4
    13fc:	e8bd8800 	pop	{fp, pc}
    1400:	00001790 	.word	0x00001790

00001404 <malloc>:
    1404:	e92d4800 	push	{fp, lr}
    1408:	e28db004 	add	fp, sp, #4
    140c:	e24dd018 	sub	sp, sp, #24
    1410:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1414:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1418:	e2833007 	add	r3, r3, #7
    141c:	e1a031a3 	lsr	r3, r3, #3
    1420:	e2833001 	add	r3, r3, #1
    1424:	e50b3010 	str	r3, [fp, #-16]
    1428:	e59f3134 	ldr	r3, [pc, #308]	@ 1564 <malloc+0x160>
    142c:	e5933000 	ldr	r3, [r3]
    1430:	e50b300c 	str	r3, [fp, #-12]
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e3530000 	cmp	r3, #0
    143c:	1a00000b 	bne	1470 <malloc+0x6c>
    1440:	e59f3120 	ldr	r3, [pc, #288]	@ 1568 <malloc+0x164>
    1444:	e50b300c 	str	r3, [fp, #-12]
    1448:	e59f2114 	ldr	r2, [pc, #276]	@ 1564 <malloc+0x160>
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e5823000 	str	r3, [r2]
    1454:	e59f3108 	ldr	r3, [pc, #264]	@ 1564 <malloc+0x160>
    1458:	e5933000 	ldr	r3, [r3]
    145c:	e59f2104 	ldr	r2, [pc, #260]	@ 1568 <malloc+0x164>
    1460:	e5823000 	str	r3, [r2]
    1464:	e59f30fc 	ldr	r3, [pc, #252]	@ 1568 <malloc+0x164>
    1468:	e3a02000 	mov	r2, #0
    146c:	e5832004 	str	r2, [r3, #4]
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5933000 	ldr	r3, [r3]
    1478:	e50b3008 	str	r3, [fp, #-8]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933004 	ldr	r3, [r3, #4]
    1484:	e51b2010 	ldr	r2, [fp, #-16]
    1488:	e1520003 	cmp	r2, r3
    148c:	8a00001e 	bhi	150c <malloc+0x108>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5933004 	ldr	r3, [r3, #4]
    1498:	e51b2010 	ldr	r2, [fp, #-16]
    149c:	e1520003 	cmp	r2, r3
    14a0:	1a000004 	bne	14b8 <malloc+0xb4>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e5932000 	ldr	r2, [r3]
    14ac:	e51b300c 	ldr	r3, [fp, #-12]
    14b0:	e5832000 	str	r2, [r3]
    14b4:	ea00000e 	b	14f4 <malloc+0xf0>
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5932004 	ldr	r2, [r3, #4]
    14c0:	e51b3010 	ldr	r3, [fp, #-16]
    14c4:	e0422003 	sub	r2, r2, r3
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5832004 	str	r2, [r3, #4]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933004 	ldr	r3, [r3, #4]
    14d8:	e1a03183 	lsl	r3, r3, #3
    14dc:	e51b2008 	ldr	r2, [fp, #-8]
    14e0:	e0823003 	add	r3, r2, r3
    14e4:	e50b3008 	str	r3, [fp, #-8]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e51b2010 	ldr	r2, [fp, #-16]
    14f0:	e5832004 	str	r2, [r3, #4]
    14f4:	e59f2068 	ldr	r2, [pc, #104]	@ 1564 <malloc+0x160>
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e5823000 	str	r3, [r2]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e2833008 	add	r3, r3, #8
    1508:	ea000012 	b	1558 <malloc+0x154>
    150c:	e59f3050 	ldr	r3, [pc, #80]	@ 1564 <malloc+0x160>
    1510:	e5933000 	ldr	r3, [r3]
    1514:	e51b2008 	ldr	r2, [fp, #-8]
    1518:	e1520003 	cmp	r2, r3
    151c:	1a000007 	bne	1540 <malloc+0x13c>
    1520:	e51b0010 	ldr	r0, [fp, #-16]
    1524:	ebffff94 	bl	137c <morecore>
    1528:	e50b0008 	str	r0, [fp, #-8]
    152c:	e51b3008 	ldr	r3, [fp, #-8]
    1530:	e3530000 	cmp	r3, #0
    1534:	1a000001 	bne	1540 <malloc+0x13c>
    1538:	e3a03000 	mov	r3, #0
    153c:	ea000005 	b	1558 <malloc+0x154>
    1540:	e51b3008 	ldr	r3, [fp, #-8]
    1544:	e50b300c 	str	r3, [fp, #-12]
    1548:	e51b3008 	ldr	r3, [fp, #-8]
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e50b3008 	str	r3, [fp, #-8]
    1554:	eaffffc8 	b	147c <malloc+0x78>
    1558:	e1a00003 	mov	r0, r3
    155c:	e24bd004 	sub	sp, fp, #4
    1560:	e8bd8800 	pop	{fp, pc}
    1564:	00001790 	.word	0x00001790
    1568:	00001788 	.word	0x00001788

0000156c <__udivsi3>:
    156c:	e2512001 	subs	r2, r1, #1
    1570:	012fff1e 	bxeq	lr
    1574:	3a000036 	bcc	1654 <__udivsi3+0xe8>
    1578:	e1500001 	cmp	r0, r1
    157c:	9a000022 	bls	160c <__udivsi3+0xa0>
    1580:	e1110002 	tst	r1, r2
    1584:	0a000023 	beq	1618 <__udivsi3+0xac>
    1588:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    158c:	01a01181 	lsleq	r1, r1, #3
    1590:	03a03008 	moveq	r3, #8
    1594:	13a03001 	movne	r3, #1
    1598:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    159c:	31510000 	cmpcc	r1, r0
    15a0:	31a01201 	lslcc	r1, r1, #4
    15a4:	31a03203 	lslcc	r3, r3, #4
    15a8:	3afffffa 	bcc	1598 <__udivsi3+0x2c>
    15ac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15b0:	31510000 	cmpcc	r1, r0
    15b4:	31a01081 	lslcc	r1, r1, #1
    15b8:	31a03083 	lslcc	r3, r3, #1
    15bc:	3afffffa 	bcc	15ac <__udivsi3+0x40>
    15c0:	e3a02000 	mov	r2, #0
    15c4:	e1500001 	cmp	r0, r1
    15c8:	20400001 	subcs	r0, r0, r1
    15cc:	21822003 	orrcs	r2, r2, r3
    15d0:	e15000a1 	cmp	r0, r1, lsr #1
    15d4:	204000a1 	subcs	r0, r0, r1, lsr #1
    15d8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15dc:	e1500121 	cmp	r0, r1, lsr #2
    15e0:	20400121 	subcs	r0, r0, r1, lsr #2
    15e4:	21822123 	orrcs	r2, r2, r3, lsr #2
    15e8:	e15001a1 	cmp	r0, r1, lsr #3
    15ec:	204001a1 	subcs	r0, r0, r1, lsr #3
    15f0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15f4:	e3500000 	cmp	r0, #0
    15f8:	11b03223 	lsrsne	r3, r3, #4
    15fc:	11a01221 	lsrne	r1, r1, #4
    1600:	1affffef 	bne	15c4 <__udivsi3+0x58>
    1604:	e1a00002 	mov	r0, r2
    1608:	e12fff1e 	bx	lr
    160c:	03a00001 	moveq	r0, #1
    1610:	13a00000 	movne	r0, #0
    1614:	e12fff1e 	bx	lr
    1618:	e3510801 	cmp	r1, #65536	@ 0x10000
    161c:	21a01821 	lsrcs	r1, r1, #16
    1620:	23a02010 	movcs	r2, #16
    1624:	33a02000 	movcc	r2, #0
    1628:	e3510c01 	cmp	r1, #256	@ 0x100
    162c:	21a01421 	lsrcs	r1, r1, #8
    1630:	22822008 	addcs	r2, r2, #8
    1634:	e3510010 	cmp	r1, #16
    1638:	21a01221 	lsrcs	r1, r1, #4
    163c:	22822004 	addcs	r2, r2, #4
    1640:	e3510004 	cmp	r1, #4
    1644:	82822003 	addhi	r2, r2, #3
    1648:	908220a1 	addls	r2, r2, r1, lsr #1
    164c:	e1a00230 	lsr	r0, r0, r2
    1650:	e12fff1e 	bx	lr
    1654:	e3500000 	cmp	r0, #0
    1658:	13e00000 	mvnne	r0, #0
    165c:	ea000007 	b	1680 <__aeabi_idiv0>

00001660 <__aeabi_uidivmod>:
    1660:	e3510000 	cmp	r1, #0
    1664:	0afffffa 	beq	1654 <__udivsi3+0xe8>
    1668:	e92d4003 	push	{r0, r1, lr}
    166c:	ebffffbe 	bl	156c <__udivsi3>
    1670:	e8bd4006 	pop	{r1, r2, lr}
    1674:	e0030092 	mul	r3, r2, r0
    1678:	e0411003 	sub	r1, r1, r3
    167c:	e12fff1e 	bx	lr

00001680 <__aeabi_idiv0>:
    1680:	e12fff1e 	bx	lr
