
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0002c2 	bl	b24 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0002c4 	bl	b48 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0002b8 	bl	b24 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb0002f5 	bl	c20 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb0002f3 	bl	c20 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb000409 	bl	1084 <printf>
      5c:	eb00025f 	bl	9e0 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb000401 	bl	1084 <printf>
      7c:	eb000260 	bl	a04 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb000299 	bl	b00 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb0003f7 	bl	1084 <printf>
      a4:	eb000256 	bl	a04 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0003f3 	bl	1084 <printf>
      b4:	eb00025b 	bl	a28 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	00001744 	.word	0x00001744
      e0:	0000174c 	.word	0x0000174c
      e4:	00001760 	.word	0x00001760
      e8:	00001874 	.word	0x00001874
      ec:	00001740 	.word	0x00001740
      f0:	00001774 	.word	0x00001774
      f4:	0000178c 	.word	0x0000178c

000000f8 <xchg>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b1010 	ldr	r1, [fp, #-16]
     110:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     114:	e1912f9f 	ldrex	r2, [r1]
     118:	e1813f90 	strex	r3, r0, [r1]
     11c:	e50b2008 	str	r2, [fp, #-8]
     120:	e50b300c 	str	r3, [fp, #-12]
     124:	e51b300c 	ldr	r3, [fp, #-12]
     128:	e3530000 	cmp	r3, #0
     12c:	1afffff6 	bne	10c <xchg+0x14>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e1a00003 	mov	r0, r3
     138:	e28bd000 	add	sp, fp, #0
     13c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     140:	e12fff1e 	bx	lr

00000144 <strcpy>:
     144:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     148:	e28db000 	add	fp, sp, #0
     14c:	e24dd014 	sub	sp, sp, #20
     150:	e50b0010 	str	r0, [fp, #-16]
     154:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e50b3008 	str	r3, [fp, #-8]
     160:	e1a00000 	nop			@ (mov r0, r0)
     164:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     168:	e2823001 	add	r3, r2, #1
     16c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     170:	e51b3010 	ldr	r3, [fp, #-16]
     174:	e2831001 	add	r1, r3, #1
     178:	e50b1010 	str	r1, [fp, #-16]
     17c:	e5d22000 	ldrb	r2, [r2]
     180:	e5c32000 	strb	r2, [r3]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e3530000 	cmp	r3, #0
     18c:	1afffff4 	bne	164 <strcpy+0x20>
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e1a00003 	mov	r0, r3
     198:	e28bd000 	add	sp, fp, #0
     19c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1a0:	e12fff1e 	bx	lr

000001a4 <strcmp>:
     1a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a8:	e28db000 	add	fp, sp, #0
     1ac:	e24dd00c 	sub	sp, sp, #12
     1b0:	e50b0008 	str	r0, [fp, #-8]
     1b4:	e50b100c 	str	r1, [fp, #-12]
     1b8:	ea000005 	b	1d4 <strcmp+0x30>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b3008 	str	r3, [fp, #-8]
     1c8:	e51b300c 	ldr	r3, [fp, #-12]
     1cc:	e2833001 	add	r3, r3, #1
     1d0:	e50b300c 	str	r3, [fp, #-12]
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000005 	beq	1fc <strcmp+0x58>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e5d32000 	ldrb	r2, [r3]
     1ec:	e51b300c 	ldr	r3, [fp, #-12]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e1520003 	cmp	r2, r3
     1f8:	0affffef 	beq	1bc <strcmp+0x18>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e1a02003 	mov	r2, r3
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e0423003 	sub	r3, r2, r3
     214:	e1a00003 	mov	r0, r3
     218:	e28bd000 	add	sp, fp, #0
     21c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     220:	e12fff1e 	bx	lr

00000224 <strlen>:
     224:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     228:	e28db000 	add	fp, sp, #0
     22c:	e24dd014 	sub	sp, sp, #20
     230:	e50b0010 	str	r0, [fp, #-16]
     234:	e3a03000 	mov	r3, #0
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	ea000002 	b	24c <strlen+0x28>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e2833001 	add	r3, r3, #1
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e51b2010 	ldr	r2, [fp, #-16]
     254:	e0823003 	add	r3, r2, r3
     258:	e5d33000 	ldrb	r3, [r3]
     25c:	e3530000 	cmp	r3, #0
     260:	1afffff6 	bne	240 <strlen+0x1c>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e1a00003 	mov	r0, r3
     26c:	e28bd000 	add	sp, fp, #0
     270:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     274:	e12fff1e 	bx	lr

00000278 <memset>:
     278:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     27c:	e28db000 	add	fp, sp, #0
     280:	e24dd024 	sub	sp, sp, #36	@ 0x24
     284:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     288:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     28c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     290:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     294:	e50b3008 	str	r3, [fp, #-8]
     298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     29c:	e54b300d 	strb	r3, [fp, #-13]
     2a0:	e55b200d 	ldrb	r2, [fp, #-13]
     2a4:	e1a03002 	mov	r3, r2
     2a8:	e1a03403 	lsl	r3, r3, #8
     2ac:	e0833002 	add	r3, r3, r2
     2b0:	e1a03803 	lsl	r3, r3, #16
     2b4:	e1a02003 	mov	r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1a03403 	lsl	r3, r3, #8
     2c0:	e1822003 	orr	r2, r2, r3
     2c4:	e55b300d 	ldrb	r3, [fp, #-13]
     2c8:	e1823003 	orr	r3, r2, r3
     2cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2d0:	ea000008 	b	2f8 <memset+0x80>
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
     300:	0a000003 	beq	314 <memset+0x9c>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e2033003 	and	r3, r3, #3
     30c:	e3530000 	cmp	r3, #0
     310:	1affffef 	bne	2d4 <memset+0x5c>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e50b300c 	str	r3, [fp, #-12]
     31c:	ea000008 	b	344 <memset+0xcc>
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     328:	e5832000 	str	r2, [r3]
     32c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     330:	e2433004 	sub	r3, r3, #4
     334:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     338:	e51b300c 	ldr	r3, [fp, #-12]
     33c:	e2833004 	add	r3, r3, #4
     340:	e50b300c 	str	r3, [fp, #-12]
     344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     348:	e3530003 	cmp	r3, #3
     34c:	8afffff3 	bhi	320 <memset+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e50b3008 	str	r3, [fp, #-8]
     358:	ea000008 	b	380 <memset+0x108>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e55b200d 	ldrb	r2, [fp, #-13]
     364:	e5c32000 	strb	r2, [r3]
     368:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     36c:	e2433001 	sub	r3, r3, #1
     370:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2833001 	add	r3, r3, #1
     37c:	e50b3008 	str	r3, [fp, #-8]
     380:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     384:	e3530000 	cmp	r3, #0
     388:	1afffff3 	bne	35c <memset+0xe4>
     38c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     390:	e1a00003 	mov	r0, r3
     394:	e28bd000 	add	sp, fp, #0
     398:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     39c:	e12fff1e 	bx	lr

000003a0 <strchr>:
     3a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a4:	e28db000 	add	fp, sp, #0
     3a8:	e24dd00c 	sub	sp, sp, #12
     3ac:	e50b0008 	str	r0, [fp, #-8]
     3b0:	e1a03001 	mov	r3, r1
     3b4:	e54b3009 	strb	r3, [fp, #-9]
     3b8:	ea000009 	b	3e4 <strchr+0x44>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e5d33000 	ldrb	r3, [r3]
     3c4:	e55b2009 	ldrb	r2, [fp, #-9]
     3c8:	e1520003 	cmp	r2, r3
     3cc:	1a000001 	bne	3d8 <strchr+0x38>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	ea000007 	b	3f8 <strchr+0x58>
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e2833001 	add	r3, r3, #1
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e5d33000 	ldrb	r3, [r3]
     3ec:	e3530000 	cmp	r3, #0
     3f0:	1afffff1 	bne	3bc <strchr+0x1c>
     3f4:	e3a03000 	mov	r3, #0
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e28bd000 	add	sp, fp, #0
     400:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     404:	e12fff1e 	bx	lr

00000408 <gets>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd018 	sub	sp, sp, #24
     414:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     418:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     41c:	e3a03000 	mov	r3, #0
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	ea000016 	b	484 <gets+0x7c>
     428:	e24b300d 	sub	r3, fp, #13
     42c:	e3a02001 	mov	r2, #1
     430:	e1a01003 	mov	r1, r3
     434:	e3a00000 	mov	r0, #0
     438:	eb00018c 	bl	a70 <read>
     43c:	e50b000c 	str	r0, [fp, #-12]
     440:	e51b300c 	ldr	r3, [fp, #-12]
     444:	e3530000 	cmp	r3, #0
     448:	da000013 	ble	49c <gets+0x94>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2832001 	add	r2, r3, #1
     454:	e50b2008 	str	r2, [fp, #-8]
     458:	e1a02003 	mov	r2, r3
     45c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     460:	e0833002 	add	r3, r3, r2
     464:	e55b200d 	ldrb	r2, [fp, #-13]
     468:	e5c32000 	strb	r2, [r3]
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000a 	cmp	r3, #10
     474:	0a000009 	beq	4a0 <gets+0x98>
     478:	e55b300d 	ldrb	r3, [fp, #-13]
     47c:	e353000d 	cmp	r3, #13
     480:	0a000006 	beq	4a0 <gets+0x98>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2833001 	add	r3, r3, #1
     48c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     490:	e1520003 	cmp	r2, r3
     494:	caffffe3 	bgt	428 <gets+0x20>
     498:	ea000000 	b	4a0 <gets+0x98>
     49c:	e1a00000 	nop			@ (mov r0, r0)
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4a8:	e0823003 	add	r3, r2, r3
     4ac:	e3a02000 	mov	r2, #0
     4b0:	e5c32000 	strb	r2, [r3]
     4b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e24bd004 	sub	sp, fp, #4
     4c0:	e8bd8800 	pop	{fp, pc}

000004c4 <stat>:
     4c4:	e92d4800 	push	{fp, lr}
     4c8:	e28db004 	add	fp, sp, #4
     4cc:	e24dd010 	sub	sp, sp, #16
     4d0:	e50b0010 	str	r0, [fp, #-16]
     4d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4d8:	e3a01000 	mov	r1, #0
     4dc:	e51b0010 	ldr	r0, [fp, #-16]
     4e0:	eb00018f 	bl	b24 <open>
     4e4:	e50b0008 	str	r0, [fp, #-8]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	aa000001 	bge	4fc <stat+0x38>
     4f4:	e3e03000 	mvn	r3, #0
     4f8:	ea000006 	b	518 <stat+0x54>
     4fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb0001a1 	bl	b90 <fstat>
     508:	e50b000c 	str	r0, [fp, #-12]
     50c:	e51b0008 	ldr	r0, [fp, #-8]
     510:	eb000168 	bl	ab8 <close>
     514:	e51b300c 	ldr	r3, [fp, #-12]
     518:	e1a00003 	mov	r0, r3
     51c:	e24bd004 	sub	sp, fp, #4
     520:	e8bd8800 	pop	{fp, pc}

00000524 <atoi>:
     524:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     528:	e28db000 	add	fp, sp, #0
     52c:	e24dd014 	sub	sp, sp, #20
     530:	e50b0010 	str	r0, [fp, #-16]
     534:	e3a03000 	mov	r3, #0
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	ea00000c 	b	574 <atoi+0x50>
     540:	e51b2008 	ldr	r2, [fp, #-8]
     544:	e1a03002 	mov	r3, r2
     548:	e1a03103 	lsl	r3, r3, #2
     54c:	e0833002 	add	r3, r3, r2
     550:	e1a03083 	lsl	r3, r3, #1
     554:	e1a01003 	mov	r1, r3
     558:	e51b3010 	ldr	r3, [fp, #-16]
     55c:	e2832001 	add	r2, r3, #1
     560:	e50b2010 	str	r2, [fp, #-16]
     564:	e5d33000 	ldrb	r3, [r3]
     568:	e0813003 	add	r3, r1, r3
     56c:	e2433030 	sub	r3, r3, #48	@ 0x30
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e5d33000 	ldrb	r3, [r3]
     57c:	e353002f 	cmp	r3, #47	@ 0x2f
     580:	9a000003 	bls	594 <atoi+0x70>
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e5d33000 	ldrb	r3, [r3]
     58c:	e3530039 	cmp	r3, #57	@ 0x39
     590:	9affffea 	bls	540 <atoi+0x1c>
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e1a00003 	mov	r0, r3
     59c:	e28bd000 	add	sp, fp, #0
     5a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <memmove>:
     5a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ac:	e28db000 	add	fp, sp, #0
     5b0:	e24dd01c 	sub	sp, sp, #28
     5b4:	e50b0010 	str	r0, [fp, #-16]
     5b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c0:	e51b3010 	ldr	r3, [fp, #-16]
     5c4:	e50b3008 	str	r3, [fp, #-8]
     5c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5cc:	e50b300c 	str	r3, [fp, #-12]
     5d0:	ea000007 	b	5f4 <memmove+0x4c>
     5d4:	e51b200c 	ldr	r2, [fp, #-12]
     5d8:	e2823001 	add	r3, r2, #1
     5dc:	e50b300c 	str	r3, [fp, #-12]
     5e0:	e51b3008 	ldr	r3, [fp, #-8]
     5e4:	e2831001 	add	r1, r3, #1
     5e8:	e50b1008 	str	r1, [fp, #-8]
     5ec:	e5d22000 	ldrb	r2, [r2]
     5f0:	e5c32000 	strb	r2, [r3]
     5f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f8:	e2432001 	sub	r2, r3, #1
     5fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     600:	e3530000 	cmp	r3, #0
     604:	cafffff2 	bgt	5d4 <memmove+0x2c>
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e1a00003 	mov	r0, r3
     610:	e28bd000 	add	sp, fp, #0
     614:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <initiateLock>:
     61c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     620:	e28db000 	add	fp, sp, #0
     624:	e24dd00c 	sub	sp, sp, #12
     628:	e50b0008 	str	r0, [fp, #-8]
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e3a02000 	mov	r2, #0
     634:	e5832000 	str	r2, [r3]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e3a02001 	mov	r2, #1
     640:	e5832004 	str	r2, [r3, #4]
     644:	e1a00000 	nop			@ (mov r0, r0)
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <acquireLock>:
     654:	e92d4800 	push	{fp, lr}
     658:	e28db004 	add	fp, sp, #4
     65c:	e24dd008 	sub	sp, sp, #8
     660:	e50b0008 	str	r0, [fp, #-8]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e5933000 	ldr	r3, [r3]
     66c:	e3730001 	cmn	r3, #1
     670:	1a000002 	bne	680 <acquireLock+0x2c>
     674:	e59f1034 	ldr	r1, [pc, #52]	@ 6b0 <acquireLock+0x5c>
     678:	e3a00002 	mov	r0, #2
     67c:	eb000280 	bl	1084 <printf>
     680:	e1a00000 	nop			@ (mov r0, r0)
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e3a01001 	mov	r1, #1
     68c:	e1a00003 	mov	r0, r3
     690:	ebfffe98 	bl	f8 <xchg>
     694:	e1a03000 	mov	r3, r0
     698:	e3530000 	cmp	r3, #0
     69c:	1afffff8 	bne	684 <acquireLock+0x30>
     6a0:	e1a00000 	nop			@ (mov r0, r0)
     6a4:	e1a00000 	nop			@ (mov r0, r0)
     6a8:	e24bd004 	sub	sp, fp, #4
     6ac:	e8bd8800 	pop	{fp, pc}
     6b0:	00001798 	.word	0x00001798

000006b4 <releaseLock>:
     6b4:	e92d4800 	push	{fp, lr}
     6b8:	e28db004 	add	fp, sp, #4
     6bc:	e24dd008 	sub	sp, sp, #8
     6c0:	e50b0008 	str	r0, [fp, #-8]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e5933000 	ldr	r3, [r3]
     6cc:	e3530001 	cmp	r3, #1
     6d0:	0a000002 	beq	6e0 <releaseLock+0x2c>
     6d4:	e59f1020 	ldr	r1, [pc, #32]	@ 6fc <releaseLock+0x48>
     6d8:	e3a00002 	mov	r0, #2
     6dc:	eb000268 	bl	1084 <printf>
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e3a01000 	mov	r1, #0
     6e8:	e1a00003 	mov	r0, r3
     6ec:	ebfffe81 	bl	f8 <xchg>
     6f0:	e1a00000 	nop			@ (mov r0, r0)
     6f4:	e24bd004 	sub	sp, fp, #4
     6f8:	e8bd8800 	pop	{fp, pc}
     6fc:	000017c8 	.word	0x000017c8

00000700 <initiateCondVar>:
     700:	e92d4800 	push	{fp, lr}
     704:	e28db004 	add	fp, sp, #4
     708:	e24dd008 	sub	sp, sp, #8
     70c:	e50b0008 	str	r0, [fp, #-8]
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e5933004 	ldr	r3, [r3, #4]
     718:	e3530000 	cmp	r3, #0
     71c:	1a000007 	bne	740 <initiateCondVar+0x40>
     720:	eb0001e0 	bl	ea8 <getChannel>
     724:	e1a02000 	mov	r2, r0
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e5832000 	str	r2, [r3]
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e3a02001 	mov	r2, #1
     738:	e5832004 	str	r2, [r3, #4]
     73c:	ea000000 	b	744 <initiateCondVar+0x44>
     740:	e1a00000 	nop			@ (mov r0, r0)
     744:	e24bd004 	sub	sp, fp, #4
     748:	e8bd8800 	pop	{fp, pc}

0000074c <condWait>:
     74c:	e92d4800 	push	{fp, lr}
     750:	e28db004 	add	fp, sp, #4
     754:	e24dd008 	sub	sp, sp, #8
     758:	e50b0008 	str	r0, [fp, #-8]
     75c:	e50b100c 	str	r1, [fp, #-12]
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5933004 	ldr	r3, [r3, #4]
     768:	e3530000 	cmp	r3, #0
     76c:	1a000003 	bne	780 <condWait+0x34>
     770:	e59f1050 	ldr	r1, [pc, #80]	@ 7c8 <condWait+0x7c>
     774:	e3a00002 	mov	r0, #2
     778:	eb000241 	bl	1084 <printf>
     77c:	ea00000f 	b	7c0 <condWait+0x74>
     780:	e51b300c 	ldr	r3, [fp, #-12]
     784:	e5933004 	ldr	r3, [r3, #4]
     788:	e3530000 	cmp	r3, #0
     78c:	1a000003 	bne	7a0 <condWait+0x54>
     790:	e59f1034 	ldr	r1, [pc, #52]	@ 7cc <condWait+0x80>
     794:	e3a00002 	mov	r0, #2
     798:	eb000239 	bl	1084 <printf>
     79c:	ea000007 	b	7c0 <condWait+0x74>
     7a0:	e51b000c 	ldr	r0, [fp, #-12]
     7a4:	ebffffc2 	bl	6b4 <releaseLock>
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5933000 	ldr	r3, [r3]
     7b0:	e1a00003 	mov	r0, r3
     7b4:	eb0001b2 	bl	e84 <sleepChan>
     7b8:	e51b000c 	ldr	r0, [fp, #-12]
     7bc:	ebffffa4 	bl	654 <acquireLock>
     7c0:	e24bd004 	sub	sp, fp, #4
     7c4:	e8bd8800 	pop	{fp, pc}
     7c8:	00001804 	.word	0x00001804
     7cc:	00001828 	.word	0x00001828

000007d0 <broadcast>:
     7d0:	e92d4800 	push	{fp, lr}
     7d4:	e28db004 	add	fp, sp, #4
     7d8:	e24dd008 	sub	sp, sp, #8
     7dc:	e50b0008 	str	r0, [fp, #-8]
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e5933004 	ldr	r3, [r3, #4]
     7e8:	e3530000 	cmp	r3, #0
     7ec:	1a000003 	bne	800 <broadcast+0x30>
     7f0:	e59f1020 	ldr	r1, [pc, #32]	@ 818 <broadcast+0x48>
     7f4:	e3a00002 	mov	r0, #2
     7f8:	eb000221 	bl	1084 <printf>
     7fc:	ea000003 	b	810 <broadcast+0x40>
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e5933000 	ldr	r3, [r3]
     808:	e1a00003 	mov	r0, r3
     80c:	eb0001ae 	bl	ecc <sigChan>
     810:	e24bd004 	sub	sp, fp, #4
     814:	e8bd8800 	pop	{fp, pc}
     818:	00001804 	.word	0x00001804

0000081c <signal>:
     81c:	e92d4800 	push	{fp, lr}
     820:	e28db004 	add	fp, sp, #4
     824:	e24dd008 	sub	sp, sp, #8
     828:	e50b0008 	str	r0, [fp, #-8]
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e5933004 	ldr	r3, [r3, #4]
     834:	e3530000 	cmp	r3, #0
     838:	1a000003 	bne	84c <signal+0x30>
     83c:	e59f1020 	ldr	r1, [pc, #32]	@ 864 <signal+0x48>
     840:	e3a00002 	mov	r0, #2
     844:	eb00020e 	bl	1084 <printf>
     848:	ea000003 	b	85c <signal+0x40>
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933000 	ldr	r3, [r3]
     854:	e1a00003 	mov	r0, r3
     858:	eb0001a4 	bl	ef0 <sigOneChan>
     85c:	e24bd004 	sub	sp, fp, #4
     860:	e8bd8800 	pop	{fp, pc}
     864:	00001804 	.word	0x00001804

00000868 <semInit>:
     868:	e92d4800 	push	{fp, lr}
     86c:	e28db004 	add	fp, sp, #4
     870:	e24dd008 	sub	sp, sp, #8
     874:	e50b0008 	str	r0, [fp, #-8]
     878:	e50b100c 	str	r1, [fp, #-12]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e51b200c 	ldr	r2, [fp, #-12]
     884:	e5832000 	str	r2, [r3]
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e2833004 	add	r3, r3, #4
     890:	e1a00003 	mov	r0, r3
     894:	ebffff60 	bl	61c <initiateLock>
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e283300c 	add	r3, r3, #12
     8a0:	e1a00003 	mov	r0, r3
     8a4:	ebffff95 	bl	700 <initiateCondVar>
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e3a02001 	mov	r2, #1
     8b0:	e5832014 	str	r2, [r3, #20]
     8b4:	e1a00000 	nop			@ (mov r0, r0)
     8b8:	e24bd004 	sub	sp, fp, #4
     8bc:	e8bd8800 	pop	{fp, pc}

000008c0 <semDown>:
     8c0:	e92d4800 	push	{fp, lr}
     8c4:	e28db004 	add	fp, sp, #4
     8c8:	e24dd008 	sub	sp, sp, #8
     8cc:	e50b0008 	str	r0, [fp, #-8]
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e5933014 	ldr	r3, [r3, #20]
     8d8:	e3530000 	cmp	r3, #0
     8dc:	1a000003 	bne	8f0 <semDown+0x30>
     8e0:	e59f1074 	ldr	r1, [pc, #116]	@ 95c <semDown+0x9c>
     8e4:	e3a00002 	mov	r0, #2
     8e8:	eb0001e5 	bl	1084 <printf>
     8ec:	ea000018 	b	954 <semDown+0x94>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e2833004 	add	r3, r3, #4
     8f8:	e1a00003 	mov	r0, r3
     8fc:	ebffff54 	bl	654 <acquireLock>
     900:	ea000006 	b	920 <semDown+0x60>
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e283200c 	add	r2, r3, #12
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2833004 	add	r3, r3, #4
     914:	e1a01003 	mov	r1, r3
     918:	e1a00002 	mov	r0, r2
     91c:	ebffff8a 	bl	74c <condWait>
     920:	e51b3008 	ldr	r3, [fp, #-8]
     924:	e5933000 	ldr	r3, [r3]
     928:	e3530000 	cmp	r3, #0
     92c:	0afffff4 	beq	904 <semDown+0x44>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933000 	ldr	r3, [r3]
     938:	e2432001 	sub	r2, r3, #1
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5832000 	str	r2, [r3]
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2833004 	add	r3, r3, #4
     94c:	e1a00003 	mov	r0, r3
     950:	ebffff57 	bl	6b4 <releaseLock>
     954:	e24bd004 	sub	sp, fp, #4
     958:	e8bd8800 	pop	{fp, pc}
     95c:	00001848 	.word	0x00001848

00000960 <semUp>:
     960:	e92d4800 	push	{fp, lr}
     964:	e28db004 	add	fp, sp, #4
     968:	e24dd008 	sub	sp, sp, #8
     96c:	e50b0008 	str	r0, [fp, #-8]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933014 	ldr	r3, [r3, #20]
     978:	e3530000 	cmp	r3, #0
     97c:	1a000003 	bne	990 <semUp+0x30>
     980:	e59f1054 	ldr	r1, [pc, #84]	@ 9dc <semUp+0x7c>
     984:	e3a00002 	mov	r0, #2
     988:	eb0001bd 	bl	1084 <printf>
     98c:	ea000010 	b	9d4 <semUp+0x74>
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e2833004 	add	r3, r3, #4
     998:	e1a00003 	mov	r0, r3
     99c:	ebffff2c 	bl	654 <acquireLock>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e5933000 	ldr	r3, [r3]
     9a8:	e2832001 	add	r2, r3, #1
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e5832000 	str	r2, [r3]
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e283300c 	add	r3, r3, #12
     9bc:	e1a00003 	mov	r0, r3
     9c0:	ebffff95 	bl	81c <signal>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e2833004 	add	r3, r3, #4
     9cc:	e1a00003 	mov	r0, r3
     9d0:	ebffff37 	bl	6b4 <releaseLock>
     9d4:	e24bd004 	sub	sp, fp, #4
     9d8:	e8bd8800 	pop	{fp, pc}
     9dc:	00001848 	.word	0x00001848

000009e0 <fork>:
     9e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e4:	e1a04003 	mov	r4, r3
     9e8:	e1a03002 	mov	r3, r2
     9ec:	e1a02001 	mov	r2, r1
     9f0:	e1a01000 	mov	r1, r0
     9f4:	e3a00001 	mov	r0, #1
     9f8:	ef000000 	svc	0x00000000
     9fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a00:	e12fff1e 	bx	lr

00000a04 <exit>:
     a04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a08:	e1a04003 	mov	r4, r3
     a0c:	e1a03002 	mov	r3, r2
     a10:	e1a02001 	mov	r2, r1
     a14:	e1a01000 	mov	r1, r0
     a18:	e3a00002 	mov	r0, #2
     a1c:	ef000000 	svc	0x00000000
     a20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a24:	e12fff1e 	bx	lr

00000a28 <wait>:
     a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a2c:	e1a04003 	mov	r4, r3
     a30:	e1a03002 	mov	r3, r2
     a34:	e1a02001 	mov	r2, r1
     a38:	e1a01000 	mov	r1, r0
     a3c:	e3a00003 	mov	r0, #3
     a40:	ef000000 	svc	0x00000000
     a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a48:	e12fff1e 	bx	lr

00000a4c <pipe>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a00004 	mov	r0, #4
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <read>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00005 	mov	r0, #5
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <write>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a00010 	mov	r0, #16
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <close>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00015 	mov	r0, #21
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <kill>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a00006 	mov	r0, #6
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <exec>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00007 	mov	r0, #7
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <open>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a0000f 	mov	r0, #15
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <mknod>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a00011 	mov	r0, #17
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <unlink>:
     b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b70:	e1a04003 	mov	r4, r3
     b74:	e1a03002 	mov	r3, r2
     b78:	e1a02001 	mov	r2, r1
     b7c:	e1a01000 	mov	r1, r0
     b80:	e3a00012 	mov	r0, #18
     b84:	ef000000 	svc	0x00000000
     b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <fstat>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a00008 	mov	r0, #8
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <link>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a00013 	mov	r0, #19
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <mkdir>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a00014 	mov	r0, #20
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <chdir>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a00009 	mov	r0, #9
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <dup>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a0000a 	mov	r0, #10
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <getpid>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a0000b 	mov	r0, #11
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <sbrk>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a0000c 	mov	r0, #12
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <sleep>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a0000d 	mov	r0, #13
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <uptime>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a0000e 	mov	r0, #14
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <disproc>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a00016 	mov	r0, #22
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <srand>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00017 	mov	r0, #23
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <setticket>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a00018 	mov	r0, #24
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <getpinfo>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a00019 	mov	r0, #25
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <printPages>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a0001a 	mov	r0, #26
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <kpt>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a0001b 	mov	r0, #27
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <thread_create>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a0001c 	mov	r0, #28
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <thread_exit>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a0001d 	mov	r0, #29
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <thread_join>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a0001e 	mov	r0, #30
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <waitpid>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a0001f 	mov	r0, #31
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <barrier_init>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a00020 	mov	r0, #32
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <barrier_check>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a00021 	mov	r0, #33	@ 0x21
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <sleepChan>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00022 	mov	r0, #34	@ 0x22
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <getChannel>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a00023 	mov	r0, #35	@ 0x23
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <sigChan>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a00024 	mov	r0, #36	@ 0x24
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <sigOneChan>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a00025 	mov	r0, #37	@ 0x25
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <putc>:
     f14:	e92d4800 	push	{fp, lr}
     f18:	e28db004 	add	fp, sp, #4
     f1c:	e24dd008 	sub	sp, sp, #8
     f20:	e50b0008 	str	r0, [fp, #-8]
     f24:	e1a03001 	mov	r3, r1
     f28:	e54b3009 	strb	r3, [fp, #-9]
     f2c:	e24b3009 	sub	r3, fp, #9
     f30:	e3a02001 	mov	r2, #1
     f34:	e1a01003 	mov	r1, r3
     f38:	e51b0008 	ldr	r0, [fp, #-8]
     f3c:	ebfffed4 	bl	a94 <write>
     f40:	e1a00000 	nop			@ (mov r0, r0)
     f44:	e24bd004 	sub	sp, fp, #4
     f48:	e8bd8800 	pop	{fp, pc}

00000f4c <printint>:
     f4c:	e92d4800 	push	{fp, lr}
     f50:	e28db004 	add	fp, sp, #4
     f54:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f58:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f5c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f60:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f64:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f68:	e3a03000 	mov	r3, #0
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f74:	e3530000 	cmp	r3, #0
     f78:	0a000008 	beq	fa0 <printint+0x54>
     f7c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f80:	e3530000 	cmp	r3, #0
     f84:	aa000005 	bge	fa0 <printint+0x54>
     f88:	e3a03001 	mov	r3, #1
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f94:	e2633000 	rsb	r3, r3, #0
     f98:	e50b3010 	str	r3, [fp, #-16]
     f9c:	ea000001 	b	fa8 <printint+0x5c>
     fa0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fa4:	e50b3010 	str	r3, [fp, #-16]
     fa8:	e3a03000 	mov	r3, #0
     fac:	e50b3008 	str	r3, [fp, #-8]
     fb0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fb4:	e51b3010 	ldr	r3, [fp, #-16]
     fb8:	e1a01002 	mov	r1, r2
     fbc:	e1a00003 	mov	r0, r3
     fc0:	eb0001d5 	bl	171c <__aeabi_uidivmod>
     fc4:	e1a03001 	mov	r3, r1
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e2832001 	add	r2, r3, #1
     fd4:	e50b2008 	str	r2, [fp, #-8]
     fd8:	e59f20a0 	ldr	r2, [pc, #160]	@ 1080 <printint+0x134>
     fdc:	e7d22001 	ldrb	r2, [r2, r1]
     fe0:	e2433004 	sub	r3, r3, #4
     fe4:	e083300b 	add	r3, r3, fp
     fe8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     ff0:	e1a01003 	mov	r1, r3
     ff4:	e51b0010 	ldr	r0, [fp, #-16]
     ff8:	eb00018a 	bl	1628 <__udivsi3>
     ffc:	e1a03000 	mov	r3, r0
    1000:	e50b3010 	str	r3, [fp, #-16]
    1004:	e51b3010 	ldr	r3, [fp, #-16]
    1008:	e3530000 	cmp	r3, #0
    100c:	1affffe7 	bne	fb0 <printint+0x64>
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e3530000 	cmp	r3, #0
    1018:	0a00000e 	beq	1058 <printint+0x10c>
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e2832001 	add	r2, r3, #1
    1024:	e50b2008 	str	r2, [fp, #-8]
    1028:	e2433004 	sub	r3, r3, #4
    102c:	e083300b 	add	r3, r3, fp
    1030:	e3a0202d 	mov	r2, #45	@ 0x2d
    1034:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1038:	ea000006 	b	1058 <printint+0x10c>
    103c:	e24b2020 	sub	r2, fp, #32
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e0823003 	add	r3, r2, r3
    1048:	e5d33000 	ldrb	r3, [r3]
    104c:	e1a01003 	mov	r1, r3
    1050:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1054:	ebffffae 	bl	f14 <putc>
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e2433001 	sub	r3, r3, #1
    1060:	e50b3008 	str	r3, [fp, #-8]
    1064:	e51b3008 	ldr	r3, [fp, #-8]
    1068:	e3530000 	cmp	r3, #0
    106c:	aafffff2 	bge	103c <printint+0xf0>
    1070:	e1a00000 	nop			@ (mov r0, r0)
    1074:	e1a00000 	nop			@ (mov r0, r0)
    1078:	e24bd004 	sub	sp, fp, #4
    107c:	e8bd8800 	pop	{fp, pc}
    1080:	0000187c 	.word	0x0000187c

00001084 <printf>:
    1084:	e92d000e 	push	{r1, r2, r3}
    1088:	e92d4800 	push	{fp, lr}
    108c:	e28db004 	add	fp, sp, #4
    1090:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1094:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1098:	e3a03000 	mov	r3, #0
    109c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10a0:	e28b3008 	add	r3, fp, #8
    10a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10a8:	e3a03000 	mov	r3, #0
    10ac:	e50b3010 	str	r3, [fp, #-16]
    10b0:	ea000074 	b	1288 <printf+0x204>
    10b4:	e59b2004 	ldr	r2, [fp, #4]
    10b8:	e51b3010 	ldr	r3, [fp, #-16]
    10bc:	e0823003 	add	r3, r2, r3
    10c0:	e5d33000 	ldrb	r3, [r3]
    10c4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10cc:	e3530000 	cmp	r3, #0
    10d0:	1a00000b 	bne	1104 <printf+0x80>
    10d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10d8:	e3530025 	cmp	r3, #37	@ 0x25
    10dc:	1a000002 	bne	10ec <printf+0x68>
    10e0:	e3a03025 	mov	r3, #37	@ 0x25
    10e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10e8:	ea000063 	b	127c <printf+0x1f8>
    10ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10f0:	e6ef3073 	uxtb	r3, r3
    10f4:	e1a01003 	mov	r1, r3
    10f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10fc:	ebffff84 	bl	f14 <putc>
    1100:	ea00005d 	b	127c <printf+0x1f8>
    1104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1108:	e3530025 	cmp	r3, #37	@ 0x25
    110c:	1a00005a 	bne	127c <printf+0x1f8>
    1110:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1114:	e3530064 	cmp	r3, #100	@ 0x64
    1118:	1a00000a 	bne	1148 <printf+0xc4>
    111c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1120:	e5933000 	ldr	r3, [r3]
    1124:	e1a01003 	mov	r1, r3
    1128:	e3a03001 	mov	r3, #1
    112c:	e3a0200a 	mov	r2, #10
    1130:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1134:	ebffff84 	bl	f4c <printint>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e2833004 	add	r3, r3, #4
    1140:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1144:	ea00004a 	b	1274 <printf+0x1f0>
    1148:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e3530078 	cmp	r3, #120	@ 0x78
    1150:	0a000002 	beq	1160 <printf+0xdc>
    1154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1158:	e3530070 	cmp	r3, #112	@ 0x70
    115c:	1a00000a 	bne	118c <printf+0x108>
    1160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1164:	e5933000 	ldr	r3, [r3]
    1168:	e1a01003 	mov	r1, r3
    116c:	e3a03000 	mov	r3, #0
    1170:	e3a02010 	mov	r2, #16
    1174:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1178:	ebffff73 	bl	f4c <printint>
    117c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e2833004 	add	r3, r3, #4
    1184:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1188:	ea000039 	b	1274 <printf+0x1f0>
    118c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1190:	e3530073 	cmp	r3, #115	@ 0x73
    1194:	1a000018 	bne	11fc <printf+0x178>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e50b300c 	str	r3, [fp, #-12]
    11a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a8:	e2833004 	add	r3, r3, #4
    11ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11b0:	e51b300c 	ldr	r3, [fp, #-12]
    11b4:	e3530000 	cmp	r3, #0
    11b8:	1a00000a 	bne	11e8 <printf+0x164>
    11bc:	e59f30f4 	ldr	r3, [pc, #244]	@ 12b8 <printf+0x234>
    11c0:	e50b300c 	str	r3, [fp, #-12]
    11c4:	ea000007 	b	11e8 <printf+0x164>
    11c8:	e51b300c 	ldr	r3, [fp, #-12]
    11cc:	e5d33000 	ldrb	r3, [r3]
    11d0:	e1a01003 	mov	r1, r3
    11d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11d8:	ebffff4d 	bl	f14 <putc>
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e2833001 	add	r3, r3, #1
    11e4:	e50b300c 	str	r3, [fp, #-12]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5d33000 	ldrb	r3, [r3]
    11f0:	e3530000 	cmp	r3, #0
    11f4:	1afffff3 	bne	11c8 <printf+0x144>
    11f8:	ea00001d 	b	1274 <printf+0x1f0>
    11fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1200:	e3530063 	cmp	r3, #99	@ 0x63
    1204:	1a000009 	bne	1230 <printf+0x1ac>
    1208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    120c:	e5933000 	ldr	r3, [r3]
    1210:	e6ef3073 	uxtb	r3, r3
    1214:	e1a01003 	mov	r1, r3
    1218:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    121c:	ebffff3c 	bl	f14 <putc>
    1220:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1224:	e2833004 	add	r3, r3, #4
    1228:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    122c:	ea000010 	b	1274 <printf+0x1f0>
    1230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1234:	e3530025 	cmp	r3, #37	@ 0x25
    1238:	1a000005 	bne	1254 <printf+0x1d0>
    123c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1240:	e6ef3073 	uxtb	r3, r3
    1244:	e1a01003 	mov	r1, r3
    1248:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    124c:	ebffff30 	bl	f14 <putc>
    1250:	ea000007 	b	1274 <printf+0x1f0>
    1254:	e3a01025 	mov	r1, #37	@ 0x25
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff2c 	bl	f14 <putc>
    1260:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1264:	e6ef3073 	uxtb	r3, r3
    1268:	e1a01003 	mov	r1, r3
    126c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1270:	ebffff27 	bl	f14 <putc>
    1274:	e3a03000 	mov	r3, #0
    1278:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    127c:	e51b3010 	ldr	r3, [fp, #-16]
    1280:	e2833001 	add	r3, r3, #1
    1284:	e50b3010 	str	r3, [fp, #-16]
    1288:	e59b2004 	ldr	r2, [fp, #4]
    128c:	e51b3010 	ldr	r3, [fp, #-16]
    1290:	e0823003 	add	r3, r2, r3
    1294:	e5d33000 	ldrb	r3, [r3]
    1298:	e3530000 	cmp	r3, #0
    129c:	1affff84 	bne	10b4 <printf+0x30>
    12a0:	e1a00000 	nop			@ (mov r0, r0)
    12a4:	e1a00000 	nop			@ (mov r0, r0)
    12a8:	e24bd004 	sub	sp, fp, #4
    12ac:	e8bd4800 	pop	{fp, lr}
    12b0:	e28dd00c 	add	sp, sp, #12
    12b4:	e12fff1e 	bx	lr
    12b8:	0000186c 	.word	0x0000186c

000012bc <free>:
    12bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12c0:	e28db000 	add	fp, sp, #0
    12c4:	e24dd014 	sub	sp, sp, #20
    12c8:	e50b0010 	str	r0, [fp, #-16]
    12cc:	e51b3010 	ldr	r3, [fp, #-16]
    12d0:	e2433008 	sub	r3, r3, #8
    12d4:	e50b300c 	str	r3, [fp, #-12]
    12d8:	e59f3154 	ldr	r3, [pc, #340]	@ 1434 <free+0x178>
    12dc:	e5933000 	ldr	r3, [r3]
    12e0:	e50b3008 	str	r3, [fp, #-8]
    12e4:	ea000010 	b	132c <free+0x70>
    12e8:	e51b3008 	ldr	r3, [fp, #-8]
    12ec:	e5933000 	ldr	r3, [r3]
    12f0:	e51b2008 	ldr	r2, [fp, #-8]
    12f4:	e1520003 	cmp	r2, r3
    12f8:	3a000008 	bcc	1320 <free+0x64>
    12fc:	e51b200c 	ldr	r2, [fp, #-12]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e1520003 	cmp	r2, r3
    1308:	8a000010 	bhi	1350 <free+0x94>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e51b200c 	ldr	r2, [fp, #-12]
    1318:	e1520003 	cmp	r2, r3
    131c:	3a00000b 	bcc	1350 <free+0x94>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e50b3008 	str	r3, [fp, #-8]
    132c:	e51b200c 	ldr	r2, [fp, #-12]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e1520003 	cmp	r2, r3
    1338:	9affffea 	bls	12e8 <free+0x2c>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e51b200c 	ldr	r2, [fp, #-12]
    1348:	e1520003 	cmp	r2, r3
    134c:	2affffe5 	bcs	12e8 <free+0x2c>
    1350:	e51b300c 	ldr	r3, [fp, #-12]
    1354:	e5933004 	ldr	r3, [r3, #4]
    1358:	e1a03183 	lsl	r3, r3, #3
    135c:	e51b200c 	ldr	r2, [fp, #-12]
    1360:	e0822003 	add	r2, r2, r3
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5933000 	ldr	r3, [r3]
    136c:	e1520003 	cmp	r2, r3
    1370:	1a00000d 	bne	13ac <free+0xf0>
    1374:	e51b300c 	ldr	r3, [fp, #-12]
    1378:	e5932004 	ldr	r2, [r3, #4]
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5933000 	ldr	r3, [r3]
    1384:	e5933004 	ldr	r3, [r3, #4]
    1388:	e0822003 	add	r2, r2, r3
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5832004 	str	r2, [r3, #4]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5933000 	ldr	r3, [r3]
    139c:	e5932000 	ldr	r2, [r3]
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e5832000 	str	r2, [r3]
    13a8:	ea000003 	b	13bc <free+0x100>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5932000 	ldr	r2, [r3]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5832000 	str	r2, [r3]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e5933004 	ldr	r3, [r3, #4]
    13c4:	e1a03183 	lsl	r3, r3, #3
    13c8:	e51b2008 	ldr	r2, [fp, #-8]
    13cc:	e0823003 	add	r3, r2, r3
    13d0:	e51b200c 	ldr	r2, [fp, #-12]
    13d4:	e1520003 	cmp	r2, r3
    13d8:	1a00000b 	bne	140c <free+0x150>
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e5932004 	ldr	r2, [r3, #4]
    13e4:	e51b300c 	ldr	r3, [fp, #-12]
    13e8:	e5933004 	ldr	r3, [r3, #4]
    13ec:	e0822003 	add	r2, r2, r3
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5832004 	str	r2, [r3, #4]
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5932000 	ldr	r2, [r3]
    1400:	e51b3008 	ldr	r3, [fp, #-8]
    1404:	e5832000 	str	r2, [r3]
    1408:	ea000002 	b	1418 <free+0x15c>
    140c:	e51b3008 	ldr	r3, [fp, #-8]
    1410:	e51b200c 	ldr	r2, [fp, #-12]
    1414:	e5832000 	str	r2, [r3]
    1418:	e59f2014 	ldr	r2, [pc, #20]	@ 1434 <free+0x178>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5823000 	str	r3, [r2]
    1424:	e1a00000 	nop			@ (mov r0, r0)
    1428:	e28bd000 	add	sp, fp, #0
    142c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1430:	e12fff1e 	bx	lr
    1434:	00001898 	.word	0x00001898

00001438 <morecore>:
    1438:	e92d4800 	push	{fp, lr}
    143c:	e28db004 	add	fp, sp, #4
    1440:	e24dd010 	sub	sp, sp, #16
    1444:	e50b0010 	str	r0, [fp, #-16]
    1448:	e51b3010 	ldr	r3, [fp, #-16]
    144c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1450:	2a000001 	bcs	145c <morecore+0x24>
    1454:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1458:	e50b3010 	str	r3, [fp, #-16]
    145c:	e51b3010 	ldr	r3, [fp, #-16]
    1460:	e1a03183 	lsl	r3, r3, #3
    1464:	e1a00003 	mov	r0, r3
    1468:	ebfffdfe 	bl	c68 <sbrk>
    146c:	e50b0008 	str	r0, [fp, #-8]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e3730001 	cmn	r3, #1
    1478:	1a000001 	bne	1484 <morecore+0x4c>
    147c:	e3a03000 	mov	r3, #0
    1480:	ea00000a 	b	14b0 <morecore+0x78>
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e50b300c 	str	r3, [fp, #-12]
    148c:	e51b300c 	ldr	r3, [fp, #-12]
    1490:	e51b2010 	ldr	r2, [fp, #-16]
    1494:	e5832004 	str	r2, [r3, #4]
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e2833008 	add	r3, r3, #8
    14a0:	e1a00003 	mov	r0, r3
    14a4:	ebffff84 	bl	12bc <free>
    14a8:	e59f300c 	ldr	r3, [pc, #12]	@ 14bc <morecore+0x84>
    14ac:	e5933000 	ldr	r3, [r3]
    14b0:	e1a00003 	mov	r0, r3
    14b4:	e24bd004 	sub	sp, fp, #4
    14b8:	e8bd8800 	pop	{fp, pc}
    14bc:	00001898 	.word	0x00001898

000014c0 <malloc>:
    14c0:	e92d4800 	push	{fp, lr}
    14c4:	e28db004 	add	fp, sp, #4
    14c8:	e24dd018 	sub	sp, sp, #24
    14cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14d4:	e2833007 	add	r3, r3, #7
    14d8:	e1a031a3 	lsr	r3, r3, #3
    14dc:	e2833001 	add	r3, r3, #1
    14e0:	e50b3010 	str	r3, [fp, #-16]
    14e4:	e59f3134 	ldr	r3, [pc, #308]	@ 1620 <malloc+0x160>
    14e8:	e5933000 	ldr	r3, [r3]
    14ec:	e50b300c 	str	r3, [fp, #-12]
    14f0:	e51b300c 	ldr	r3, [fp, #-12]
    14f4:	e3530000 	cmp	r3, #0
    14f8:	1a00000b 	bne	152c <malloc+0x6c>
    14fc:	e59f3120 	ldr	r3, [pc, #288]	@ 1624 <malloc+0x164>
    1500:	e50b300c 	str	r3, [fp, #-12]
    1504:	e59f2114 	ldr	r2, [pc, #276]	@ 1620 <malloc+0x160>
    1508:	e51b300c 	ldr	r3, [fp, #-12]
    150c:	e5823000 	str	r3, [r2]
    1510:	e59f3108 	ldr	r3, [pc, #264]	@ 1620 <malloc+0x160>
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e59f2104 	ldr	r2, [pc, #260]	@ 1624 <malloc+0x164>
    151c:	e5823000 	str	r3, [r2]
    1520:	e59f30fc 	ldr	r3, [pc, #252]	@ 1624 <malloc+0x164>
    1524:	e3a02000 	mov	r2, #0
    1528:	e5832004 	str	r2, [r3, #4]
    152c:	e51b300c 	ldr	r3, [fp, #-12]
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e50b3008 	str	r3, [fp, #-8]
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5933004 	ldr	r3, [r3, #4]
    1540:	e51b2010 	ldr	r2, [fp, #-16]
    1544:	e1520003 	cmp	r2, r3
    1548:	8a00001e 	bhi	15c8 <malloc+0x108>
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5933004 	ldr	r3, [r3, #4]
    1554:	e51b2010 	ldr	r2, [fp, #-16]
    1558:	e1520003 	cmp	r2, r3
    155c:	1a000004 	bne	1574 <malloc+0xb4>
    1560:	e51b3008 	ldr	r3, [fp, #-8]
    1564:	e5932000 	ldr	r2, [r3]
    1568:	e51b300c 	ldr	r3, [fp, #-12]
    156c:	e5832000 	str	r2, [r3]
    1570:	ea00000e 	b	15b0 <malloc+0xf0>
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e5932004 	ldr	r2, [r3, #4]
    157c:	e51b3010 	ldr	r3, [fp, #-16]
    1580:	e0422003 	sub	r2, r2, r3
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5832004 	str	r2, [r3, #4]
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5933004 	ldr	r3, [r3, #4]
    1594:	e1a03183 	lsl	r3, r3, #3
    1598:	e51b2008 	ldr	r2, [fp, #-8]
    159c:	e0823003 	add	r3, r2, r3
    15a0:	e50b3008 	str	r3, [fp, #-8]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e51b2010 	ldr	r2, [fp, #-16]
    15ac:	e5832004 	str	r2, [r3, #4]
    15b0:	e59f2068 	ldr	r2, [pc, #104]	@ 1620 <malloc+0x160>
    15b4:	e51b300c 	ldr	r3, [fp, #-12]
    15b8:	e5823000 	str	r3, [r2]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e2833008 	add	r3, r3, #8
    15c4:	ea000012 	b	1614 <malloc+0x154>
    15c8:	e59f3050 	ldr	r3, [pc, #80]	@ 1620 <malloc+0x160>
    15cc:	e5933000 	ldr	r3, [r3]
    15d0:	e51b2008 	ldr	r2, [fp, #-8]
    15d4:	e1520003 	cmp	r2, r3
    15d8:	1a000007 	bne	15fc <malloc+0x13c>
    15dc:	e51b0010 	ldr	r0, [fp, #-16]
    15e0:	ebffff94 	bl	1438 <morecore>
    15e4:	e50b0008 	str	r0, [fp, #-8]
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e3530000 	cmp	r3, #0
    15f0:	1a000001 	bne	15fc <malloc+0x13c>
    15f4:	e3a03000 	mov	r3, #0
    15f8:	ea000005 	b	1614 <malloc+0x154>
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e50b300c 	str	r3, [fp, #-12]
    1604:	e51b3008 	ldr	r3, [fp, #-8]
    1608:	e5933000 	ldr	r3, [r3]
    160c:	e50b3008 	str	r3, [fp, #-8]
    1610:	eaffffc8 	b	1538 <malloc+0x78>
    1614:	e1a00003 	mov	r0, r3
    1618:	e24bd004 	sub	sp, fp, #4
    161c:	e8bd8800 	pop	{fp, pc}
    1620:	00001898 	.word	0x00001898
    1624:	00001890 	.word	0x00001890

00001628 <__udivsi3>:
    1628:	e2512001 	subs	r2, r1, #1
    162c:	012fff1e 	bxeq	lr
    1630:	3a000036 	bcc	1710 <__udivsi3+0xe8>
    1634:	e1500001 	cmp	r0, r1
    1638:	9a000022 	bls	16c8 <__udivsi3+0xa0>
    163c:	e1110002 	tst	r1, r2
    1640:	0a000023 	beq	16d4 <__udivsi3+0xac>
    1644:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1648:	01a01181 	lsleq	r1, r1, #3
    164c:	03a03008 	moveq	r3, #8
    1650:	13a03001 	movne	r3, #1
    1654:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1658:	31510000 	cmpcc	r1, r0
    165c:	31a01201 	lslcc	r1, r1, #4
    1660:	31a03203 	lslcc	r3, r3, #4
    1664:	3afffffa 	bcc	1654 <__udivsi3+0x2c>
    1668:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    166c:	31510000 	cmpcc	r1, r0
    1670:	31a01081 	lslcc	r1, r1, #1
    1674:	31a03083 	lslcc	r3, r3, #1
    1678:	3afffffa 	bcc	1668 <__udivsi3+0x40>
    167c:	e3a02000 	mov	r2, #0
    1680:	e1500001 	cmp	r0, r1
    1684:	20400001 	subcs	r0, r0, r1
    1688:	21822003 	orrcs	r2, r2, r3
    168c:	e15000a1 	cmp	r0, r1, lsr #1
    1690:	204000a1 	subcs	r0, r0, r1, lsr #1
    1694:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1698:	e1500121 	cmp	r0, r1, lsr #2
    169c:	20400121 	subcs	r0, r0, r1, lsr #2
    16a0:	21822123 	orrcs	r2, r2, r3, lsr #2
    16a4:	e15001a1 	cmp	r0, r1, lsr #3
    16a8:	204001a1 	subcs	r0, r0, r1, lsr #3
    16ac:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16b0:	e3500000 	cmp	r0, #0
    16b4:	11b03223 	lsrsne	r3, r3, #4
    16b8:	11a01221 	lsrne	r1, r1, #4
    16bc:	1affffef 	bne	1680 <__udivsi3+0x58>
    16c0:	e1a00002 	mov	r0, r2
    16c4:	e12fff1e 	bx	lr
    16c8:	03a00001 	moveq	r0, #1
    16cc:	13a00000 	movne	r0, #0
    16d0:	e12fff1e 	bx	lr
    16d4:	e3510801 	cmp	r1, #65536	@ 0x10000
    16d8:	21a01821 	lsrcs	r1, r1, #16
    16dc:	23a02010 	movcs	r2, #16
    16e0:	33a02000 	movcc	r2, #0
    16e4:	e3510c01 	cmp	r1, #256	@ 0x100
    16e8:	21a01421 	lsrcs	r1, r1, #8
    16ec:	22822008 	addcs	r2, r2, #8
    16f0:	e3510010 	cmp	r1, #16
    16f4:	21a01221 	lsrcs	r1, r1, #4
    16f8:	22822004 	addcs	r2, r2, #4
    16fc:	e3510004 	cmp	r1, #4
    1700:	82822003 	addhi	r2, r2, #3
    1704:	908220a1 	addls	r2, r2, r1, lsr #1
    1708:	e1a00230 	lsr	r0, r0, r2
    170c:	e12fff1e 	bx	lr
    1710:	e3500000 	cmp	r0, #0
    1714:	13e00000 	mvnne	r0, #0
    1718:	ea000007 	b	173c <__aeabi_idiv0>

0000171c <__aeabi_uidivmod>:
    171c:	e3510000 	cmp	r1, #0
    1720:	0afffffa 	beq	1710 <__udivsi3+0xe8>
    1724:	e92d4003 	push	{r0, r1, lr}
    1728:	ebffffbe 	bl	1628 <__udivsi3>
    172c:	e8bd4006 	pop	{r1, r2, lr}
    1730:	e0030092 	mul	r3, r2, r0
    1734:	e0411003 	sub	r1, r1, r3
    1738:	e12fff1e 	bx	lr

0000173c <__aeabi_idiv0>:
    173c:	e12fff1e 	bx	lr
