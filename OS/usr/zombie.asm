
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00023f 	bl	90c <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb0002e5 	bl	bb8 <sleep>
      20:	eb000242 	bl	930 <exit>

00000024 <xchg>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e51b1010 	ldr	r1, [fp, #-16]
      3c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      40:	e1912f9f 	ldrex	r2, [r1]
      44:	e1813f90 	strex	r3, r0, [r1]
      48:	e50b2008 	str	r2, [fp, #-8]
      4c:	e50b300c 	str	r3, [fp, #-12]
      50:	e51b300c 	ldr	r3, [fp, #-12]
      54:	e3530000 	cmp	r3, #0
      58:	1afffff6 	bne	38 <xchg+0x14>
      5c:	e51b3008 	ldr	r3, [fp, #-8]
      60:	e1a00003 	mov	r0, r3
      64:	e28bd000 	add	sp, fp, #0
      68:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      6c:	e12fff1e 	bx	lr

00000070 <strcpy>:
      70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      74:	e28db000 	add	fp, sp, #0
      78:	e24dd014 	sub	sp, sp, #20
      7c:	e50b0010 	str	r0, [fp, #-16]
      80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      84:	e51b3010 	ldr	r3, [fp, #-16]
      88:	e50b3008 	str	r3, [fp, #-8]
      8c:	e1a00000 	nop			@ (mov r0, r0)
      90:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      94:	e2823001 	add	r3, r2, #1
      98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e2831001 	add	r1, r3, #1
      a4:	e50b1010 	str	r1, [fp, #-16]
      a8:	e5d22000 	ldrb	r2, [r2]
      ac:	e5c32000 	strb	r2, [r3]
      b0:	e5d33000 	ldrb	r3, [r3]
      b4:	e3530000 	cmp	r3, #0
      b8:	1afffff4 	bne	90 <strcpy+0x20>
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e1a00003 	mov	r0, r3
      c4:	e28bd000 	add	sp, fp, #0
      c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      cc:	e12fff1e 	bx	lr

000000d0 <strcmp>:
      d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d4:	e28db000 	add	fp, sp, #0
      d8:	e24dd00c 	sub	sp, sp, #12
      dc:	e50b0008 	str	r0, [fp, #-8]
      e0:	e50b100c 	str	r1, [fp, #-12]
      e4:	ea000005 	b	100 <strcmp+0x30>
      e8:	e51b3008 	ldr	r3, [fp, #-8]
      ec:	e2833001 	add	r3, r3, #1
      f0:	e50b3008 	str	r3, [fp, #-8]
      f4:	e51b300c 	ldr	r3, [fp, #-12]
      f8:	e2833001 	add	r3, r3, #1
      fc:	e50b300c 	str	r3, [fp, #-12]
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e5d33000 	ldrb	r3, [r3]
     108:	e3530000 	cmp	r3, #0
     10c:	0a000005 	beq	128 <strcmp+0x58>
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e5d32000 	ldrb	r2, [r3]
     118:	e51b300c 	ldr	r3, [fp, #-12]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e1520003 	cmp	r2, r3
     124:	0affffef 	beq	e8 <strcmp+0x18>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d33000 	ldrb	r3, [r3]
     130:	e1a02003 	mov	r2, r3
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e0423003 	sub	r3, r2, r3
     140:	e1a00003 	mov	r0, r3
     144:	e28bd000 	add	sp, fp, #0
     148:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     14c:	e12fff1e 	bx	lr

00000150 <strlen>:
     150:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     154:	e28db000 	add	fp, sp, #0
     158:	e24dd014 	sub	sp, sp, #20
     15c:	e50b0010 	str	r0, [fp, #-16]
     160:	e3a03000 	mov	r3, #0
     164:	e50b3008 	str	r3, [fp, #-8]
     168:	ea000002 	b	178 <strlen+0x28>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e2833001 	add	r3, r3, #1
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e51b2010 	ldr	r2, [fp, #-16]
     180:	e0823003 	add	r3, r2, r3
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e3530000 	cmp	r3, #0
     18c:	1afffff6 	bne	16c <strlen+0x1c>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a00003 	mov	r0, r3
     198:	e28bd000 	add	sp, fp, #0
     19c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a0:	e12fff1e 	bx	lr

000001a4 <memset>:
     1a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a8:	e28db000 	add	fp, sp, #0
     1ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1c8:	e54b300d 	strb	r3, [fp, #-13]
     1cc:	e55b200d 	ldrb	r2, [fp, #-13]
     1d0:	e1a03002 	mov	r3, r2
     1d4:	e1a03403 	lsl	r3, r3, #8
     1d8:	e0833002 	add	r3, r3, r2
     1dc:	e1a03803 	lsl	r3, r3, #16
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e55b300d 	ldrb	r3, [fp, #-13]
     1e8:	e1a03403 	lsl	r3, r3, #8
     1ec:	e1822003 	orr	r2, r2, r3
     1f0:	e55b300d 	ldrb	r3, [fp, #-13]
     1f4:	e1823003 	orr	r3, r2, r3
     1f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1fc:	ea000008 	b	224 <memset+0x80>
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e55b200d 	ldrb	r2, [fp, #-13]
     208:	e5c32000 	strb	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433001 	sub	r3, r3, #1
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e2833001 	add	r3, r3, #1
     220:	e50b3008 	str	r3, [fp, #-8]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530000 	cmp	r3, #0
     22c:	0a000003 	beq	240 <memset+0x9c>
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2033003 	and	r3, r3, #3
     238:	e3530000 	cmp	r3, #0
     23c:	1affffef 	bne	200 <memset+0x5c>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e50b300c 	str	r3, [fp, #-12]
     248:	ea000008 	b	270 <memset+0xcc>
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     254:	e5832000 	str	r2, [r3]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e2433004 	sub	r3, r3, #4
     260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e2833004 	add	r3, r3, #4
     26c:	e50b300c 	str	r3, [fp, #-12]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e3530003 	cmp	r3, #3
     278:	8afffff3 	bhi	24c <memset+0xa8>
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	ea000008 	b	2ac <memset+0x108>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	1afffff3 	bne	288 <memset+0xe4>
     2b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2bc:	e1a00003 	mov	r0, r3
     2c0:	e28bd000 	add	sp, fp, #0
     2c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2c8:	e12fff1e 	bx	lr

000002cc <strchr>:
     2cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2d0:	e28db000 	add	fp, sp, #0
     2d4:	e24dd00c 	sub	sp, sp, #12
     2d8:	e50b0008 	str	r0, [fp, #-8]
     2dc:	e1a03001 	mov	r3, r1
     2e0:	e54b3009 	strb	r3, [fp, #-9]
     2e4:	ea000009 	b	310 <strchr+0x44>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e5d33000 	ldrb	r3, [r3]
     2f0:	e55b2009 	ldrb	r2, [fp, #-9]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	1a000001 	bne	304 <strchr+0x38>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	ea000007 	b	324 <strchr+0x58>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2833001 	add	r3, r3, #1
     30c:	e50b3008 	str	r3, [fp, #-8]
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e5d33000 	ldrb	r3, [r3]
     318:	e3530000 	cmp	r3, #0
     31c:	1afffff1 	bne	2e8 <strchr+0x1c>
     320:	e3a03000 	mov	r3, #0
     324:	e1a00003 	mov	r0, r3
     328:	e28bd000 	add	sp, fp, #0
     32c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     330:	e12fff1e 	bx	lr

00000334 <gets>:
     334:	e92d4800 	push	{fp, lr}
     338:	e28db004 	add	fp, sp, #4
     33c:	e24dd018 	sub	sp, sp, #24
     340:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     344:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     348:	e3a03000 	mov	r3, #0
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	ea000016 	b	3b0 <gets+0x7c>
     354:	e24b300d 	sub	r3, fp, #13
     358:	e3a02001 	mov	r2, #1
     35c:	e1a01003 	mov	r1, r3
     360:	e3a00000 	mov	r0, #0
     364:	eb00018c 	bl	99c <read>
     368:	e50b000c 	str	r0, [fp, #-12]
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e3530000 	cmp	r3, #0
     374:	da000013 	ble	3c8 <gets+0x94>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2832001 	add	r2, r3, #1
     380:	e50b2008 	str	r2, [fp, #-8]
     384:	e1a02003 	mov	r2, r3
     388:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     38c:	e0833002 	add	r3, r3, r2
     390:	e55b200d 	ldrb	r2, [fp, #-13]
     394:	e5c32000 	strb	r2, [r3]
     398:	e55b300d 	ldrb	r3, [fp, #-13]
     39c:	e353000a 	cmp	r3, #10
     3a0:	0a000009 	beq	3cc <gets+0x98>
     3a4:	e55b300d 	ldrb	r3, [fp, #-13]
     3a8:	e353000d 	cmp	r3, #13
     3ac:	0a000006 	beq	3cc <gets+0x98>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2833001 	add	r3, r3, #1
     3b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3bc:	e1520003 	cmp	r2, r3
     3c0:	caffffe3 	bgt	354 <gets+0x20>
     3c4:	ea000000 	b	3cc <gets+0x98>
     3c8:	e1a00000 	nop			@ (mov r0, r0)
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3d4:	e0823003 	add	r3, r2, r3
     3d8:	e3a02000 	mov	r2, #0
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e4:	e1a00003 	mov	r0, r3
     3e8:	e24bd004 	sub	sp, fp, #4
     3ec:	e8bd8800 	pop	{fp, pc}

000003f0 <stat>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e24dd010 	sub	sp, sp, #16
     3fc:	e50b0010 	str	r0, [fp, #-16]
     400:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     404:	e3a01000 	mov	r1, #0
     408:	e51b0010 	ldr	r0, [fp, #-16]
     40c:	eb00018f 	bl	a50 <open>
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e3530000 	cmp	r3, #0
     41c:	aa000001 	bge	428 <stat+0x38>
     420:	e3e03000 	mvn	r3, #0
     424:	ea000006 	b	444 <stat+0x54>
     428:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     42c:	e51b0008 	ldr	r0, [fp, #-8]
     430:	eb0001a1 	bl	abc <fstat>
     434:	e50b000c 	str	r0, [fp, #-12]
     438:	e51b0008 	ldr	r0, [fp, #-8]
     43c:	eb000168 	bl	9e4 <close>
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e1a00003 	mov	r0, r3
     448:	e24bd004 	sub	sp, fp, #4
     44c:	e8bd8800 	pop	{fp, pc}

00000450 <atoi>:
     450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     454:	e28db000 	add	fp, sp, #0
     458:	e24dd014 	sub	sp, sp, #20
     45c:	e50b0010 	str	r0, [fp, #-16]
     460:	e3a03000 	mov	r3, #0
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	ea00000c 	b	4a0 <atoi+0x50>
     46c:	e51b2008 	ldr	r2, [fp, #-8]
     470:	e1a03002 	mov	r3, r2
     474:	e1a03103 	lsl	r3, r3, #2
     478:	e0833002 	add	r3, r3, r2
     47c:	e1a03083 	lsl	r3, r3, #1
     480:	e1a01003 	mov	r1, r3
     484:	e51b3010 	ldr	r3, [fp, #-16]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2010 	str	r2, [fp, #-16]
     490:	e5d33000 	ldrb	r3, [r3]
     494:	e0813003 	add	r3, r1, r3
     498:	e2433030 	sub	r3, r3, #48	@ 0x30
     49c:	e50b3008 	str	r3, [fp, #-8]
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e5d33000 	ldrb	r3, [r3]
     4a8:	e353002f 	cmp	r3, #47	@ 0x2f
     4ac:	9a000003 	bls	4c0 <atoi+0x70>
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e5d33000 	ldrb	r3, [r3]
     4b8:	e3530039 	cmp	r3, #57	@ 0x39
     4bc:	9affffea 	bls	46c <atoi+0x1c>
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e1a00003 	mov	r0, r3
     4c8:	e28bd000 	add	sp, fp, #0
     4cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d0:	e12fff1e 	bx	lr

000004d4 <memmove>:
     4d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4d8:	e28db000 	add	fp, sp, #0
     4dc:	e24dd01c 	sub	sp, sp, #28
     4e0:	e50b0010 	str	r0, [fp, #-16]
     4e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e50b3008 	str	r3, [fp, #-8]
     4f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4f8:	e50b300c 	str	r3, [fp, #-12]
     4fc:	ea000007 	b	520 <memmove+0x4c>
     500:	e51b200c 	ldr	r2, [fp, #-12]
     504:	e2823001 	add	r3, r2, #1
     508:	e50b300c 	str	r3, [fp, #-12]
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e2831001 	add	r1, r3, #1
     514:	e50b1008 	str	r1, [fp, #-8]
     518:	e5d22000 	ldrb	r2, [r2]
     51c:	e5c32000 	strb	r2, [r3]
     520:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     524:	e2432001 	sub	r2, r3, #1
     528:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     52c:	e3530000 	cmp	r3, #0
     530:	cafffff2 	bgt	500 <memmove+0x2c>
     534:	e51b3010 	ldr	r3, [fp, #-16]
     538:	e1a00003 	mov	r0, r3
     53c:	e28bd000 	add	sp, fp, #0
     540:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <initiateLock>:
     548:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     54c:	e28db000 	add	fp, sp, #0
     550:	e24dd00c 	sub	sp, sp, #12
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e3a02000 	mov	r2, #0
     560:	e5832000 	str	r2, [r3]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e3a02001 	mov	r2, #1
     56c:	e5832004 	str	r2, [r3, #4]
     570:	e1a00000 	nop			@ (mov r0, r0)
     574:	e28bd000 	add	sp, fp, #0
     578:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <acquireLock>:
     580:	e92d4800 	push	{fp, lr}
     584:	e28db004 	add	fp, sp, #4
     588:	e24dd008 	sub	sp, sp, #8
     58c:	e50b0008 	str	r0, [fp, #-8]
     590:	e51b3008 	ldr	r3, [fp, #-8]
     594:	e5933000 	ldr	r3, [r3]
     598:	e3730001 	cmn	r3, #1
     59c:	1a000002 	bne	5ac <acquireLock+0x2c>
     5a0:	e59f1034 	ldr	r1, [pc, #52]	@ 5dc <acquireLock+0x5c>
     5a4:	e3a00002 	mov	r0, #2
     5a8:	eb000280 	bl	fb0 <printf>
     5ac:	e1a00000 	nop			@ (mov r0, r0)
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e3a01001 	mov	r1, #1
     5b8:	e1a00003 	mov	r0, r3
     5bc:	ebfffe98 	bl	24 <xchg>
     5c0:	e1a03000 	mov	r3, r0
     5c4:	e3530000 	cmp	r3, #0
     5c8:	1afffff8 	bne	5b0 <acquireLock+0x30>
     5cc:	e1a00000 	nop			@ (mov r0, r0)
     5d0:	e1a00000 	nop			@ (mov r0, r0)
     5d4:	e24bd004 	sub	sp, fp, #4
     5d8:	e8bd8800 	pop	{fp, pc}
     5dc:	0000166c 	.word	0x0000166c

000005e0 <releaseLock>:
     5e0:	e92d4800 	push	{fp, lr}
     5e4:	e28db004 	add	fp, sp, #4
     5e8:	e24dd008 	sub	sp, sp, #8
     5ec:	e50b0008 	str	r0, [fp, #-8]
     5f0:	e51b3008 	ldr	r3, [fp, #-8]
     5f4:	e5933000 	ldr	r3, [r3]
     5f8:	e3530001 	cmp	r3, #1
     5fc:	0a000002 	beq	60c <releaseLock+0x2c>
     600:	e59f1020 	ldr	r1, [pc, #32]	@ 628 <releaseLock+0x48>
     604:	e3a00002 	mov	r0, #2
     608:	eb000268 	bl	fb0 <printf>
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e3a01000 	mov	r1, #0
     614:	e1a00003 	mov	r0, r3
     618:	ebfffe81 	bl	24 <xchg>
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e24bd004 	sub	sp, fp, #4
     624:	e8bd8800 	pop	{fp, pc}
     628:	0000169c 	.word	0x0000169c

0000062c <initiateCondVar>:
     62c:	e92d4800 	push	{fp, lr}
     630:	e28db004 	add	fp, sp, #4
     634:	e24dd008 	sub	sp, sp, #8
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5933004 	ldr	r3, [r3, #4]
     644:	e3530000 	cmp	r3, #0
     648:	1a000007 	bne	66c <initiateCondVar+0x40>
     64c:	eb0001e0 	bl	dd4 <getChannel>
     650:	e1a02000 	mov	r2, r0
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e5832000 	str	r2, [r3]
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e3a02001 	mov	r2, #1
     664:	e5832004 	str	r2, [r3, #4]
     668:	ea000000 	b	670 <initiateCondVar+0x44>
     66c:	e1a00000 	nop			@ (mov r0, r0)
     670:	e24bd004 	sub	sp, fp, #4
     674:	e8bd8800 	pop	{fp, pc}

00000678 <condWait>:
     678:	e92d4800 	push	{fp, lr}
     67c:	e28db004 	add	fp, sp, #4
     680:	e24dd008 	sub	sp, sp, #8
     684:	e50b0008 	str	r0, [fp, #-8]
     688:	e50b100c 	str	r1, [fp, #-12]
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e5933004 	ldr	r3, [r3, #4]
     694:	e3530000 	cmp	r3, #0
     698:	1a000003 	bne	6ac <condWait+0x34>
     69c:	e59f1050 	ldr	r1, [pc, #80]	@ 6f4 <condWait+0x7c>
     6a0:	e3a00002 	mov	r0, #2
     6a4:	eb000241 	bl	fb0 <printf>
     6a8:	ea00000f 	b	6ec <condWait+0x74>
     6ac:	e51b300c 	ldr	r3, [fp, #-12]
     6b0:	e5933004 	ldr	r3, [r3, #4]
     6b4:	e3530000 	cmp	r3, #0
     6b8:	1a000003 	bne	6cc <condWait+0x54>
     6bc:	e59f1034 	ldr	r1, [pc, #52]	@ 6f8 <condWait+0x80>
     6c0:	e3a00002 	mov	r0, #2
     6c4:	eb000239 	bl	fb0 <printf>
     6c8:	ea000007 	b	6ec <condWait+0x74>
     6cc:	e51b000c 	ldr	r0, [fp, #-12]
     6d0:	ebffffc2 	bl	5e0 <releaseLock>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5933000 	ldr	r3, [r3]
     6dc:	e1a00003 	mov	r0, r3
     6e0:	eb0001b2 	bl	db0 <sleepChan>
     6e4:	e51b000c 	ldr	r0, [fp, #-12]
     6e8:	ebffffa4 	bl	580 <acquireLock>
     6ec:	e24bd004 	sub	sp, fp, #4
     6f0:	e8bd8800 	pop	{fp, pc}
     6f4:	000016d8 	.word	0x000016d8
     6f8:	000016fc 	.word	0x000016fc

000006fc <broadcast>:
     6fc:	e92d4800 	push	{fp, lr}
     700:	e28db004 	add	fp, sp, #4
     704:	e24dd008 	sub	sp, sp, #8
     708:	e50b0008 	str	r0, [fp, #-8]
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e5933004 	ldr	r3, [r3, #4]
     714:	e3530000 	cmp	r3, #0
     718:	1a000003 	bne	72c <broadcast+0x30>
     71c:	e59f1020 	ldr	r1, [pc, #32]	@ 744 <broadcast+0x48>
     720:	e3a00002 	mov	r0, #2
     724:	eb000221 	bl	fb0 <printf>
     728:	ea000003 	b	73c <broadcast+0x40>
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e5933000 	ldr	r3, [r3]
     734:	e1a00003 	mov	r0, r3
     738:	eb0001ae 	bl	df8 <sigChan>
     73c:	e24bd004 	sub	sp, fp, #4
     740:	e8bd8800 	pop	{fp, pc}
     744:	000016d8 	.word	0x000016d8

00000748 <signal>:
     748:	e92d4800 	push	{fp, lr}
     74c:	e28db004 	add	fp, sp, #4
     750:	e24dd008 	sub	sp, sp, #8
     754:	e50b0008 	str	r0, [fp, #-8]
     758:	e51b3008 	ldr	r3, [fp, #-8]
     75c:	e5933004 	ldr	r3, [r3, #4]
     760:	e3530000 	cmp	r3, #0
     764:	1a000003 	bne	778 <signal+0x30>
     768:	e59f1020 	ldr	r1, [pc, #32]	@ 790 <signal+0x48>
     76c:	e3a00002 	mov	r0, #2
     770:	eb00020e 	bl	fb0 <printf>
     774:	ea000003 	b	788 <signal+0x40>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933000 	ldr	r3, [r3]
     780:	e1a00003 	mov	r0, r3
     784:	eb0001a4 	bl	e1c <sigOneChan>
     788:	e24bd004 	sub	sp, fp, #4
     78c:	e8bd8800 	pop	{fp, pc}
     790:	000016d8 	.word	0x000016d8

00000794 <semInit>:
     794:	e92d4800 	push	{fp, lr}
     798:	e28db004 	add	fp, sp, #4
     79c:	e24dd008 	sub	sp, sp, #8
     7a0:	e50b0008 	str	r0, [fp, #-8]
     7a4:	e50b100c 	str	r1, [fp, #-12]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e51b200c 	ldr	r2, [fp, #-12]
     7b0:	e5832000 	str	r2, [r3]
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e2833004 	add	r3, r3, #4
     7bc:	e1a00003 	mov	r0, r3
     7c0:	ebffff60 	bl	548 <initiateLock>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e283300c 	add	r3, r3, #12
     7cc:	e1a00003 	mov	r0, r3
     7d0:	ebffff95 	bl	62c <initiateCondVar>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e3a02001 	mov	r2, #1
     7dc:	e5832014 	str	r2, [r3, #20]
     7e0:	e1a00000 	nop			@ (mov r0, r0)
     7e4:	e24bd004 	sub	sp, fp, #4
     7e8:	e8bd8800 	pop	{fp, pc}

000007ec <semDown>:
     7ec:	e92d4800 	push	{fp, lr}
     7f0:	e28db004 	add	fp, sp, #4
     7f4:	e24dd008 	sub	sp, sp, #8
     7f8:	e50b0008 	str	r0, [fp, #-8]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e5933014 	ldr	r3, [r3, #20]
     804:	e3530000 	cmp	r3, #0
     808:	1a000003 	bne	81c <semDown+0x30>
     80c:	e59f1074 	ldr	r1, [pc, #116]	@ 888 <semDown+0x9c>
     810:	e3a00002 	mov	r0, #2
     814:	eb0001e5 	bl	fb0 <printf>
     818:	ea000018 	b	880 <semDown+0x94>
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e2833004 	add	r3, r3, #4
     824:	e1a00003 	mov	r0, r3
     828:	ebffff54 	bl	580 <acquireLock>
     82c:	ea000006 	b	84c <semDown+0x60>
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e283200c 	add	r2, r3, #12
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e2833004 	add	r3, r3, #4
     840:	e1a01003 	mov	r1, r3
     844:	e1a00002 	mov	r0, r2
     848:	ebffff8a 	bl	678 <condWait>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933000 	ldr	r3, [r3]
     854:	e3530000 	cmp	r3, #0
     858:	0afffff4 	beq	830 <semDown+0x44>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e5933000 	ldr	r3, [r3]
     864:	e2432001 	sub	r2, r3, #1
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e5832000 	str	r2, [r3]
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e2833004 	add	r3, r3, #4
     878:	e1a00003 	mov	r0, r3
     87c:	ebffff57 	bl	5e0 <releaseLock>
     880:	e24bd004 	sub	sp, fp, #4
     884:	e8bd8800 	pop	{fp, pc}
     888:	0000171c 	.word	0x0000171c

0000088c <semUp>:
     88c:	e92d4800 	push	{fp, lr}
     890:	e28db004 	add	fp, sp, #4
     894:	e24dd008 	sub	sp, sp, #8
     898:	e50b0008 	str	r0, [fp, #-8]
     89c:	e51b3008 	ldr	r3, [fp, #-8]
     8a0:	e5933014 	ldr	r3, [r3, #20]
     8a4:	e3530000 	cmp	r3, #0
     8a8:	1a000003 	bne	8bc <semUp+0x30>
     8ac:	e59f1054 	ldr	r1, [pc, #84]	@ 908 <semUp+0x7c>
     8b0:	e3a00002 	mov	r0, #2
     8b4:	eb0001bd 	bl	fb0 <printf>
     8b8:	ea000010 	b	900 <semUp+0x74>
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e2833004 	add	r3, r3, #4
     8c4:	e1a00003 	mov	r0, r3
     8c8:	ebffff2c 	bl	580 <acquireLock>
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e5933000 	ldr	r3, [r3]
     8d4:	e2832001 	add	r2, r3, #1
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e5832000 	str	r2, [r3]
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e283300c 	add	r3, r3, #12
     8e8:	e1a00003 	mov	r0, r3
     8ec:	ebffff95 	bl	748 <signal>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e2833004 	add	r3, r3, #4
     8f8:	e1a00003 	mov	r0, r3
     8fc:	ebffff37 	bl	5e0 <releaseLock>
     900:	e24bd004 	sub	sp, fp, #4
     904:	e8bd8800 	pop	{fp, pc}
     908:	0000171c 	.word	0x0000171c

0000090c <fork>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00001 	mov	r0, #1
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <exit>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00002 	mov	r0, #2
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <wait>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00003 	mov	r0, #3
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <pipe>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00004 	mov	r0, #4
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <read>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00005 	mov	r0, #5
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <write>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a00010 	mov	r0, #16
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <close>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00015 	mov	r0, #21
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <kill>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00006 	mov	r0, #6
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <exec>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00007 	mov	r0, #7
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <open>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a0000f 	mov	r0, #15
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <mknod>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00011 	mov	r0, #17
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <unlink>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00012 	mov	r0, #18
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <fstat>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a00008 	mov	r0, #8
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <link>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a00013 	mov	r0, #19
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <mkdir>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a00014 	mov	r0, #20
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <chdir>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a00009 	mov	r0, #9
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <dup>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000a 	mov	r0, #10
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <getpid>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a0000b 	mov	r0, #11
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <sbrk>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a0000c 	mov	r0, #12
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <sleep>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a0000d 	mov	r0, #13
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <uptime>:
     bdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be0:	e1a04003 	mov	r4, r3
     be4:	e1a03002 	mov	r3, r2
     be8:	e1a02001 	mov	r2, r1
     bec:	e1a01000 	mov	r1, r0
     bf0:	e3a0000e 	mov	r0, #14
     bf4:	ef000000 	svc	0x00000000
     bf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bfc:	e12fff1e 	bx	lr

00000c00 <disproc>:
     c00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c04:	e1a04003 	mov	r4, r3
     c08:	e1a03002 	mov	r3, r2
     c0c:	e1a02001 	mov	r2, r1
     c10:	e1a01000 	mov	r1, r0
     c14:	e3a00016 	mov	r0, #22
     c18:	ef000000 	svc	0x00000000
     c1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c20:	e12fff1e 	bx	lr

00000c24 <srand>:
     c24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c28:	e1a04003 	mov	r4, r3
     c2c:	e1a03002 	mov	r3, r2
     c30:	e1a02001 	mov	r2, r1
     c34:	e1a01000 	mov	r1, r0
     c38:	e3a00017 	mov	r0, #23
     c3c:	ef000000 	svc	0x00000000
     c40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c44:	e12fff1e 	bx	lr

00000c48 <setticket>:
     c48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c4c:	e1a04003 	mov	r4, r3
     c50:	e1a03002 	mov	r3, r2
     c54:	e1a02001 	mov	r2, r1
     c58:	e1a01000 	mov	r1, r0
     c5c:	e3a00018 	mov	r0, #24
     c60:	ef000000 	svc	0x00000000
     c64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c68:	e12fff1e 	bx	lr

00000c6c <getpinfo>:
     c6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c70:	e1a04003 	mov	r4, r3
     c74:	e1a03002 	mov	r3, r2
     c78:	e1a02001 	mov	r2, r1
     c7c:	e1a01000 	mov	r1, r0
     c80:	e3a00019 	mov	r0, #25
     c84:	ef000000 	svc	0x00000000
     c88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c8c:	e12fff1e 	bx	lr

00000c90 <printPages>:
     c90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c94:	e1a04003 	mov	r4, r3
     c98:	e1a03002 	mov	r3, r2
     c9c:	e1a02001 	mov	r2, r1
     ca0:	e1a01000 	mov	r1, r0
     ca4:	e3a0001a 	mov	r0, #26
     ca8:	ef000000 	svc	0x00000000
     cac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb0:	e12fff1e 	bx	lr

00000cb4 <kpt>:
     cb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb8:	e1a04003 	mov	r4, r3
     cbc:	e1a03002 	mov	r3, r2
     cc0:	e1a02001 	mov	r2, r1
     cc4:	e1a01000 	mov	r1, r0
     cc8:	e3a0001b 	mov	r0, #27
     ccc:	ef000000 	svc	0x00000000
     cd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd4:	e12fff1e 	bx	lr

00000cd8 <thread_create>:
     cd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cdc:	e1a04003 	mov	r4, r3
     ce0:	e1a03002 	mov	r3, r2
     ce4:	e1a02001 	mov	r2, r1
     ce8:	e1a01000 	mov	r1, r0
     cec:	e3a0001c 	mov	r0, #28
     cf0:	ef000000 	svc	0x00000000
     cf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf8:	e12fff1e 	bx	lr

00000cfc <thread_exit>:
     cfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d00:	e1a04003 	mov	r4, r3
     d04:	e1a03002 	mov	r3, r2
     d08:	e1a02001 	mov	r2, r1
     d0c:	e1a01000 	mov	r1, r0
     d10:	e3a0001d 	mov	r0, #29
     d14:	ef000000 	svc	0x00000000
     d18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d1c:	e12fff1e 	bx	lr

00000d20 <thread_join>:
     d20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d24:	e1a04003 	mov	r4, r3
     d28:	e1a03002 	mov	r3, r2
     d2c:	e1a02001 	mov	r2, r1
     d30:	e1a01000 	mov	r1, r0
     d34:	e3a0001e 	mov	r0, #30
     d38:	ef000000 	svc	0x00000000
     d3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d40:	e12fff1e 	bx	lr

00000d44 <waitpid>:
     d44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d48:	e1a04003 	mov	r4, r3
     d4c:	e1a03002 	mov	r3, r2
     d50:	e1a02001 	mov	r2, r1
     d54:	e1a01000 	mov	r1, r0
     d58:	e3a0001f 	mov	r0, #31
     d5c:	ef000000 	svc	0x00000000
     d60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d64:	e12fff1e 	bx	lr

00000d68 <barrier_init>:
     d68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d6c:	e1a04003 	mov	r4, r3
     d70:	e1a03002 	mov	r3, r2
     d74:	e1a02001 	mov	r2, r1
     d78:	e1a01000 	mov	r1, r0
     d7c:	e3a00020 	mov	r0, #32
     d80:	ef000000 	svc	0x00000000
     d84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d88:	e12fff1e 	bx	lr

00000d8c <barrier_check>:
     d8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d90:	e1a04003 	mov	r4, r3
     d94:	e1a03002 	mov	r3, r2
     d98:	e1a02001 	mov	r2, r1
     d9c:	e1a01000 	mov	r1, r0
     da0:	e3a00021 	mov	r0, #33	@ 0x21
     da4:	ef000000 	svc	0x00000000
     da8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dac:	e12fff1e 	bx	lr

00000db0 <sleepChan>:
     db0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db4:	e1a04003 	mov	r4, r3
     db8:	e1a03002 	mov	r3, r2
     dbc:	e1a02001 	mov	r2, r1
     dc0:	e1a01000 	mov	r1, r0
     dc4:	e3a00022 	mov	r0, #34	@ 0x22
     dc8:	ef000000 	svc	0x00000000
     dcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd0:	e12fff1e 	bx	lr

00000dd4 <getChannel>:
     dd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd8:	e1a04003 	mov	r4, r3
     ddc:	e1a03002 	mov	r3, r2
     de0:	e1a02001 	mov	r2, r1
     de4:	e1a01000 	mov	r1, r0
     de8:	e3a00023 	mov	r0, #35	@ 0x23
     dec:	ef000000 	svc	0x00000000
     df0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df4:	e12fff1e 	bx	lr

00000df8 <sigChan>:
     df8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dfc:	e1a04003 	mov	r4, r3
     e00:	e1a03002 	mov	r3, r2
     e04:	e1a02001 	mov	r2, r1
     e08:	e1a01000 	mov	r1, r0
     e0c:	e3a00024 	mov	r0, #36	@ 0x24
     e10:	ef000000 	svc	0x00000000
     e14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e18:	e12fff1e 	bx	lr

00000e1c <sigOneChan>:
     e1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e20:	e1a04003 	mov	r4, r3
     e24:	e1a03002 	mov	r3, r2
     e28:	e1a02001 	mov	r2, r1
     e2c:	e1a01000 	mov	r1, r0
     e30:	e3a00025 	mov	r0, #37	@ 0x25
     e34:	ef000000 	svc	0x00000000
     e38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e3c:	e12fff1e 	bx	lr

00000e40 <putc>:
     e40:	e92d4800 	push	{fp, lr}
     e44:	e28db004 	add	fp, sp, #4
     e48:	e24dd008 	sub	sp, sp, #8
     e4c:	e50b0008 	str	r0, [fp, #-8]
     e50:	e1a03001 	mov	r3, r1
     e54:	e54b3009 	strb	r3, [fp, #-9]
     e58:	e24b3009 	sub	r3, fp, #9
     e5c:	e3a02001 	mov	r2, #1
     e60:	e1a01003 	mov	r1, r3
     e64:	e51b0008 	ldr	r0, [fp, #-8]
     e68:	ebfffed4 	bl	9c0 <write>
     e6c:	e1a00000 	nop			@ (mov r0, r0)
     e70:	e24bd004 	sub	sp, fp, #4
     e74:	e8bd8800 	pop	{fp, pc}

00000e78 <printint>:
     e78:	e92d4800 	push	{fp, lr}
     e7c:	e28db004 	add	fp, sp, #4
     e80:	e24dd030 	sub	sp, sp, #48	@ 0x30
     e84:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     e88:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     e8c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     e90:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     e94:	e3a03000 	mov	r3, #0
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ea0:	e3530000 	cmp	r3, #0
     ea4:	0a000008 	beq	ecc <printint+0x54>
     ea8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     eac:	e3530000 	cmp	r3, #0
     eb0:	aa000005 	bge	ecc <printint+0x54>
     eb4:	e3a03001 	mov	r3, #1
     eb8:	e50b300c 	str	r3, [fp, #-12]
     ebc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ec0:	e2633000 	rsb	r3, r3, #0
     ec4:	e50b3010 	str	r3, [fp, #-16]
     ec8:	ea000001 	b	ed4 <printint+0x5c>
     ecc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ed0:	e50b3010 	str	r3, [fp, #-16]
     ed4:	e3a03000 	mov	r3, #0
     ed8:	e50b3008 	str	r3, [fp, #-8]
     edc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ee0:	e51b3010 	ldr	r3, [fp, #-16]
     ee4:	e1a01002 	mov	r1, r2
     ee8:	e1a00003 	mov	r0, r3
     eec:	eb0001d5 	bl	1648 <__aeabi_uidivmod>
     ef0:	e1a03001 	mov	r3, r1
     ef4:	e1a01003 	mov	r1, r3
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e2832001 	add	r2, r3, #1
     f00:	e50b2008 	str	r2, [fp, #-8]
     f04:	e59f20a0 	ldr	r2, [pc, #160]	@ fac <printint+0x134>
     f08:	e7d22001 	ldrb	r2, [r2, r1]
     f0c:	e2433004 	sub	r3, r3, #4
     f10:	e083300b 	add	r3, r3, fp
     f14:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f18:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     f1c:	e1a01003 	mov	r1, r3
     f20:	e51b0010 	ldr	r0, [fp, #-16]
     f24:	eb00018a 	bl	1554 <__udivsi3>
     f28:	e1a03000 	mov	r3, r0
     f2c:	e50b3010 	str	r3, [fp, #-16]
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e3530000 	cmp	r3, #0
     f38:	1affffe7 	bne	edc <printint+0x64>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e3530000 	cmp	r3, #0
     f44:	0a00000e 	beq	f84 <printint+0x10c>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e2832001 	add	r2, r3, #1
     f50:	e50b2008 	str	r2, [fp, #-8]
     f54:	e2433004 	sub	r3, r3, #4
     f58:	e083300b 	add	r3, r3, fp
     f5c:	e3a0202d 	mov	r2, #45	@ 0x2d
     f60:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     f64:	ea000006 	b	f84 <printint+0x10c>
     f68:	e24b2020 	sub	r2, fp, #32
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e0823003 	add	r3, r2, r3
     f74:	e5d33000 	ldrb	r3, [r3]
     f78:	e1a01003 	mov	r1, r3
     f7c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     f80:	ebffffae 	bl	e40 <putc>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e2433001 	sub	r3, r3, #1
     f8c:	e50b3008 	str	r3, [fp, #-8]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e3530000 	cmp	r3, #0
     f98:	aafffff2 	bge	f68 <printint+0xf0>
     f9c:	e1a00000 	nop			@ (mov r0, r0)
     fa0:	e1a00000 	nop			@ (mov r0, r0)
     fa4:	e24bd004 	sub	sp, fp, #4
     fa8:	e8bd8800 	pop	{fp, pc}
     fac:	00001748 	.word	0x00001748

00000fb0 <printf>:
     fb0:	e92d000e 	push	{r1, r2, r3}
     fb4:	e92d4800 	push	{fp, lr}
     fb8:	e28db004 	add	fp, sp, #4
     fbc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     fc0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     fc4:	e3a03000 	mov	r3, #0
     fc8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fcc:	e28b3008 	add	r3, fp, #8
     fd0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fd4:	e3a03000 	mov	r3, #0
     fd8:	e50b3010 	str	r3, [fp, #-16]
     fdc:	ea000074 	b	11b4 <printf+0x204>
     fe0:	e59b2004 	ldr	r2, [fp, #4]
     fe4:	e51b3010 	ldr	r3, [fp, #-16]
     fe8:	e0823003 	add	r3, r2, r3
     fec:	e5d33000 	ldrb	r3, [r3]
     ff0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ff4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ff8:	e3530000 	cmp	r3, #0
     ffc:	1a00000b 	bne	1030 <printf+0x80>
    1000:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1004:	e3530025 	cmp	r3, #37	@ 0x25
    1008:	1a000002 	bne	1018 <printf+0x68>
    100c:	e3a03025 	mov	r3, #37	@ 0x25
    1010:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1014:	ea000063 	b	11a8 <printf+0x1f8>
    1018:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    101c:	e6ef3073 	uxtb	r3, r3
    1020:	e1a01003 	mov	r1, r3
    1024:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1028:	ebffff84 	bl	e40 <putc>
    102c:	ea00005d 	b	11a8 <printf+0x1f8>
    1030:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1034:	e3530025 	cmp	r3, #37	@ 0x25
    1038:	1a00005a 	bne	11a8 <printf+0x1f8>
    103c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1040:	e3530064 	cmp	r3, #100	@ 0x64
    1044:	1a00000a 	bne	1074 <printf+0xc4>
    1048:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    104c:	e5933000 	ldr	r3, [r3]
    1050:	e1a01003 	mov	r1, r3
    1054:	e3a03001 	mov	r3, #1
    1058:	e3a0200a 	mov	r2, #10
    105c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1060:	ebffff84 	bl	e78 <printint>
    1064:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1068:	e2833004 	add	r3, r3, #4
    106c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1070:	ea00004a 	b	11a0 <printf+0x1f0>
    1074:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1078:	e3530078 	cmp	r3, #120	@ 0x78
    107c:	0a000002 	beq	108c <printf+0xdc>
    1080:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1084:	e3530070 	cmp	r3, #112	@ 0x70
    1088:	1a00000a 	bne	10b8 <printf+0x108>
    108c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e1a01003 	mov	r1, r3
    1098:	e3a03000 	mov	r3, #0
    109c:	e3a02010 	mov	r2, #16
    10a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10a4:	ebffff73 	bl	e78 <printint>
    10a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10ac:	e2833004 	add	r3, r3, #4
    10b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10b4:	ea000039 	b	11a0 <printf+0x1f0>
    10b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10bc:	e3530073 	cmp	r3, #115	@ 0x73
    10c0:	1a000018 	bne	1128 <printf+0x178>
    10c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c8:	e5933000 	ldr	r3, [r3]
    10cc:	e50b300c 	str	r3, [fp, #-12]
    10d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e2833004 	add	r3, r3, #4
    10d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10dc:	e51b300c 	ldr	r3, [fp, #-12]
    10e0:	e3530000 	cmp	r3, #0
    10e4:	1a00000a 	bne	1114 <printf+0x164>
    10e8:	e59f30f4 	ldr	r3, [pc, #244]	@ 11e4 <printf+0x234>
    10ec:	e50b300c 	str	r3, [fp, #-12]
    10f0:	ea000007 	b	1114 <printf+0x164>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5d33000 	ldrb	r3, [r3]
    10fc:	e1a01003 	mov	r1, r3
    1100:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1104:	ebffff4d 	bl	e40 <putc>
    1108:	e51b300c 	ldr	r3, [fp, #-12]
    110c:	e2833001 	add	r3, r3, #1
    1110:	e50b300c 	str	r3, [fp, #-12]
    1114:	e51b300c 	ldr	r3, [fp, #-12]
    1118:	e5d33000 	ldrb	r3, [r3]
    111c:	e3530000 	cmp	r3, #0
    1120:	1afffff3 	bne	10f4 <printf+0x144>
    1124:	ea00001d 	b	11a0 <printf+0x1f0>
    1128:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    112c:	e3530063 	cmp	r3, #99	@ 0x63
    1130:	1a000009 	bne	115c <printf+0x1ac>
    1134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e6ef3073 	uxtb	r3, r3
    1140:	e1a01003 	mov	r1, r3
    1144:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1148:	ebffff3c 	bl	e40 <putc>
    114c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e2833004 	add	r3, r3, #4
    1154:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1158:	ea000010 	b	11a0 <printf+0x1f0>
    115c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1160:	e3530025 	cmp	r3, #37	@ 0x25
    1164:	1a000005 	bne	1180 <printf+0x1d0>
    1168:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    116c:	e6ef3073 	uxtb	r3, r3
    1170:	e1a01003 	mov	r1, r3
    1174:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1178:	ebffff30 	bl	e40 <putc>
    117c:	ea000007 	b	11a0 <printf+0x1f0>
    1180:	e3a01025 	mov	r1, #37	@ 0x25
    1184:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1188:	ebffff2c 	bl	e40 <putc>
    118c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1190:	e6ef3073 	uxtb	r3, r3
    1194:	e1a01003 	mov	r1, r3
    1198:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    119c:	ebffff27 	bl	e40 <putc>
    11a0:	e3a03000 	mov	r3, #0
    11a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11a8:	e51b3010 	ldr	r3, [fp, #-16]
    11ac:	e2833001 	add	r3, r3, #1
    11b0:	e50b3010 	str	r3, [fp, #-16]
    11b4:	e59b2004 	ldr	r2, [fp, #4]
    11b8:	e51b3010 	ldr	r3, [fp, #-16]
    11bc:	e0823003 	add	r3, r2, r3
    11c0:	e5d33000 	ldrb	r3, [r3]
    11c4:	e3530000 	cmp	r3, #0
    11c8:	1affff84 	bne	fe0 <printf+0x30>
    11cc:	e1a00000 	nop			@ (mov r0, r0)
    11d0:	e1a00000 	nop			@ (mov r0, r0)
    11d4:	e24bd004 	sub	sp, fp, #4
    11d8:	e8bd4800 	pop	{fp, lr}
    11dc:	e28dd00c 	add	sp, sp, #12
    11e0:	e12fff1e 	bx	lr
    11e4:	00001740 	.word	0x00001740

000011e8 <free>:
    11e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    11ec:	e28db000 	add	fp, sp, #0
    11f0:	e24dd014 	sub	sp, sp, #20
    11f4:	e50b0010 	str	r0, [fp, #-16]
    11f8:	e51b3010 	ldr	r3, [fp, #-16]
    11fc:	e2433008 	sub	r3, r3, #8
    1200:	e50b300c 	str	r3, [fp, #-12]
    1204:	e59f3154 	ldr	r3, [pc, #340]	@ 1360 <free+0x178>
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e50b3008 	str	r3, [fp, #-8]
    1210:	ea000010 	b	1258 <free+0x70>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933000 	ldr	r3, [r3]
    121c:	e51b2008 	ldr	r2, [fp, #-8]
    1220:	e1520003 	cmp	r2, r3
    1224:	3a000008 	bcc	124c <free+0x64>
    1228:	e51b200c 	ldr	r2, [fp, #-12]
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e1520003 	cmp	r2, r3
    1234:	8a000010 	bhi	127c <free+0x94>
    1238:	e51b3008 	ldr	r3, [fp, #-8]
    123c:	e5933000 	ldr	r3, [r3]
    1240:	e51b200c 	ldr	r2, [fp, #-12]
    1244:	e1520003 	cmp	r2, r3
    1248:	3a00000b 	bcc	127c <free+0x94>
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e5933000 	ldr	r3, [r3]
    1254:	e50b3008 	str	r3, [fp, #-8]
    1258:	e51b200c 	ldr	r2, [fp, #-12]
    125c:	e51b3008 	ldr	r3, [fp, #-8]
    1260:	e1520003 	cmp	r2, r3
    1264:	9affffea 	bls	1214 <free+0x2c>
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e51b200c 	ldr	r2, [fp, #-12]
    1274:	e1520003 	cmp	r2, r3
    1278:	2affffe5 	bcs	1214 <free+0x2c>
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e5933004 	ldr	r3, [r3, #4]
    1284:	e1a03183 	lsl	r3, r3, #3
    1288:	e51b200c 	ldr	r2, [fp, #-12]
    128c:	e0822003 	add	r2, r2, r3
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e1520003 	cmp	r2, r3
    129c:	1a00000d 	bne	12d8 <free+0xf0>
    12a0:	e51b300c 	ldr	r3, [fp, #-12]
    12a4:	e5932004 	ldr	r2, [r3, #4]
    12a8:	e51b3008 	ldr	r3, [fp, #-8]
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e5933004 	ldr	r3, [r3, #4]
    12b4:	e0822003 	add	r2, r2, r3
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e5832004 	str	r2, [r3, #4]
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e5932000 	ldr	r2, [r3]
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e5832000 	str	r2, [r3]
    12d4:	ea000003 	b	12e8 <free+0x100>
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e5932000 	ldr	r2, [r3]
    12e0:	e51b300c 	ldr	r3, [fp, #-12]
    12e4:	e5832000 	str	r2, [r3]
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5933004 	ldr	r3, [r3, #4]
    12f0:	e1a03183 	lsl	r3, r3, #3
    12f4:	e51b2008 	ldr	r2, [fp, #-8]
    12f8:	e0823003 	add	r3, r2, r3
    12fc:	e51b200c 	ldr	r2, [fp, #-12]
    1300:	e1520003 	cmp	r2, r3
    1304:	1a00000b 	bne	1338 <free+0x150>
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e5932004 	ldr	r2, [r3, #4]
    1310:	e51b300c 	ldr	r3, [fp, #-12]
    1314:	e5933004 	ldr	r3, [r3, #4]
    1318:	e0822003 	add	r2, r2, r3
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e5832004 	str	r2, [r3, #4]
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5932000 	ldr	r2, [r3]
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e5832000 	str	r2, [r3]
    1334:	ea000002 	b	1344 <free+0x15c>
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e51b200c 	ldr	r2, [fp, #-12]
    1340:	e5832000 	str	r2, [r3]
    1344:	e59f2014 	ldr	r2, [pc, #20]	@ 1360 <free+0x178>
    1348:	e51b3008 	ldr	r3, [fp, #-8]
    134c:	e5823000 	str	r3, [r2]
    1350:	e1a00000 	nop			@ (mov r0, r0)
    1354:	e28bd000 	add	sp, fp, #0
    1358:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    135c:	e12fff1e 	bx	lr
    1360:	00001764 	.word	0x00001764

00001364 <morecore>:
    1364:	e92d4800 	push	{fp, lr}
    1368:	e28db004 	add	fp, sp, #4
    136c:	e24dd010 	sub	sp, sp, #16
    1370:	e50b0010 	str	r0, [fp, #-16]
    1374:	e51b3010 	ldr	r3, [fp, #-16]
    1378:	e3530a01 	cmp	r3, #4096	@ 0x1000
    137c:	2a000001 	bcs	1388 <morecore+0x24>
    1380:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1384:	e50b3010 	str	r3, [fp, #-16]
    1388:	e51b3010 	ldr	r3, [fp, #-16]
    138c:	e1a03183 	lsl	r3, r3, #3
    1390:	e1a00003 	mov	r0, r3
    1394:	ebfffdfe 	bl	b94 <sbrk>
    1398:	e50b0008 	str	r0, [fp, #-8]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e3730001 	cmn	r3, #1
    13a4:	1a000001 	bne	13b0 <morecore+0x4c>
    13a8:	e3a03000 	mov	r3, #0
    13ac:	ea00000a 	b	13dc <morecore+0x78>
    13b0:	e51b3008 	ldr	r3, [fp, #-8]
    13b4:	e50b300c 	str	r3, [fp, #-12]
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e51b2010 	ldr	r2, [fp, #-16]
    13c0:	e5832004 	str	r2, [r3, #4]
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e2833008 	add	r3, r3, #8
    13cc:	e1a00003 	mov	r0, r3
    13d0:	ebffff84 	bl	11e8 <free>
    13d4:	e59f300c 	ldr	r3, [pc, #12]	@ 13e8 <morecore+0x84>
    13d8:	e5933000 	ldr	r3, [r3]
    13dc:	e1a00003 	mov	r0, r3
    13e0:	e24bd004 	sub	sp, fp, #4
    13e4:	e8bd8800 	pop	{fp, pc}
    13e8:	00001764 	.word	0x00001764

000013ec <malloc>:
    13ec:	e92d4800 	push	{fp, lr}
    13f0:	e28db004 	add	fp, sp, #4
    13f4:	e24dd018 	sub	sp, sp, #24
    13f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    13fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1400:	e2833007 	add	r3, r3, #7
    1404:	e1a031a3 	lsr	r3, r3, #3
    1408:	e2833001 	add	r3, r3, #1
    140c:	e50b3010 	str	r3, [fp, #-16]
    1410:	e59f3134 	ldr	r3, [pc, #308]	@ 154c <malloc+0x160>
    1414:	e5933000 	ldr	r3, [r3]
    1418:	e50b300c 	str	r3, [fp, #-12]
    141c:	e51b300c 	ldr	r3, [fp, #-12]
    1420:	e3530000 	cmp	r3, #0
    1424:	1a00000b 	bne	1458 <malloc+0x6c>
    1428:	e59f3120 	ldr	r3, [pc, #288]	@ 1550 <malloc+0x164>
    142c:	e50b300c 	str	r3, [fp, #-12]
    1430:	e59f2114 	ldr	r2, [pc, #276]	@ 154c <malloc+0x160>
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e5823000 	str	r3, [r2]
    143c:	e59f3108 	ldr	r3, [pc, #264]	@ 154c <malloc+0x160>
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e59f2104 	ldr	r2, [pc, #260]	@ 1550 <malloc+0x164>
    1448:	e5823000 	str	r3, [r2]
    144c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1550 <malloc+0x164>
    1450:	e3a02000 	mov	r2, #0
    1454:	e5832004 	str	r2, [r3, #4]
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e5933000 	ldr	r3, [r3]
    1460:	e50b3008 	str	r3, [fp, #-8]
    1464:	e51b3008 	ldr	r3, [fp, #-8]
    1468:	e5933004 	ldr	r3, [r3, #4]
    146c:	e51b2010 	ldr	r2, [fp, #-16]
    1470:	e1520003 	cmp	r2, r3
    1474:	8a00001e 	bhi	14f4 <malloc+0x108>
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5933004 	ldr	r3, [r3, #4]
    1480:	e51b2010 	ldr	r2, [fp, #-16]
    1484:	e1520003 	cmp	r2, r3
    1488:	1a000004 	bne	14a0 <malloc+0xb4>
    148c:	e51b3008 	ldr	r3, [fp, #-8]
    1490:	e5932000 	ldr	r2, [r3]
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e5832000 	str	r2, [r3]
    149c:	ea00000e 	b	14dc <malloc+0xf0>
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5932004 	ldr	r2, [r3, #4]
    14a8:	e51b3010 	ldr	r3, [fp, #-16]
    14ac:	e0422003 	sub	r2, r2, r3
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5832004 	str	r2, [r3, #4]
    14b8:	e51b3008 	ldr	r3, [fp, #-8]
    14bc:	e5933004 	ldr	r3, [r3, #4]
    14c0:	e1a03183 	lsl	r3, r3, #3
    14c4:	e51b2008 	ldr	r2, [fp, #-8]
    14c8:	e0823003 	add	r3, r2, r3
    14cc:	e50b3008 	str	r3, [fp, #-8]
    14d0:	e51b3008 	ldr	r3, [fp, #-8]
    14d4:	e51b2010 	ldr	r2, [fp, #-16]
    14d8:	e5832004 	str	r2, [r3, #4]
    14dc:	e59f2068 	ldr	r2, [pc, #104]	@ 154c <malloc+0x160>
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5823000 	str	r3, [r2]
    14e8:	e51b3008 	ldr	r3, [fp, #-8]
    14ec:	e2833008 	add	r3, r3, #8
    14f0:	ea000012 	b	1540 <malloc+0x154>
    14f4:	e59f3050 	ldr	r3, [pc, #80]	@ 154c <malloc+0x160>
    14f8:	e5933000 	ldr	r3, [r3]
    14fc:	e51b2008 	ldr	r2, [fp, #-8]
    1500:	e1520003 	cmp	r2, r3
    1504:	1a000007 	bne	1528 <malloc+0x13c>
    1508:	e51b0010 	ldr	r0, [fp, #-16]
    150c:	ebffff94 	bl	1364 <morecore>
    1510:	e50b0008 	str	r0, [fp, #-8]
    1514:	e51b3008 	ldr	r3, [fp, #-8]
    1518:	e3530000 	cmp	r3, #0
    151c:	1a000001 	bne	1528 <malloc+0x13c>
    1520:	e3a03000 	mov	r3, #0
    1524:	ea000005 	b	1540 <malloc+0x154>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e50b300c 	str	r3, [fp, #-12]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5933000 	ldr	r3, [r3]
    1538:	e50b3008 	str	r3, [fp, #-8]
    153c:	eaffffc8 	b	1464 <malloc+0x78>
    1540:	e1a00003 	mov	r0, r3
    1544:	e24bd004 	sub	sp, fp, #4
    1548:	e8bd8800 	pop	{fp, pc}
    154c:	00001764 	.word	0x00001764
    1550:	0000175c 	.word	0x0000175c

00001554 <__udivsi3>:
    1554:	e2512001 	subs	r2, r1, #1
    1558:	012fff1e 	bxeq	lr
    155c:	3a000036 	bcc	163c <__udivsi3+0xe8>
    1560:	e1500001 	cmp	r0, r1
    1564:	9a000022 	bls	15f4 <__udivsi3+0xa0>
    1568:	e1110002 	tst	r1, r2
    156c:	0a000023 	beq	1600 <__udivsi3+0xac>
    1570:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1574:	01a01181 	lsleq	r1, r1, #3
    1578:	03a03008 	moveq	r3, #8
    157c:	13a03001 	movne	r3, #1
    1580:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1584:	31510000 	cmpcc	r1, r0
    1588:	31a01201 	lslcc	r1, r1, #4
    158c:	31a03203 	lslcc	r3, r3, #4
    1590:	3afffffa 	bcc	1580 <__udivsi3+0x2c>
    1594:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1598:	31510000 	cmpcc	r1, r0
    159c:	31a01081 	lslcc	r1, r1, #1
    15a0:	31a03083 	lslcc	r3, r3, #1
    15a4:	3afffffa 	bcc	1594 <__udivsi3+0x40>
    15a8:	e3a02000 	mov	r2, #0
    15ac:	e1500001 	cmp	r0, r1
    15b0:	20400001 	subcs	r0, r0, r1
    15b4:	21822003 	orrcs	r2, r2, r3
    15b8:	e15000a1 	cmp	r0, r1, lsr #1
    15bc:	204000a1 	subcs	r0, r0, r1, lsr #1
    15c0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    15c4:	e1500121 	cmp	r0, r1, lsr #2
    15c8:	20400121 	subcs	r0, r0, r1, lsr #2
    15cc:	21822123 	orrcs	r2, r2, r3, lsr #2
    15d0:	e15001a1 	cmp	r0, r1, lsr #3
    15d4:	204001a1 	subcs	r0, r0, r1, lsr #3
    15d8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    15dc:	e3500000 	cmp	r0, #0
    15e0:	11b03223 	lsrsne	r3, r3, #4
    15e4:	11a01221 	lsrne	r1, r1, #4
    15e8:	1affffef 	bne	15ac <__udivsi3+0x58>
    15ec:	e1a00002 	mov	r0, r2
    15f0:	e12fff1e 	bx	lr
    15f4:	03a00001 	moveq	r0, #1
    15f8:	13a00000 	movne	r0, #0
    15fc:	e12fff1e 	bx	lr
    1600:	e3510801 	cmp	r1, #65536	@ 0x10000
    1604:	21a01821 	lsrcs	r1, r1, #16
    1608:	23a02010 	movcs	r2, #16
    160c:	33a02000 	movcc	r2, #0
    1610:	e3510c01 	cmp	r1, #256	@ 0x100
    1614:	21a01421 	lsrcs	r1, r1, #8
    1618:	22822008 	addcs	r2, r2, #8
    161c:	e3510010 	cmp	r1, #16
    1620:	21a01221 	lsrcs	r1, r1, #4
    1624:	22822004 	addcs	r2, r2, #4
    1628:	e3510004 	cmp	r1, #4
    162c:	82822003 	addhi	r2, r2, #3
    1630:	908220a1 	addls	r2, r2, r1, lsr #1
    1634:	e1a00230 	lsr	r0, r0, r2
    1638:	e12fff1e 	bx	lr
    163c:	e3500000 	cmp	r0, #0
    1640:	13e00000 	mvnne	r0, #0
    1644:	ea000007 	b	1668 <__aeabi_idiv0>

00001648 <__aeabi_uidivmod>:
    1648:	e3510000 	cmp	r1, #0
    164c:	0afffffa 	beq	163c <__udivsi3+0xe8>
    1650:	e92d4003 	push	{r0, r1, lr}
    1654:	ebffffbe 	bl	1554 <__udivsi3>
    1658:	e8bd4006 	pop	{r1, r2, lr}
    165c:	e0030092 	mul	r3, r2, r0
    1660:	e0411003 	sub	r1, r1, r3
    1664:	e12fff1e 	bx	lr

00001668 <__aeabi_idiv0>:
    1668:	e12fff1e 	bx	lr
