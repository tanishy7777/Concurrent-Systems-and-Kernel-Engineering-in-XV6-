
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530002 	cmp	r3, #2
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f1098 	ldr	r1, [pc, #152]	@ c0 <main+0xc0>
      24:	e3a00002 	mov	r0, #2
      28:	eb00040b 	bl	105c <printf>
      2c:	eb00026a 	bl	9dc <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e5d33000 	ldrb	r3, [r3]
      40:	e353002d 	cmp	r3, #45	@ 0x2d
      44:	1a000003 	bne	58 <main+0x58>
      48:	e59f1074 	ldr	r1, [pc, #116]	@ c4 <main+0xc4>
      4c:	e3a00002 	mov	r0, #2
      50:	eb000401 	bl	105c <printf>
      54:	eb000260 	bl	9dc <exit>
      58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      5c:	e2833004 	add	r3, r3, #4
      60:	e5933000 	ldr	r3, [r3]
      64:	e1a00003 	mov	r0, r3
      68:	eb000123 	bl	4fc <atoi>
      6c:	e50b0008 	str	r0, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e59f104c 	ldr	r1, [pc, #76]	@ c8 <main+0xc8>
      78:	e3a00001 	mov	r0, #1
      7c:	eb0003f6 	bl	105c <printf>
      80:	e51b2008 	ldr	r2, [fp, #-8]
      84:	e1a03002 	mov	r3, r2
      88:	e1a03103 	lsl	r3, r3, #2
      8c:	e0833002 	add	r3, r3, r2
      90:	e1a03083 	lsl	r3, r3, #1
      94:	e1a00003 	mov	r0, r3
      98:	eb0002f1 	bl	c64 <sleep>
      9c:	e50b000c 	str	r0, [fp, #-12]
      a0:	e51b300c 	ldr	r3, [fp, #-12]
      a4:	e3530000 	cmp	r3, #0
      a8:	aa000003 	bge	bc <main+0xbc>
      ac:	e59f1018 	ldr	r1, [pc, #24]	@ cc <main+0xcc>
      b0:	e3a00002 	mov	r0, #2
      b4:	eb0003e8 	bl	105c <printf>
      b8:	eb000247 	bl	9dc <exit>
      bc:	eb000246 	bl	9dc <exit>
      c0:	00001718 	.word	0x00001718
      c4:	00001750 	.word	0x00001750
      c8:	0000176c 	.word	0x0000176c
      cc:	00001788 	.word	0x00001788

000000d0 <xchg>:
      d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      d4:	e28db000 	add	fp, sp, #0
      d8:	e24dd014 	sub	sp, sp, #20
      dc:	e50b0010 	str	r0, [fp, #-16]
      e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      e4:	e51b1010 	ldr	r1, [fp, #-16]
      e8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      ec:	e1912f9f 	ldrex	r2, [r1]
      f0:	e1813f90 	strex	r3, r0, [r1]
      f4:	e50b2008 	str	r2, [fp, #-8]
      f8:	e50b300c 	str	r3, [fp, #-12]
      fc:	e51b300c 	ldr	r3, [fp, #-12]
     100:	e3530000 	cmp	r3, #0
     104:	1afffff6 	bne	e4 <xchg+0x14>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e1a00003 	mov	r0, r3
     110:	e28bd000 	add	sp, fp, #0
     114:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     118:	e12fff1e 	bx	lr

0000011c <strcpy>:
     11c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     120:	e28db000 	add	fp, sp, #0
     124:	e24dd014 	sub	sp, sp, #20
     128:	e50b0010 	str	r0, [fp, #-16]
     12c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e1a00000 	nop			@ (mov r0, r0)
     13c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     140:	e2823001 	add	r3, r2, #1
     144:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     148:	e51b3010 	ldr	r3, [fp, #-16]
     14c:	e2831001 	add	r1, r3, #1
     150:	e50b1010 	str	r1, [fp, #-16]
     154:	e5d22000 	ldrb	r2, [r2]
     158:	e5c32000 	strb	r2, [r3]
     15c:	e5d33000 	ldrb	r3, [r3]
     160:	e3530000 	cmp	r3, #0
     164:	1afffff4 	bne	13c <strcpy+0x20>
     168:	e51b3008 	ldr	r3, [fp, #-8]
     16c:	e1a00003 	mov	r0, r3
     170:	e28bd000 	add	sp, fp, #0
     174:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     178:	e12fff1e 	bx	lr

0000017c <strcmp>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd00c 	sub	sp, sp, #12
     188:	e50b0008 	str	r0, [fp, #-8]
     18c:	e50b100c 	str	r1, [fp, #-12]
     190:	ea000005 	b	1ac <strcmp+0x30>
     194:	e51b3008 	ldr	r3, [fp, #-8]
     198:	e2833001 	add	r3, r3, #1
     19c:	e50b3008 	str	r3, [fp, #-8]
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e2833001 	add	r3, r3, #1
     1a8:	e50b300c 	str	r3, [fp, #-12]
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e5d33000 	ldrb	r3, [r3]
     1b4:	e3530000 	cmp	r3, #0
     1b8:	0a000005 	beq	1d4 <strcmp+0x58>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e5d32000 	ldrb	r2, [r3]
     1c4:	e51b300c 	ldr	r3, [fp, #-12]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e1520003 	cmp	r2, r3
     1d0:	0affffef 	beq	194 <strcmp+0x18>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e5d33000 	ldrb	r3, [r3]
     1dc:	e1a02003 	mov	r2, r3
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e0423003 	sub	r3, r2, r3
     1ec:	e1a00003 	mov	r0, r3
     1f0:	e28bd000 	add	sp, fp, #0
     1f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f8:	e12fff1e 	bx	lr

000001fc <strlen>:
     1fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     200:	e28db000 	add	fp, sp, #0
     204:	e24dd014 	sub	sp, sp, #20
     208:	e50b0010 	str	r0, [fp, #-16]
     20c:	e3a03000 	mov	r3, #0
     210:	e50b3008 	str	r3, [fp, #-8]
     214:	ea000002 	b	224 <strlen+0x28>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e2833001 	add	r3, r3, #1
     220:	e50b3008 	str	r3, [fp, #-8]
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e51b2010 	ldr	r2, [fp, #-16]
     22c:	e0823003 	add	r3, r2, r3
     230:	e5d33000 	ldrb	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	1afffff6 	bne	218 <strlen+0x1c>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <memset>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd024 	sub	sp, sp, #36	@ 0x24
     25c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     260:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     264:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     268:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     274:	e54b300d 	strb	r3, [fp, #-13]
     278:	e55b200d 	ldrb	r2, [fp, #-13]
     27c:	e1a03002 	mov	r3, r2
     280:	e1a03403 	lsl	r3, r3, #8
     284:	e0833002 	add	r3, r3, r2
     288:	e1a03803 	lsl	r3, r3, #16
     28c:	e1a02003 	mov	r2, r3
     290:	e55b300d 	ldrb	r3, [fp, #-13]
     294:	e1a03403 	lsl	r3, r3, #8
     298:	e1822003 	orr	r2, r2, r3
     29c:	e55b300d 	ldrb	r3, [fp, #-13]
     2a0:	e1823003 	orr	r3, r2, r3
     2a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a8:	ea000008 	b	2d0 <memset+0x80>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e55b200d 	ldrb	r2, [fp, #-13]
     2b4:	e5c32000 	strb	r2, [r3]
     2b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e2433001 	sub	r3, r3, #1
     2c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e2833001 	add	r3, r3, #1
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d4:	e3530000 	cmp	r3, #0
     2d8:	0a000003 	beq	2ec <memset+0x9c>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e2033003 	and	r3, r3, #3
     2e4:	e3530000 	cmp	r3, #0
     2e8:	1affffef 	bne	2ac <memset+0x5c>
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e50b300c 	str	r3, [fp, #-12]
     2f4:	ea000008 	b	31c <memset+0xcc>
     2f8:	e51b300c 	ldr	r3, [fp, #-12]
     2fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     300:	e5832000 	str	r2, [r3]
     304:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     308:	e2433004 	sub	r3, r3, #4
     30c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     310:	e51b300c 	ldr	r3, [fp, #-12]
     314:	e2833004 	add	r3, r3, #4
     318:	e50b300c 	str	r3, [fp, #-12]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e3530003 	cmp	r3, #3
     324:	8afffff3 	bhi	2f8 <memset+0xa8>
     328:	e51b300c 	ldr	r3, [fp, #-12]
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	ea000008 	b	358 <memset+0x108>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e55b200d 	ldrb	r2, [fp, #-13]
     33c:	e5c32000 	strb	r2, [r3]
     340:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     344:	e2433001 	sub	r3, r3, #1
     348:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e2833001 	add	r3, r3, #1
     354:	e50b3008 	str	r3, [fp, #-8]
     358:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff3 	bne	334 <memset+0xe4>
     364:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <strchr>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd00c 	sub	sp, sp, #12
     384:	e50b0008 	str	r0, [fp, #-8]
     388:	e1a03001 	mov	r3, r1
     38c:	e54b3009 	strb	r3, [fp, #-9]
     390:	ea000009 	b	3bc <strchr+0x44>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e55b2009 	ldrb	r2, [fp, #-9]
     3a0:	e1520003 	cmp	r2, r3
     3a4:	1a000001 	bne	3b0 <strchr+0x38>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	ea000007 	b	3d0 <strchr+0x58>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e2833001 	add	r3, r3, #1
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e5d33000 	ldrb	r3, [r3]
     3c4:	e3530000 	cmp	r3, #0
     3c8:	1afffff1 	bne	394 <strchr+0x1c>
     3cc:	e3a03000 	mov	r3, #0
     3d0:	e1a00003 	mov	r0, r3
     3d4:	e28bd000 	add	sp, fp, #0
     3d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3dc:	e12fff1e 	bx	lr

000003e0 <gets>:
     3e0:	e92d4800 	push	{fp, lr}
     3e4:	e28db004 	add	fp, sp, #4
     3e8:	e24dd018 	sub	sp, sp, #24
     3ec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3f0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3f4:	e3a03000 	mov	r3, #0
     3f8:	e50b3008 	str	r3, [fp, #-8]
     3fc:	ea000016 	b	45c <gets+0x7c>
     400:	e24b300d 	sub	r3, fp, #13
     404:	e3a02001 	mov	r2, #1
     408:	e1a01003 	mov	r1, r3
     40c:	e3a00000 	mov	r0, #0
     410:	eb00018c 	bl	a48 <read>
     414:	e50b000c 	str	r0, [fp, #-12]
     418:	e51b300c 	ldr	r3, [fp, #-12]
     41c:	e3530000 	cmp	r3, #0
     420:	da000013 	ble	474 <gets+0x94>
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e2832001 	add	r2, r3, #1
     42c:	e50b2008 	str	r2, [fp, #-8]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     438:	e0833002 	add	r3, r3, r2
     43c:	e55b200d 	ldrb	r2, [fp, #-13]
     440:	e5c32000 	strb	r2, [r3]
     444:	e55b300d 	ldrb	r3, [fp, #-13]
     448:	e353000a 	cmp	r3, #10
     44c:	0a000009 	beq	478 <gets+0x98>
     450:	e55b300d 	ldrb	r3, [fp, #-13]
     454:	e353000d 	cmp	r3, #13
     458:	0a000006 	beq	478 <gets+0x98>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e2833001 	add	r3, r3, #1
     464:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     468:	e1520003 	cmp	r2, r3
     46c:	caffffe3 	bgt	400 <gets+0x20>
     470:	ea000000 	b	478 <gets+0x98>
     474:	e1a00000 	nop			@ (mov r0, r0)
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     480:	e0823003 	add	r3, r2, r3
     484:	e3a02000 	mov	r2, #0
     488:	e5c32000 	strb	r2, [r3]
     48c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     490:	e1a00003 	mov	r0, r3
     494:	e24bd004 	sub	sp, fp, #4
     498:	e8bd8800 	pop	{fp, pc}

0000049c <stat>:
     49c:	e92d4800 	push	{fp, lr}
     4a0:	e28db004 	add	fp, sp, #4
     4a4:	e24dd010 	sub	sp, sp, #16
     4a8:	e50b0010 	str	r0, [fp, #-16]
     4ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4b0:	e3a01000 	mov	r1, #0
     4b4:	e51b0010 	ldr	r0, [fp, #-16]
     4b8:	eb00018f 	bl	afc <open>
     4bc:	e50b0008 	str	r0, [fp, #-8]
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e3530000 	cmp	r3, #0
     4c8:	aa000001 	bge	4d4 <stat+0x38>
     4cc:	e3e03000 	mvn	r3, #0
     4d0:	ea000006 	b	4f0 <stat+0x54>
     4d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4d8:	e51b0008 	ldr	r0, [fp, #-8]
     4dc:	eb0001a1 	bl	b68 <fstat>
     4e0:	e50b000c 	str	r0, [fp, #-12]
     4e4:	e51b0008 	ldr	r0, [fp, #-8]
     4e8:	eb000168 	bl	a90 <close>
     4ec:	e51b300c 	ldr	r3, [fp, #-12]
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <atoi>:
     4fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     500:	e28db000 	add	fp, sp, #0
     504:	e24dd014 	sub	sp, sp, #20
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e3a03000 	mov	r3, #0
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	ea00000c 	b	54c <atoi+0x50>
     518:	e51b2008 	ldr	r2, [fp, #-8]
     51c:	e1a03002 	mov	r3, r2
     520:	e1a03103 	lsl	r3, r3, #2
     524:	e0833002 	add	r3, r3, r2
     528:	e1a03083 	lsl	r3, r3, #1
     52c:	e1a01003 	mov	r1, r3
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e2832001 	add	r2, r3, #1
     538:	e50b2010 	str	r2, [fp, #-16]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e0813003 	add	r3, r1, r3
     544:	e2433030 	sub	r3, r3, #48	@ 0x30
     548:	e50b3008 	str	r3, [fp, #-8]
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e5d33000 	ldrb	r3, [r3]
     554:	e353002f 	cmp	r3, #47	@ 0x2f
     558:	9a000003 	bls	56c <atoi+0x70>
     55c:	e51b3010 	ldr	r3, [fp, #-16]
     560:	e5d33000 	ldrb	r3, [r3]
     564:	e3530039 	cmp	r3, #57	@ 0x39
     568:	9affffea 	bls	518 <atoi+0x1c>
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e1a00003 	mov	r0, r3
     574:	e28bd000 	add	sp, fp, #0
     578:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     57c:	e12fff1e 	bx	lr

00000580 <memmove>:
     580:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     584:	e28db000 	add	fp, sp, #0
     588:	e24dd01c 	sub	sp, sp, #28
     58c:	e50b0010 	str	r0, [fp, #-16]
     590:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     594:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5a4:	e50b300c 	str	r3, [fp, #-12]
     5a8:	ea000007 	b	5cc <memmove+0x4c>
     5ac:	e51b200c 	ldr	r2, [fp, #-12]
     5b0:	e2823001 	add	r3, r2, #1
     5b4:	e50b300c 	str	r3, [fp, #-12]
     5b8:	e51b3008 	ldr	r3, [fp, #-8]
     5bc:	e2831001 	add	r1, r3, #1
     5c0:	e50b1008 	str	r1, [fp, #-8]
     5c4:	e5d22000 	ldrb	r2, [r2]
     5c8:	e5c32000 	strb	r2, [r3]
     5cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5d0:	e2432001 	sub	r2, r3, #1
     5d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d8:	e3530000 	cmp	r3, #0
     5dc:	cafffff2 	bgt	5ac <memmove+0x2c>
     5e0:	e51b3010 	ldr	r3, [fp, #-16]
     5e4:	e1a00003 	mov	r0, r3
     5e8:	e28bd000 	add	sp, fp, #0
     5ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <initiateLock>:
     5f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f8:	e28db000 	add	fp, sp, #0
     5fc:	e24dd00c 	sub	sp, sp, #12
     600:	e50b0008 	str	r0, [fp, #-8]
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e3a02000 	mov	r2, #0
     60c:	e5832000 	str	r2, [r3]
     610:	e51b3008 	ldr	r3, [fp, #-8]
     614:	e3a02001 	mov	r2, #1
     618:	e5832004 	str	r2, [r3, #4]
     61c:	e1a00000 	nop			@ (mov r0, r0)
     620:	e28bd000 	add	sp, fp, #0
     624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <acquireLock>:
     62c:	e92d4800 	push	{fp, lr}
     630:	e28db004 	add	fp, sp, #4
     634:	e24dd008 	sub	sp, sp, #8
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e5933000 	ldr	r3, [r3]
     644:	e3730001 	cmn	r3, #1
     648:	1a000002 	bne	658 <acquireLock+0x2c>
     64c:	e59f1034 	ldr	r1, [pc, #52]	@ 688 <acquireLock+0x5c>
     650:	e3a00002 	mov	r0, #2
     654:	eb000280 	bl	105c <printf>
     658:	e1a00000 	nop			@ (mov r0, r0)
     65c:	e51b3008 	ldr	r3, [fp, #-8]
     660:	e3a01001 	mov	r1, #1
     664:	e1a00003 	mov	r0, r3
     668:	ebfffe98 	bl	d0 <xchg>
     66c:	e1a03000 	mov	r3, r0
     670:	e3530000 	cmp	r3, #0
     674:	1afffff8 	bne	65c <acquireLock+0x30>
     678:	e1a00000 	nop			@ (mov r0, r0)
     67c:	e1a00000 	nop			@ (mov r0, r0)
     680:	e24bd004 	sub	sp, fp, #4
     684:	e8bd8800 	pop	{fp, pc}
     688:	000017a0 	.word	0x000017a0

0000068c <releaseLock>:
     68c:	e92d4800 	push	{fp, lr}
     690:	e28db004 	add	fp, sp, #4
     694:	e24dd008 	sub	sp, sp, #8
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e5933000 	ldr	r3, [r3]
     6a4:	e3530001 	cmp	r3, #1
     6a8:	0a000002 	beq	6b8 <releaseLock+0x2c>
     6ac:	e59f1020 	ldr	r1, [pc, #32]	@ 6d4 <releaseLock+0x48>
     6b0:	e3a00002 	mov	r0, #2
     6b4:	eb000268 	bl	105c <printf>
     6b8:	e51b3008 	ldr	r3, [fp, #-8]
     6bc:	e3a01000 	mov	r1, #0
     6c0:	e1a00003 	mov	r0, r3
     6c4:	ebfffe81 	bl	d0 <xchg>
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e24bd004 	sub	sp, fp, #4
     6d0:	e8bd8800 	pop	{fp, pc}
     6d4:	000017d0 	.word	0x000017d0

000006d8 <initiateCondVar>:
     6d8:	e92d4800 	push	{fp, lr}
     6dc:	e28db004 	add	fp, sp, #4
     6e0:	e24dd008 	sub	sp, sp, #8
     6e4:	e50b0008 	str	r0, [fp, #-8]
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e5933004 	ldr	r3, [r3, #4]
     6f0:	e3530000 	cmp	r3, #0
     6f4:	1a000007 	bne	718 <initiateCondVar+0x40>
     6f8:	eb0001e0 	bl	e80 <getChannel>
     6fc:	e1a02000 	mov	r2, r0
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e5832000 	str	r2, [r3]
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e3a02001 	mov	r2, #1
     710:	e5832004 	str	r2, [r3, #4]
     714:	ea000000 	b	71c <initiateCondVar+0x44>
     718:	e1a00000 	nop			@ (mov r0, r0)
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <condWait>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd008 	sub	sp, sp, #8
     730:	e50b0008 	str	r0, [fp, #-8]
     734:	e50b100c 	str	r1, [fp, #-12]
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e5933004 	ldr	r3, [r3, #4]
     740:	e3530000 	cmp	r3, #0
     744:	1a000003 	bne	758 <condWait+0x34>
     748:	e59f1050 	ldr	r1, [pc, #80]	@ 7a0 <condWait+0x7c>
     74c:	e3a00002 	mov	r0, #2
     750:	eb000241 	bl	105c <printf>
     754:	ea00000f 	b	798 <condWait+0x74>
     758:	e51b300c 	ldr	r3, [fp, #-12]
     75c:	e5933004 	ldr	r3, [r3, #4]
     760:	e3530000 	cmp	r3, #0
     764:	1a000003 	bne	778 <condWait+0x54>
     768:	e59f1034 	ldr	r1, [pc, #52]	@ 7a4 <condWait+0x80>
     76c:	e3a00002 	mov	r0, #2
     770:	eb000239 	bl	105c <printf>
     774:	ea000007 	b	798 <condWait+0x74>
     778:	e51b000c 	ldr	r0, [fp, #-12]
     77c:	ebffffc2 	bl	68c <releaseLock>
     780:	e51b3008 	ldr	r3, [fp, #-8]
     784:	e5933000 	ldr	r3, [r3]
     788:	e1a00003 	mov	r0, r3
     78c:	eb0001b2 	bl	e5c <sleepChan>
     790:	e51b000c 	ldr	r0, [fp, #-12]
     794:	ebffffa4 	bl	62c <acquireLock>
     798:	e24bd004 	sub	sp, fp, #4
     79c:	e8bd8800 	pop	{fp, pc}
     7a0:	0000180c 	.word	0x0000180c
     7a4:	00001830 	.word	0x00001830

000007a8 <broadcast>:
     7a8:	e92d4800 	push	{fp, lr}
     7ac:	e28db004 	add	fp, sp, #4
     7b0:	e24dd008 	sub	sp, sp, #8
     7b4:	e50b0008 	str	r0, [fp, #-8]
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e5933004 	ldr	r3, [r3, #4]
     7c0:	e3530000 	cmp	r3, #0
     7c4:	1a000003 	bne	7d8 <broadcast+0x30>
     7c8:	e59f1020 	ldr	r1, [pc, #32]	@ 7f0 <broadcast+0x48>
     7cc:	e3a00002 	mov	r0, #2
     7d0:	eb000221 	bl	105c <printf>
     7d4:	ea000003 	b	7e8 <broadcast+0x40>
     7d8:	e51b3008 	ldr	r3, [fp, #-8]
     7dc:	e5933000 	ldr	r3, [r3]
     7e0:	e1a00003 	mov	r0, r3
     7e4:	eb0001ae 	bl	ea4 <sigChan>
     7e8:	e24bd004 	sub	sp, fp, #4
     7ec:	e8bd8800 	pop	{fp, pc}
     7f0:	0000180c 	.word	0x0000180c

000007f4 <signal>:
     7f4:	e92d4800 	push	{fp, lr}
     7f8:	e28db004 	add	fp, sp, #4
     7fc:	e24dd008 	sub	sp, sp, #8
     800:	e50b0008 	str	r0, [fp, #-8]
     804:	e51b3008 	ldr	r3, [fp, #-8]
     808:	e5933004 	ldr	r3, [r3, #4]
     80c:	e3530000 	cmp	r3, #0
     810:	1a000003 	bne	824 <signal+0x30>
     814:	e59f1020 	ldr	r1, [pc, #32]	@ 83c <signal+0x48>
     818:	e3a00002 	mov	r0, #2
     81c:	eb00020e 	bl	105c <printf>
     820:	ea000003 	b	834 <signal+0x40>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5933000 	ldr	r3, [r3]
     82c:	e1a00003 	mov	r0, r3
     830:	eb0001a4 	bl	ec8 <sigOneChan>
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}
     83c:	0000180c 	.word	0x0000180c

00000840 <semInit>:
     840:	e92d4800 	push	{fp, lr}
     844:	e28db004 	add	fp, sp, #4
     848:	e24dd008 	sub	sp, sp, #8
     84c:	e50b0008 	str	r0, [fp, #-8]
     850:	e50b100c 	str	r1, [fp, #-12]
     854:	e51b3008 	ldr	r3, [fp, #-8]
     858:	e51b200c 	ldr	r2, [fp, #-12]
     85c:	e5832000 	str	r2, [r3]
     860:	e51b3008 	ldr	r3, [fp, #-8]
     864:	e2833004 	add	r3, r3, #4
     868:	e1a00003 	mov	r0, r3
     86c:	ebffff60 	bl	5f4 <initiateLock>
     870:	e51b3008 	ldr	r3, [fp, #-8]
     874:	e283300c 	add	r3, r3, #12
     878:	e1a00003 	mov	r0, r3
     87c:	ebffff95 	bl	6d8 <initiateCondVar>
     880:	e51b3008 	ldr	r3, [fp, #-8]
     884:	e3a02001 	mov	r2, #1
     888:	e5832014 	str	r2, [r3, #20]
     88c:	e1a00000 	nop			@ (mov r0, r0)
     890:	e24bd004 	sub	sp, fp, #4
     894:	e8bd8800 	pop	{fp, pc}

00000898 <semDown>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd008 	sub	sp, sp, #8
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e5933014 	ldr	r3, [r3, #20]
     8b0:	e3530000 	cmp	r3, #0
     8b4:	1a000003 	bne	8c8 <semDown+0x30>
     8b8:	e59f1074 	ldr	r1, [pc, #116]	@ 934 <semDown+0x9c>
     8bc:	e3a00002 	mov	r0, #2
     8c0:	eb0001e5 	bl	105c <printf>
     8c4:	ea000018 	b	92c <semDown+0x94>
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e2833004 	add	r3, r3, #4
     8d0:	e1a00003 	mov	r0, r3
     8d4:	ebffff54 	bl	62c <acquireLock>
     8d8:	ea000006 	b	8f8 <semDown+0x60>
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e283200c 	add	r2, r3, #12
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e2833004 	add	r3, r3, #4
     8ec:	e1a01003 	mov	r1, r3
     8f0:	e1a00002 	mov	r0, r2
     8f4:	ebffff8a 	bl	724 <condWait>
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e5933000 	ldr	r3, [r3]
     900:	e3530000 	cmp	r3, #0
     904:	0afffff4 	beq	8dc <semDown+0x44>
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e5933000 	ldr	r3, [r3]
     910:	e2432001 	sub	r2, r3, #1
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e5832000 	str	r2, [r3]
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e2833004 	add	r3, r3, #4
     924:	e1a00003 	mov	r0, r3
     928:	ebffff57 	bl	68c <releaseLock>
     92c:	e24bd004 	sub	sp, fp, #4
     930:	e8bd8800 	pop	{fp, pc}
     934:	00001850 	.word	0x00001850

00000938 <semUp>:
     938:	e92d4800 	push	{fp, lr}
     93c:	e28db004 	add	fp, sp, #4
     940:	e24dd008 	sub	sp, sp, #8
     944:	e50b0008 	str	r0, [fp, #-8]
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e5933014 	ldr	r3, [r3, #20]
     950:	e3530000 	cmp	r3, #0
     954:	1a000003 	bne	968 <semUp+0x30>
     958:	e59f1054 	ldr	r1, [pc, #84]	@ 9b4 <semUp+0x7c>
     95c:	e3a00002 	mov	r0, #2
     960:	eb0001bd 	bl	105c <printf>
     964:	ea000010 	b	9ac <semUp+0x74>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e2833004 	add	r3, r3, #4
     970:	e1a00003 	mov	r0, r3
     974:	ebffff2c 	bl	62c <acquireLock>
     978:	e51b3008 	ldr	r3, [fp, #-8]
     97c:	e5933000 	ldr	r3, [r3]
     980:	e2832001 	add	r2, r3, #1
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e5832000 	str	r2, [r3]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e283300c 	add	r3, r3, #12
     994:	e1a00003 	mov	r0, r3
     998:	ebffff95 	bl	7f4 <signal>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e2833004 	add	r3, r3, #4
     9a4:	e1a00003 	mov	r0, r3
     9a8:	ebffff37 	bl	68c <releaseLock>
     9ac:	e24bd004 	sub	sp, fp, #4
     9b0:	e8bd8800 	pop	{fp, pc}
     9b4:	00001850 	.word	0x00001850

000009b8 <fork>:
     9b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9bc:	e1a04003 	mov	r4, r3
     9c0:	e1a03002 	mov	r3, r2
     9c4:	e1a02001 	mov	r2, r1
     9c8:	e1a01000 	mov	r1, r0
     9cc:	e3a00001 	mov	r0, #1
     9d0:	ef000000 	svc	0x00000000
     9d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d8:	e12fff1e 	bx	lr

000009dc <exit>:
     9dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e0:	e1a04003 	mov	r4, r3
     9e4:	e1a03002 	mov	r3, r2
     9e8:	e1a02001 	mov	r2, r1
     9ec:	e1a01000 	mov	r1, r0
     9f0:	e3a00002 	mov	r0, #2
     9f4:	ef000000 	svc	0x00000000
     9f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9fc:	e12fff1e 	bx	lr

00000a00 <wait>:
     a00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a04:	e1a04003 	mov	r4, r3
     a08:	e1a03002 	mov	r3, r2
     a0c:	e1a02001 	mov	r2, r1
     a10:	e1a01000 	mov	r1, r0
     a14:	e3a00003 	mov	r0, #3
     a18:	ef000000 	svc	0x00000000
     a1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a20:	e12fff1e 	bx	lr

00000a24 <pipe>:
     a24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a28:	e1a04003 	mov	r4, r3
     a2c:	e1a03002 	mov	r3, r2
     a30:	e1a02001 	mov	r2, r1
     a34:	e1a01000 	mov	r1, r0
     a38:	e3a00004 	mov	r0, #4
     a3c:	ef000000 	svc	0x00000000
     a40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a44:	e12fff1e 	bx	lr

00000a48 <read>:
     a48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a4c:	e1a04003 	mov	r4, r3
     a50:	e1a03002 	mov	r3, r2
     a54:	e1a02001 	mov	r2, r1
     a58:	e1a01000 	mov	r1, r0
     a5c:	e3a00005 	mov	r0, #5
     a60:	ef000000 	svc	0x00000000
     a64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a68:	e12fff1e 	bx	lr

00000a6c <write>:
     a6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a70:	e1a04003 	mov	r4, r3
     a74:	e1a03002 	mov	r3, r2
     a78:	e1a02001 	mov	r2, r1
     a7c:	e1a01000 	mov	r1, r0
     a80:	e3a00010 	mov	r0, #16
     a84:	ef000000 	svc	0x00000000
     a88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a8c:	e12fff1e 	bx	lr

00000a90 <close>:
     a90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a94:	e1a04003 	mov	r4, r3
     a98:	e1a03002 	mov	r3, r2
     a9c:	e1a02001 	mov	r2, r1
     aa0:	e1a01000 	mov	r1, r0
     aa4:	e3a00015 	mov	r0, #21
     aa8:	ef000000 	svc	0x00000000
     aac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab0:	e12fff1e 	bx	lr

00000ab4 <kill>:
     ab4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab8:	e1a04003 	mov	r4, r3
     abc:	e1a03002 	mov	r3, r2
     ac0:	e1a02001 	mov	r2, r1
     ac4:	e1a01000 	mov	r1, r0
     ac8:	e3a00006 	mov	r0, #6
     acc:	ef000000 	svc	0x00000000
     ad0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad4:	e12fff1e 	bx	lr

00000ad8 <exec>:
     ad8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     adc:	e1a04003 	mov	r4, r3
     ae0:	e1a03002 	mov	r3, r2
     ae4:	e1a02001 	mov	r2, r1
     ae8:	e1a01000 	mov	r1, r0
     aec:	e3a00007 	mov	r0, #7
     af0:	ef000000 	svc	0x00000000
     af4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af8:	e12fff1e 	bx	lr

00000afc <open>:
     afc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b00:	e1a04003 	mov	r4, r3
     b04:	e1a03002 	mov	r3, r2
     b08:	e1a02001 	mov	r2, r1
     b0c:	e1a01000 	mov	r1, r0
     b10:	e3a0000f 	mov	r0, #15
     b14:	ef000000 	svc	0x00000000
     b18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b1c:	e12fff1e 	bx	lr

00000b20 <mknod>:
     b20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b24:	e1a04003 	mov	r4, r3
     b28:	e1a03002 	mov	r3, r2
     b2c:	e1a02001 	mov	r2, r1
     b30:	e1a01000 	mov	r1, r0
     b34:	e3a00011 	mov	r0, #17
     b38:	ef000000 	svc	0x00000000
     b3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b40:	e12fff1e 	bx	lr

00000b44 <unlink>:
     b44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b48:	e1a04003 	mov	r4, r3
     b4c:	e1a03002 	mov	r3, r2
     b50:	e1a02001 	mov	r2, r1
     b54:	e1a01000 	mov	r1, r0
     b58:	e3a00012 	mov	r0, #18
     b5c:	ef000000 	svc	0x00000000
     b60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b64:	e12fff1e 	bx	lr

00000b68 <fstat>:
     b68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b6c:	e1a04003 	mov	r4, r3
     b70:	e1a03002 	mov	r3, r2
     b74:	e1a02001 	mov	r2, r1
     b78:	e1a01000 	mov	r1, r0
     b7c:	e3a00008 	mov	r0, #8
     b80:	ef000000 	svc	0x00000000
     b84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b88:	e12fff1e 	bx	lr

00000b8c <link>:
     b8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b90:	e1a04003 	mov	r4, r3
     b94:	e1a03002 	mov	r3, r2
     b98:	e1a02001 	mov	r2, r1
     b9c:	e1a01000 	mov	r1, r0
     ba0:	e3a00013 	mov	r0, #19
     ba4:	ef000000 	svc	0x00000000
     ba8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bac:	e12fff1e 	bx	lr

00000bb0 <mkdir>:
     bb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb4:	e1a04003 	mov	r4, r3
     bb8:	e1a03002 	mov	r3, r2
     bbc:	e1a02001 	mov	r2, r1
     bc0:	e1a01000 	mov	r1, r0
     bc4:	e3a00014 	mov	r0, #20
     bc8:	ef000000 	svc	0x00000000
     bcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd0:	e12fff1e 	bx	lr

00000bd4 <chdir>:
     bd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd8:	e1a04003 	mov	r4, r3
     bdc:	e1a03002 	mov	r3, r2
     be0:	e1a02001 	mov	r2, r1
     be4:	e1a01000 	mov	r1, r0
     be8:	e3a00009 	mov	r0, #9
     bec:	ef000000 	svc	0x00000000
     bf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf4:	e12fff1e 	bx	lr

00000bf8 <dup>:
     bf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bfc:	e1a04003 	mov	r4, r3
     c00:	e1a03002 	mov	r3, r2
     c04:	e1a02001 	mov	r2, r1
     c08:	e1a01000 	mov	r1, r0
     c0c:	e3a0000a 	mov	r0, #10
     c10:	ef000000 	svc	0x00000000
     c14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c18:	e12fff1e 	bx	lr

00000c1c <getpid>:
     c1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c20:	e1a04003 	mov	r4, r3
     c24:	e1a03002 	mov	r3, r2
     c28:	e1a02001 	mov	r2, r1
     c2c:	e1a01000 	mov	r1, r0
     c30:	e3a0000b 	mov	r0, #11
     c34:	ef000000 	svc	0x00000000
     c38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c3c:	e12fff1e 	bx	lr

00000c40 <sbrk>:
     c40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c44:	e1a04003 	mov	r4, r3
     c48:	e1a03002 	mov	r3, r2
     c4c:	e1a02001 	mov	r2, r1
     c50:	e1a01000 	mov	r1, r0
     c54:	e3a0000c 	mov	r0, #12
     c58:	ef000000 	svc	0x00000000
     c5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c60:	e12fff1e 	bx	lr

00000c64 <sleep>:
     c64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c68:	e1a04003 	mov	r4, r3
     c6c:	e1a03002 	mov	r3, r2
     c70:	e1a02001 	mov	r2, r1
     c74:	e1a01000 	mov	r1, r0
     c78:	e3a0000d 	mov	r0, #13
     c7c:	ef000000 	svc	0x00000000
     c80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c84:	e12fff1e 	bx	lr

00000c88 <uptime>:
     c88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c8c:	e1a04003 	mov	r4, r3
     c90:	e1a03002 	mov	r3, r2
     c94:	e1a02001 	mov	r2, r1
     c98:	e1a01000 	mov	r1, r0
     c9c:	e3a0000e 	mov	r0, #14
     ca0:	ef000000 	svc	0x00000000
     ca4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca8:	e12fff1e 	bx	lr

00000cac <disproc>:
     cac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb0:	e1a04003 	mov	r4, r3
     cb4:	e1a03002 	mov	r3, r2
     cb8:	e1a02001 	mov	r2, r1
     cbc:	e1a01000 	mov	r1, r0
     cc0:	e3a00016 	mov	r0, #22
     cc4:	ef000000 	svc	0x00000000
     cc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ccc:	e12fff1e 	bx	lr

00000cd0 <srand>:
     cd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd4:	e1a04003 	mov	r4, r3
     cd8:	e1a03002 	mov	r3, r2
     cdc:	e1a02001 	mov	r2, r1
     ce0:	e1a01000 	mov	r1, r0
     ce4:	e3a00017 	mov	r0, #23
     ce8:	ef000000 	svc	0x00000000
     cec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf0:	e12fff1e 	bx	lr

00000cf4 <setticket>:
     cf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf8:	e1a04003 	mov	r4, r3
     cfc:	e1a03002 	mov	r3, r2
     d00:	e1a02001 	mov	r2, r1
     d04:	e1a01000 	mov	r1, r0
     d08:	e3a00018 	mov	r0, #24
     d0c:	ef000000 	svc	0x00000000
     d10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d14:	e12fff1e 	bx	lr

00000d18 <getpinfo>:
     d18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d1c:	e1a04003 	mov	r4, r3
     d20:	e1a03002 	mov	r3, r2
     d24:	e1a02001 	mov	r2, r1
     d28:	e1a01000 	mov	r1, r0
     d2c:	e3a00019 	mov	r0, #25
     d30:	ef000000 	svc	0x00000000
     d34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d38:	e12fff1e 	bx	lr

00000d3c <printPages>:
     d3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d40:	e1a04003 	mov	r4, r3
     d44:	e1a03002 	mov	r3, r2
     d48:	e1a02001 	mov	r2, r1
     d4c:	e1a01000 	mov	r1, r0
     d50:	e3a0001a 	mov	r0, #26
     d54:	ef000000 	svc	0x00000000
     d58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d5c:	e12fff1e 	bx	lr

00000d60 <kpt>:
     d60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d64:	e1a04003 	mov	r4, r3
     d68:	e1a03002 	mov	r3, r2
     d6c:	e1a02001 	mov	r2, r1
     d70:	e1a01000 	mov	r1, r0
     d74:	e3a0001b 	mov	r0, #27
     d78:	ef000000 	svc	0x00000000
     d7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d80:	e12fff1e 	bx	lr

00000d84 <thread_create>:
     d84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d88:	e1a04003 	mov	r4, r3
     d8c:	e1a03002 	mov	r3, r2
     d90:	e1a02001 	mov	r2, r1
     d94:	e1a01000 	mov	r1, r0
     d98:	e3a0001c 	mov	r0, #28
     d9c:	ef000000 	svc	0x00000000
     da0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da4:	e12fff1e 	bx	lr

00000da8 <thread_exit>:
     da8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dac:	e1a04003 	mov	r4, r3
     db0:	e1a03002 	mov	r3, r2
     db4:	e1a02001 	mov	r2, r1
     db8:	e1a01000 	mov	r1, r0
     dbc:	e3a0001d 	mov	r0, #29
     dc0:	ef000000 	svc	0x00000000
     dc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc8:	e12fff1e 	bx	lr

00000dcc <thread_join>:
     dcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd0:	e1a04003 	mov	r4, r3
     dd4:	e1a03002 	mov	r3, r2
     dd8:	e1a02001 	mov	r2, r1
     ddc:	e1a01000 	mov	r1, r0
     de0:	e3a0001e 	mov	r0, #30
     de4:	ef000000 	svc	0x00000000
     de8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dec:	e12fff1e 	bx	lr

00000df0 <waitpid>:
     df0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df4:	e1a04003 	mov	r4, r3
     df8:	e1a03002 	mov	r3, r2
     dfc:	e1a02001 	mov	r2, r1
     e00:	e1a01000 	mov	r1, r0
     e04:	e3a0001f 	mov	r0, #31
     e08:	ef000000 	svc	0x00000000
     e0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e10:	e12fff1e 	bx	lr

00000e14 <barrier_init>:
     e14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e18:	e1a04003 	mov	r4, r3
     e1c:	e1a03002 	mov	r3, r2
     e20:	e1a02001 	mov	r2, r1
     e24:	e1a01000 	mov	r1, r0
     e28:	e3a00020 	mov	r0, #32
     e2c:	ef000000 	svc	0x00000000
     e30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e34:	e12fff1e 	bx	lr

00000e38 <barrier_check>:
     e38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e3c:	e1a04003 	mov	r4, r3
     e40:	e1a03002 	mov	r3, r2
     e44:	e1a02001 	mov	r2, r1
     e48:	e1a01000 	mov	r1, r0
     e4c:	e3a00021 	mov	r0, #33	@ 0x21
     e50:	ef000000 	svc	0x00000000
     e54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e58:	e12fff1e 	bx	lr

00000e5c <sleepChan>:
     e5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e60:	e1a04003 	mov	r4, r3
     e64:	e1a03002 	mov	r3, r2
     e68:	e1a02001 	mov	r2, r1
     e6c:	e1a01000 	mov	r1, r0
     e70:	e3a00022 	mov	r0, #34	@ 0x22
     e74:	ef000000 	svc	0x00000000
     e78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e7c:	e12fff1e 	bx	lr

00000e80 <getChannel>:
     e80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e84:	e1a04003 	mov	r4, r3
     e88:	e1a03002 	mov	r3, r2
     e8c:	e1a02001 	mov	r2, r1
     e90:	e1a01000 	mov	r1, r0
     e94:	e3a00023 	mov	r0, #35	@ 0x23
     e98:	ef000000 	svc	0x00000000
     e9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea0:	e12fff1e 	bx	lr

00000ea4 <sigChan>:
     ea4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea8:	e1a04003 	mov	r4, r3
     eac:	e1a03002 	mov	r3, r2
     eb0:	e1a02001 	mov	r2, r1
     eb4:	e1a01000 	mov	r1, r0
     eb8:	e3a00024 	mov	r0, #36	@ 0x24
     ebc:	ef000000 	svc	0x00000000
     ec0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec4:	e12fff1e 	bx	lr

00000ec8 <sigOneChan>:
     ec8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ecc:	e1a04003 	mov	r4, r3
     ed0:	e1a03002 	mov	r3, r2
     ed4:	e1a02001 	mov	r2, r1
     ed8:	e1a01000 	mov	r1, r0
     edc:	e3a00025 	mov	r0, #37	@ 0x25
     ee0:	ef000000 	svc	0x00000000
     ee4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee8:	e12fff1e 	bx	lr

00000eec <putc>:
     eec:	e92d4800 	push	{fp, lr}
     ef0:	e28db004 	add	fp, sp, #4
     ef4:	e24dd008 	sub	sp, sp, #8
     ef8:	e50b0008 	str	r0, [fp, #-8]
     efc:	e1a03001 	mov	r3, r1
     f00:	e54b3009 	strb	r3, [fp, #-9]
     f04:	e24b3009 	sub	r3, fp, #9
     f08:	e3a02001 	mov	r2, #1
     f0c:	e1a01003 	mov	r1, r3
     f10:	e51b0008 	ldr	r0, [fp, #-8]
     f14:	ebfffed4 	bl	a6c <write>
     f18:	e1a00000 	nop			@ (mov r0, r0)
     f1c:	e24bd004 	sub	sp, fp, #4
     f20:	e8bd8800 	pop	{fp, pc}

00000f24 <printint>:
     f24:	e92d4800 	push	{fp, lr}
     f28:	e28db004 	add	fp, sp, #4
     f2c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f30:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f34:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f38:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f3c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f40:	e3a03000 	mov	r3, #0
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f4c:	e3530000 	cmp	r3, #0
     f50:	0a000008 	beq	f78 <printint+0x54>
     f54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f58:	e3530000 	cmp	r3, #0
     f5c:	aa000005 	bge	f78 <printint+0x54>
     f60:	e3a03001 	mov	r3, #1
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f6c:	e2633000 	rsb	r3, r3, #0
     f70:	e50b3010 	str	r3, [fp, #-16]
     f74:	ea000001 	b	f80 <printint+0x5c>
     f78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f7c:	e50b3010 	str	r3, [fp, #-16]
     f80:	e3a03000 	mov	r3, #0
     f84:	e50b3008 	str	r3, [fp, #-8]
     f88:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f8c:	e51b3010 	ldr	r3, [fp, #-16]
     f90:	e1a01002 	mov	r1, r2
     f94:	e1a00003 	mov	r0, r3
     f98:	eb0001d5 	bl	16f4 <__aeabi_uidivmod>
     f9c:	e1a03001 	mov	r3, r1
     fa0:	e1a01003 	mov	r1, r3
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e2832001 	add	r2, r3, #1
     fac:	e50b2008 	str	r2, [fp, #-8]
     fb0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1058 <printint+0x134>
     fb4:	e7d22001 	ldrb	r2, [r2, r1]
     fb8:	e2433004 	sub	r3, r3, #4
     fbc:	e083300b 	add	r3, r3, fp
     fc0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fc4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b0010 	ldr	r0, [fp, #-16]
     fd0:	eb00018a 	bl	1600 <__udivsi3>
     fd4:	e1a03000 	mov	r3, r0
     fd8:	e50b3010 	str	r3, [fp, #-16]
     fdc:	e51b3010 	ldr	r3, [fp, #-16]
     fe0:	e3530000 	cmp	r3, #0
     fe4:	1affffe7 	bne	f88 <printint+0x64>
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e3530000 	cmp	r3, #0
     ff0:	0a00000e 	beq	1030 <printint+0x10c>
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e2832001 	add	r2, r3, #1
     ffc:	e50b2008 	str	r2, [fp, #-8]
    1000:	e2433004 	sub	r3, r3, #4
    1004:	e083300b 	add	r3, r3, fp
    1008:	e3a0202d 	mov	r2, #45	@ 0x2d
    100c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1010:	ea000006 	b	1030 <printint+0x10c>
    1014:	e24b2020 	sub	r2, fp, #32
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e0823003 	add	r3, r2, r3
    1020:	e5d33000 	ldrb	r3, [r3]
    1024:	e1a01003 	mov	r1, r3
    1028:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    102c:	ebffffae 	bl	eec <putc>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e2433001 	sub	r3, r3, #1
    1038:	e50b3008 	str	r3, [fp, #-8]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e3530000 	cmp	r3, #0
    1044:	aafffff2 	bge	1014 <printint+0xf0>
    1048:	e1a00000 	nop			@ (mov r0, r0)
    104c:	e1a00000 	nop			@ (mov r0, r0)
    1050:	e24bd004 	sub	sp, fp, #4
    1054:	e8bd8800 	pop	{fp, pc}
    1058:	0000187c 	.word	0x0000187c

0000105c <printf>:
    105c:	e92d000e 	push	{r1, r2, r3}
    1060:	e92d4800 	push	{fp, lr}
    1064:	e28db004 	add	fp, sp, #4
    1068:	e24dd024 	sub	sp, sp, #36	@ 0x24
    106c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1070:	e3a03000 	mov	r3, #0
    1074:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1078:	e28b3008 	add	r3, fp, #8
    107c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1080:	e3a03000 	mov	r3, #0
    1084:	e50b3010 	str	r3, [fp, #-16]
    1088:	ea000074 	b	1260 <printf+0x204>
    108c:	e59b2004 	ldr	r2, [fp, #4]
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e0823003 	add	r3, r2, r3
    1098:	e5d33000 	ldrb	r3, [r3]
    109c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10a4:	e3530000 	cmp	r3, #0
    10a8:	1a00000b 	bne	10dc <printf+0x80>
    10ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10b0:	e3530025 	cmp	r3, #37	@ 0x25
    10b4:	1a000002 	bne	10c4 <printf+0x68>
    10b8:	e3a03025 	mov	r3, #37	@ 0x25
    10bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10c0:	ea000063 	b	1254 <printf+0x1f8>
    10c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c8:	e6ef3073 	uxtb	r3, r3
    10cc:	e1a01003 	mov	r1, r3
    10d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10d4:	ebffff84 	bl	eec <putc>
    10d8:	ea00005d 	b	1254 <printf+0x1f8>
    10dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10e0:	e3530025 	cmp	r3, #37	@ 0x25
    10e4:	1a00005a 	bne	1254 <printf+0x1f8>
    10e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10ec:	e3530064 	cmp	r3, #100	@ 0x64
    10f0:	1a00000a 	bne	1120 <printf+0xc4>
    10f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f8:	e5933000 	ldr	r3, [r3]
    10fc:	e1a01003 	mov	r1, r3
    1100:	e3a03001 	mov	r3, #1
    1104:	e3a0200a 	mov	r2, #10
    1108:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    110c:	ebffff84 	bl	f24 <printint>
    1110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e2833004 	add	r3, r3, #4
    1118:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    111c:	ea00004a 	b	124c <printf+0x1f0>
    1120:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1124:	e3530078 	cmp	r3, #120	@ 0x78
    1128:	0a000002 	beq	1138 <printf+0xdc>
    112c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1130:	e3530070 	cmp	r3, #112	@ 0x70
    1134:	1a00000a 	bne	1164 <printf+0x108>
    1138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    113c:	e5933000 	ldr	r3, [r3]
    1140:	e1a01003 	mov	r1, r3
    1144:	e3a03000 	mov	r3, #0
    1148:	e3a02010 	mov	r2, #16
    114c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1150:	ebffff73 	bl	f24 <printint>
    1154:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1158:	e2833004 	add	r3, r3, #4
    115c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1160:	ea000039 	b	124c <printf+0x1f0>
    1164:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1168:	e3530073 	cmp	r3, #115	@ 0x73
    116c:	1a000018 	bne	11d4 <printf+0x178>
    1170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e50b300c 	str	r3, [fp, #-12]
    117c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e2833004 	add	r3, r3, #4
    1184:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e3530000 	cmp	r3, #0
    1190:	1a00000a 	bne	11c0 <printf+0x164>
    1194:	e59f30f4 	ldr	r3, [pc, #244]	@ 1290 <printf+0x234>
    1198:	e50b300c 	str	r3, [fp, #-12]
    119c:	ea000007 	b	11c0 <printf+0x164>
    11a0:	e51b300c 	ldr	r3, [fp, #-12]
    11a4:	e5d33000 	ldrb	r3, [r3]
    11a8:	e1a01003 	mov	r1, r3
    11ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b0:	ebffff4d 	bl	eec <putc>
    11b4:	e51b300c 	ldr	r3, [fp, #-12]
    11b8:	e2833001 	add	r3, r3, #1
    11bc:	e50b300c 	str	r3, [fp, #-12]
    11c0:	e51b300c 	ldr	r3, [fp, #-12]
    11c4:	e5d33000 	ldrb	r3, [r3]
    11c8:	e3530000 	cmp	r3, #0
    11cc:	1afffff3 	bne	11a0 <printf+0x144>
    11d0:	ea00001d 	b	124c <printf+0x1f0>
    11d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d8:	e3530063 	cmp	r3, #99	@ 0x63
    11dc:	1a000009 	bne	1208 <printf+0x1ac>
    11e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e4:	e5933000 	ldr	r3, [r3]
    11e8:	e6ef3073 	uxtb	r3, r3
    11ec:	e1a01003 	mov	r1, r3
    11f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f4:	ebffff3c 	bl	eec <putc>
    11f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11fc:	e2833004 	add	r3, r3, #4
    1200:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1204:	ea000010 	b	124c <printf+0x1f0>
    1208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    120c:	e3530025 	cmp	r3, #37	@ 0x25
    1210:	1a000005 	bne	122c <printf+0x1d0>
    1214:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1218:	e6ef3073 	uxtb	r3, r3
    121c:	e1a01003 	mov	r1, r3
    1220:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1224:	ebffff30 	bl	eec <putc>
    1228:	ea000007 	b	124c <printf+0x1f0>
    122c:	e3a01025 	mov	r1, #37	@ 0x25
    1230:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1234:	ebffff2c 	bl	eec <putc>
    1238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    123c:	e6ef3073 	uxtb	r3, r3
    1240:	e1a01003 	mov	r1, r3
    1244:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1248:	ebffff27 	bl	eec <putc>
    124c:	e3a03000 	mov	r3, #0
    1250:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1254:	e51b3010 	ldr	r3, [fp, #-16]
    1258:	e2833001 	add	r3, r3, #1
    125c:	e50b3010 	str	r3, [fp, #-16]
    1260:	e59b2004 	ldr	r2, [fp, #4]
    1264:	e51b3010 	ldr	r3, [fp, #-16]
    1268:	e0823003 	add	r3, r2, r3
    126c:	e5d33000 	ldrb	r3, [r3]
    1270:	e3530000 	cmp	r3, #0
    1274:	1affff84 	bne	108c <printf+0x30>
    1278:	e1a00000 	nop			@ (mov r0, r0)
    127c:	e1a00000 	nop			@ (mov r0, r0)
    1280:	e24bd004 	sub	sp, fp, #4
    1284:	e8bd4800 	pop	{fp, lr}
    1288:	e28dd00c 	add	sp, sp, #12
    128c:	e12fff1e 	bx	lr
    1290:	00001874 	.word	0x00001874

00001294 <free>:
    1294:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1298:	e28db000 	add	fp, sp, #0
    129c:	e24dd014 	sub	sp, sp, #20
    12a0:	e50b0010 	str	r0, [fp, #-16]
    12a4:	e51b3010 	ldr	r3, [fp, #-16]
    12a8:	e2433008 	sub	r3, r3, #8
    12ac:	e50b300c 	str	r3, [fp, #-12]
    12b0:	e59f3154 	ldr	r3, [pc, #340]	@ 140c <free+0x178>
    12b4:	e5933000 	ldr	r3, [r3]
    12b8:	e50b3008 	str	r3, [fp, #-8]
    12bc:	ea000010 	b	1304 <free+0x70>
    12c0:	e51b3008 	ldr	r3, [fp, #-8]
    12c4:	e5933000 	ldr	r3, [r3]
    12c8:	e51b2008 	ldr	r2, [fp, #-8]
    12cc:	e1520003 	cmp	r2, r3
    12d0:	3a000008 	bcc	12f8 <free+0x64>
    12d4:	e51b200c 	ldr	r2, [fp, #-12]
    12d8:	e51b3008 	ldr	r3, [fp, #-8]
    12dc:	e1520003 	cmp	r2, r3
    12e0:	8a000010 	bhi	1328 <free+0x94>
    12e4:	e51b3008 	ldr	r3, [fp, #-8]
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e51b200c 	ldr	r2, [fp, #-12]
    12f0:	e1520003 	cmp	r2, r3
    12f4:	3a00000b 	bcc	1328 <free+0x94>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e5933000 	ldr	r3, [r3]
    1300:	e50b3008 	str	r3, [fp, #-8]
    1304:	e51b200c 	ldr	r2, [fp, #-12]
    1308:	e51b3008 	ldr	r3, [fp, #-8]
    130c:	e1520003 	cmp	r2, r3
    1310:	9affffea 	bls	12c0 <free+0x2c>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5933000 	ldr	r3, [r3]
    131c:	e51b200c 	ldr	r2, [fp, #-12]
    1320:	e1520003 	cmp	r2, r3
    1324:	2affffe5 	bcs	12c0 <free+0x2c>
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e5933004 	ldr	r3, [r3, #4]
    1330:	e1a03183 	lsl	r3, r3, #3
    1334:	e51b200c 	ldr	r2, [fp, #-12]
    1338:	e0822003 	add	r2, r2, r3
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e5933000 	ldr	r3, [r3]
    1344:	e1520003 	cmp	r2, r3
    1348:	1a00000d 	bne	1384 <free+0xf0>
    134c:	e51b300c 	ldr	r3, [fp, #-12]
    1350:	e5932004 	ldr	r2, [r3, #4]
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5933000 	ldr	r3, [r3]
    135c:	e5933004 	ldr	r3, [r3, #4]
    1360:	e0822003 	add	r2, r2, r3
    1364:	e51b300c 	ldr	r3, [fp, #-12]
    1368:	e5832004 	str	r2, [r3, #4]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e5933000 	ldr	r3, [r3]
    1374:	e5932000 	ldr	r2, [r3]
    1378:	e51b300c 	ldr	r3, [fp, #-12]
    137c:	e5832000 	str	r2, [r3]
    1380:	ea000003 	b	1394 <free+0x100>
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5932000 	ldr	r2, [r3]
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e5832000 	str	r2, [r3]
    1394:	e51b3008 	ldr	r3, [fp, #-8]
    1398:	e5933004 	ldr	r3, [r3, #4]
    139c:	e1a03183 	lsl	r3, r3, #3
    13a0:	e51b2008 	ldr	r2, [fp, #-8]
    13a4:	e0823003 	add	r3, r2, r3
    13a8:	e51b200c 	ldr	r2, [fp, #-12]
    13ac:	e1520003 	cmp	r2, r3
    13b0:	1a00000b 	bne	13e4 <free+0x150>
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e5932004 	ldr	r2, [r3, #4]
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e5933004 	ldr	r3, [r3, #4]
    13c4:	e0822003 	add	r2, r2, r3
    13c8:	e51b3008 	ldr	r3, [fp, #-8]
    13cc:	e5832004 	str	r2, [r3, #4]
    13d0:	e51b300c 	ldr	r3, [fp, #-12]
    13d4:	e5932000 	ldr	r2, [r3]
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5832000 	str	r2, [r3]
    13e0:	ea000002 	b	13f0 <free+0x15c>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e51b200c 	ldr	r2, [fp, #-12]
    13ec:	e5832000 	str	r2, [r3]
    13f0:	e59f2014 	ldr	r2, [pc, #20]	@ 140c <free+0x178>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5823000 	str	r3, [r2]
    13fc:	e1a00000 	nop			@ (mov r0, r0)
    1400:	e28bd000 	add	sp, fp, #0
    1404:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1408:	e12fff1e 	bx	lr
    140c:	00001898 	.word	0x00001898

00001410 <morecore>:
    1410:	e92d4800 	push	{fp, lr}
    1414:	e28db004 	add	fp, sp, #4
    1418:	e24dd010 	sub	sp, sp, #16
    141c:	e50b0010 	str	r0, [fp, #-16]
    1420:	e51b3010 	ldr	r3, [fp, #-16]
    1424:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1428:	2a000001 	bcs	1434 <morecore+0x24>
    142c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1430:	e50b3010 	str	r3, [fp, #-16]
    1434:	e51b3010 	ldr	r3, [fp, #-16]
    1438:	e1a03183 	lsl	r3, r3, #3
    143c:	e1a00003 	mov	r0, r3
    1440:	ebfffdfe 	bl	c40 <sbrk>
    1444:	e50b0008 	str	r0, [fp, #-8]
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e3730001 	cmn	r3, #1
    1450:	1a000001 	bne	145c <morecore+0x4c>
    1454:	e3a03000 	mov	r3, #0
    1458:	ea00000a 	b	1488 <morecore+0x78>
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e50b300c 	str	r3, [fp, #-12]
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e51b2010 	ldr	r2, [fp, #-16]
    146c:	e5832004 	str	r2, [r3, #4]
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e2833008 	add	r3, r3, #8
    1478:	e1a00003 	mov	r0, r3
    147c:	ebffff84 	bl	1294 <free>
    1480:	e59f300c 	ldr	r3, [pc, #12]	@ 1494 <morecore+0x84>
    1484:	e5933000 	ldr	r3, [r3]
    1488:	e1a00003 	mov	r0, r3
    148c:	e24bd004 	sub	sp, fp, #4
    1490:	e8bd8800 	pop	{fp, pc}
    1494:	00001898 	.word	0x00001898

00001498 <malloc>:
    1498:	e92d4800 	push	{fp, lr}
    149c:	e28db004 	add	fp, sp, #4
    14a0:	e24dd018 	sub	sp, sp, #24
    14a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14ac:	e2833007 	add	r3, r3, #7
    14b0:	e1a031a3 	lsr	r3, r3, #3
    14b4:	e2833001 	add	r3, r3, #1
    14b8:	e50b3010 	str	r3, [fp, #-16]
    14bc:	e59f3134 	ldr	r3, [pc, #308]	@ 15f8 <malloc+0x160>
    14c0:	e5933000 	ldr	r3, [r3]
    14c4:	e50b300c 	str	r3, [fp, #-12]
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e3530000 	cmp	r3, #0
    14d0:	1a00000b 	bne	1504 <malloc+0x6c>
    14d4:	e59f3120 	ldr	r3, [pc, #288]	@ 15fc <malloc+0x164>
    14d8:	e50b300c 	str	r3, [fp, #-12]
    14dc:	e59f2114 	ldr	r2, [pc, #276]	@ 15f8 <malloc+0x160>
    14e0:	e51b300c 	ldr	r3, [fp, #-12]
    14e4:	e5823000 	str	r3, [r2]
    14e8:	e59f3108 	ldr	r3, [pc, #264]	@ 15f8 <malloc+0x160>
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e59f2104 	ldr	r2, [pc, #260]	@ 15fc <malloc+0x164>
    14f4:	e5823000 	str	r3, [r2]
    14f8:	e59f30fc 	ldr	r3, [pc, #252]	@ 15fc <malloc+0x164>
    14fc:	e3a02000 	mov	r2, #0
    1500:	e5832004 	str	r2, [r3, #4]
    1504:	e51b300c 	ldr	r3, [fp, #-12]
    1508:	e5933000 	ldr	r3, [r3]
    150c:	e50b3008 	str	r3, [fp, #-8]
    1510:	e51b3008 	ldr	r3, [fp, #-8]
    1514:	e5933004 	ldr	r3, [r3, #4]
    1518:	e51b2010 	ldr	r2, [fp, #-16]
    151c:	e1520003 	cmp	r2, r3
    1520:	8a00001e 	bhi	15a0 <malloc+0x108>
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e5933004 	ldr	r3, [r3, #4]
    152c:	e51b2010 	ldr	r2, [fp, #-16]
    1530:	e1520003 	cmp	r2, r3
    1534:	1a000004 	bne	154c <malloc+0xb4>
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e5932000 	ldr	r2, [r3]
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e5832000 	str	r2, [r3]
    1548:	ea00000e 	b	1588 <malloc+0xf0>
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5932004 	ldr	r2, [r3, #4]
    1554:	e51b3010 	ldr	r3, [fp, #-16]
    1558:	e0422003 	sub	r2, r2, r3
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5832004 	str	r2, [r3, #4]
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5933004 	ldr	r3, [r3, #4]
    156c:	e1a03183 	lsl	r3, r3, #3
    1570:	e51b2008 	ldr	r2, [fp, #-8]
    1574:	e0823003 	add	r3, r2, r3
    1578:	e50b3008 	str	r3, [fp, #-8]
    157c:	e51b3008 	ldr	r3, [fp, #-8]
    1580:	e51b2010 	ldr	r2, [fp, #-16]
    1584:	e5832004 	str	r2, [r3, #4]
    1588:	e59f2068 	ldr	r2, [pc, #104]	@ 15f8 <malloc+0x160>
    158c:	e51b300c 	ldr	r3, [fp, #-12]
    1590:	e5823000 	str	r3, [r2]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e2833008 	add	r3, r3, #8
    159c:	ea000012 	b	15ec <malloc+0x154>
    15a0:	e59f3050 	ldr	r3, [pc, #80]	@ 15f8 <malloc+0x160>
    15a4:	e5933000 	ldr	r3, [r3]
    15a8:	e51b2008 	ldr	r2, [fp, #-8]
    15ac:	e1520003 	cmp	r2, r3
    15b0:	1a000007 	bne	15d4 <malloc+0x13c>
    15b4:	e51b0010 	ldr	r0, [fp, #-16]
    15b8:	ebffff94 	bl	1410 <morecore>
    15bc:	e50b0008 	str	r0, [fp, #-8]
    15c0:	e51b3008 	ldr	r3, [fp, #-8]
    15c4:	e3530000 	cmp	r3, #0
    15c8:	1a000001 	bne	15d4 <malloc+0x13c>
    15cc:	e3a03000 	mov	r3, #0
    15d0:	ea000005 	b	15ec <malloc+0x154>
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e50b300c 	str	r3, [fp, #-12]
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e5933000 	ldr	r3, [r3]
    15e4:	e50b3008 	str	r3, [fp, #-8]
    15e8:	eaffffc8 	b	1510 <malloc+0x78>
    15ec:	e1a00003 	mov	r0, r3
    15f0:	e24bd004 	sub	sp, fp, #4
    15f4:	e8bd8800 	pop	{fp, pc}
    15f8:	00001898 	.word	0x00001898
    15fc:	00001890 	.word	0x00001890

00001600 <__udivsi3>:
    1600:	e2512001 	subs	r2, r1, #1
    1604:	012fff1e 	bxeq	lr
    1608:	3a000036 	bcc	16e8 <__udivsi3+0xe8>
    160c:	e1500001 	cmp	r0, r1
    1610:	9a000022 	bls	16a0 <__udivsi3+0xa0>
    1614:	e1110002 	tst	r1, r2
    1618:	0a000023 	beq	16ac <__udivsi3+0xac>
    161c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1620:	01a01181 	lsleq	r1, r1, #3
    1624:	03a03008 	moveq	r3, #8
    1628:	13a03001 	movne	r3, #1
    162c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1630:	31510000 	cmpcc	r1, r0
    1634:	31a01201 	lslcc	r1, r1, #4
    1638:	31a03203 	lslcc	r3, r3, #4
    163c:	3afffffa 	bcc	162c <__udivsi3+0x2c>
    1640:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1644:	31510000 	cmpcc	r1, r0
    1648:	31a01081 	lslcc	r1, r1, #1
    164c:	31a03083 	lslcc	r3, r3, #1
    1650:	3afffffa 	bcc	1640 <__udivsi3+0x40>
    1654:	e3a02000 	mov	r2, #0
    1658:	e1500001 	cmp	r0, r1
    165c:	20400001 	subcs	r0, r0, r1
    1660:	21822003 	orrcs	r2, r2, r3
    1664:	e15000a1 	cmp	r0, r1, lsr #1
    1668:	204000a1 	subcs	r0, r0, r1, lsr #1
    166c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1670:	e1500121 	cmp	r0, r1, lsr #2
    1674:	20400121 	subcs	r0, r0, r1, lsr #2
    1678:	21822123 	orrcs	r2, r2, r3, lsr #2
    167c:	e15001a1 	cmp	r0, r1, lsr #3
    1680:	204001a1 	subcs	r0, r0, r1, lsr #3
    1684:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1688:	e3500000 	cmp	r0, #0
    168c:	11b03223 	lsrsne	r3, r3, #4
    1690:	11a01221 	lsrne	r1, r1, #4
    1694:	1affffef 	bne	1658 <__udivsi3+0x58>
    1698:	e1a00002 	mov	r0, r2
    169c:	e12fff1e 	bx	lr
    16a0:	03a00001 	moveq	r0, #1
    16a4:	13a00000 	movne	r0, #0
    16a8:	e12fff1e 	bx	lr
    16ac:	e3510801 	cmp	r1, #65536	@ 0x10000
    16b0:	21a01821 	lsrcs	r1, r1, #16
    16b4:	23a02010 	movcs	r2, #16
    16b8:	33a02000 	movcc	r2, #0
    16bc:	e3510c01 	cmp	r1, #256	@ 0x100
    16c0:	21a01421 	lsrcs	r1, r1, #8
    16c4:	22822008 	addcs	r2, r2, #8
    16c8:	e3510010 	cmp	r1, #16
    16cc:	21a01221 	lsrcs	r1, r1, #4
    16d0:	22822004 	addcs	r2, r2, #4
    16d4:	e3510004 	cmp	r1, #4
    16d8:	82822003 	addhi	r2, r2, #3
    16dc:	908220a1 	addls	r2, r2, r1, lsr #1
    16e0:	e1a00230 	lsr	r0, r0, r2
    16e4:	e12fff1e 	bx	lr
    16e8:	e3500000 	cmp	r0, #0
    16ec:	13e00000 	mvnne	r0, #0
    16f0:	ea000007 	b	1714 <__aeabi_idiv0>

000016f4 <__aeabi_uidivmod>:
    16f4:	e3510000 	cmp	r1, #0
    16f8:	0afffffa 	beq	16e8 <__udivsi3+0xe8>
    16fc:	e92d4003 	push	{r0, r1, lr}
    1700:	ebffffbe 	bl	1600 <__udivsi3>
    1704:	e8bd4006 	pop	{r1, r2, lr}
    1708:	e0030092 	mul	r3, r2, r0
    170c:	e0411003 	sub	r1, r1, r3
    1710:	e12fff1e 	bx	lr

00001714 <__aeabi_idiv0>:
    1714:	e12fff1e 	bx	lr
