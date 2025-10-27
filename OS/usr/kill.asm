
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb0003f9 	bl	1014 <printf>
      2c:	eb000258 	bl	994 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000116 	bl	4b4 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb000281 	bl	a6c <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb000243 	bl	994 <exit>
      84:	000016d0 	.word	0x000016d0

00000088 <xchg>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b1010 	ldr	r1, [fp, #-16]
      a0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      a4:	e1912f9f 	ldrex	r2, [r1]
      a8:	e1813f90 	strex	r3, r0, [r1]
      ac:	e50b2008 	str	r2, [fp, #-8]
      b0:	e50b300c 	str	r3, [fp, #-12]
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e3530000 	cmp	r3, #0
      bc:	1afffff6 	bne	9c <xchg+0x14>
      c0:	e51b3008 	ldr	r3, [fp, #-8]
      c4:	e1a00003 	mov	r0, r3
      c8:	e28bd000 	add	sp, fp, #0
      cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      d0:	e12fff1e 	bx	lr

000000d4 <strcpy>:
      d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d8:	e28db000 	add	fp, sp, #0
      dc:	e24dd014 	sub	sp, sp, #20
      e0:	e50b0010 	str	r0, [fp, #-16]
      e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      e8:	e51b3010 	ldr	r3, [fp, #-16]
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e1a00000 	nop			@ (mov r0, r0)
      f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      f8:	e2823001 	add	r3, r2, #1
      fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     100:	e51b3010 	ldr	r3, [fp, #-16]
     104:	e2831001 	add	r1, r3, #1
     108:	e50b1010 	str	r1, [fp, #-16]
     10c:	e5d22000 	ldrb	r2, [r2]
     110:	e5c32000 	strb	r2, [r3]
     114:	e5d33000 	ldrb	r3, [r3]
     118:	e3530000 	cmp	r3, #0
     11c:	1afffff4 	bne	f4 <strcpy+0x20>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e1a00003 	mov	r0, r3
     128:	e28bd000 	add	sp, fp, #0
     12c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     130:	e12fff1e 	bx	lr

00000134 <strcmp>:
     134:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     138:	e28db000 	add	fp, sp, #0
     13c:	e24dd00c 	sub	sp, sp, #12
     140:	e50b0008 	str	r0, [fp, #-8]
     144:	e50b100c 	str	r1, [fp, #-12]
     148:	ea000005 	b	164 <strcmp+0x30>
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e2833001 	add	r3, r3, #1
     154:	e50b3008 	str	r3, [fp, #-8]
     158:	e51b300c 	ldr	r3, [fp, #-12]
     15c:	e2833001 	add	r3, r3, #1
     160:	e50b300c 	str	r3, [fp, #-12]
     164:	e51b3008 	ldr	r3, [fp, #-8]
     168:	e5d33000 	ldrb	r3, [r3]
     16c:	e3530000 	cmp	r3, #0
     170:	0a000005 	beq	18c <strcmp+0x58>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e5d32000 	ldrb	r2, [r3]
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e5d33000 	ldrb	r3, [r3]
     184:	e1520003 	cmp	r2, r3
     188:	0affffef 	beq	14c <strcmp+0x18>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e1a02003 	mov	r2, r3
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e0423003 	sub	r3, r2, r3
     1a4:	e1a00003 	mov	r0, r3
     1a8:	e28bd000 	add	sp, fp, #0
     1ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b0:	e12fff1e 	bx	lr

000001b4 <strlen>:
     1b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b8:	e28db000 	add	fp, sp, #0
     1bc:	e24dd014 	sub	sp, sp, #20
     1c0:	e50b0010 	str	r0, [fp, #-16]
     1c4:	e3a03000 	mov	r3, #0
     1c8:	e50b3008 	str	r3, [fp, #-8]
     1cc:	ea000002 	b	1dc <strlen+0x28>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e2833001 	add	r3, r3, #1
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e51b2010 	ldr	r2, [fp, #-16]
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5d33000 	ldrb	r3, [r3]
     1ec:	e3530000 	cmp	r3, #0
     1f0:	1afffff6 	bne	1d0 <strlen+0x1c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a00003 	mov	r0, r3
     1fc:	e28bd000 	add	sp, fp, #0
     200:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     204:	e12fff1e 	bx	lr

00000208 <memset>:
     208:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     20c:	e28db000 	add	fp, sp, #0
     210:	e24dd024 	sub	sp, sp, #36	@ 0x24
     214:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     218:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     21c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     220:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     22c:	e54b300d 	strb	r3, [fp, #-13]
     230:	e55b200d 	ldrb	r2, [fp, #-13]
     234:	e1a03002 	mov	r3, r2
     238:	e1a03403 	lsl	r3, r3, #8
     23c:	e0833002 	add	r3, r3, r2
     240:	e1a03803 	lsl	r3, r3, #16
     244:	e1a02003 	mov	r2, r3
     248:	e55b300d 	ldrb	r3, [fp, #-13]
     24c:	e1a03403 	lsl	r3, r3, #8
     250:	e1822003 	orr	r2, r2, r3
     254:	e55b300d 	ldrb	r3, [fp, #-13]
     258:	e1823003 	orr	r3, r2, r3
     25c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     260:	ea000008 	b	288 <memset+0x80>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e55b200d 	ldrb	r2, [fp, #-13]
     26c:	e5c32000 	strb	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433001 	sub	r3, r3, #1
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e2833001 	add	r3, r3, #1
     284:	e50b3008 	str	r3, [fp, #-8]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000003 	beq	2a4 <memset+0x9c>
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e2033003 	and	r3, r3, #3
     29c:	e3530000 	cmp	r3, #0
     2a0:	1affffef 	bne	264 <memset+0x5c>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e50b300c 	str	r3, [fp, #-12]
     2ac:	ea000008 	b	2d4 <memset+0xcc>
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2b8:	e5832000 	str	r2, [r3]
     2bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e2433004 	sub	r3, r3, #4
     2c4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e2833004 	add	r3, r3, #4
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e3530003 	cmp	r3, #3
     2dc:	8afffff3 	bhi	2b0 <memset+0xa8>
     2e0:	e51b300c 	ldr	r3, [fp, #-12]
     2e4:	e50b3008 	str	r3, [fp, #-8]
     2e8:	ea000008 	b	310 <memset+0x108>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e55b200d 	ldrb	r2, [fp, #-13]
     2f4:	e5c32000 	strb	r2, [r3]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e2433001 	sub	r3, r3, #1
     300:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2833001 	add	r3, r3, #1
     30c:	e50b3008 	str	r3, [fp, #-8]
     310:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     314:	e3530000 	cmp	r3, #0
     318:	1afffff3 	bne	2ec <memset+0xe4>
     31c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     320:	e1a00003 	mov	r0, r3
     324:	e28bd000 	add	sp, fp, #0
     328:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     32c:	e12fff1e 	bx	lr

00000330 <strchr>:
     330:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     334:	e28db000 	add	fp, sp, #0
     338:	e24dd00c 	sub	sp, sp, #12
     33c:	e50b0008 	str	r0, [fp, #-8]
     340:	e1a03001 	mov	r3, r1
     344:	e54b3009 	strb	r3, [fp, #-9]
     348:	ea000009 	b	374 <strchr+0x44>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e5d33000 	ldrb	r3, [r3]
     354:	e55b2009 	ldrb	r2, [fp, #-9]
     358:	e1520003 	cmp	r2, r3
     35c:	1a000001 	bne	368 <strchr+0x38>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	ea000007 	b	388 <strchr+0x58>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e5d33000 	ldrb	r3, [r3]
     37c:	e3530000 	cmp	r3, #0
     380:	1afffff1 	bne	34c <strchr+0x1c>
     384:	e3a03000 	mov	r3, #0
     388:	e1a00003 	mov	r0, r3
     38c:	e28bd000 	add	sp, fp, #0
     390:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     394:	e12fff1e 	bx	lr

00000398 <gets>:
     398:	e92d4800 	push	{fp, lr}
     39c:	e28db004 	add	fp, sp, #4
     3a0:	e24dd018 	sub	sp, sp, #24
     3a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3a8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3ac:	e3a03000 	mov	r3, #0
     3b0:	e50b3008 	str	r3, [fp, #-8]
     3b4:	ea000016 	b	414 <gets+0x7c>
     3b8:	e24b300d 	sub	r3, fp, #13
     3bc:	e3a02001 	mov	r2, #1
     3c0:	e1a01003 	mov	r1, r3
     3c4:	e3a00000 	mov	r0, #0
     3c8:	eb00018c 	bl	a00 <read>
     3cc:	e50b000c 	str	r0, [fp, #-12]
     3d0:	e51b300c 	ldr	r3, [fp, #-12]
     3d4:	e3530000 	cmp	r3, #0
     3d8:	da000013 	ble	42c <gets+0x94>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e2832001 	add	r2, r3, #1
     3e4:	e50b2008 	str	r2, [fp, #-8]
     3e8:	e1a02003 	mov	r2, r3
     3ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f0:	e0833002 	add	r3, r3, r2
     3f4:	e55b200d 	ldrb	r2, [fp, #-13]
     3f8:	e5c32000 	strb	r2, [r3]
     3fc:	e55b300d 	ldrb	r3, [fp, #-13]
     400:	e353000a 	cmp	r3, #10
     404:	0a000009 	beq	430 <gets+0x98>
     408:	e55b300d 	ldrb	r3, [fp, #-13]
     40c:	e353000d 	cmp	r3, #13
     410:	0a000006 	beq	430 <gets+0x98>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e2833001 	add	r3, r3, #1
     41c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     420:	e1520003 	cmp	r2, r3
     424:	caffffe3 	bgt	3b8 <gets+0x20>
     428:	ea000000 	b	430 <gets+0x98>
     42c:	e1a00000 	nop			@ (mov r0, r0)
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     438:	e0823003 	add	r3, r2, r3
     43c:	e3a02000 	mov	r2, #0
     440:	e5c32000 	strb	r2, [r3]
     444:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     448:	e1a00003 	mov	r0, r3
     44c:	e24bd004 	sub	sp, fp, #4
     450:	e8bd8800 	pop	{fp, pc}

00000454 <stat>:
     454:	e92d4800 	push	{fp, lr}
     458:	e28db004 	add	fp, sp, #4
     45c:	e24dd010 	sub	sp, sp, #16
     460:	e50b0010 	str	r0, [fp, #-16]
     464:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     468:	e3a01000 	mov	r1, #0
     46c:	e51b0010 	ldr	r0, [fp, #-16]
     470:	eb00018f 	bl	ab4 <open>
     474:	e50b0008 	str	r0, [fp, #-8]
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e3530000 	cmp	r3, #0
     480:	aa000001 	bge	48c <stat+0x38>
     484:	e3e03000 	mvn	r3, #0
     488:	ea000006 	b	4a8 <stat+0x54>
     48c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     490:	e51b0008 	ldr	r0, [fp, #-8]
     494:	eb0001a1 	bl	b20 <fstat>
     498:	e50b000c 	str	r0, [fp, #-12]
     49c:	e51b0008 	ldr	r0, [fp, #-8]
     4a0:	eb000168 	bl	a48 <close>
     4a4:	e51b300c 	ldr	r3, [fp, #-12]
     4a8:	e1a00003 	mov	r0, r3
     4ac:	e24bd004 	sub	sp, fp, #4
     4b0:	e8bd8800 	pop	{fp, pc}

000004b4 <atoi>:
     4b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4b8:	e28db000 	add	fp, sp, #0
     4bc:	e24dd014 	sub	sp, sp, #20
     4c0:	e50b0010 	str	r0, [fp, #-16]
     4c4:	e3a03000 	mov	r3, #0
     4c8:	e50b3008 	str	r3, [fp, #-8]
     4cc:	ea00000c 	b	504 <atoi+0x50>
     4d0:	e51b2008 	ldr	r2, [fp, #-8]
     4d4:	e1a03002 	mov	r3, r2
     4d8:	e1a03103 	lsl	r3, r3, #2
     4dc:	e0833002 	add	r3, r3, r2
     4e0:	e1a03083 	lsl	r3, r3, #1
     4e4:	e1a01003 	mov	r1, r3
     4e8:	e51b3010 	ldr	r3, [fp, #-16]
     4ec:	e2832001 	add	r2, r3, #1
     4f0:	e50b2010 	str	r2, [fp, #-16]
     4f4:	e5d33000 	ldrb	r3, [r3]
     4f8:	e0813003 	add	r3, r1, r3
     4fc:	e2433030 	sub	r3, r3, #48	@ 0x30
     500:	e50b3008 	str	r3, [fp, #-8]
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e5d33000 	ldrb	r3, [r3]
     50c:	e353002f 	cmp	r3, #47	@ 0x2f
     510:	9a000003 	bls	524 <atoi+0x70>
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e3530039 	cmp	r3, #57	@ 0x39
     520:	9affffea 	bls	4d0 <atoi+0x1c>
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e1a00003 	mov	r0, r3
     52c:	e28bd000 	add	sp, fp, #0
     530:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     534:	e12fff1e 	bx	lr

00000538 <memmove>:
     538:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     53c:	e28db000 	add	fp, sp, #0
     540:	e24dd01c 	sub	sp, sp, #28
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     550:	e51b3010 	ldr	r3, [fp, #-16]
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     55c:	e50b300c 	str	r3, [fp, #-12]
     560:	ea000007 	b	584 <memmove+0x4c>
     564:	e51b200c 	ldr	r2, [fp, #-12]
     568:	e2823001 	add	r3, r2, #1
     56c:	e50b300c 	str	r3, [fp, #-12]
     570:	e51b3008 	ldr	r3, [fp, #-8]
     574:	e2831001 	add	r1, r3, #1
     578:	e50b1008 	str	r1, [fp, #-8]
     57c:	e5d22000 	ldrb	r2, [r2]
     580:	e5c32000 	strb	r2, [r3]
     584:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     588:	e2432001 	sub	r2, r3, #1
     58c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     590:	e3530000 	cmp	r3, #0
     594:	cafffff2 	bgt	564 <memmove+0x2c>
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e1a00003 	mov	r0, r3
     5a0:	e28bd000 	add	sp, fp, #0
     5a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <initiateLock>:
     5ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b0:	e28db000 	add	fp, sp, #0
     5b4:	e24dd00c 	sub	sp, sp, #12
     5b8:	e50b0008 	str	r0, [fp, #-8]
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e3a02000 	mov	r2, #0
     5c4:	e5832000 	str	r2, [r3]
     5c8:	e51b3008 	ldr	r3, [fp, #-8]
     5cc:	e3a02001 	mov	r2, #1
     5d0:	e5832004 	str	r2, [r3, #4]
     5d4:	e1a00000 	nop			@ (mov r0, r0)
     5d8:	e28bd000 	add	sp, fp, #0
     5dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <acquireLock>:
     5e4:	e92d4800 	push	{fp, lr}
     5e8:	e28db004 	add	fp, sp, #4
     5ec:	e24dd008 	sub	sp, sp, #8
     5f0:	e50b0008 	str	r0, [fp, #-8]
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e5933000 	ldr	r3, [r3]
     5fc:	e3730001 	cmn	r3, #1
     600:	1a000002 	bne	610 <acquireLock+0x2c>
     604:	e59f1034 	ldr	r1, [pc, #52]	@ 640 <acquireLock+0x5c>
     608:	e3a00002 	mov	r0, #2
     60c:	eb000280 	bl	1014 <printf>
     610:	e1a00000 	nop			@ (mov r0, r0)
     614:	e51b3008 	ldr	r3, [fp, #-8]
     618:	e3a01001 	mov	r1, #1
     61c:	e1a00003 	mov	r0, r3
     620:	ebfffe98 	bl	88 <xchg>
     624:	e1a03000 	mov	r3, r0
     628:	e3530000 	cmp	r3, #0
     62c:	1afffff8 	bne	614 <acquireLock+0x30>
     630:	e1a00000 	nop			@ (mov r0, r0)
     634:	e1a00000 	nop			@ (mov r0, r0)
     638:	e24bd004 	sub	sp, fp, #4
     63c:	e8bd8800 	pop	{fp, pc}
     640:	000016e4 	.word	0x000016e4

00000644 <releaseLock>:
     644:	e92d4800 	push	{fp, lr}
     648:	e28db004 	add	fp, sp, #4
     64c:	e24dd008 	sub	sp, sp, #8
     650:	e50b0008 	str	r0, [fp, #-8]
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5933000 	ldr	r3, [r3]
     65c:	e3530001 	cmp	r3, #1
     660:	0a000002 	beq	670 <releaseLock+0x2c>
     664:	e59f1020 	ldr	r1, [pc, #32]	@ 68c <releaseLock+0x48>
     668:	e3a00002 	mov	r0, #2
     66c:	eb000268 	bl	1014 <printf>
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e3a01000 	mov	r1, #0
     678:	e1a00003 	mov	r0, r3
     67c:	ebfffe81 	bl	88 <xchg>
     680:	e1a00000 	nop			@ (mov r0, r0)
     684:	e24bd004 	sub	sp, fp, #4
     688:	e8bd8800 	pop	{fp, pc}
     68c:	00001714 	.word	0x00001714

00000690 <initiateCondVar>:
     690:	e92d4800 	push	{fp, lr}
     694:	e28db004 	add	fp, sp, #4
     698:	e24dd008 	sub	sp, sp, #8
     69c:	e50b0008 	str	r0, [fp, #-8]
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e5933004 	ldr	r3, [r3, #4]
     6a8:	e3530000 	cmp	r3, #0
     6ac:	1a000007 	bne	6d0 <initiateCondVar+0x40>
     6b0:	eb0001e0 	bl	e38 <getChannel>
     6b4:	e1a02000 	mov	r2, r0
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e5832000 	str	r2, [r3]
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e3a02001 	mov	r2, #1
     6c8:	e5832004 	str	r2, [r3, #4]
     6cc:	ea000000 	b	6d4 <initiateCondVar+0x44>
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e24bd004 	sub	sp, fp, #4
     6d8:	e8bd8800 	pop	{fp, pc}

000006dc <condWait>:
     6dc:	e92d4800 	push	{fp, lr}
     6e0:	e28db004 	add	fp, sp, #4
     6e4:	e24dd008 	sub	sp, sp, #8
     6e8:	e50b0008 	str	r0, [fp, #-8]
     6ec:	e50b100c 	str	r1, [fp, #-12]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e5933004 	ldr	r3, [r3, #4]
     6f8:	e3530000 	cmp	r3, #0
     6fc:	1a000003 	bne	710 <condWait+0x34>
     700:	e59f1050 	ldr	r1, [pc, #80]	@ 758 <condWait+0x7c>
     704:	e3a00002 	mov	r0, #2
     708:	eb000241 	bl	1014 <printf>
     70c:	ea00000f 	b	750 <condWait+0x74>
     710:	e51b300c 	ldr	r3, [fp, #-12]
     714:	e5933004 	ldr	r3, [r3, #4]
     718:	e3530000 	cmp	r3, #0
     71c:	1a000003 	bne	730 <condWait+0x54>
     720:	e59f1034 	ldr	r1, [pc, #52]	@ 75c <condWait+0x80>
     724:	e3a00002 	mov	r0, #2
     728:	eb000239 	bl	1014 <printf>
     72c:	ea000007 	b	750 <condWait+0x74>
     730:	e51b000c 	ldr	r0, [fp, #-12]
     734:	ebffffc2 	bl	644 <releaseLock>
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e5933000 	ldr	r3, [r3]
     740:	e1a00003 	mov	r0, r3
     744:	eb0001b2 	bl	e14 <sleepChan>
     748:	e51b000c 	ldr	r0, [fp, #-12]
     74c:	ebffffa4 	bl	5e4 <acquireLock>
     750:	e24bd004 	sub	sp, fp, #4
     754:	e8bd8800 	pop	{fp, pc}
     758:	00001750 	.word	0x00001750
     75c:	00001774 	.word	0x00001774

00000760 <broadcast>:
     760:	e92d4800 	push	{fp, lr}
     764:	e28db004 	add	fp, sp, #4
     768:	e24dd008 	sub	sp, sp, #8
     76c:	e50b0008 	str	r0, [fp, #-8]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e5933004 	ldr	r3, [r3, #4]
     778:	e3530000 	cmp	r3, #0
     77c:	1a000003 	bne	790 <broadcast+0x30>
     780:	e59f1020 	ldr	r1, [pc, #32]	@ 7a8 <broadcast+0x48>
     784:	e3a00002 	mov	r0, #2
     788:	eb000221 	bl	1014 <printf>
     78c:	ea000003 	b	7a0 <broadcast+0x40>
     790:	e51b3008 	ldr	r3, [fp, #-8]
     794:	e5933000 	ldr	r3, [r3]
     798:	e1a00003 	mov	r0, r3
     79c:	eb0001ae 	bl	e5c <sigChan>
     7a0:	e24bd004 	sub	sp, fp, #4
     7a4:	e8bd8800 	pop	{fp, pc}
     7a8:	00001750 	.word	0x00001750

000007ac <signal>:
     7ac:	e92d4800 	push	{fp, lr}
     7b0:	e28db004 	add	fp, sp, #4
     7b4:	e24dd008 	sub	sp, sp, #8
     7b8:	e50b0008 	str	r0, [fp, #-8]
     7bc:	e51b3008 	ldr	r3, [fp, #-8]
     7c0:	e5933004 	ldr	r3, [r3, #4]
     7c4:	e3530000 	cmp	r3, #0
     7c8:	1a000003 	bne	7dc <signal+0x30>
     7cc:	e59f1020 	ldr	r1, [pc, #32]	@ 7f4 <signal+0x48>
     7d0:	e3a00002 	mov	r0, #2
     7d4:	eb00020e 	bl	1014 <printf>
     7d8:	ea000003 	b	7ec <signal+0x40>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e5933000 	ldr	r3, [r3]
     7e4:	e1a00003 	mov	r0, r3
     7e8:	eb0001a4 	bl	e80 <sigOneChan>
     7ec:	e24bd004 	sub	sp, fp, #4
     7f0:	e8bd8800 	pop	{fp, pc}
     7f4:	00001750 	.word	0x00001750

000007f8 <semInit>:
     7f8:	e92d4800 	push	{fp, lr}
     7fc:	e28db004 	add	fp, sp, #4
     800:	e24dd008 	sub	sp, sp, #8
     804:	e50b0008 	str	r0, [fp, #-8]
     808:	e50b100c 	str	r1, [fp, #-12]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e51b200c 	ldr	r2, [fp, #-12]
     814:	e5832000 	str	r2, [r3]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e2833004 	add	r3, r3, #4
     820:	e1a00003 	mov	r0, r3
     824:	ebffff60 	bl	5ac <initiateLock>
     828:	e51b3008 	ldr	r3, [fp, #-8]
     82c:	e283300c 	add	r3, r3, #12
     830:	e1a00003 	mov	r0, r3
     834:	ebffff95 	bl	690 <initiateCondVar>
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e3a02001 	mov	r2, #1
     840:	e5832014 	str	r2, [r3, #20]
     844:	e1a00000 	nop			@ (mov r0, r0)
     848:	e24bd004 	sub	sp, fp, #4
     84c:	e8bd8800 	pop	{fp, pc}

00000850 <semDown>:
     850:	e92d4800 	push	{fp, lr}
     854:	e28db004 	add	fp, sp, #4
     858:	e24dd008 	sub	sp, sp, #8
     85c:	e50b0008 	str	r0, [fp, #-8]
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e5933014 	ldr	r3, [r3, #20]
     868:	e3530000 	cmp	r3, #0
     86c:	1a000003 	bne	880 <semDown+0x30>
     870:	e59f1074 	ldr	r1, [pc, #116]	@ 8ec <semDown+0x9c>
     874:	e3a00002 	mov	r0, #2
     878:	eb0001e5 	bl	1014 <printf>
     87c:	ea000018 	b	8e4 <semDown+0x94>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e2833004 	add	r3, r3, #4
     888:	e1a00003 	mov	r0, r3
     88c:	ebffff54 	bl	5e4 <acquireLock>
     890:	ea000006 	b	8b0 <semDown+0x60>
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e283200c 	add	r2, r3, #12
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e2833004 	add	r3, r3, #4
     8a4:	e1a01003 	mov	r1, r3
     8a8:	e1a00002 	mov	r0, r2
     8ac:	ebffff8a 	bl	6dc <condWait>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5933000 	ldr	r3, [r3]
     8b8:	e3530000 	cmp	r3, #0
     8bc:	0afffff4 	beq	894 <semDown+0x44>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e5933000 	ldr	r3, [r3]
     8c8:	e2432001 	sub	r2, r3, #1
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5832000 	str	r2, [r3]
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e2833004 	add	r3, r3, #4
     8dc:	e1a00003 	mov	r0, r3
     8e0:	ebffff57 	bl	644 <releaseLock>
     8e4:	e24bd004 	sub	sp, fp, #4
     8e8:	e8bd8800 	pop	{fp, pc}
     8ec:	00001794 	.word	0x00001794

000008f0 <semUp>:
     8f0:	e92d4800 	push	{fp, lr}
     8f4:	e28db004 	add	fp, sp, #4
     8f8:	e24dd008 	sub	sp, sp, #8
     8fc:	e50b0008 	str	r0, [fp, #-8]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e5933014 	ldr	r3, [r3, #20]
     908:	e3530000 	cmp	r3, #0
     90c:	1a000003 	bne	920 <semUp+0x30>
     910:	e59f1054 	ldr	r1, [pc, #84]	@ 96c <semUp+0x7c>
     914:	e3a00002 	mov	r0, #2
     918:	eb0001bd 	bl	1014 <printf>
     91c:	ea000010 	b	964 <semUp+0x74>
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e2833004 	add	r3, r3, #4
     928:	e1a00003 	mov	r0, r3
     92c:	ebffff2c 	bl	5e4 <acquireLock>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933000 	ldr	r3, [r3]
     938:	e2832001 	add	r2, r3, #1
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5832000 	str	r2, [r3]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e283300c 	add	r3, r3, #12
     94c:	e1a00003 	mov	r0, r3
     950:	ebffff95 	bl	7ac <signal>
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e2833004 	add	r3, r3, #4
     95c:	e1a00003 	mov	r0, r3
     960:	ebffff37 	bl	644 <releaseLock>
     964:	e24bd004 	sub	sp, fp, #4
     968:	e8bd8800 	pop	{fp, pc}
     96c:	00001794 	.word	0x00001794

00000970 <fork>:
     970:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     974:	e1a04003 	mov	r4, r3
     978:	e1a03002 	mov	r3, r2
     97c:	e1a02001 	mov	r2, r1
     980:	e1a01000 	mov	r1, r0
     984:	e3a00001 	mov	r0, #1
     988:	ef000000 	svc	0x00000000
     98c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     990:	e12fff1e 	bx	lr

00000994 <exit>:
     994:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     998:	e1a04003 	mov	r4, r3
     99c:	e1a03002 	mov	r3, r2
     9a0:	e1a02001 	mov	r2, r1
     9a4:	e1a01000 	mov	r1, r0
     9a8:	e3a00002 	mov	r0, #2
     9ac:	ef000000 	svc	0x00000000
     9b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b4:	e12fff1e 	bx	lr

000009b8 <wait>:
     9b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a00003 	mov	r0, #3
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <pipe>:
     9dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00004 	mov	r0, #4
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <read>:
     a00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00005 	mov	r0, #5
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <write>:
     a24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00010 	mov	r0, #16
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <close>:
     a48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00015 	mov	r0, #21
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <kill>:
     a6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00006 	mov	r0, #6
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <exec>:
     a90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a00007 	mov	r0, #7
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <open>:
     ab4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a0000f 	mov	r0, #15
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <mknod>:
     ad8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a00011 	mov	r0, #17
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <unlink>:
     afc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a00012 	mov	r0, #18
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <fstat>:
     b20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a00008 	mov	r0, #8
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <link>:
     b44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a00013 	mov	r0, #19
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <mkdir>:
     b68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a00014 	mov	r0, #20
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <chdir>:
     b8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a00009 	mov	r0, #9
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <dup>:
     bb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a0000a 	mov	r0, #10
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <getpid>:
     bd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a0000b 	mov	r0, #11
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <sbrk>:
     bf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a0000c 	mov	r0, #12
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <sleep>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a0000d 	mov	r0, #13
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <uptime>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a0000e 	mov	r0, #14
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <disproc>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a00016 	mov	r0, #22
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <srand>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a00017 	mov	r0, #23
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <setticket>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a00018 	mov	r0, #24
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <getpinfo>:
     cd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd4:	e1a04003 	mov	r4, r3
     cd8:	e1a03002 	mov	r3, r2
     cdc:	e1a02001 	mov	r2, r1
     ce0:	e1a01000 	mov	r1, r0
     ce4:	e3a00019 	mov	r0, #25
     ce8:	ef000000 	svc	0x00000000
     cec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf0:	e12fff1e 	bx	lr

00000cf4 <printPages>:
     cf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf8:	e1a04003 	mov	r4, r3
     cfc:	e1a03002 	mov	r3, r2
     d00:	e1a02001 	mov	r2, r1
     d04:	e1a01000 	mov	r1, r0
     d08:	e3a0001a 	mov	r0, #26
     d0c:	ef000000 	svc	0x00000000
     d10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d14:	e12fff1e 	bx	lr

00000d18 <kpt>:
     d18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d1c:	e1a04003 	mov	r4, r3
     d20:	e1a03002 	mov	r3, r2
     d24:	e1a02001 	mov	r2, r1
     d28:	e1a01000 	mov	r1, r0
     d2c:	e3a0001b 	mov	r0, #27
     d30:	ef000000 	svc	0x00000000
     d34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d38:	e12fff1e 	bx	lr

00000d3c <thread_create>:
     d3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d40:	e1a04003 	mov	r4, r3
     d44:	e1a03002 	mov	r3, r2
     d48:	e1a02001 	mov	r2, r1
     d4c:	e1a01000 	mov	r1, r0
     d50:	e3a0001c 	mov	r0, #28
     d54:	ef000000 	svc	0x00000000
     d58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d5c:	e12fff1e 	bx	lr

00000d60 <thread_exit>:
     d60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d64:	e1a04003 	mov	r4, r3
     d68:	e1a03002 	mov	r3, r2
     d6c:	e1a02001 	mov	r2, r1
     d70:	e1a01000 	mov	r1, r0
     d74:	e3a0001d 	mov	r0, #29
     d78:	ef000000 	svc	0x00000000
     d7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d80:	e12fff1e 	bx	lr

00000d84 <thread_join>:
     d84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d88:	e1a04003 	mov	r4, r3
     d8c:	e1a03002 	mov	r3, r2
     d90:	e1a02001 	mov	r2, r1
     d94:	e1a01000 	mov	r1, r0
     d98:	e3a0001e 	mov	r0, #30
     d9c:	ef000000 	svc	0x00000000
     da0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da4:	e12fff1e 	bx	lr

00000da8 <waitpid>:
     da8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dac:	e1a04003 	mov	r4, r3
     db0:	e1a03002 	mov	r3, r2
     db4:	e1a02001 	mov	r2, r1
     db8:	e1a01000 	mov	r1, r0
     dbc:	e3a0001f 	mov	r0, #31
     dc0:	ef000000 	svc	0x00000000
     dc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc8:	e12fff1e 	bx	lr

00000dcc <barrier_init>:
     dcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd0:	e1a04003 	mov	r4, r3
     dd4:	e1a03002 	mov	r3, r2
     dd8:	e1a02001 	mov	r2, r1
     ddc:	e1a01000 	mov	r1, r0
     de0:	e3a00020 	mov	r0, #32
     de4:	ef000000 	svc	0x00000000
     de8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dec:	e12fff1e 	bx	lr

00000df0 <barrier_check>:
     df0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df4:	e1a04003 	mov	r4, r3
     df8:	e1a03002 	mov	r3, r2
     dfc:	e1a02001 	mov	r2, r1
     e00:	e1a01000 	mov	r1, r0
     e04:	e3a00021 	mov	r0, #33	@ 0x21
     e08:	ef000000 	svc	0x00000000
     e0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e10:	e12fff1e 	bx	lr

00000e14 <sleepChan>:
     e14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e18:	e1a04003 	mov	r4, r3
     e1c:	e1a03002 	mov	r3, r2
     e20:	e1a02001 	mov	r2, r1
     e24:	e1a01000 	mov	r1, r0
     e28:	e3a00022 	mov	r0, #34	@ 0x22
     e2c:	ef000000 	svc	0x00000000
     e30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e34:	e12fff1e 	bx	lr

00000e38 <getChannel>:
     e38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e3c:	e1a04003 	mov	r4, r3
     e40:	e1a03002 	mov	r3, r2
     e44:	e1a02001 	mov	r2, r1
     e48:	e1a01000 	mov	r1, r0
     e4c:	e3a00023 	mov	r0, #35	@ 0x23
     e50:	ef000000 	svc	0x00000000
     e54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e58:	e12fff1e 	bx	lr

00000e5c <sigChan>:
     e5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e60:	e1a04003 	mov	r4, r3
     e64:	e1a03002 	mov	r3, r2
     e68:	e1a02001 	mov	r2, r1
     e6c:	e1a01000 	mov	r1, r0
     e70:	e3a00024 	mov	r0, #36	@ 0x24
     e74:	ef000000 	svc	0x00000000
     e78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e7c:	e12fff1e 	bx	lr

00000e80 <sigOneChan>:
     e80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e84:	e1a04003 	mov	r4, r3
     e88:	e1a03002 	mov	r3, r2
     e8c:	e1a02001 	mov	r2, r1
     e90:	e1a01000 	mov	r1, r0
     e94:	e3a00025 	mov	r0, #37	@ 0x25
     e98:	ef000000 	svc	0x00000000
     e9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea0:	e12fff1e 	bx	lr

00000ea4 <putc>:
     ea4:	e92d4800 	push	{fp, lr}
     ea8:	e28db004 	add	fp, sp, #4
     eac:	e24dd008 	sub	sp, sp, #8
     eb0:	e50b0008 	str	r0, [fp, #-8]
     eb4:	e1a03001 	mov	r3, r1
     eb8:	e54b3009 	strb	r3, [fp, #-9]
     ebc:	e24b3009 	sub	r3, fp, #9
     ec0:	e3a02001 	mov	r2, #1
     ec4:	e1a01003 	mov	r1, r3
     ec8:	e51b0008 	ldr	r0, [fp, #-8]
     ecc:	ebfffed4 	bl	a24 <write>
     ed0:	e1a00000 	nop			@ (mov r0, r0)
     ed4:	e24bd004 	sub	sp, fp, #4
     ed8:	e8bd8800 	pop	{fp, pc}

00000edc <printint>:
     edc:	e92d4800 	push	{fp, lr}
     ee0:	e28db004 	add	fp, sp, #4
     ee4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ee8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     eec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ef0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ef4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ef8:	e3a03000 	mov	r3, #0
     efc:	e50b300c 	str	r3, [fp, #-12]
     f00:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f04:	e3530000 	cmp	r3, #0
     f08:	0a000008 	beq	f30 <printint+0x54>
     f0c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f10:	e3530000 	cmp	r3, #0
     f14:	aa000005 	bge	f30 <printint+0x54>
     f18:	e3a03001 	mov	r3, #1
     f1c:	e50b300c 	str	r3, [fp, #-12]
     f20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f24:	e2633000 	rsb	r3, r3, #0
     f28:	e50b3010 	str	r3, [fp, #-16]
     f2c:	ea000001 	b	f38 <printint+0x5c>
     f30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f34:	e50b3010 	str	r3, [fp, #-16]
     f38:	e3a03000 	mov	r3, #0
     f3c:	e50b3008 	str	r3, [fp, #-8]
     f40:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f44:	e51b3010 	ldr	r3, [fp, #-16]
     f48:	e1a01002 	mov	r1, r2
     f4c:	e1a00003 	mov	r0, r3
     f50:	eb0001d5 	bl	16ac <__aeabi_uidivmod>
     f54:	e1a03001 	mov	r3, r1
     f58:	e1a01003 	mov	r1, r3
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e2832001 	add	r2, r3, #1
     f64:	e50b2008 	str	r2, [fp, #-8]
     f68:	e59f20a0 	ldr	r2, [pc, #160]	@ 1010 <printint+0x134>
     f6c:	e7d22001 	ldrb	r2, [r2, r1]
     f70:	e2433004 	sub	r3, r3, #4
     f74:	e083300b 	add	r3, r3, fp
     f78:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f7c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f80:	e1a01003 	mov	r1, r3
     f84:	e51b0010 	ldr	r0, [fp, #-16]
     f88:	eb00018a 	bl	15b8 <__udivsi3>
     f8c:	e1a03000 	mov	r3, r0
     f90:	e50b3010 	str	r3, [fp, #-16]
     f94:	e51b3010 	ldr	r3, [fp, #-16]
     f98:	e3530000 	cmp	r3, #0
     f9c:	1affffe7 	bne	f40 <printint+0x64>
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e3530000 	cmp	r3, #0
     fa8:	0a00000e 	beq	fe8 <printint+0x10c>
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e2832001 	add	r2, r3, #1
     fb4:	e50b2008 	str	r2, [fp, #-8]
     fb8:	e2433004 	sub	r3, r3, #4
     fbc:	e083300b 	add	r3, r3, fp
     fc0:	e3a0202d 	mov	r2, #45	@ 0x2d
     fc4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fc8:	ea000006 	b	fe8 <printint+0x10c>
     fcc:	e24b2020 	sub	r2, fp, #32
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e0823003 	add	r3, r2, r3
     fd8:	e5d33000 	ldrb	r3, [r3]
     fdc:	e1a01003 	mov	r1, r3
     fe0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fe4:	ebffffae 	bl	ea4 <putc>
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e2433001 	sub	r3, r3, #1
     ff0:	e50b3008 	str	r3, [fp, #-8]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e3530000 	cmp	r3, #0
     ffc:	aafffff2 	bge	fcc <printint+0xf0>
    1000:	e1a00000 	nop			@ (mov r0, r0)
    1004:	e1a00000 	nop			@ (mov r0, r0)
    1008:	e24bd004 	sub	sp, fp, #4
    100c:	e8bd8800 	pop	{fp, pc}
    1010:	000017c0 	.word	0x000017c0

00001014 <printf>:
    1014:	e92d000e 	push	{r1, r2, r3}
    1018:	e92d4800 	push	{fp, lr}
    101c:	e28db004 	add	fp, sp, #4
    1020:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1024:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1028:	e3a03000 	mov	r3, #0
    102c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1030:	e28b3008 	add	r3, fp, #8
    1034:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1038:	e3a03000 	mov	r3, #0
    103c:	e50b3010 	str	r3, [fp, #-16]
    1040:	ea000074 	b	1218 <printf+0x204>
    1044:	e59b2004 	ldr	r2, [fp, #4]
    1048:	e51b3010 	ldr	r3, [fp, #-16]
    104c:	e0823003 	add	r3, r2, r3
    1050:	e5d33000 	ldrb	r3, [r3]
    1054:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1058:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    105c:	e3530000 	cmp	r3, #0
    1060:	1a00000b 	bne	1094 <printf+0x80>
    1064:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1068:	e3530025 	cmp	r3, #37	@ 0x25
    106c:	1a000002 	bne	107c <printf+0x68>
    1070:	e3a03025 	mov	r3, #37	@ 0x25
    1074:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1078:	ea000063 	b	120c <printf+0x1f8>
    107c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1080:	e6ef3073 	uxtb	r3, r3
    1084:	e1a01003 	mov	r1, r3
    1088:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    108c:	ebffff84 	bl	ea4 <putc>
    1090:	ea00005d 	b	120c <printf+0x1f8>
    1094:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1098:	e3530025 	cmp	r3, #37	@ 0x25
    109c:	1a00005a 	bne	120c <printf+0x1f8>
    10a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a4:	e3530064 	cmp	r3, #100	@ 0x64
    10a8:	1a00000a 	bne	10d8 <printf+0xc4>
    10ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b0:	e5933000 	ldr	r3, [r3]
    10b4:	e1a01003 	mov	r1, r3
    10b8:	e3a03001 	mov	r3, #1
    10bc:	e3a0200a 	mov	r2, #10
    10c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10c4:	ebffff84 	bl	edc <printint>
    10c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10cc:	e2833004 	add	r3, r3, #4
    10d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	ea00004a 	b	1204 <printf+0x1f0>
    10d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10dc:	e3530078 	cmp	r3, #120	@ 0x78
    10e0:	0a000002 	beq	10f0 <printf+0xdc>
    10e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e8:	e3530070 	cmp	r3, #112	@ 0x70
    10ec:	1a00000a 	bne	111c <printf+0x108>
    10f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f4:	e5933000 	ldr	r3, [r3]
    10f8:	e1a01003 	mov	r1, r3
    10fc:	e3a03000 	mov	r3, #0
    1100:	e3a02010 	mov	r2, #16
    1104:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1108:	ebffff73 	bl	edc <printint>
    110c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1110:	e2833004 	add	r3, r3, #4
    1114:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1118:	ea000039 	b	1204 <printf+0x1f0>
    111c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1120:	e3530073 	cmp	r3, #115	@ 0x73
    1124:	1a000018 	bne	118c <printf+0x178>
    1128:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    112c:	e5933000 	ldr	r3, [r3]
    1130:	e50b300c 	str	r3, [fp, #-12]
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e2833004 	add	r3, r3, #4
    113c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1140:	e51b300c 	ldr	r3, [fp, #-12]
    1144:	e3530000 	cmp	r3, #0
    1148:	1a00000a 	bne	1178 <printf+0x164>
    114c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1248 <printf+0x234>
    1150:	e50b300c 	str	r3, [fp, #-12]
    1154:	ea000007 	b	1178 <printf+0x164>
    1158:	e51b300c 	ldr	r3, [fp, #-12]
    115c:	e5d33000 	ldrb	r3, [r3]
    1160:	e1a01003 	mov	r1, r3
    1164:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1168:	ebffff4d 	bl	ea4 <putc>
    116c:	e51b300c 	ldr	r3, [fp, #-12]
    1170:	e2833001 	add	r3, r3, #1
    1174:	e50b300c 	str	r3, [fp, #-12]
    1178:	e51b300c 	ldr	r3, [fp, #-12]
    117c:	e5d33000 	ldrb	r3, [r3]
    1180:	e3530000 	cmp	r3, #0
    1184:	1afffff3 	bne	1158 <printf+0x144>
    1188:	ea00001d 	b	1204 <printf+0x1f0>
    118c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1190:	e3530063 	cmp	r3, #99	@ 0x63
    1194:	1a000009 	bne	11c0 <printf+0x1ac>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e6ef3073 	uxtb	r3, r3
    11a4:	e1a01003 	mov	r1, r3
    11a8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ac:	ebffff3c 	bl	ea4 <putc>
    11b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b4:	e2833004 	add	r3, r3, #4
    11b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11bc:	ea000010 	b	1204 <printf+0x1f0>
    11c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c4:	e3530025 	cmp	r3, #37	@ 0x25
    11c8:	1a000005 	bne	11e4 <printf+0x1d0>
    11cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d0:	e6ef3073 	uxtb	r3, r3
    11d4:	e1a01003 	mov	r1, r3
    11d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11dc:	ebffff30 	bl	ea4 <putc>
    11e0:	ea000007 	b	1204 <printf+0x1f0>
    11e4:	e3a01025 	mov	r1, #37	@ 0x25
    11e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ec:	ebffff2c 	bl	ea4 <putc>
    11f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f4:	e6ef3073 	uxtb	r3, r3
    11f8:	e1a01003 	mov	r1, r3
    11fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1200:	ebffff27 	bl	ea4 <putc>
    1204:	e3a03000 	mov	r3, #0
    1208:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    120c:	e51b3010 	ldr	r3, [fp, #-16]
    1210:	e2833001 	add	r3, r3, #1
    1214:	e50b3010 	str	r3, [fp, #-16]
    1218:	e59b2004 	ldr	r2, [fp, #4]
    121c:	e51b3010 	ldr	r3, [fp, #-16]
    1220:	e0823003 	add	r3, r2, r3
    1224:	e5d33000 	ldrb	r3, [r3]
    1228:	e3530000 	cmp	r3, #0
    122c:	1affff84 	bne	1044 <printf+0x30>
    1230:	e1a00000 	nop			@ (mov r0, r0)
    1234:	e1a00000 	nop			@ (mov r0, r0)
    1238:	e24bd004 	sub	sp, fp, #4
    123c:	e8bd4800 	pop	{fp, lr}
    1240:	e28dd00c 	add	sp, sp, #12
    1244:	e12fff1e 	bx	lr
    1248:	000017b8 	.word	0x000017b8

0000124c <free>:
    124c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1250:	e28db000 	add	fp, sp, #0
    1254:	e24dd014 	sub	sp, sp, #20
    1258:	e50b0010 	str	r0, [fp, #-16]
    125c:	e51b3010 	ldr	r3, [fp, #-16]
    1260:	e2433008 	sub	r3, r3, #8
    1264:	e50b300c 	str	r3, [fp, #-12]
    1268:	e59f3154 	ldr	r3, [pc, #340]	@ 13c4 <free+0x178>
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e50b3008 	str	r3, [fp, #-8]
    1274:	ea000010 	b	12bc <free+0x70>
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e5933000 	ldr	r3, [r3]
    1280:	e51b2008 	ldr	r2, [fp, #-8]
    1284:	e1520003 	cmp	r2, r3
    1288:	3a000008 	bcc	12b0 <free+0x64>
    128c:	e51b200c 	ldr	r2, [fp, #-12]
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e1520003 	cmp	r2, r3
    1298:	8a000010 	bhi	12e0 <free+0x94>
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5933000 	ldr	r3, [r3]
    12a4:	e51b200c 	ldr	r2, [fp, #-12]
    12a8:	e1520003 	cmp	r2, r3
    12ac:	3a00000b 	bcc	12e0 <free+0x94>
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e50b3008 	str	r3, [fp, #-8]
    12bc:	e51b200c 	ldr	r2, [fp, #-12]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e1520003 	cmp	r2, r3
    12c8:	9affffea 	bls	1278 <free+0x2c>
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e51b200c 	ldr	r2, [fp, #-12]
    12d8:	e1520003 	cmp	r2, r3
    12dc:	2affffe5 	bcs	1278 <free+0x2c>
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e5933004 	ldr	r3, [r3, #4]
    12e8:	e1a03183 	lsl	r3, r3, #3
    12ec:	e51b200c 	ldr	r2, [fp, #-12]
    12f0:	e0822003 	add	r2, r2, r3
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5933000 	ldr	r3, [r3]
    12fc:	e1520003 	cmp	r2, r3
    1300:	1a00000d 	bne	133c <free+0xf0>
    1304:	e51b300c 	ldr	r3, [fp, #-12]
    1308:	e5932004 	ldr	r2, [r3, #4]
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e5933004 	ldr	r3, [r3, #4]
    1318:	e0822003 	add	r2, r2, r3
    131c:	e51b300c 	ldr	r3, [fp, #-12]
    1320:	e5832004 	str	r2, [r3, #4]
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e5932000 	ldr	r2, [r3]
    1330:	e51b300c 	ldr	r3, [fp, #-12]
    1334:	e5832000 	str	r2, [r3]
    1338:	ea000003 	b	134c <free+0x100>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5932000 	ldr	r2, [r3]
    1344:	e51b300c 	ldr	r3, [fp, #-12]
    1348:	e5832000 	str	r2, [r3]
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5933004 	ldr	r3, [r3, #4]
    1354:	e1a03183 	lsl	r3, r3, #3
    1358:	e51b2008 	ldr	r2, [fp, #-8]
    135c:	e0823003 	add	r3, r2, r3
    1360:	e51b200c 	ldr	r2, [fp, #-12]
    1364:	e1520003 	cmp	r2, r3
    1368:	1a00000b 	bne	139c <free+0x150>
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e5932004 	ldr	r2, [r3, #4]
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5933004 	ldr	r3, [r3, #4]
    137c:	e0822003 	add	r2, r2, r3
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e5832004 	str	r2, [r3, #4]
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e5932000 	ldr	r2, [r3]
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5832000 	str	r2, [r3]
    1398:	ea000002 	b	13a8 <free+0x15c>
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e51b200c 	ldr	r2, [fp, #-12]
    13a4:	e5832000 	str	r2, [r3]
    13a8:	e59f2014 	ldr	r2, [pc, #20]	@ 13c4 <free+0x178>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5823000 	str	r3, [r2]
    13b4:	e1a00000 	nop			@ (mov r0, r0)
    13b8:	e28bd000 	add	sp, fp, #0
    13bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13c0:	e12fff1e 	bx	lr
    13c4:	000017dc 	.word	0x000017dc

000013c8 <morecore>:
    13c8:	e92d4800 	push	{fp, lr}
    13cc:	e28db004 	add	fp, sp, #4
    13d0:	e24dd010 	sub	sp, sp, #16
    13d4:	e50b0010 	str	r0, [fp, #-16]
    13d8:	e51b3010 	ldr	r3, [fp, #-16]
    13dc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13e0:	2a000001 	bcs	13ec <morecore+0x24>
    13e4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13e8:	e50b3010 	str	r3, [fp, #-16]
    13ec:	e51b3010 	ldr	r3, [fp, #-16]
    13f0:	e1a03183 	lsl	r3, r3, #3
    13f4:	e1a00003 	mov	r0, r3
    13f8:	ebfffdfe 	bl	bf8 <sbrk>
    13fc:	e50b0008 	str	r0, [fp, #-8]
    1400:	e51b3008 	ldr	r3, [fp, #-8]
    1404:	e3730001 	cmn	r3, #1
    1408:	1a000001 	bne	1414 <morecore+0x4c>
    140c:	e3a03000 	mov	r3, #0
    1410:	ea00000a 	b	1440 <morecore+0x78>
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e50b300c 	str	r3, [fp, #-12]
    141c:	e51b300c 	ldr	r3, [fp, #-12]
    1420:	e51b2010 	ldr	r2, [fp, #-16]
    1424:	e5832004 	str	r2, [r3, #4]
    1428:	e51b300c 	ldr	r3, [fp, #-12]
    142c:	e2833008 	add	r3, r3, #8
    1430:	e1a00003 	mov	r0, r3
    1434:	ebffff84 	bl	124c <free>
    1438:	e59f300c 	ldr	r3, [pc, #12]	@ 144c <morecore+0x84>
    143c:	e5933000 	ldr	r3, [r3]
    1440:	e1a00003 	mov	r0, r3
    1444:	e24bd004 	sub	sp, fp, #4
    1448:	e8bd8800 	pop	{fp, pc}
    144c:	000017dc 	.word	0x000017dc

00001450 <malloc>:
    1450:	e92d4800 	push	{fp, lr}
    1454:	e28db004 	add	fp, sp, #4
    1458:	e24dd018 	sub	sp, sp, #24
    145c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1460:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1464:	e2833007 	add	r3, r3, #7
    1468:	e1a031a3 	lsr	r3, r3, #3
    146c:	e2833001 	add	r3, r3, #1
    1470:	e50b3010 	str	r3, [fp, #-16]
    1474:	e59f3134 	ldr	r3, [pc, #308]	@ 15b0 <malloc+0x160>
    1478:	e5933000 	ldr	r3, [r3]
    147c:	e50b300c 	str	r3, [fp, #-12]
    1480:	e51b300c 	ldr	r3, [fp, #-12]
    1484:	e3530000 	cmp	r3, #0
    1488:	1a00000b 	bne	14bc <malloc+0x6c>
    148c:	e59f3120 	ldr	r3, [pc, #288]	@ 15b4 <malloc+0x164>
    1490:	e50b300c 	str	r3, [fp, #-12]
    1494:	e59f2114 	ldr	r2, [pc, #276]	@ 15b0 <malloc+0x160>
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e5823000 	str	r3, [r2]
    14a0:	e59f3108 	ldr	r3, [pc, #264]	@ 15b0 <malloc+0x160>
    14a4:	e5933000 	ldr	r3, [r3]
    14a8:	e59f2104 	ldr	r2, [pc, #260]	@ 15b4 <malloc+0x164>
    14ac:	e5823000 	str	r3, [r2]
    14b0:	e59f30fc 	ldr	r3, [pc, #252]	@ 15b4 <malloc+0x164>
    14b4:	e3a02000 	mov	r2, #0
    14b8:	e5832004 	str	r2, [r3, #4]
    14bc:	e51b300c 	ldr	r3, [fp, #-12]
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e50b3008 	str	r3, [fp, #-8]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5933004 	ldr	r3, [r3, #4]
    14d0:	e51b2010 	ldr	r2, [fp, #-16]
    14d4:	e1520003 	cmp	r2, r3
    14d8:	8a00001e 	bhi	1558 <malloc+0x108>
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5933004 	ldr	r3, [r3, #4]
    14e4:	e51b2010 	ldr	r2, [fp, #-16]
    14e8:	e1520003 	cmp	r2, r3
    14ec:	1a000004 	bne	1504 <malloc+0xb4>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e5932000 	ldr	r2, [r3]
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e5832000 	str	r2, [r3]
    1500:	ea00000e 	b	1540 <malloc+0xf0>
    1504:	e51b3008 	ldr	r3, [fp, #-8]
    1508:	e5932004 	ldr	r2, [r3, #4]
    150c:	e51b3010 	ldr	r3, [fp, #-16]
    1510:	e0422003 	sub	r2, r2, r3
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e5832004 	str	r2, [r3, #4]
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5933004 	ldr	r3, [r3, #4]
    1524:	e1a03183 	lsl	r3, r3, #3
    1528:	e51b2008 	ldr	r2, [fp, #-8]
    152c:	e0823003 	add	r3, r2, r3
    1530:	e50b3008 	str	r3, [fp, #-8]
    1534:	e51b3008 	ldr	r3, [fp, #-8]
    1538:	e51b2010 	ldr	r2, [fp, #-16]
    153c:	e5832004 	str	r2, [r3, #4]
    1540:	e59f2068 	ldr	r2, [pc, #104]	@ 15b0 <malloc+0x160>
    1544:	e51b300c 	ldr	r3, [fp, #-12]
    1548:	e5823000 	str	r3, [r2]
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e2833008 	add	r3, r3, #8
    1554:	ea000012 	b	15a4 <malloc+0x154>
    1558:	e59f3050 	ldr	r3, [pc, #80]	@ 15b0 <malloc+0x160>
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e51b2008 	ldr	r2, [fp, #-8]
    1564:	e1520003 	cmp	r2, r3
    1568:	1a000007 	bne	158c <malloc+0x13c>
    156c:	e51b0010 	ldr	r0, [fp, #-16]
    1570:	ebffff94 	bl	13c8 <morecore>
    1574:	e50b0008 	str	r0, [fp, #-8]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e3530000 	cmp	r3, #0
    1580:	1a000001 	bne	158c <malloc+0x13c>
    1584:	e3a03000 	mov	r3, #0
    1588:	ea000005 	b	15a4 <malloc+0x154>
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e50b300c 	str	r3, [fp, #-12]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e5933000 	ldr	r3, [r3]
    159c:	e50b3008 	str	r3, [fp, #-8]
    15a0:	eaffffc8 	b	14c8 <malloc+0x78>
    15a4:	e1a00003 	mov	r0, r3
    15a8:	e24bd004 	sub	sp, fp, #4
    15ac:	e8bd8800 	pop	{fp, pc}
    15b0:	000017dc 	.word	0x000017dc
    15b4:	000017d4 	.word	0x000017d4

000015b8 <__udivsi3>:
    15b8:	e2512001 	subs	r2, r1, #1
    15bc:	012fff1e 	bxeq	lr
    15c0:	3a000036 	bcc	16a0 <__udivsi3+0xe8>
    15c4:	e1500001 	cmp	r0, r1
    15c8:	9a000022 	bls	1658 <__udivsi3+0xa0>
    15cc:	e1110002 	tst	r1, r2
    15d0:	0a000023 	beq	1664 <__udivsi3+0xac>
    15d4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15d8:	01a01181 	lsleq	r1, r1, #3
    15dc:	03a03008 	moveq	r3, #8
    15e0:	13a03001 	movne	r3, #1
    15e4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15e8:	31510000 	cmpcc	r1, r0
    15ec:	31a01201 	lslcc	r1, r1, #4
    15f0:	31a03203 	lslcc	r3, r3, #4
    15f4:	3afffffa 	bcc	15e4 <__udivsi3+0x2c>
    15f8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    15fc:	31510000 	cmpcc	r1, r0
    1600:	31a01081 	lslcc	r1, r1, #1
    1604:	31a03083 	lslcc	r3, r3, #1
    1608:	3afffffa 	bcc	15f8 <__udivsi3+0x40>
    160c:	e3a02000 	mov	r2, #0
    1610:	e1500001 	cmp	r0, r1
    1614:	20400001 	subcs	r0, r0, r1
    1618:	21822003 	orrcs	r2, r2, r3
    161c:	e15000a1 	cmp	r0, r1, lsr #1
    1620:	204000a1 	subcs	r0, r0, r1, lsr #1
    1624:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1628:	e1500121 	cmp	r0, r1, lsr #2
    162c:	20400121 	subcs	r0, r0, r1, lsr #2
    1630:	21822123 	orrcs	r2, r2, r3, lsr #2
    1634:	e15001a1 	cmp	r0, r1, lsr #3
    1638:	204001a1 	subcs	r0, r0, r1, lsr #3
    163c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1640:	e3500000 	cmp	r0, #0
    1644:	11b03223 	lsrsne	r3, r3, #4
    1648:	11a01221 	lsrne	r1, r1, #4
    164c:	1affffef 	bne	1610 <__udivsi3+0x58>
    1650:	e1a00002 	mov	r0, r2
    1654:	e12fff1e 	bx	lr
    1658:	03a00001 	moveq	r0, #1
    165c:	13a00000 	movne	r0, #0
    1660:	e12fff1e 	bx	lr
    1664:	e3510801 	cmp	r1, #65536	@ 0x10000
    1668:	21a01821 	lsrcs	r1, r1, #16
    166c:	23a02010 	movcs	r2, #16
    1670:	33a02000 	movcc	r2, #0
    1674:	e3510c01 	cmp	r1, #256	@ 0x100
    1678:	21a01421 	lsrcs	r1, r1, #8
    167c:	22822008 	addcs	r2, r2, #8
    1680:	e3510010 	cmp	r1, #16
    1684:	21a01221 	lsrcs	r1, r1, #4
    1688:	22822004 	addcs	r2, r2, #4
    168c:	e3510004 	cmp	r1, #4
    1690:	82822003 	addhi	r2, r2, #3
    1694:	908220a1 	addls	r2, r2, r1, lsr #1
    1698:	e1a00230 	lsr	r0, r0, r2
    169c:	e12fff1e 	bx	lr
    16a0:	e3500000 	cmp	r0, #0
    16a4:	13e00000 	mvnne	r0, #0
    16a8:	ea000007 	b	16cc <__aeabi_idiv0>

000016ac <__aeabi_uidivmod>:
    16ac:	e3510000 	cmp	r1, #0
    16b0:	0afffffa 	beq	16a0 <__udivsi3+0xe8>
    16b4:	e92d4003 	push	{r0, r1, lr}
    16b8:	ebffffbe 	bl	15b8 <__udivsi3>
    16bc:	e8bd4006 	pop	{r1, r2, lr}
    16c0:	e0030092 	mul	r3, r2, r0
    16c4:	e0411003 	sub	r1, r1, r3
    16c8:	e12fff1e 	bx	lr

000016cc <__aeabi_idiv0>:
    16cc:	e12fff1e 	bx	lr
