
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e5931000 	ldr	r1, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2833001 	add	r3, r3, #1
      3c:	e51b2010 	ldr	r2, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	da000001 	ble	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	@ 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	@ 88 <main+0x88>
      54:	e1a02001 	mov	r2, r1
      58:	e59f102c 	ldr	r1, [pc, #44]	@ 8c <main+0x8c>
      5c:	e3a00001 	mov	r0, #1
      60:	eb0003ed 	bl	101c <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb000245 	bl	99c <exit>
      84:	000016d8 	.word	0x000016d8
      88:	000016dc 	.word	0x000016dc
      8c:	000016e0 	.word	0x000016e0

00000090 <xchg>:
      90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a4:	e51b1010 	ldr	r1, [fp, #-16]
      a8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      ac:	e1912f9f 	ldrex	r2, [r1]
      b0:	e1813f90 	strex	r3, r0, [r1]
      b4:	e50b2008 	str	r2, [fp, #-8]
      b8:	e50b300c 	str	r3, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	1afffff6 	bne	a4 <xchg+0x14>
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e1a00003 	mov	r0, r3
      d0:	e28bd000 	add	sp, fp, #0
      d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      d8:	e12fff1e 	bx	lr

000000dc <strcpy>:
      dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      e0:	e28db000 	add	fp, sp, #0
      e4:	e24dd014 	sub	sp, sp, #20
      e8:	e50b0010 	str	r0, [fp, #-16]
      ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      f0:	e51b3010 	ldr	r3, [fp, #-16]
      f4:	e50b3008 	str	r3, [fp, #-8]
      f8:	e1a00000 	nop			@ (mov r0, r0)
      fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     100:	e2823001 	add	r3, r2, #1
     104:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     108:	e51b3010 	ldr	r3, [fp, #-16]
     10c:	e2831001 	add	r1, r3, #1
     110:	e50b1010 	str	r1, [fp, #-16]
     114:	e5d22000 	ldrb	r2, [r2]
     118:	e5c32000 	strb	r2, [r3]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	1afffff4 	bne	fc <strcpy+0x20>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e1a00003 	mov	r0, r3
     130:	e28bd000 	add	sp, fp, #0
     134:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     138:	e12fff1e 	bx	lr

0000013c <strcmp>:
     13c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     140:	e28db000 	add	fp, sp, #0
     144:	e24dd00c 	sub	sp, sp, #12
     148:	e50b0008 	str	r0, [fp, #-8]
     14c:	e50b100c 	str	r1, [fp, #-12]
     150:	ea000005 	b	16c <strcmp+0x30>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e2833001 	add	r3, r3, #1
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	e51b300c 	ldr	r3, [fp, #-12]
     164:	e2833001 	add	r3, r3, #1
     168:	e50b300c 	str	r3, [fp, #-12]
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e3530000 	cmp	r3, #0
     178:	0a000005 	beq	194 <strcmp+0x58>
     17c:	e51b3008 	ldr	r3, [fp, #-8]
     180:	e5d32000 	ldrb	r2, [r3]
     184:	e51b300c 	ldr	r3, [fp, #-12]
     188:	e5d33000 	ldrb	r3, [r3]
     18c:	e1520003 	cmp	r2, r3
     190:	0affffef 	beq	154 <strcmp+0x18>
     194:	e51b3008 	ldr	r3, [fp, #-8]
     198:	e5d33000 	ldrb	r3, [r3]
     19c:	e1a02003 	mov	r2, r3
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e0423003 	sub	r3, r2, r3
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <strlen>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd014 	sub	sp, sp, #20
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e3a03000 	mov	r3, #0
     1d0:	e50b3008 	str	r3, [fp, #-8]
     1d4:	ea000002 	b	1e4 <strlen+0x28>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e2833001 	add	r3, r3, #1
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e51b2010 	ldr	r2, [fp, #-16]
     1ec:	e0823003 	add	r3, r2, r3
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e3530000 	cmp	r3, #0
     1f8:	1afffff6 	bne	1d8 <strlen+0x1c>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e1a00003 	mov	r0, r3
     204:	e28bd000 	add	sp, fp, #0
     208:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     20c:	e12fff1e 	bx	lr

00000210 <memset>:
     210:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     214:	e28db000 	add	fp, sp, #0
     218:	e24dd024 	sub	sp, sp, #36	@ 0x24
     21c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     220:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     224:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     234:	e54b300d 	strb	r3, [fp, #-13]
     238:	e55b200d 	ldrb	r2, [fp, #-13]
     23c:	e1a03002 	mov	r3, r2
     240:	e1a03403 	lsl	r3, r3, #8
     244:	e0833002 	add	r3, r3, r2
     248:	e1a03803 	lsl	r3, r3, #16
     24c:	e1a02003 	mov	r2, r3
     250:	e55b300d 	ldrb	r3, [fp, #-13]
     254:	e1a03403 	lsl	r3, r3, #8
     258:	e1822003 	orr	r2, r2, r3
     25c:	e55b300d 	ldrb	r3, [fp, #-13]
     260:	e1823003 	orr	r3, r2, r3
     264:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     268:	ea000008 	b	290 <memset+0x80>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e55b200d 	ldrb	r2, [fp, #-13]
     274:	e5c32000 	strb	r2, [r3]
     278:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e2433001 	sub	r3, r3, #1
     280:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e2833001 	add	r3, r3, #1
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     294:	e3530000 	cmp	r3, #0
     298:	0a000003 	beq	2ac <memset+0x9c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e2033003 	and	r3, r3, #3
     2a4:	e3530000 	cmp	r3, #0
     2a8:	1affffef 	bne	26c <memset+0x5c>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	ea000008 	b	2dc <memset+0xcc>
     2b8:	e51b300c 	ldr	r3, [fp, #-12]
     2bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2c0:	e5832000 	str	r2, [r3]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e2433004 	sub	r3, r3, #4
     2cc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e51b300c 	ldr	r3, [fp, #-12]
     2d4:	e2833004 	add	r3, r3, #4
     2d8:	e50b300c 	str	r3, [fp, #-12]
     2dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e0:	e3530003 	cmp	r3, #3
     2e4:	8afffff3 	bhi	2b8 <memset+0xa8>
     2e8:	e51b300c 	ldr	r3, [fp, #-12]
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	ea000008 	b	318 <memset+0x108>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e55b200d 	ldrb	r2, [fp, #-13]
     2fc:	e5c32000 	strb	r2, [r3]
     300:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     304:	e2433001 	sub	r3, r3, #1
     308:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e2833001 	add	r3, r3, #1
     314:	e50b3008 	str	r3, [fp, #-8]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e3530000 	cmp	r3, #0
     320:	1afffff3 	bne	2f4 <memset+0xe4>
     324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     328:	e1a00003 	mov	r0, r3
     32c:	e28bd000 	add	sp, fp, #0
     330:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     334:	e12fff1e 	bx	lr

00000338 <strchr>:
     338:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     33c:	e28db000 	add	fp, sp, #0
     340:	e24dd00c 	sub	sp, sp, #12
     344:	e50b0008 	str	r0, [fp, #-8]
     348:	e1a03001 	mov	r3, r1
     34c:	e54b3009 	strb	r3, [fp, #-9]
     350:	ea000009 	b	37c <strchr+0x44>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e55b2009 	ldrb	r2, [fp, #-9]
     360:	e1520003 	cmp	r2, r3
     364:	1a000001 	bne	370 <strchr+0x38>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	ea000007 	b	390 <strchr+0x58>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e2833001 	add	r3, r3, #1
     378:	e50b3008 	str	r3, [fp, #-8]
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e3530000 	cmp	r3, #0
     388:	1afffff1 	bne	354 <strchr+0x1c>
     38c:	e3a03000 	mov	r3, #0
     390:	e1a00003 	mov	r0, r3
     394:	e28bd000 	add	sp, fp, #0
     398:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     39c:	e12fff1e 	bx	lr

000003a0 <gets>:
     3a0:	e92d4800 	push	{fp, lr}
     3a4:	e28db004 	add	fp, sp, #4
     3a8:	e24dd018 	sub	sp, sp, #24
     3ac:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3b0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3b4:	e3a03000 	mov	r3, #0
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	ea000016 	b	41c <gets+0x7c>
     3c0:	e24b300d 	sub	r3, fp, #13
     3c4:	e3a02001 	mov	r2, #1
     3c8:	e1a01003 	mov	r1, r3
     3cc:	e3a00000 	mov	r0, #0
     3d0:	eb00018c 	bl	a08 <read>
     3d4:	e50b000c 	str	r0, [fp, #-12]
     3d8:	e51b300c 	ldr	r3, [fp, #-12]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	da000013 	ble	434 <gets+0x94>
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e2832001 	add	r2, r3, #1
     3ec:	e50b2008 	str	r2, [fp, #-8]
     3f0:	e1a02003 	mov	r2, r3
     3f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f8:	e0833002 	add	r3, r3, r2
     3fc:	e55b200d 	ldrb	r2, [fp, #-13]
     400:	e5c32000 	strb	r2, [r3]
     404:	e55b300d 	ldrb	r3, [fp, #-13]
     408:	e353000a 	cmp	r3, #10
     40c:	0a000009 	beq	438 <gets+0x98>
     410:	e55b300d 	ldrb	r3, [fp, #-13]
     414:	e353000d 	cmp	r3, #13
     418:	0a000006 	beq	438 <gets+0x98>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     428:	e1520003 	cmp	r2, r3
     42c:	caffffe3 	bgt	3c0 <gets+0x20>
     430:	ea000000 	b	438 <gets+0x98>
     434:	e1a00000 	nop			@ (mov r0, r0)
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     440:	e0823003 	add	r3, r2, r3
     444:	e3a02000 	mov	r2, #0
     448:	e5c32000 	strb	r2, [r3]
     44c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <stat>:
     45c:	e92d4800 	push	{fp, lr}
     460:	e28db004 	add	fp, sp, #4
     464:	e24dd010 	sub	sp, sp, #16
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e3a01000 	mov	r1, #0
     474:	e51b0010 	ldr	r0, [fp, #-16]
     478:	eb00018f 	bl	abc <open>
     47c:	e50b0008 	str	r0, [fp, #-8]
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e3530000 	cmp	r3, #0
     488:	aa000001 	bge	494 <stat+0x38>
     48c:	e3e03000 	mvn	r3, #0
     490:	ea000006 	b	4b0 <stat+0x54>
     494:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     498:	e51b0008 	ldr	r0, [fp, #-8]
     49c:	eb0001a1 	bl	b28 <fstat>
     4a0:	e50b000c 	str	r0, [fp, #-12]
     4a4:	e51b0008 	ldr	r0, [fp, #-8]
     4a8:	eb000168 	bl	a50 <close>
     4ac:	e51b300c 	ldr	r3, [fp, #-12]
     4b0:	e1a00003 	mov	r0, r3
     4b4:	e24bd004 	sub	sp, fp, #4
     4b8:	e8bd8800 	pop	{fp, pc}

000004bc <atoi>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd014 	sub	sp, sp, #20
     4c8:	e50b0010 	str	r0, [fp, #-16]
     4cc:	e3a03000 	mov	r3, #0
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	ea00000c 	b	50c <atoi+0x50>
     4d8:	e51b2008 	ldr	r2, [fp, #-8]
     4dc:	e1a03002 	mov	r3, r2
     4e0:	e1a03103 	lsl	r3, r3, #2
     4e4:	e0833002 	add	r3, r3, r2
     4e8:	e1a03083 	lsl	r3, r3, #1
     4ec:	e1a01003 	mov	r1, r3
     4f0:	e51b3010 	ldr	r3, [fp, #-16]
     4f4:	e2832001 	add	r2, r3, #1
     4f8:	e50b2010 	str	r2, [fp, #-16]
     4fc:	e5d33000 	ldrb	r3, [r3]
     500:	e0813003 	add	r3, r1, r3
     504:	e2433030 	sub	r3, r3, #48	@ 0x30
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e5d33000 	ldrb	r3, [r3]
     514:	e353002f 	cmp	r3, #47	@ 0x2f
     518:	9a000003 	bls	52c <atoi+0x70>
     51c:	e51b3010 	ldr	r3, [fp, #-16]
     520:	e5d33000 	ldrb	r3, [r3]
     524:	e3530039 	cmp	r3, #57	@ 0x39
     528:	9affffea 	bls	4d8 <atoi+0x1c>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e1a00003 	mov	r0, r3
     534:	e28bd000 	add	sp, fp, #0
     538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     53c:	e12fff1e 	bx	lr

00000540 <memmove>:
     540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     544:	e28db000 	add	fp, sp, #0
     548:	e24dd01c 	sub	sp, sp, #28
     54c:	e50b0010 	str	r0, [fp, #-16]
     550:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     554:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e50b3008 	str	r3, [fp, #-8]
     560:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     564:	e50b300c 	str	r3, [fp, #-12]
     568:	ea000007 	b	58c <memmove+0x4c>
     56c:	e51b200c 	ldr	r2, [fp, #-12]
     570:	e2823001 	add	r3, r2, #1
     574:	e50b300c 	str	r3, [fp, #-12]
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e2831001 	add	r1, r3, #1
     580:	e50b1008 	str	r1, [fp, #-8]
     584:	e5d22000 	ldrb	r2, [r2]
     588:	e5c32000 	strb	r2, [r3]
     58c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     590:	e2432001 	sub	r2, r3, #1
     594:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     598:	e3530000 	cmp	r3, #0
     59c:	cafffff2 	bgt	56c <memmove+0x2c>
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <initiateLock>:
     5b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b8:	e28db000 	add	fp, sp, #0
     5bc:	e24dd00c 	sub	sp, sp, #12
     5c0:	e50b0008 	str	r0, [fp, #-8]
     5c4:	e51b3008 	ldr	r3, [fp, #-8]
     5c8:	e3a02000 	mov	r2, #0
     5cc:	e5832000 	str	r2, [r3]
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e3a02001 	mov	r2, #1
     5d8:	e5832004 	str	r2, [r3, #4]
     5dc:	e1a00000 	nop			@ (mov r0, r0)
     5e0:	e28bd000 	add	sp, fp, #0
     5e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <acquireLock>:
     5ec:	e92d4800 	push	{fp, lr}
     5f0:	e28db004 	add	fp, sp, #4
     5f4:	e24dd008 	sub	sp, sp, #8
     5f8:	e50b0008 	str	r0, [fp, #-8]
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e5933000 	ldr	r3, [r3]
     604:	e3730001 	cmn	r3, #1
     608:	1a000002 	bne	618 <acquireLock+0x2c>
     60c:	e59f1034 	ldr	r1, [pc, #52]	@ 648 <acquireLock+0x5c>
     610:	e3a00002 	mov	r0, #2
     614:	eb000280 	bl	101c <printf>
     618:	e1a00000 	nop			@ (mov r0, r0)
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e3a01001 	mov	r1, #1
     624:	e1a00003 	mov	r0, r3
     628:	ebfffe98 	bl	90 <xchg>
     62c:	e1a03000 	mov	r3, r0
     630:	e3530000 	cmp	r3, #0
     634:	1afffff8 	bne	61c <acquireLock+0x30>
     638:	e1a00000 	nop			@ (mov r0, r0)
     63c:	e1a00000 	nop			@ (mov r0, r0)
     640:	e24bd004 	sub	sp, fp, #4
     644:	e8bd8800 	pop	{fp, pc}
     648:	000016e8 	.word	0x000016e8

0000064c <releaseLock>:
     64c:	e92d4800 	push	{fp, lr}
     650:	e28db004 	add	fp, sp, #4
     654:	e24dd008 	sub	sp, sp, #8
     658:	e50b0008 	str	r0, [fp, #-8]
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e5933000 	ldr	r3, [r3]
     664:	e3530001 	cmp	r3, #1
     668:	0a000002 	beq	678 <releaseLock+0x2c>
     66c:	e59f1020 	ldr	r1, [pc, #32]	@ 694 <releaseLock+0x48>
     670:	e3a00002 	mov	r0, #2
     674:	eb000268 	bl	101c <printf>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e3a01000 	mov	r1, #0
     680:	e1a00003 	mov	r0, r3
     684:	ebfffe81 	bl	90 <xchg>
     688:	e1a00000 	nop			@ (mov r0, r0)
     68c:	e24bd004 	sub	sp, fp, #4
     690:	e8bd8800 	pop	{fp, pc}
     694:	00001718 	.word	0x00001718

00000698 <initiateCondVar>:
     698:	e92d4800 	push	{fp, lr}
     69c:	e28db004 	add	fp, sp, #4
     6a0:	e24dd008 	sub	sp, sp, #8
     6a4:	e50b0008 	str	r0, [fp, #-8]
     6a8:	e51b3008 	ldr	r3, [fp, #-8]
     6ac:	e5933004 	ldr	r3, [r3, #4]
     6b0:	e3530000 	cmp	r3, #0
     6b4:	1a000007 	bne	6d8 <initiateCondVar+0x40>
     6b8:	eb0001e0 	bl	e40 <getChannel>
     6bc:	e1a02000 	mov	r2, r0
     6c0:	e51b3008 	ldr	r3, [fp, #-8]
     6c4:	e5832000 	str	r2, [r3]
     6c8:	e51b3008 	ldr	r3, [fp, #-8]
     6cc:	e3a02001 	mov	r2, #1
     6d0:	e5832004 	str	r2, [r3, #4]
     6d4:	ea000000 	b	6dc <initiateCondVar+0x44>
     6d8:	e1a00000 	nop			@ (mov r0, r0)
     6dc:	e24bd004 	sub	sp, fp, #4
     6e0:	e8bd8800 	pop	{fp, pc}

000006e4 <condWait>:
     6e4:	e92d4800 	push	{fp, lr}
     6e8:	e28db004 	add	fp, sp, #4
     6ec:	e24dd008 	sub	sp, sp, #8
     6f0:	e50b0008 	str	r0, [fp, #-8]
     6f4:	e50b100c 	str	r1, [fp, #-12]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5933004 	ldr	r3, [r3, #4]
     700:	e3530000 	cmp	r3, #0
     704:	1a000003 	bne	718 <condWait+0x34>
     708:	e59f1050 	ldr	r1, [pc, #80]	@ 760 <condWait+0x7c>
     70c:	e3a00002 	mov	r0, #2
     710:	eb000241 	bl	101c <printf>
     714:	ea00000f 	b	758 <condWait+0x74>
     718:	e51b300c 	ldr	r3, [fp, #-12]
     71c:	e5933004 	ldr	r3, [r3, #4]
     720:	e3530000 	cmp	r3, #0
     724:	1a000003 	bne	738 <condWait+0x54>
     728:	e59f1034 	ldr	r1, [pc, #52]	@ 764 <condWait+0x80>
     72c:	e3a00002 	mov	r0, #2
     730:	eb000239 	bl	101c <printf>
     734:	ea000007 	b	758 <condWait+0x74>
     738:	e51b000c 	ldr	r0, [fp, #-12]
     73c:	ebffffc2 	bl	64c <releaseLock>
     740:	e51b3008 	ldr	r3, [fp, #-8]
     744:	e5933000 	ldr	r3, [r3]
     748:	e1a00003 	mov	r0, r3
     74c:	eb0001b2 	bl	e1c <sleepChan>
     750:	e51b000c 	ldr	r0, [fp, #-12]
     754:	ebffffa4 	bl	5ec <acquireLock>
     758:	e24bd004 	sub	sp, fp, #4
     75c:	e8bd8800 	pop	{fp, pc}
     760:	00001754 	.word	0x00001754
     764:	00001778 	.word	0x00001778

00000768 <broadcast>:
     768:	e92d4800 	push	{fp, lr}
     76c:	e28db004 	add	fp, sp, #4
     770:	e24dd008 	sub	sp, sp, #8
     774:	e50b0008 	str	r0, [fp, #-8]
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933004 	ldr	r3, [r3, #4]
     780:	e3530000 	cmp	r3, #0
     784:	1a000003 	bne	798 <broadcast+0x30>
     788:	e59f1020 	ldr	r1, [pc, #32]	@ 7b0 <broadcast+0x48>
     78c:	e3a00002 	mov	r0, #2
     790:	eb000221 	bl	101c <printf>
     794:	ea000003 	b	7a8 <broadcast+0x40>
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e5933000 	ldr	r3, [r3]
     7a0:	e1a00003 	mov	r0, r3
     7a4:	eb0001ae 	bl	e64 <sigChan>
     7a8:	e24bd004 	sub	sp, fp, #4
     7ac:	e8bd8800 	pop	{fp, pc}
     7b0:	00001754 	.word	0x00001754

000007b4 <signal>:
     7b4:	e92d4800 	push	{fp, lr}
     7b8:	e28db004 	add	fp, sp, #4
     7bc:	e24dd008 	sub	sp, sp, #8
     7c0:	e50b0008 	str	r0, [fp, #-8]
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e5933004 	ldr	r3, [r3, #4]
     7cc:	e3530000 	cmp	r3, #0
     7d0:	1a000003 	bne	7e4 <signal+0x30>
     7d4:	e59f1020 	ldr	r1, [pc, #32]	@ 7fc <signal+0x48>
     7d8:	e3a00002 	mov	r0, #2
     7dc:	eb00020e 	bl	101c <printf>
     7e0:	ea000003 	b	7f4 <signal+0x40>
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5933000 	ldr	r3, [r3]
     7ec:	e1a00003 	mov	r0, r3
     7f0:	eb0001a4 	bl	e88 <sigOneChan>
     7f4:	e24bd004 	sub	sp, fp, #4
     7f8:	e8bd8800 	pop	{fp, pc}
     7fc:	00001754 	.word	0x00001754

00000800 <semInit>:
     800:	e92d4800 	push	{fp, lr}
     804:	e28db004 	add	fp, sp, #4
     808:	e24dd008 	sub	sp, sp, #8
     80c:	e50b0008 	str	r0, [fp, #-8]
     810:	e50b100c 	str	r1, [fp, #-12]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e51b200c 	ldr	r2, [fp, #-12]
     81c:	e5832000 	str	r2, [r3]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e2833004 	add	r3, r3, #4
     828:	e1a00003 	mov	r0, r3
     82c:	ebffff60 	bl	5b4 <initiateLock>
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e283300c 	add	r3, r3, #12
     838:	e1a00003 	mov	r0, r3
     83c:	ebffff95 	bl	698 <initiateCondVar>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e3a02001 	mov	r2, #1
     848:	e5832014 	str	r2, [r3, #20]
     84c:	e1a00000 	nop			@ (mov r0, r0)
     850:	e24bd004 	sub	sp, fp, #4
     854:	e8bd8800 	pop	{fp, pc}

00000858 <semDown>:
     858:	e92d4800 	push	{fp, lr}
     85c:	e28db004 	add	fp, sp, #4
     860:	e24dd008 	sub	sp, sp, #8
     864:	e50b0008 	str	r0, [fp, #-8]
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e5933014 	ldr	r3, [r3, #20]
     870:	e3530000 	cmp	r3, #0
     874:	1a000003 	bne	888 <semDown+0x30>
     878:	e59f1074 	ldr	r1, [pc, #116]	@ 8f4 <semDown+0x9c>
     87c:	e3a00002 	mov	r0, #2
     880:	eb0001e5 	bl	101c <printf>
     884:	ea000018 	b	8ec <semDown+0x94>
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833004 	add	r3, r3, #4
     890:	e1a00003 	mov	r0, r3
     894:	ebffff54 	bl	5ec <acquireLock>
     898:	ea000006 	b	8b8 <semDown+0x60>
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e283200c 	add	r2, r3, #12
     8a4:	e51b3008 	ldr	r3, [fp, #-8]
     8a8:	e2833004 	add	r3, r3, #4
     8ac:	e1a01003 	mov	r1, r3
     8b0:	e1a00002 	mov	r0, r2
     8b4:	ebffff8a 	bl	6e4 <condWait>
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933000 	ldr	r3, [r3]
     8c0:	e3530000 	cmp	r3, #0
     8c4:	0afffff4 	beq	89c <semDown+0x44>
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e5933000 	ldr	r3, [r3]
     8d0:	e2432001 	sub	r2, r3, #1
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e5832000 	str	r2, [r3]
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e2833004 	add	r3, r3, #4
     8e4:	e1a00003 	mov	r0, r3
     8e8:	ebffff57 	bl	64c <releaseLock>
     8ec:	e24bd004 	sub	sp, fp, #4
     8f0:	e8bd8800 	pop	{fp, pc}
     8f4:	00001798 	.word	0x00001798

000008f8 <semUp>:
     8f8:	e92d4800 	push	{fp, lr}
     8fc:	e28db004 	add	fp, sp, #4
     900:	e24dd008 	sub	sp, sp, #8
     904:	e50b0008 	str	r0, [fp, #-8]
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e5933014 	ldr	r3, [r3, #20]
     910:	e3530000 	cmp	r3, #0
     914:	1a000003 	bne	928 <semUp+0x30>
     918:	e59f1054 	ldr	r1, [pc, #84]	@ 974 <semUp+0x7c>
     91c:	e3a00002 	mov	r0, #2
     920:	eb0001bd 	bl	101c <printf>
     924:	ea000010 	b	96c <semUp+0x74>
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e2833004 	add	r3, r3, #4
     930:	e1a00003 	mov	r0, r3
     934:	ebffff2c 	bl	5ec <acquireLock>
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e5933000 	ldr	r3, [r3]
     940:	e2832001 	add	r2, r3, #1
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e5832000 	str	r2, [r3]
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e283300c 	add	r3, r3, #12
     954:	e1a00003 	mov	r0, r3
     958:	ebffff95 	bl	7b4 <signal>
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e2833004 	add	r3, r3, #4
     964:	e1a00003 	mov	r0, r3
     968:	ebffff37 	bl	64c <releaseLock>
     96c:	e24bd004 	sub	sp, fp, #4
     970:	e8bd8800 	pop	{fp, pc}
     974:	00001798 	.word	0x00001798

00000978 <fork>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00001 	mov	r0, #1
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <exit>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00002 	mov	r0, #2
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <wait>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00003 	mov	r0, #3
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <pipe>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00004 	mov	r0, #4
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <read>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00005 	mov	r0, #5
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <write>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00010 	mov	r0, #16
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <close>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00015 	mov	r0, #21
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <kill>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00006 	mov	r0, #6
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <exec>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00007 	mov	r0, #7
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <open>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a0000f 	mov	r0, #15
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <mknod>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00011 	mov	r0, #17
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <unlink>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00012 	mov	r0, #18
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <fstat>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00008 	mov	r0, #8
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <link>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a00013 	mov	r0, #19
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <mkdir>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00014 	mov	r0, #20
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <chdir>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00009 	mov	r0, #9
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <dup>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000a 	mov	r0, #10
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <getpid>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a0000b 	mov	r0, #11
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <sbrk>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a0000c 	mov	r0, #12
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <sleep>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a0000d 	mov	r0, #13
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <uptime>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a0000e 	mov	r0, #14
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <disproc>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00016 	mov	r0, #22
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <srand>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a00017 	mov	r0, #23
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <setticket>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a00018 	mov	r0, #24
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <getpinfo>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a00019 	mov	r0, #25
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <printPages>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a0001a 	mov	r0, #26
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <kpt>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a0001b 	mov	r0, #27
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <thread_create>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a0001c 	mov	r0, #28
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <thread_exit>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a0001d 	mov	r0, #29
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <thread_join>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a0001e 	mov	r0, #30
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <waitpid>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a0001f 	mov	r0, #31
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <barrier_init>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00020 	mov	r0, #32
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <barrier_check>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00021 	mov	r0, #33	@ 0x21
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <sleepChan>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00022 	mov	r0, #34	@ 0x22
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <getChannel>:
     e40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e44:	e1a04003 	mov	r4, r3
     e48:	e1a03002 	mov	r3, r2
     e4c:	e1a02001 	mov	r2, r1
     e50:	e1a01000 	mov	r1, r0
     e54:	e3a00023 	mov	r0, #35	@ 0x23
     e58:	ef000000 	svc	0x00000000
     e5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e60:	e12fff1e 	bx	lr

00000e64 <sigChan>:
     e64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e68:	e1a04003 	mov	r4, r3
     e6c:	e1a03002 	mov	r3, r2
     e70:	e1a02001 	mov	r2, r1
     e74:	e1a01000 	mov	r1, r0
     e78:	e3a00024 	mov	r0, #36	@ 0x24
     e7c:	ef000000 	svc	0x00000000
     e80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e84:	e12fff1e 	bx	lr

00000e88 <sigOneChan>:
     e88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e8c:	e1a04003 	mov	r4, r3
     e90:	e1a03002 	mov	r3, r2
     e94:	e1a02001 	mov	r2, r1
     e98:	e1a01000 	mov	r1, r0
     e9c:	e3a00025 	mov	r0, #37	@ 0x25
     ea0:	ef000000 	svc	0x00000000
     ea4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea8:	e12fff1e 	bx	lr

00000eac <putc>:
     eac:	e92d4800 	push	{fp, lr}
     eb0:	e28db004 	add	fp, sp, #4
     eb4:	e24dd008 	sub	sp, sp, #8
     eb8:	e50b0008 	str	r0, [fp, #-8]
     ebc:	e1a03001 	mov	r3, r1
     ec0:	e54b3009 	strb	r3, [fp, #-9]
     ec4:	e24b3009 	sub	r3, fp, #9
     ec8:	e3a02001 	mov	r2, #1
     ecc:	e1a01003 	mov	r1, r3
     ed0:	e51b0008 	ldr	r0, [fp, #-8]
     ed4:	ebfffed4 	bl	a2c <write>
     ed8:	e1a00000 	nop			@ (mov r0, r0)
     edc:	e24bd004 	sub	sp, fp, #4
     ee0:	e8bd8800 	pop	{fp, pc}

00000ee4 <printint>:
     ee4:	e92d4800 	push	{fp, lr}
     ee8:	e28db004 	add	fp, sp, #4
     eec:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ef0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ef4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ef8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     efc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f00:	e3a03000 	mov	r3, #0
     f04:	e50b300c 	str	r3, [fp, #-12]
     f08:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f0c:	e3530000 	cmp	r3, #0
     f10:	0a000008 	beq	f38 <printint+0x54>
     f14:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f18:	e3530000 	cmp	r3, #0
     f1c:	aa000005 	bge	f38 <printint+0x54>
     f20:	e3a03001 	mov	r3, #1
     f24:	e50b300c 	str	r3, [fp, #-12]
     f28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f2c:	e2633000 	rsb	r3, r3, #0
     f30:	e50b3010 	str	r3, [fp, #-16]
     f34:	ea000001 	b	f40 <printint+0x5c>
     f38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f3c:	e50b3010 	str	r3, [fp, #-16]
     f40:	e3a03000 	mov	r3, #0
     f44:	e50b3008 	str	r3, [fp, #-8]
     f48:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f4c:	e51b3010 	ldr	r3, [fp, #-16]
     f50:	e1a01002 	mov	r1, r2
     f54:	e1a00003 	mov	r0, r3
     f58:	eb0001d5 	bl	16b4 <__aeabi_uidivmod>
     f5c:	e1a03001 	mov	r3, r1
     f60:	e1a01003 	mov	r1, r3
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e2832001 	add	r2, r3, #1
     f6c:	e50b2008 	str	r2, [fp, #-8]
     f70:	e59f20a0 	ldr	r2, [pc, #160]	@ 1018 <printint+0x134>
     f74:	e7d22001 	ldrb	r2, [r2, r1]
     f78:	e2433004 	sub	r3, r3, #4
     f7c:	e083300b 	add	r3, r3, fp
     f80:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f84:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f88:	e1a01003 	mov	r1, r3
     f8c:	e51b0010 	ldr	r0, [fp, #-16]
     f90:	eb00018a 	bl	15c0 <__udivsi3>
     f94:	e1a03000 	mov	r3, r0
     f98:	e50b3010 	str	r3, [fp, #-16]
     f9c:	e51b3010 	ldr	r3, [fp, #-16]
     fa0:	e3530000 	cmp	r3, #0
     fa4:	1affffe7 	bne	f48 <printint+0x64>
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e3530000 	cmp	r3, #0
     fb0:	0a00000e 	beq	ff0 <printint+0x10c>
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e2832001 	add	r2, r3, #1
     fbc:	e50b2008 	str	r2, [fp, #-8]
     fc0:	e2433004 	sub	r3, r3, #4
     fc4:	e083300b 	add	r3, r3, fp
     fc8:	e3a0202d 	mov	r2, #45	@ 0x2d
     fcc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fd0:	ea000006 	b	ff0 <printint+0x10c>
     fd4:	e24b2020 	sub	r2, fp, #32
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e0823003 	add	r3, r2, r3
     fe0:	e5d33000 	ldrb	r3, [r3]
     fe4:	e1a01003 	mov	r1, r3
     fe8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     fec:	ebffffae 	bl	eac <putc>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e2433001 	sub	r3, r3, #1
     ff8:	e50b3008 	str	r3, [fp, #-8]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e3530000 	cmp	r3, #0
    1004:	aafffff2 	bge	fd4 <printint+0xf0>
    1008:	e1a00000 	nop			@ (mov r0, r0)
    100c:	e1a00000 	nop			@ (mov r0, r0)
    1010:	e24bd004 	sub	sp, fp, #4
    1014:	e8bd8800 	pop	{fp, pc}
    1018:	000017c4 	.word	0x000017c4

0000101c <printf>:
    101c:	e92d000e 	push	{r1, r2, r3}
    1020:	e92d4800 	push	{fp, lr}
    1024:	e28db004 	add	fp, sp, #4
    1028:	e24dd024 	sub	sp, sp, #36	@ 0x24
    102c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1030:	e3a03000 	mov	r3, #0
    1034:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1038:	e28b3008 	add	r3, fp, #8
    103c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1040:	e3a03000 	mov	r3, #0
    1044:	e50b3010 	str	r3, [fp, #-16]
    1048:	ea000074 	b	1220 <printf+0x204>
    104c:	e59b2004 	ldr	r2, [fp, #4]
    1050:	e51b3010 	ldr	r3, [fp, #-16]
    1054:	e0823003 	add	r3, r2, r3
    1058:	e5d33000 	ldrb	r3, [r3]
    105c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1060:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1064:	e3530000 	cmp	r3, #0
    1068:	1a00000b 	bne	109c <printf+0x80>
    106c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1070:	e3530025 	cmp	r3, #37	@ 0x25
    1074:	1a000002 	bne	1084 <printf+0x68>
    1078:	e3a03025 	mov	r3, #37	@ 0x25
    107c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1080:	ea000063 	b	1214 <printf+0x1f8>
    1084:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1088:	e6ef3073 	uxtb	r3, r3
    108c:	e1a01003 	mov	r1, r3
    1090:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1094:	ebffff84 	bl	eac <putc>
    1098:	ea00005d 	b	1214 <printf+0x1f8>
    109c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10a0:	e3530025 	cmp	r3, #37	@ 0x25
    10a4:	1a00005a 	bne	1214 <printf+0x1f8>
    10a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ac:	e3530064 	cmp	r3, #100	@ 0x64
    10b0:	1a00000a 	bne	10e0 <printf+0xc4>
    10b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10b8:	e5933000 	ldr	r3, [r3]
    10bc:	e1a01003 	mov	r1, r3
    10c0:	e3a03001 	mov	r3, #1
    10c4:	e3a0200a 	mov	r2, #10
    10c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10cc:	ebffff84 	bl	ee4 <printint>
    10d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e2833004 	add	r3, r3, #4
    10d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	ea00004a 	b	120c <printf+0x1f0>
    10e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e4:	e3530078 	cmp	r3, #120	@ 0x78
    10e8:	0a000002 	beq	10f8 <printf+0xdc>
    10ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f0:	e3530070 	cmp	r3, #112	@ 0x70
    10f4:	1a00000a 	bne	1124 <printf+0x108>
    10f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10fc:	e5933000 	ldr	r3, [r3]
    1100:	e1a01003 	mov	r1, r3
    1104:	e3a03000 	mov	r3, #0
    1108:	e3a02010 	mov	r2, #16
    110c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1110:	ebffff73 	bl	ee4 <printint>
    1114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1118:	e2833004 	add	r3, r3, #4
    111c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1120:	ea000039 	b	120c <printf+0x1f0>
    1124:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1128:	e3530073 	cmp	r3, #115	@ 0x73
    112c:	1a000018 	bne	1194 <printf+0x178>
    1130:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1134:	e5933000 	ldr	r3, [r3]
    1138:	e50b300c 	str	r3, [fp, #-12]
    113c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1140:	e2833004 	add	r3, r3, #4
    1144:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e3530000 	cmp	r3, #0
    1150:	1a00000a 	bne	1180 <printf+0x164>
    1154:	e59f30f4 	ldr	r3, [pc, #244]	@ 1250 <printf+0x234>
    1158:	e50b300c 	str	r3, [fp, #-12]
    115c:	ea000007 	b	1180 <printf+0x164>
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e5d33000 	ldrb	r3, [r3]
    1168:	e1a01003 	mov	r1, r3
    116c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1170:	ebffff4d 	bl	eac <putc>
    1174:	e51b300c 	ldr	r3, [fp, #-12]
    1178:	e2833001 	add	r3, r3, #1
    117c:	e50b300c 	str	r3, [fp, #-12]
    1180:	e51b300c 	ldr	r3, [fp, #-12]
    1184:	e5d33000 	ldrb	r3, [r3]
    1188:	e3530000 	cmp	r3, #0
    118c:	1afffff3 	bne	1160 <printf+0x144>
    1190:	ea00001d 	b	120c <printf+0x1f0>
    1194:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1198:	e3530063 	cmp	r3, #99	@ 0x63
    119c:	1a000009 	bne	11c8 <printf+0x1ac>
    11a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e6ef3073 	uxtb	r3, r3
    11ac:	e1a01003 	mov	r1, r3
    11b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b4:	ebffff3c 	bl	eac <putc>
    11b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11bc:	e2833004 	add	r3, r3, #4
    11c0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c4:	ea000010 	b	120c <printf+0x1f0>
    11c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11cc:	e3530025 	cmp	r3, #37	@ 0x25
    11d0:	1a000005 	bne	11ec <printf+0x1d0>
    11d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d8:	e6ef3073 	uxtb	r3, r3
    11dc:	e1a01003 	mov	r1, r3
    11e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e4:	ebffff30 	bl	eac <putc>
    11e8:	ea000007 	b	120c <printf+0x1f0>
    11ec:	e3a01025 	mov	r1, #37	@ 0x25
    11f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f4:	ebffff2c 	bl	eac <putc>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e6ef3073 	uxtb	r3, r3
    1200:	e1a01003 	mov	r1, r3
    1204:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1208:	ebffff27 	bl	eac <putc>
    120c:	e3a03000 	mov	r3, #0
    1210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1214:	e51b3010 	ldr	r3, [fp, #-16]
    1218:	e2833001 	add	r3, r3, #1
    121c:	e50b3010 	str	r3, [fp, #-16]
    1220:	e59b2004 	ldr	r2, [fp, #4]
    1224:	e51b3010 	ldr	r3, [fp, #-16]
    1228:	e0823003 	add	r3, r2, r3
    122c:	e5d33000 	ldrb	r3, [r3]
    1230:	e3530000 	cmp	r3, #0
    1234:	1affff84 	bne	104c <printf+0x30>
    1238:	e1a00000 	nop			@ (mov r0, r0)
    123c:	e1a00000 	nop			@ (mov r0, r0)
    1240:	e24bd004 	sub	sp, fp, #4
    1244:	e8bd4800 	pop	{fp, lr}
    1248:	e28dd00c 	add	sp, sp, #12
    124c:	e12fff1e 	bx	lr
    1250:	000017bc 	.word	0x000017bc

00001254 <free>:
    1254:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1258:	e28db000 	add	fp, sp, #0
    125c:	e24dd014 	sub	sp, sp, #20
    1260:	e50b0010 	str	r0, [fp, #-16]
    1264:	e51b3010 	ldr	r3, [fp, #-16]
    1268:	e2433008 	sub	r3, r3, #8
    126c:	e50b300c 	str	r3, [fp, #-12]
    1270:	e59f3154 	ldr	r3, [pc, #340]	@ 13cc <free+0x178>
    1274:	e5933000 	ldr	r3, [r3]
    1278:	e50b3008 	str	r3, [fp, #-8]
    127c:	ea000010 	b	12c4 <free+0x70>
    1280:	e51b3008 	ldr	r3, [fp, #-8]
    1284:	e5933000 	ldr	r3, [r3]
    1288:	e51b2008 	ldr	r2, [fp, #-8]
    128c:	e1520003 	cmp	r2, r3
    1290:	3a000008 	bcc	12b8 <free+0x64>
    1294:	e51b200c 	ldr	r2, [fp, #-12]
    1298:	e51b3008 	ldr	r3, [fp, #-8]
    129c:	e1520003 	cmp	r2, r3
    12a0:	8a000010 	bhi	12e8 <free+0x94>
    12a4:	e51b3008 	ldr	r3, [fp, #-8]
    12a8:	e5933000 	ldr	r3, [r3]
    12ac:	e51b200c 	ldr	r2, [fp, #-12]
    12b0:	e1520003 	cmp	r2, r3
    12b4:	3a00000b 	bcc	12e8 <free+0x94>
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e50b3008 	str	r3, [fp, #-8]
    12c4:	e51b200c 	ldr	r2, [fp, #-12]
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e1520003 	cmp	r2, r3
    12d0:	9affffea 	bls	1280 <free+0x2c>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e5933000 	ldr	r3, [r3]
    12dc:	e51b200c 	ldr	r2, [fp, #-12]
    12e0:	e1520003 	cmp	r2, r3
    12e4:	2affffe5 	bcs	1280 <free+0x2c>
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e5933004 	ldr	r3, [r3, #4]
    12f0:	e1a03183 	lsl	r3, r3, #3
    12f4:	e51b200c 	ldr	r2, [fp, #-12]
    12f8:	e0822003 	add	r2, r2, r3
    12fc:	e51b3008 	ldr	r3, [fp, #-8]
    1300:	e5933000 	ldr	r3, [r3]
    1304:	e1520003 	cmp	r2, r3
    1308:	1a00000d 	bne	1344 <free+0xf0>
    130c:	e51b300c 	ldr	r3, [fp, #-12]
    1310:	e5932004 	ldr	r2, [r3, #4]
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5933000 	ldr	r3, [r3]
    131c:	e5933004 	ldr	r3, [r3, #4]
    1320:	e0822003 	add	r2, r2, r3
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5832004 	str	r2, [r3, #4]
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e5933000 	ldr	r3, [r3]
    1334:	e5932000 	ldr	r2, [r3]
    1338:	e51b300c 	ldr	r3, [fp, #-12]
    133c:	e5832000 	str	r2, [r3]
    1340:	ea000003 	b	1354 <free+0x100>
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5932000 	ldr	r2, [r3]
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e5832000 	str	r2, [r3]
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5933004 	ldr	r3, [r3, #4]
    135c:	e1a03183 	lsl	r3, r3, #3
    1360:	e51b2008 	ldr	r2, [fp, #-8]
    1364:	e0823003 	add	r3, r2, r3
    1368:	e51b200c 	ldr	r2, [fp, #-12]
    136c:	e1520003 	cmp	r2, r3
    1370:	1a00000b 	bne	13a4 <free+0x150>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5932004 	ldr	r2, [r3, #4]
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e5933004 	ldr	r3, [r3, #4]
    1384:	e0822003 	add	r2, r2, r3
    1388:	e51b3008 	ldr	r3, [fp, #-8]
    138c:	e5832004 	str	r2, [r3, #4]
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e5932000 	ldr	r2, [r3]
    1398:	e51b3008 	ldr	r3, [fp, #-8]
    139c:	e5832000 	str	r2, [r3]
    13a0:	ea000002 	b	13b0 <free+0x15c>
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e51b200c 	ldr	r2, [fp, #-12]
    13ac:	e5832000 	str	r2, [r3]
    13b0:	e59f2014 	ldr	r2, [pc, #20]	@ 13cc <free+0x178>
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e5823000 	str	r3, [r2]
    13bc:	e1a00000 	nop			@ (mov r0, r0)
    13c0:	e28bd000 	add	sp, fp, #0
    13c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    13c8:	e12fff1e 	bx	lr
    13cc:	000017e0 	.word	0x000017e0

000013d0 <morecore>:
    13d0:	e92d4800 	push	{fp, lr}
    13d4:	e28db004 	add	fp, sp, #4
    13d8:	e24dd010 	sub	sp, sp, #16
    13dc:	e50b0010 	str	r0, [fp, #-16]
    13e0:	e51b3010 	ldr	r3, [fp, #-16]
    13e4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    13e8:	2a000001 	bcs	13f4 <morecore+0x24>
    13ec:	e3a03a01 	mov	r3, #4096	@ 0x1000
    13f0:	e50b3010 	str	r3, [fp, #-16]
    13f4:	e51b3010 	ldr	r3, [fp, #-16]
    13f8:	e1a03183 	lsl	r3, r3, #3
    13fc:	e1a00003 	mov	r0, r3
    1400:	ebfffdfe 	bl	c00 <sbrk>
    1404:	e50b0008 	str	r0, [fp, #-8]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e3730001 	cmn	r3, #1
    1410:	1a000001 	bne	141c <morecore+0x4c>
    1414:	e3a03000 	mov	r3, #0
    1418:	ea00000a 	b	1448 <morecore+0x78>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e50b300c 	str	r3, [fp, #-12]
    1424:	e51b300c 	ldr	r3, [fp, #-12]
    1428:	e51b2010 	ldr	r2, [fp, #-16]
    142c:	e5832004 	str	r2, [r3, #4]
    1430:	e51b300c 	ldr	r3, [fp, #-12]
    1434:	e2833008 	add	r3, r3, #8
    1438:	e1a00003 	mov	r0, r3
    143c:	ebffff84 	bl	1254 <free>
    1440:	e59f300c 	ldr	r3, [pc, #12]	@ 1454 <morecore+0x84>
    1444:	e5933000 	ldr	r3, [r3]
    1448:	e1a00003 	mov	r0, r3
    144c:	e24bd004 	sub	sp, fp, #4
    1450:	e8bd8800 	pop	{fp, pc}
    1454:	000017e0 	.word	0x000017e0

00001458 <malloc>:
    1458:	e92d4800 	push	{fp, lr}
    145c:	e28db004 	add	fp, sp, #4
    1460:	e24dd018 	sub	sp, sp, #24
    1464:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    146c:	e2833007 	add	r3, r3, #7
    1470:	e1a031a3 	lsr	r3, r3, #3
    1474:	e2833001 	add	r3, r3, #1
    1478:	e50b3010 	str	r3, [fp, #-16]
    147c:	e59f3134 	ldr	r3, [pc, #308]	@ 15b8 <malloc+0x160>
    1480:	e5933000 	ldr	r3, [r3]
    1484:	e50b300c 	str	r3, [fp, #-12]
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e3530000 	cmp	r3, #0
    1490:	1a00000b 	bne	14c4 <malloc+0x6c>
    1494:	e59f3120 	ldr	r3, [pc, #288]	@ 15bc <malloc+0x164>
    1498:	e50b300c 	str	r3, [fp, #-12]
    149c:	e59f2114 	ldr	r2, [pc, #276]	@ 15b8 <malloc+0x160>
    14a0:	e51b300c 	ldr	r3, [fp, #-12]
    14a4:	e5823000 	str	r3, [r2]
    14a8:	e59f3108 	ldr	r3, [pc, #264]	@ 15b8 <malloc+0x160>
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e59f2104 	ldr	r2, [pc, #260]	@ 15bc <malloc+0x164>
    14b4:	e5823000 	str	r3, [r2]
    14b8:	e59f30fc 	ldr	r3, [pc, #252]	@ 15bc <malloc+0x164>
    14bc:	e3a02000 	mov	r2, #0
    14c0:	e5832004 	str	r2, [r3, #4]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e5933000 	ldr	r3, [r3]
    14cc:	e50b3008 	str	r3, [fp, #-8]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e5933004 	ldr	r3, [r3, #4]
    14d8:	e51b2010 	ldr	r2, [fp, #-16]
    14dc:	e1520003 	cmp	r2, r3
    14e0:	8a00001e 	bhi	1560 <malloc+0x108>
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5933004 	ldr	r3, [r3, #4]
    14ec:	e51b2010 	ldr	r2, [fp, #-16]
    14f0:	e1520003 	cmp	r2, r3
    14f4:	1a000004 	bne	150c <malloc+0xb4>
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5932000 	ldr	r2, [r3]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5832000 	str	r2, [r3]
    1508:	ea00000e 	b	1548 <malloc+0xf0>
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e5932004 	ldr	r2, [r3, #4]
    1514:	e51b3010 	ldr	r3, [fp, #-16]
    1518:	e0422003 	sub	r2, r2, r3
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5832004 	str	r2, [r3, #4]
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5933004 	ldr	r3, [r3, #4]
    152c:	e1a03183 	lsl	r3, r3, #3
    1530:	e51b2008 	ldr	r2, [fp, #-8]
    1534:	e0823003 	add	r3, r2, r3
    1538:	e50b3008 	str	r3, [fp, #-8]
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e51b2010 	ldr	r2, [fp, #-16]
    1544:	e5832004 	str	r2, [r3, #4]
    1548:	e59f2068 	ldr	r2, [pc, #104]	@ 15b8 <malloc+0x160>
    154c:	e51b300c 	ldr	r3, [fp, #-12]
    1550:	e5823000 	str	r3, [r2]
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e2833008 	add	r3, r3, #8
    155c:	ea000012 	b	15ac <malloc+0x154>
    1560:	e59f3050 	ldr	r3, [pc, #80]	@ 15b8 <malloc+0x160>
    1564:	e5933000 	ldr	r3, [r3]
    1568:	e51b2008 	ldr	r2, [fp, #-8]
    156c:	e1520003 	cmp	r2, r3
    1570:	1a000007 	bne	1594 <malloc+0x13c>
    1574:	e51b0010 	ldr	r0, [fp, #-16]
    1578:	ebffff94 	bl	13d0 <morecore>
    157c:	e50b0008 	str	r0, [fp, #-8]
    1580:	e51b3008 	ldr	r3, [fp, #-8]
    1584:	e3530000 	cmp	r3, #0
    1588:	1a000001 	bne	1594 <malloc+0x13c>
    158c:	e3a03000 	mov	r3, #0
    1590:	ea000005 	b	15ac <malloc+0x154>
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e50b300c 	str	r3, [fp, #-12]
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e5933000 	ldr	r3, [r3]
    15a4:	e50b3008 	str	r3, [fp, #-8]
    15a8:	eaffffc8 	b	14d0 <malloc+0x78>
    15ac:	e1a00003 	mov	r0, r3
    15b0:	e24bd004 	sub	sp, fp, #4
    15b4:	e8bd8800 	pop	{fp, pc}
    15b8:	000017e0 	.word	0x000017e0
    15bc:	000017d8 	.word	0x000017d8

000015c0 <__udivsi3>:
    15c0:	e2512001 	subs	r2, r1, #1
    15c4:	012fff1e 	bxeq	lr
    15c8:	3a000036 	bcc	16a8 <__udivsi3+0xe8>
    15cc:	e1500001 	cmp	r0, r1
    15d0:	9a000022 	bls	1660 <__udivsi3+0xa0>
    15d4:	e1110002 	tst	r1, r2
    15d8:	0a000023 	beq	166c <__udivsi3+0xac>
    15dc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    15e0:	01a01181 	lsleq	r1, r1, #3
    15e4:	03a03008 	moveq	r3, #8
    15e8:	13a03001 	movne	r3, #1
    15ec:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    15f0:	31510000 	cmpcc	r1, r0
    15f4:	31a01201 	lslcc	r1, r1, #4
    15f8:	31a03203 	lslcc	r3, r3, #4
    15fc:	3afffffa 	bcc	15ec <__udivsi3+0x2c>
    1600:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1604:	31510000 	cmpcc	r1, r0
    1608:	31a01081 	lslcc	r1, r1, #1
    160c:	31a03083 	lslcc	r3, r3, #1
    1610:	3afffffa 	bcc	1600 <__udivsi3+0x40>
    1614:	e3a02000 	mov	r2, #0
    1618:	e1500001 	cmp	r0, r1
    161c:	20400001 	subcs	r0, r0, r1
    1620:	21822003 	orrcs	r2, r2, r3
    1624:	e15000a1 	cmp	r0, r1, lsr #1
    1628:	204000a1 	subcs	r0, r0, r1, lsr #1
    162c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1630:	e1500121 	cmp	r0, r1, lsr #2
    1634:	20400121 	subcs	r0, r0, r1, lsr #2
    1638:	21822123 	orrcs	r2, r2, r3, lsr #2
    163c:	e15001a1 	cmp	r0, r1, lsr #3
    1640:	204001a1 	subcs	r0, r0, r1, lsr #3
    1644:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1648:	e3500000 	cmp	r0, #0
    164c:	11b03223 	lsrsne	r3, r3, #4
    1650:	11a01221 	lsrne	r1, r1, #4
    1654:	1affffef 	bne	1618 <__udivsi3+0x58>
    1658:	e1a00002 	mov	r0, r2
    165c:	e12fff1e 	bx	lr
    1660:	03a00001 	moveq	r0, #1
    1664:	13a00000 	movne	r0, #0
    1668:	e12fff1e 	bx	lr
    166c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1670:	21a01821 	lsrcs	r1, r1, #16
    1674:	23a02010 	movcs	r2, #16
    1678:	33a02000 	movcc	r2, #0
    167c:	e3510c01 	cmp	r1, #256	@ 0x100
    1680:	21a01421 	lsrcs	r1, r1, #8
    1684:	22822008 	addcs	r2, r2, #8
    1688:	e3510010 	cmp	r1, #16
    168c:	21a01221 	lsrcs	r1, r1, #4
    1690:	22822004 	addcs	r2, r2, #4
    1694:	e3510004 	cmp	r1, #4
    1698:	82822003 	addhi	r2, r2, #3
    169c:	908220a1 	addls	r2, r2, r1, lsr #1
    16a0:	e1a00230 	lsr	r0, r0, r2
    16a4:	e12fff1e 	bx	lr
    16a8:	e3500000 	cmp	r0, #0
    16ac:	13e00000 	mvnne	r0, #0
    16b0:	ea000007 	b	16d4 <__aeabi_idiv0>

000016b4 <__aeabi_uidivmod>:
    16b4:	e3510000 	cmp	r1, #0
    16b8:	0afffffa 	beq	16a8 <__udivsi3+0xe8>
    16bc:	e92d4003 	push	{r0, r1, lr}
    16c0:	ebffffbe 	bl	15c0 <__udivsi3>
    16c4:	e8bd4006 	pop	{r1, r2, lr}
    16c8:	e0030092 	mul	r3, r2, r0
    16cc:	e0411003 	sub	r1, r1, r3
    16d0:	e12fff1e 	bx	lr

000016d4 <__aeabi_idiv0>:
    16d4:	e12fff1e 	bx	lr
