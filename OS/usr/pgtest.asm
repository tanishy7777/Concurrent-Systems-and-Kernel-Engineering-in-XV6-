
_pgtest:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f1098 	ldr	r1, [pc, #152]	@ ac <main+0xac>
      10:	e3a00001 	mov	r0, #1
      14:	eb00040e 	bl	1054 <printf>
      18:	e59f1090 	ldr	r1, [pc, #144]	@ b0 <main+0xb0>
      1c:	e3a00001 	mov	r0, #1
      20:	eb00040b 	bl	1054 <printf>
      24:	e3a00a0a 	mov	r0, #40960	@ 0xa000
      28:	eb000302 	bl	c38 <sbrk>
      2c:	e50b0008 	str	r0, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e3730001 	cmn	r3, #1
      38:	1a000003 	bne	4c <main+0x4c>
      3c:	e59f1070 	ldr	r1, [pc, #112]	@ b4 <main+0xb4>
      40:	e3a00002 	mov	r0, #2
      44:	eb000402 	bl	1054 <printf>
      48:	eb000261 	bl	9d4 <exit>
      4c:	e59f1064 	ldr	r1, [pc, #100]	@ b8 <main+0xb8>
      50:	e3a00001 	mov	r0, #1
      54:	eb0003fe 	bl	1054 <printf>
      58:	e24b300c 	sub	r3, fp, #12
      5c:	e3a01002 	mov	r1, #2
      60:	e1a00003 	mov	r0, r3
      64:	eb0000db 	bl	3d8 <gets>
      68:	e59f104c 	ldr	r1, [pc, #76]	@ bc <main+0xbc>
      6c:	e3a00001 	mov	r0, #1
      70:	eb0003f7 	bl	1054 <printf>
      74:	e51b3008 	ldr	r3, [fp, #-8]
      78:	e2833a05 	add	r3, r3, #20480	@ 0x5000
      7c:	e3a02041 	mov	r2, #65	@ 0x41
      80:	e5c32000 	strb	r2, [r3]
      84:	e59f1034 	ldr	r1, [pc, #52]	@ c0 <main+0xc0>
      88:	e3a00001 	mov	r0, #1
      8c:	eb0003f0 	bl	1054 <printf>
      90:	e51b3008 	ldr	r3, [fp, #-8]
      94:	e3a02042 	mov	r2, #66	@ 0x42
      98:	e5c32000 	strb	r2, [r3]
      9c:	e59f1020 	ldr	r1, [pc, #32]	@ c4 <main+0xc4>
      a0:	e3a00001 	mov	r0, #1
      a4:	eb0003ea 	bl	1054 <printf>
      a8:	eb000249 	bl	9d4 <exit>
      ac:	00001710 	.word	0x00001710
      b0:	00001728 	.word	0x00001728
      b4:	00001750 	.word	0x00001750
      b8:	00001760 	.word	0x00001760
      bc:	00001798 	.word	0x00001798
      c0:	000017b4 	.word	0x000017b4
      c4:	000017d0 	.word	0x000017d0

000000c8 <xchg>:
      c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      cc:	e28db000 	add	fp, sp, #0
      d0:	e24dd014 	sub	sp, sp, #20
      d4:	e50b0010 	str	r0, [fp, #-16]
      d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      dc:	e51b1010 	ldr	r1, [fp, #-16]
      e0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      e4:	e1912f9f 	ldrex	r2, [r1]
      e8:	e1813f90 	strex	r3, r0, [r1]
      ec:	e50b2008 	str	r2, [fp, #-8]
      f0:	e50b300c 	str	r3, [fp, #-12]
      f4:	e51b300c 	ldr	r3, [fp, #-12]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff6 	bne	dc <xchg+0x14>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcpy>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd014 	sub	sp, sp, #20
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     128:	e51b3010 	ldr	r3, [fp, #-16]
     12c:	e50b3008 	str	r3, [fp, #-8]
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     138:	e2823001 	add	r3, r2, #1
     13c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     140:	e51b3010 	ldr	r3, [fp, #-16]
     144:	e2831001 	add	r1, r3, #1
     148:	e50b1010 	str	r1, [fp, #-16]
     14c:	e5d22000 	ldrb	r2, [r2]
     150:	e5c32000 	strb	r2, [r3]
     154:	e5d33000 	ldrb	r3, [r3]
     158:	e3530000 	cmp	r3, #0
     15c:	1afffff4 	bne	134 <strcpy+0x20>
     160:	e51b3008 	ldr	r3, [fp, #-8]
     164:	e1a00003 	mov	r0, r3
     168:	e28bd000 	add	sp, fp, #0
     16c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     170:	e12fff1e 	bx	lr

00000174 <strcmp>:
     174:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     178:	e28db000 	add	fp, sp, #0
     17c:	e24dd00c 	sub	sp, sp, #12
     180:	e50b0008 	str	r0, [fp, #-8]
     184:	e50b100c 	str	r1, [fp, #-12]
     188:	ea000005 	b	1a4 <strcmp+0x30>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b300c 	ldr	r3, [fp, #-12]
     19c:	e2833001 	add	r3, r3, #1
     1a0:	e50b300c 	str	r3, [fp, #-12]
     1a4:	e51b3008 	ldr	r3, [fp, #-8]
     1a8:	e5d33000 	ldrb	r3, [r3]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a000005 	beq	1cc <strcmp+0x58>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e5d32000 	ldrb	r2, [r3]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e1520003 	cmp	r2, r3
     1c8:	0affffef 	beq	18c <strcmp+0x18>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e1a02003 	mov	r2, r3
     1d8:	e51b300c 	ldr	r3, [fp, #-12]
     1dc:	e5d33000 	ldrb	r3, [r3]
     1e0:	e0423003 	sub	r3, r2, r3
     1e4:	e1a00003 	mov	r0, r3
     1e8:	e28bd000 	add	sp, fp, #0
     1ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1f0:	e12fff1e 	bx	lr

000001f4 <strlen>:
     1f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f8:	e28db000 	add	fp, sp, #0
     1fc:	e24dd014 	sub	sp, sp, #20
     200:	e50b0010 	str	r0, [fp, #-16]
     204:	e3a03000 	mov	r3, #0
     208:	e50b3008 	str	r3, [fp, #-8]
     20c:	ea000002 	b	21c <strlen+0x28>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e2833001 	add	r3, r3, #1
     218:	e50b3008 	str	r3, [fp, #-8]
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e51b2010 	ldr	r2, [fp, #-16]
     224:	e0823003 	add	r3, r2, r3
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e3530000 	cmp	r3, #0
     230:	1afffff6 	bne	210 <strlen+0x1c>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e1a00003 	mov	r0, r3
     23c:	e28bd000 	add	sp, fp, #0
     240:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     244:	e12fff1e 	bx	lr

00000248 <memset>:
     248:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     24c:	e28db000 	add	fp, sp, #0
     250:	e24dd024 	sub	sp, sp, #36	@ 0x24
     254:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     258:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     25c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     260:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     26c:	e54b300d 	strb	r3, [fp, #-13]
     270:	e55b200d 	ldrb	r2, [fp, #-13]
     274:	e1a03002 	mov	r3, r2
     278:	e1a03403 	lsl	r3, r3, #8
     27c:	e0833002 	add	r3, r3, r2
     280:	e1a03803 	lsl	r3, r3, #16
     284:	e1a02003 	mov	r2, r3
     288:	e55b300d 	ldrb	r3, [fp, #-13]
     28c:	e1a03403 	lsl	r3, r3, #8
     290:	e1822003 	orr	r2, r2, r3
     294:	e55b300d 	ldrb	r3, [fp, #-13]
     298:	e1823003 	orr	r3, r2, r3
     29c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2a0:	ea000008 	b	2c8 <memset+0x80>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e5c32000 	strb	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e2433001 	sub	r3, r3, #1
     2b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e3530000 	cmp	r3, #0
     2d0:	0a000003 	beq	2e4 <memset+0x9c>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e2033003 	and	r3, r3, #3
     2dc:	e3530000 	cmp	r3, #0
     2e0:	1affffef 	bne	2a4 <memset+0x5c>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e50b300c 	str	r3, [fp, #-12]
     2ec:	ea000008 	b	314 <memset+0xcc>
     2f0:	e51b300c 	ldr	r3, [fp, #-12]
     2f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2f8:	e5832000 	str	r2, [r3]
     2fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     300:	e2433004 	sub	r3, r3, #4
     304:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e2833004 	add	r3, r3, #4
     310:	e50b300c 	str	r3, [fp, #-12]
     314:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     318:	e3530003 	cmp	r3, #3
     31c:	8afffff3 	bhi	2f0 <memset+0xa8>
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	ea000008 	b	350 <memset+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e55b200d 	ldrb	r2, [fp, #-13]
     334:	e5c32000 	strb	r2, [r3]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e2433001 	sub	r3, r3, #1
     340:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2833001 	add	r3, r3, #1
     34c:	e50b3008 	str	r3, [fp, #-8]
     350:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     354:	e3530000 	cmp	r3, #0
     358:	1afffff3 	bne	32c <memset+0xe4>
     35c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     360:	e1a00003 	mov	r0, r3
     364:	e28bd000 	add	sp, fp, #0
     368:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     36c:	e12fff1e 	bx	lr

00000370 <strchr>:
     370:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     374:	e28db000 	add	fp, sp, #0
     378:	e24dd00c 	sub	sp, sp, #12
     37c:	e50b0008 	str	r0, [fp, #-8]
     380:	e1a03001 	mov	r3, r1
     384:	e54b3009 	strb	r3, [fp, #-9]
     388:	ea000009 	b	3b4 <strchr+0x44>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d33000 	ldrb	r3, [r3]
     394:	e55b2009 	ldrb	r2, [fp, #-9]
     398:	e1520003 	cmp	r2, r3
     39c:	1a000001 	bne	3a8 <strchr+0x38>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	ea000007 	b	3c8 <strchr+0x58>
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e2833001 	add	r3, r3, #1
     3b0:	e50b3008 	str	r3, [fp, #-8]
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e5d33000 	ldrb	r3, [r3]
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff1 	bne	38c <strchr+0x1c>
     3c4:	e3a03000 	mov	r3, #0
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <gets>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd018 	sub	sp, sp, #24
     3e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3ec:	e3a03000 	mov	r3, #0
     3f0:	e50b3008 	str	r3, [fp, #-8]
     3f4:	ea000016 	b	454 <gets+0x7c>
     3f8:	e24b300d 	sub	r3, fp, #13
     3fc:	e3a02001 	mov	r2, #1
     400:	e1a01003 	mov	r1, r3
     404:	e3a00000 	mov	r0, #0
     408:	eb00018c 	bl	a40 <read>
     40c:	e50b000c 	str	r0, [fp, #-12]
     410:	e51b300c 	ldr	r3, [fp, #-12]
     414:	e3530000 	cmp	r3, #0
     418:	da000013 	ble	46c <gets+0x94>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2832001 	add	r2, r3, #1
     424:	e50b2008 	str	r2, [fp, #-8]
     428:	e1a02003 	mov	r2, r3
     42c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     430:	e0833002 	add	r3, r3, r2
     434:	e55b200d 	ldrb	r2, [fp, #-13]
     438:	e5c32000 	strb	r2, [r3]
     43c:	e55b300d 	ldrb	r3, [fp, #-13]
     440:	e353000a 	cmp	r3, #10
     444:	0a000009 	beq	470 <gets+0x98>
     448:	e55b300d 	ldrb	r3, [fp, #-13]
     44c:	e353000d 	cmp	r3, #13
     450:	0a000006 	beq	470 <gets+0x98>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e2833001 	add	r3, r3, #1
     45c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     460:	e1520003 	cmp	r2, r3
     464:	caffffe3 	bgt	3f8 <gets+0x20>
     468:	ea000000 	b	470 <gets+0x98>
     46c:	e1a00000 	nop			@ (mov r0, r0)
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     478:	e0823003 	add	r3, r2, r3
     47c:	e3a02000 	mov	r2, #0
     480:	e5c32000 	strb	r2, [r3]
     484:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <stat>:
     494:	e92d4800 	push	{fp, lr}
     498:	e28db004 	add	fp, sp, #4
     49c:	e24dd010 	sub	sp, sp, #16
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4a8:	e3a01000 	mov	r1, #0
     4ac:	e51b0010 	ldr	r0, [fp, #-16]
     4b0:	eb00018f 	bl	af4 <open>
     4b4:	e50b0008 	str	r0, [fp, #-8]
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	aa000001 	bge	4cc <stat+0x38>
     4c4:	e3e03000 	mvn	r3, #0
     4c8:	ea000006 	b	4e8 <stat+0x54>
     4cc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4d0:	e51b0008 	ldr	r0, [fp, #-8]
     4d4:	eb0001a1 	bl	b60 <fstat>
     4d8:	e50b000c 	str	r0, [fp, #-12]
     4dc:	e51b0008 	ldr	r0, [fp, #-8]
     4e0:	eb000168 	bl	a88 <close>
     4e4:	e51b300c 	ldr	r3, [fp, #-12]
     4e8:	e1a00003 	mov	r0, r3
     4ec:	e24bd004 	sub	sp, fp, #4
     4f0:	e8bd8800 	pop	{fp, pc}

000004f4 <atoi>:
     4f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f8:	e28db000 	add	fp, sp, #0
     4fc:	e24dd014 	sub	sp, sp, #20
     500:	e50b0010 	str	r0, [fp, #-16]
     504:	e3a03000 	mov	r3, #0
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	ea00000c 	b	544 <atoi+0x50>
     510:	e51b2008 	ldr	r2, [fp, #-8]
     514:	e1a03002 	mov	r3, r2
     518:	e1a03103 	lsl	r3, r3, #2
     51c:	e0833002 	add	r3, r3, r2
     520:	e1a03083 	lsl	r3, r3, #1
     524:	e1a01003 	mov	r1, r3
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e2832001 	add	r2, r3, #1
     530:	e50b2010 	str	r2, [fp, #-16]
     534:	e5d33000 	ldrb	r3, [r3]
     538:	e0813003 	add	r3, r1, r3
     53c:	e2433030 	sub	r3, r3, #48	@ 0x30
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	e51b3010 	ldr	r3, [fp, #-16]
     548:	e5d33000 	ldrb	r3, [r3]
     54c:	e353002f 	cmp	r3, #47	@ 0x2f
     550:	9a000003 	bls	564 <atoi+0x70>
     554:	e51b3010 	ldr	r3, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e3530039 	cmp	r3, #57	@ 0x39
     560:	9affffea 	bls	510 <atoi+0x1c>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e1a00003 	mov	r0, r3
     56c:	e28bd000 	add	sp, fp, #0
     570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     574:	e12fff1e 	bx	lr

00000578 <memmove>:
     578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     57c:	e28db000 	add	fp, sp, #0
     580:	e24dd01c 	sub	sp, sp, #28
     584:	e50b0010 	str	r0, [fp, #-16]
     588:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     58c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e50b3008 	str	r3, [fp, #-8]
     598:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     59c:	e50b300c 	str	r3, [fp, #-12]
     5a0:	ea000007 	b	5c4 <memmove+0x4c>
     5a4:	e51b200c 	ldr	r2, [fp, #-12]
     5a8:	e2823001 	add	r3, r2, #1
     5ac:	e50b300c 	str	r3, [fp, #-12]
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e2831001 	add	r1, r3, #1
     5b8:	e50b1008 	str	r1, [fp, #-8]
     5bc:	e5d22000 	ldrb	r2, [r2]
     5c0:	e5c32000 	strb	r2, [r3]
     5c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5c8:	e2432001 	sub	r2, r3, #1
     5cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5d0:	e3530000 	cmp	r3, #0
     5d4:	cafffff2 	bgt	5a4 <memmove+0x2c>
     5d8:	e51b3010 	ldr	r3, [fp, #-16]
     5dc:	e1a00003 	mov	r0, r3
     5e0:	e28bd000 	add	sp, fp, #0
     5e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e8:	e12fff1e 	bx	lr

000005ec <initiateLock>:
     5ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5f0:	e28db000 	add	fp, sp, #0
     5f4:	e24dd00c 	sub	sp, sp, #12
     5f8:	e50b0008 	str	r0, [fp, #-8]
     5fc:	e51b3008 	ldr	r3, [fp, #-8]
     600:	e3a02000 	mov	r2, #0
     604:	e5832000 	str	r2, [r3]
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e3a02001 	mov	r2, #1
     610:	e5832004 	str	r2, [r3, #4]
     614:	e1a00000 	nop			@ (mov r0, r0)
     618:	e28bd000 	add	sp, fp, #0
     61c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <acquireLock>:
     624:	e92d4800 	push	{fp, lr}
     628:	e28db004 	add	fp, sp, #4
     62c:	e24dd008 	sub	sp, sp, #8
     630:	e50b0008 	str	r0, [fp, #-8]
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e5933000 	ldr	r3, [r3]
     63c:	e3730001 	cmn	r3, #1
     640:	1a000002 	bne	650 <acquireLock+0x2c>
     644:	e59f1034 	ldr	r1, [pc, #52]	@ 680 <acquireLock+0x5c>
     648:	e3a00002 	mov	r0, #2
     64c:	eb000280 	bl	1054 <printf>
     650:	e1a00000 	nop			@ (mov r0, r0)
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e3a01001 	mov	r1, #1
     65c:	e1a00003 	mov	r0, r3
     660:	ebfffe98 	bl	c8 <xchg>
     664:	e1a03000 	mov	r3, r0
     668:	e3530000 	cmp	r3, #0
     66c:	1afffff8 	bne	654 <acquireLock+0x30>
     670:	e1a00000 	nop			@ (mov r0, r0)
     674:	e1a00000 	nop			@ (mov r0, r0)
     678:	e24bd004 	sub	sp, fp, #4
     67c:	e8bd8800 	pop	{fp, pc}
     680:	000017e8 	.word	0x000017e8

00000684 <releaseLock>:
     684:	e92d4800 	push	{fp, lr}
     688:	e28db004 	add	fp, sp, #4
     68c:	e24dd008 	sub	sp, sp, #8
     690:	e50b0008 	str	r0, [fp, #-8]
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e5933000 	ldr	r3, [r3]
     69c:	e3530001 	cmp	r3, #1
     6a0:	0a000002 	beq	6b0 <releaseLock+0x2c>
     6a4:	e59f1020 	ldr	r1, [pc, #32]	@ 6cc <releaseLock+0x48>
     6a8:	e3a00002 	mov	r0, #2
     6ac:	eb000268 	bl	1054 <printf>
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e3a01000 	mov	r1, #0
     6b8:	e1a00003 	mov	r0, r3
     6bc:	ebfffe81 	bl	c8 <xchg>
     6c0:	e1a00000 	nop			@ (mov r0, r0)
     6c4:	e24bd004 	sub	sp, fp, #4
     6c8:	e8bd8800 	pop	{fp, pc}
     6cc:	00001818 	.word	0x00001818

000006d0 <initiateCondVar>:
     6d0:	e92d4800 	push	{fp, lr}
     6d4:	e28db004 	add	fp, sp, #4
     6d8:	e24dd008 	sub	sp, sp, #8
     6dc:	e50b0008 	str	r0, [fp, #-8]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5933004 	ldr	r3, [r3, #4]
     6e8:	e3530000 	cmp	r3, #0
     6ec:	1a000007 	bne	710 <initiateCondVar+0x40>
     6f0:	eb0001e0 	bl	e78 <getChannel>
     6f4:	e1a02000 	mov	r2, r0
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e5832000 	str	r2, [r3]
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e3a02001 	mov	r2, #1
     708:	e5832004 	str	r2, [r3, #4]
     70c:	ea000000 	b	714 <initiateCondVar+0x44>
     710:	e1a00000 	nop			@ (mov r0, r0)
     714:	e24bd004 	sub	sp, fp, #4
     718:	e8bd8800 	pop	{fp, pc}

0000071c <condWait>:
     71c:	e92d4800 	push	{fp, lr}
     720:	e28db004 	add	fp, sp, #4
     724:	e24dd008 	sub	sp, sp, #8
     728:	e50b0008 	str	r0, [fp, #-8]
     72c:	e50b100c 	str	r1, [fp, #-12]
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e5933004 	ldr	r3, [r3, #4]
     738:	e3530000 	cmp	r3, #0
     73c:	1a000003 	bne	750 <condWait+0x34>
     740:	e59f1050 	ldr	r1, [pc, #80]	@ 798 <condWait+0x7c>
     744:	e3a00002 	mov	r0, #2
     748:	eb000241 	bl	1054 <printf>
     74c:	ea00000f 	b	790 <condWait+0x74>
     750:	e51b300c 	ldr	r3, [fp, #-12]
     754:	e5933004 	ldr	r3, [r3, #4]
     758:	e3530000 	cmp	r3, #0
     75c:	1a000003 	bne	770 <condWait+0x54>
     760:	e59f1034 	ldr	r1, [pc, #52]	@ 79c <condWait+0x80>
     764:	e3a00002 	mov	r0, #2
     768:	eb000239 	bl	1054 <printf>
     76c:	ea000007 	b	790 <condWait+0x74>
     770:	e51b000c 	ldr	r0, [fp, #-12]
     774:	ebffffc2 	bl	684 <releaseLock>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e5933000 	ldr	r3, [r3]
     780:	e1a00003 	mov	r0, r3
     784:	eb0001b2 	bl	e54 <sleepChan>
     788:	e51b000c 	ldr	r0, [fp, #-12]
     78c:	ebffffa4 	bl	624 <acquireLock>
     790:	e24bd004 	sub	sp, fp, #4
     794:	e8bd8800 	pop	{fp, pc}
     798:	00001854 	.word	0x00001854
     79c:	00001878 	.word	0x00001878

000007a0 <broadcast>:
     7a0:	e92d4800 	push	{fp, lr}
     7a4:	e28db004 	add	fp, sp, #4
     7a8:	e24dd008 	sub	sp, sp, #8
     7ac:	e50b0008 	str	r0, [fp, #-8]
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e5933004 	ldr	r3, [r3, #4]
     7b8:	e3530000 	cmp	r3, #0
     7bc:	1a000003 	bne	7d0 <broadcast+0x30>
     7c0:	e59f1020 	ldr	r1, [pc, #32]	@ 7e8 <broadcast+0x48>
     7c4:	e3a00002 	mov	r0, #2
     7c8:	eb000221 	bl	1054 <printf>
     7cc:	ea000003 	b	7e0 <broadcast+0x40>
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e5933000 	ldr	r3, [r3]
     7d8:	e1a00003 	mov	r0, r3
     7dc:	eb0001ae 	bl	e9c <sigChan>
     7e0:	e24bd004 	sub	sp, fp, #4
     7e4:	e8bd8800 	pop	{fp, pc}
     7e8:	00001854 	.word	0x00001854

000007ec <signal>:
     7ec:	e92d4800 	push	{fp, lr}
     7f0:	e28db004 	add	fp, sp, #4
     7f4:	e24dd008 	sub	sp, sp, #8
     7f8:	e50b0008 	str	r0, [fp, #-8]
     7fc:	e51b3008 	ldr	r3, [fp, #-8]
     800:	e5933004 	ldr	r3, [r3, #4]
     804:	e3530000 	cmp	r3, #0
     808:	1a000003 	bne	81c <signal+0x30>
     80c:	e59f1020 	ldr	r1, [pc, #32]	@ 834 <signal+0x48>
     810:	e3a00002 	mov	r0, #2
     814:	eb00020e 	bl	1054 <printf>
     818:	ea000003 	b	82c <signal+0x40>
     81c:	e51b3008 	ldr	r3, [fp, #-8]
     820:	e5933000 	ldr	r3, [r3]
     824:	e1a00003 	mov	r0, r3
     828:	eb0001a4 	bl	ec0 <sigOneChan>
     82c:	e24bd004 	sub	sp, fp, #4
     830:	e8bd8800 	pop	{fp, pc}
     834:	00001854 	.word	0x00001854

00000838 <semInit>:
     838:	e92d4800 	push	{fp, lr}
     83c:	e28db004 	add	fp, sp, #4
     840:	e24dd008 	sub	sp, sp, #8
     844:	e50b0008 	str	r0, [fp, #-8]
     848:	e50b100c 	str	r1, [fp, #-12]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e51b200c 	ldr	r2, [fp, #-12]
     854:	e5832000 	str	r2, [r3]
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e2833004 	add	r3, r3, #4
     860:	e1a00003 	mov	r0, r3
     864:	ebffff60 	bl	5ec <initiateLock>
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e283300c 	add	r3, r3, #12
     870:	e1a00003 	mov	r0, r3
     874:	ebffff95 	bl	6d0 <initiateCondVar>
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e3a02001 	mov	r2, #1
     880:	e5832014 	str	r2, [r3, #20]
     884:	e1a00000 	nop			@ (mov r0, r0)
     888:	e24bd004 	sub	sp, fp, #4
     88c:	e8bd8800 	pop	{fp, pc}

00000890 <semDown>:
     890:	e92d4800 	push	{fp, lr}
     894:	e28db004 	add	fp, sp, #4
     898:	e24dd008 	sub	sp, sp, #8
     89c:	e50b0008 	str	r0, [fp, #-8]
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e5933014 	ldr	r3, [r3, #20]
     8a8:	e3530000 	cmp	r3, #0
     8ac:	1a000003 	bne	8c0 <semDown+0x30>
     8b0:	e59f1074 	ldr	r1, [pc, #116]	@ 92c <semDown+0x9c>
     8b4:	e3a00002 	mov	r0, #2
     8b8:	eb0001e5 	bl	1054 <printf>
     8bc:	ea000018 	b	924 <semDown+0x94>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e2833004 	add	r3, r3, #4
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffff54 	bl	624 <acquireLock>
     8d0:	ea000006 	b	8f0 <semDown+0x60>
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e283200c 	add	r2, r3, #12
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e2833004 	add	r3, r3, #4
     8e4:	e1a01003 	mov	r1, r3
     8e8:	e1a00002 	mov	r0, r2
     8ec:	ebffff8a 	bl	71c <condWait>
     8f0:	e51b3008 	ldr	r3, [fp, #-8]
     8f4:	e5933000 	ldr	r3, [r3]
     8f8:	e3530000 	cmp	r3, #0
     8fc:	0afffff4 	beq	8d4 <semDown+0x44>
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e5933000 	ldr	r3, [r3]
     908:	e2432001 	sub	r2, r3, #1
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5832000 	str	r2, [r3]
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e2833004 	add	r3, r3, #4
     91c:	e1a00003 	mov	r0, r3
     920:	ebffff57 	bl	684 <releaseLock>
     924:	e24bd004 	sub	sp, fp, #4
     928:	e8bd8800 	pop	{fp, pc}
     92c:	00001898 	.word	0x00001898

00000930 <semUp>:
     930:	e92d4800 	push	{fp, lr}
     934:	e28db004 	add	fp, sp, #4
     938:	e24dd008 	sub	sp, sp, #8
     93c:	e50b0008 	str	r0, [fp, #-8]
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e5933014 	ldr	r3, [r3, #20]
     948:	e3530000 	cmp	r3, #0
     94c:	1a000003 	bne	960 <semUp+0x30>
     950:	e59f1054 	ldr	r1, [pc, #84]	@ 9ac <semUp+0x7c>
     954:	e3a00002 	mov	r0, #2
     958:	eb0001bd 	bl	1054 <printf>
     95c:	ea000010 	b	9a4 <semUp+0x74>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e2833004 	add	r3, r3, #4
     968:	e1a00003 	mov	r0, r3
     96c:	ebffff2c 	bl	624 <acquireLock>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933000 	ldr	r3, [r3]
     978:	e2832001 	add	r2, r3, #1
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e5832000 	str	r2, [r3]
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e283300c 	add	r3, r3, #12
     98c:	e1a00003 	mov	r0, r3
     990:	ebffff95 	bl	7ec <signal>
     994:	e51b3008 	ldr	r3, [fp, #-8]
     998:	e2833004 	add	r3, r3, #4
     99c:	e1a00003 	mov	r0, r3
     9a0:	ebffff37 	bl	684 <releaseLock>
     9a4:	e24bd004 	sub	sp, fp, #4
     9a8:	e8bd8800 	pop	{fp, pc}
     9ac:	00001898 	.word	0x00001898

000009b0 <fork>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a00001 	mov	r0, #1
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <exit>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a00002 	mov	r0, #2
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <wait>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a00003 	mov	r0, #3
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <pipe>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a00004 	mov	r0, #4
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <read>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a00005 	mov	r0, #5
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <write>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00010 	mov	r0, #16
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <close>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00015 	mov	r0, #21
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <kill>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00006 	mov	r0, #6
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <exec>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00007 	mov	r0, #7
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <open>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a0000f 	mov	r0, #15
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <mknod>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00011 	mov	r0, #17
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <unlink>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00012 	mov	r0, #18
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <fstat>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00008 	mov	r0, #8
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <link>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00013 	mov	r0, #19
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <mkdir>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a00014 	mov	r0, #20
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <chdir>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00009 	mov	r0, #9
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <dup>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a0000a 	mov	r0, #10
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <getpid>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a0000b 	mov	r0, #11
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <sbrk>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a0000c 	mov	r0, #12
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <sleep>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a0000d 	mov	r0, #13
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <uptime>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a0000e 	mov	r0, #14
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <disproc>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a00016 	mov	r0, #22
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <srand>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a00017 	mov	r0, #23
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <setticket>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a00018 	mov	r0, #24
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <getpinfo>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a00019 	mov	r0, #25
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <printPages>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0001a 	mov	r0, #26
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <kpt>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a0001b 	mov	r0, #27
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <thread_create>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a0001c 	mov	r0, #28
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <thread_exit>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a0001d 	mov	r0, #29
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <thread_join>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a0001e 	mov	r0, #30
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <waitpid>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a0001f 	mov	r0, #31
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <barrier_init>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a00020 	mov	r0, #32
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <barrier_check>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a00021 	mov	r0, #33	@ 0x21
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <sleepChan>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a00022 	mov	r0, #34	@ 0x22
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <getChannel>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a00023 	mov	r0, #35	@ 0x23
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <sigChan>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a00024 	mov	r0, #36	@ 0x24
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <sigOneChan>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00025 	mov	r0, #37	@ 0x25
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <putc>:
     ee4:	e92d4800 	push	{fp, lr}
     ee8:	e28db004 	add	fp, sp, #4
     eec:	e24dd008 	sub	sp, sp, #8
     ef0:	e50b0008 	str	r0, [fp, #-8]
     ef4:	e1a03001 	mov	r3, r1
     ef8:	e54b3009 	strb	r3, [fp, #-9]
     efc:	e24b3009 	sub	r3, fp, #9
     f00:	e3a02001 	mov	r2, #1
     f04:	e1a01003 	mov	r1, r3
     f08:	e51b0008 	ldr	r0, [fp, #-8]
     f0c:	ebfffed4 	bl	a64 <write>
     f10:	e1a00000 	nop			@ (mov r0, r0)
     f14:	e24bd004 	sub	sp, fp, #4
     f18:	e8bd8800 	pop	{fp, pc}

00000f1c <printint>:
     f1c:	e92d4800 	push	{fp, lr}
     f20:	e28db004 	add	fp, sp, #4
     f24:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f28:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f2c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f30:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f34:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f38:	e3a03000 	mov	r3, #0
     f3c:	e50b300c 	str	r3, [fp, #-12]
     f40:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     f44:	e3530000 	cmp	r3, #0
     f48:	0a000008 	beq	f70 <printint+0x54>
     f4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f50:	e3530000 	cmp	r3, #0
     f54:	aa000005 	bge	f70 <printint+0x54>
     f58:	e3a03001 	mov	r3, #1
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f64:	e2633000 	rsb	r3, r3, #0
     f68:	e50b3010 	str	r3, [fp, #-16]
     f6c:	ea000001 	b	f78 <printint+0x5c>
     f70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     f74:	e50b3010 	str	r3, [fp, #-16]
     f78:	e3a03000 	mov	r3, #0
     f7c:	e50b3008 	str	r3, [fp, #-8]
     f80:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     f84:	e51b3010 	ldr	r3, [fp, #-16]
     f88:	e1a01002 	mov	r1, r2
     f8c:	e1a00003 	mov	r0, r3
     f90:	eb0001d5 	bl	16ec <__aeabi_uidivmod>
     f94:	e1a03001 	mov	r3, r1
     f98:	e1a01003 	mov	r1, r3
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e2832001 	add	r2, r3, #1
     fa4:	e50b2008 	str	r2, [fp, #-8]
     fa8:	e59f20a0 	ldr	r2, [pc, #160]	@ 1050 <printint+0x134>
     fac:	e7d22001 	ldrb	r2, [r2, r1]
     fb0:	e2433004 	sub	r3, r3, #4
     fb4:	e083300b 	add	r3, r3, fp
     fb8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     fbc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     fc0:	e1a01003 	mov	r1, r3
     fc4:	e51b0010 	ldr	r0, [fp, #-16]
     fc8:	eb00018a 	bl	15f8 <__udivsi3>
     fcc:	e1a03000 	mov	r3, r0
     fd0:	e50b3010 	str	r3, [fp, #-16]
     fd4:	e51b3010 	ldr	r3, [fp, #-16]
     fd8:	e3530000 	cmp	r3, #0
     fdc:	1affffe7 	bne	f80 <printint+0x64>
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e3530000 	cmp	r3, #0
     fe8:	0a00000e 	beq	1028 <printint+0x10c>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e2832001 	add	r2, r3, #1
     ff4:	e50b2008 	str	r2, [fp, #-8]
     ff8:	e2433004 	sub	r3, r3, #4
     ffc:	e083300b 	add	r3, r3, fp
    1000:	e3a0202d 	mov	r2, #45	@ 0x2d
    1004:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1008:	ea000006 	b	1028 <printint+0x10c>
    100c:	e24b2020 	sub	r2, fp, #32
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e0823003 	add	r3, r2, r3
    1018:	e5d33000 	ldrb	r3, [r3]
    101c:	e1a01003 	mov	r1, r3
    1020:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1024:	ebffffae 	bl	ee4 <putc>
    1028:	e51b3008 	ldr	r3, [fp, #-8]
    102c:	e2433001 	sub	r3, r3, #1
    1030:	e50b3008 	str	r3, [fp, #-8]
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e3530000 	cmp	r3, #0
    103c:	aafffff2 	bge	100c <printint+0xf0>
    1040:	e1a00000 	nop			@ (mov r0, r0)
    1044:	e1a00000 	nop			@ (mov r0, r0)
    1048:	e24bd004 	sub	sp, fp, #4
    104c:	e8bd8800 	pop	{fp, pc}
    1050:	000018c4 	.word	0x000018c4

00001054 <printf>:
    1054:	e92d000e 	push	{r1, r2, r3}
    1058:	e92d4800 	push	{fp, lr}
    105c:	e28db004 	add	fp, sp, #4
    1060:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1064:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1068:	e3a03000 	mov	r3, #0
    106c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1070:	e28b3008 	add	r3, fp, #8
    1074:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1078:	e3a03000 	mov	r3, #0
    107c:	e50b3010 	str	r3, [fp, #-16]
    1080:	ea000074 	b	1258 <printf+0x204>
    1084:	e59b2004 	ldr	r2, [fp, #4]
    1088:	e51b3010 	ldr	r3, [fp, #-16]
    108c:	e0823003 	add	r3, r2, r3
    1090:	e5d33000 	ldrb	r3, [r3]
    1094:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1098:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    109c:	e3530000 	cmp	r3, #0
    10a0:	1a00000b 	bne	10d4 <printf+0x80>
    10a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10a8:	e3530025 	cmp	r3, #37	@ 0x25
    10ac:	1a000002 	bne	10bc <printf+0x68>
    10b0:	e3a03025 	mov	r3, #37	@ 0x25
    10b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10b8:	ea000063 	b	124c <printf+0x1f8>
    10bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10c0:	e6ef3073 	uxtb	r3, r3
    10c4:	e1a01003 	mov	r1, r3
    10c8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    10cc:	ebffff84 	bl	ee4 <putc>
    10d0:	ea00005d 	b	124c <printf+0x1f8>
    10d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10d8:	e3530025 	cmp	r3, #37	@ 0x25
    10dc:	1a00005a 	bne	124c <printf+0x1f8>
    10e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    10e4:	e3530064 	cmp	r3, #100	@ 0x64
    10e8:	1a00000a 	bne	1118 <printf+0xc4>
    10ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10f0:	e5933000 	ldr	r3, [r3]
    10f4:	e1a01003 	mov	r1, r3
    10f8:	e3a03001 	mov	r3, #1
    10fc:	e3a0200a 	mov	r2, #10
    1100:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1104:	ebffff84 	bl	f1c <printint>
    1108:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    110c:	e2833004 	add	r3, r3, #4
    1110:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1114:	ea00004a 	b	1244 <printf+0x1f0>
    1118:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    111c:	e3530078 	cmp	r3, #120	@ 0x78
    1120:	0a000002 	beq	1130 <printf+0xdc>
    1124:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1128:	e3530070 	cmp	r3, #112	@ 0x70
    112c:	1a00000a 	bne	115c <printf+0x108>
    1130:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1134:	e5933000 	ldr	r3, [r3]
    1138:	e1a01003 	mov	r1, r3
    113c:	e3a03000 	mov	r3, #0
    1140:	e3a02010 	mov	r2, #16
    1144:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1148:	ebffff73 	bl	f1c <printint>
    114c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1150:	e2833004 	add	r3, r3, #4
    1154:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1158:	ea000039 	b	1244 <printf+0x1f0>
    115c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1160:	e3530073 	cmp	r3, #115	@ 0x73
    1164:	1a000018 	bne	11cc <printf+0x178>
    1168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    116c:	e5933000 	ldr	r3, [r3]
    1170:	e50b300c 	str	r3, [fp, #-12]
    1174:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1178:	e2833004 	add	r3, r3, #4
    117c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1180:	e51b300c 	ldr	r3, [fp, #-12]
    1184:	e3530000 	cmp	r3, #0
    1188:	1a00000a 	bne	11b8 <printf+0x164>
    118c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1288 <printf+0x234>
    1190:	e50b300c 	str	r3, [fp, #-12]
    1194:	ea000007 	b	11b8 <printf+0x164>
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e5d33000 	ldrb	r3, [r3]
    11a0:	e1a01003 	mov	r1, r3
    11a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a8:	ebffff4d 	bl	ee4 <putc>
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e2833001 	add	r3, r3, #1
    11b4:	e50b300c 	str	r3, [fp, #-12]
    11b8:	e51b300c 	ldr	r3, [fp, #-12]
    11bc:	e5d33000 	ldrb	r3, [r3]
    11c0:	e3530000 	cmp	r3, #0
    11c4:	1afffff3 	bne	1198 <printf+0x144>
    11c8:	ea00001d 	b	1244 <printf+0x1f0>
    11cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d0:	e3530063 	cmp	r3, #99	@ 0x63
    11d4:	1a000009 	bne	1200 <printf+0x1ac>
    11d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11dc:	e5933000 	ldr	r3, [r3]
    11e0:	e6ef3073 	uxtb	r3, r3
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11ec:	ebffff3c 	bl	ee4 <putc>
    11f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11f4:	e2833004 	add	r3, r3, #4
    11f8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11fc:	ea000010 	b	1244 <printf+0x1f0>
    1200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1204:	e3530025 	cmp	r3, #37	@ 0x25
    1208:	1a000005 	bne	1224 <printf+0x1d0>
    120c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1210:	e6ef3073 	uxtb	r3, r3
    1214:	e1a01003 	mov	r1, r3
    1218:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    121c:	ebffff30 	bl	ee4 <putc>
    1220:	ea000007 	b	1244 <printf+0x1f0>
    1224:	e3a01025 	mov	r1, #37	@ 0x25
    1228:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    122c:	ebffff2c 	bl	ee4 <putc>
    1230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1234:	e6ef3073 	uxtb	r3, r3
    1238:	e1a01003 	mov	r1, r3
    123c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1240:	ebffff27 	bl	ee4 <putc>
    1244:	e3a03000 	mov	r3, #0
    1248:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    124c:	e51b3010 	ldr	r3, [fp, #-16]
    1250:	e2833001 	add	r3, r3, #1
    1254:	e50b3010 	str	r3, [fp, #-16]
    1258:	e59b2004 	ldr	r2, [fp, #4]
    125c:	e51b3010 	ldr	r3, [fp, #-16]
    1260:	e0823003 	add	r3, r2, r3
    1264:	e5d33000 	ldrb	r3, [r3]
    1268:	e3530000 	cmp	r3, #0
    126c:	1affff84 	bne	1084 <printf+0x30>
    1270:	e1a00000 	nop			@ (mov r0, r0)
    1274:	e1a00000 	nop			@ (mov r0, r0)
    1278:	e24bd004 	sub	sp, fp, #4
    127c:	e8bd4800 	pop	{fp, lr}
    1280:	e28dd00c 	add	sp, sp, #12
    1284:	e12fff1e 	bx	lr
    1288:	000018bc 	.word	0x000018bc

0000128c <free>:
    128c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1290:	e28db000 	add	fp, sp, #0
    1294:	e24dd014 	sub	sp, sp, #20
    1298:	e50b0010 	str	r0, [fp, #-16]
    129c:	e51b3010 	ldr	r3, [fp, #-16]
    12a0:	e2433008 	sub	r3, r3, #8
    12a4:	e50b300c 	str	r3, [fp, #-12]
    12a8:	e59f3154 	ldr	r3, [pc, #340]	@ 1404 <free+0x178>
    12ac:	e5933000 	ldr	r3, [r3]
    12b0:	e50b3008 	str	r3, [fp, #-8]
    12b4:	ea000010 	b	12fc <free+0x70>
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5933000 	ldr	r3, [r3]
    12c0:	e51b2008 	ldr	r2, [fp, #-8]
    12c4:	e1520003 	cmp	r2, r3
    12c8:	3a000008 	bcc	12f0 <free+0x64>
    12cc:	e51b200c 	ldr	r2, [fp, #-12]
    12d0:	e51b3008 	ldr	r3, [fp, #-8]
    12d4:	e1520003 	cmp	r2, r3
    12d8:	8a000010 	bhi	1320 <free+0x94>
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e51b200c 	ldr	r2, [fp, #-12]
    12e8:	e1520003 	cmp	r2, r3
    12ec:	3a00000b 	bcc	1320 <free+0x94>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	e5933000 	ldr	r3, [r3]
    12f8:	e50b3008 	str	r3, [fp, #-8]
    12fc:	e51b200c 	ldr	r2, [fp, #-12]
    1300:	e51b3008 	ldr	r3, [fp, #-8]
    1304:	e1520003 	cmp	r2, r3
    1308:	9affffea 	bls	12b8 <free+0x2c>
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933000 	ldr	r3, [r3]
    1314:	e51b200c 	ldr	r2, [fp, #-12]
    1318:	e1520003 	cmp	r2, r3
    131c:	2affffe5 	bcs	12b8 <free+0x2c>
    1320:	e51b300c 	ldr	r3, [fp, #-12]
    1324:	e5933004 	ldr	r3, [r3, #4]
    1328:	e1a03183 	lsl	r3, r3, #3
    132c:	e51b200c 	ldr	r2, [fp, #-12]
    1330:	e0822003 	add	r2, r2, r3
    1334:	e51b3008 	ldr	r3, [fp, #-8]
    1338:	e5933000 	ldr	r3, [r3]
    133c:	e1520003 	cmp	r2, r3
    1340:	1a00000d 	bne	137c <free+0xf0>
    1344:	e51b300c 	ldr	r3, [fp, #-12]
    1348:	e5932004 	ldr	r2, [r3, #4]
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5933000 	ldr	r3, [r3]
    1354:	e5933004 	ldr	r3, [r3, #4]
    1358:	e0822003 	add	r2, r2, r3
    135c:	e51b300c 	ldr	r3, [fp, #-12]
    1360:	e5832004 	str	r2, [r3, #4]
    1364:	e51b3008 	ldr	r3, [fp, #-8]
    1368:	e5933000 	ldr	r3, [r3]
    136c:	e5932000 	ldr	r2, [r3]
    1370:	e51b300c 	ldr	r3, [fp, #-12]
    1374:	e5832000 	str	r2, [r3]
    1378:	ea000003 	b	138c <free+0x100>
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5932000 	ldr	r2, [r3]
    1384:	e51b300c 	ldr	r3, [fp, #-12]
    1388:	e5832000 	str	r2, [r3]
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e5933004 	ldr	r3, [r3, #4]
    1394:	e1a03183 	lsl	r3, r3, #3
    1398:	e51b2008 	ldr	r2, [fp, #-8]
    139c:	e0823003 	add	r3, r2, r3
    13a0:	e51b200c 	ldr	r2, [fp, #-12]
    13a4:	e1520003 	cmp	r2, r3
    13a8:	1a00000b 	bne	13dc <free+0x150>
    13ac:	e51b3008 	ldr	r3, [fp, #-8]
    13b0:	e5932004 	ldr	r2, [r3, #4]
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5933004 	ldr	r3, [r3, #4]
    13bc:	e0822003 	add	r2, r2, r3
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5832004 	str	r2, [r3, #4]
    13c8:	e51b300c 	ldr	r3, [fp, #-12]
    13cc:	e5932000 	ldr	r2, [r3]
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5832000 	str	r2, [r3]
    13d8:	ea000002 	b	13e8 <free+0x15c>
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e51b200c 	ldr	r2, [fp, #-12]
    13e4:	e5832000 	str	r2, [r3]
    13e8:	e59f2014 	ldr	r2, [pc, #20]	@ 1404 <free+0x178>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e5823000 	str	r3, [r2]
    13f4:	e1a00000 	nop			@ (mov r0, r0)
    13f8:	e28bd000 	add	sp, fp, #0
    13fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1400:	e12fff1e 	bx	lr
    1404:	000018e0 	.word	0x000018e0

00001408 <morecore>:
    1408:	e92d4800 	push	{fp, lr}
    140c:	e28db004 	add	fp, sp, #4
    1410:	e24dd010 	sub	sp, sp, #16
    1414:	e50b0010 	str	r0, [fp, #-16]
    1418:	e51b3010 	ldr	r3, [fp, #-16]
    141c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1420:	2a000001 	bcs	142c <morecore+0x24>
    1424:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1428:	e50b3010 	str	r3, [fp, #-16]
    142c:	e51b3010 	ldr	r3, [fp, #-16]
    1430:	e1a03183 	lsl	r3, r3, #3
    1434:	e1a00003 	mov	r0, r3
    1438:	ebfffdfe 	bl	c38 <sbrk>
    143c:	e50b0008 	str	r0, [fp, #-8]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e3730001 	cmn	r3, #1
    1448:	1a000001 	bne	1454 <morecore+0x4c>
    144c:	e3a03000 	mov	r3, #0
    1450:	ea00000a 	b	1480 <morecore+0x78>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e50b300c 	str	r3, [fp, #-12]
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e51b2010 	ldr	r2, [fp, #-16]
    1464:	e5832004 	str	r2, [r3, #4]
    1468:	e51b300c 	ldr	r3, [fp, #-12]
    146c:	e2833008 	add	r3, r3, #8
    1470:	e1a00003 	mov	r0, r3
    1474:	ebffff84 	bl	128c <free>
    1478:	e59f300c 	ldr	r3, [pc, #12]	@ 148c <morecore+0x84>
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e1a00003 	mov	r0, r3
    1484:	e24bd004 	sub	sp, fp, #4
    1488:	e8bd8800 	pop	{fp, pc}
    148c:	000018e0 	.word	0x000018e0

00001490 <malloc>:
    1490:	e92d4800 	push	{fp, lr}
    1494:	e28db004 	add	fp, sp, #4
    1498:	e24dd018 	sub	sp, sp, #24
    149c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a4:	e2833007 	add	r3, r3, #7
    14a8:	e1a031a3 	lsr	r3, r3, #3
    14ac:	e2833001 	add	r3, r3, #1
    14b0:	e50b3010 	str	r3, [fp, #-16]
    14b4:	e59f3134 	ldr	r3, [pc, #308]	@ 15f0 <malloc+0x160>
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e50b300c 	str	r3, [fp, #-12]
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e3530000 	cmp	r3, #0
    14c8:	1a00000b 	bne	14fc <malloc+0x6c>
    14cc:	e59f3120 	ldr	r3, [pc, #288]	@ 15f4 <malloc+0x164>
    14d0:	e50b300c 	str	r3, [fp, #-12]
    14d4:	e59f2114 	ldr	r2, [pc, #276]	@ 15f0 <malloc+0x160>
    14d8:	e51b300c 	ldr	r3, [fp, #-12]
    14dc:	e5823000 	str	r3, [r2]
    14e0:	e59f3108 	ldr	r3, [pc, #264]	@ 15f0 <malloc+0x160>
    14e4:	e5933000 	ldr	r3, [r3]
    14e8:	e59f2104 	ldr	r2, [pc, #260]	@ 15f4 <malloc+0x164>
    14ec:	e5823000 	str	r3, [r2]
    14f0:	e59f30fc 	ldr	r3, [pc, #252]	@ 15f4 <malloc+0x164>
    14f4:	e3a02000 	mov	r2, #0
    14f8:	e5832004 	str	r2, [r3, #4]
    14fc:	e51b300c 	ldr	r3, [fp, #-12]
    1500:	e5933000 	ldr	r3, [r3]
    1504:	e50b3008 	str	r3, [fp, #-8]
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5933004 	ldr	r3, [r3, #4]
    1510:	e51b2010 	ldr	r2, [fp, #-16]
    1514:	e1520003 	cmp	r2, r3
    1518:	8a00001e 	bhi	1598 <malloc+0x108>
    151c:	e51b3008 	ldr	r3, [fp, #-8]
    1520:	e5933004 	ldr	r3, [r3, #4]
    1524:	e51b2010 	ldr	r2, [fp, #-16]
    1528:	e1520003 	cmp	r2, r3
    152c:	1a000004 	bne	1544 <malloc+0xb4>
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e5932000 	ldr	r2, [r3]
    1538:	e51b300c 	ldr	r3, [fp, #-12]
    153c:	e5832000 	str	r2, [r3]
    1540:	ea00000e 	b	1580 <malloc+0xf0>
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e5932004 	ldr	r2, [r3, #4]
    154c:	e51b3010 	ldr	r3, [fp, #-16]
    1550:	e0422003 	sub	r2, r2, r3
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e5832004 	str	r2, [r3, #4]
    155c:	e51b3008 	ldr	r3, [fp, #-8]
    1560:	e5933004 	ldr	r3, [r3, #4]
    1564:	e1a03183 	lsl	r3, r3, #3
    1568:	e51b2008 	ldr	r2, [fp, #-8]
    156c:	e0823003 	add	r3, r2, r3
    1570:	e50b3008 	str	r3, [fp, #-8]
    1574:	e51b3008 	ldr	r3, [fp, #-8]
    1578:	e51b2010 	ldr	r2, [fp, #-16]
    157c:	e5832004 	str	r2, [r3, #4]
    1580:	e59f2068 	ldr	r2, [pc, #104]	@ 15f0 <malloc+0x160>
    1584:	e51b300c 	ldr	r3, [fp, #-12]
    1588:	e5823000 	str	r3, [r2]
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e2833008 	add	r3, r3, #8
    1594:	ea000012 	b	15e4 <malloc+0x154>
    1598:	e59f3050 	ldr	r3, [pc, #80]	@ 15f0 <malloc+0x160>
    159c:	e5933000 	ldr	r3, [r3]
    15a0:	e51b2008 	ldr	r2, [fp, #-8]
    15a4:	e1520003 	cmp	r2, r3
    15a8:	1a000007 	bne	15cc <malloc+0x13c>
    15ac:	e51b0010 	ldr	r0, [fp, #-16]
    15b0:	ebffff94 	bl	1408 <morecore>
    15b4:	e50b0008 	str	r0, [fp, #-8]
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e3530000 	cmp	r3, #0
    15c0:	1a000001 	bne	15cc <malloc+0x13c>
    15c4:	e3a03000 	mov	r3, #0
    15c8:	ea000005 	b	15e4 <malloc+0x154>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e50b300c 	str	r3, [fp, #-12]
    15d4:	e51b3008 	ldr	r3, [fp, #-8]
    15d8:	e5933000 	ldr	r3, [r3]
    15dc:	e50b3008 	str	r3, [fp, #-8]
    15e0:	eaffffc8 	b	1508 <malloc+0x78>
    15e4:	e1a00003 	mov	r0, r3
    15e8:	e24bd004 	sub	sp, fp, #4
    15ec:	e8bd8800 	pop	{fp, pc}
    15f0:	000018e0 	.word	0x000018e0
    15f4:	000018d8 	.word	0x000018d8

000015f8 <__udivsi3>:
    15f8:	e2512001 	subs	r2, r1, #1
    15fc:	012fff1e 	bxeq	lr
    1600:	3a000036 	bcc	16e0 <__udivsi3+0xe8>
    1604:	e1500001 	cmp	r0, r1
    1608:	9a000022 	bls	1698 <__udivsi3+0xa0>
    160c:	e1110002 	tst	r1, r2
    1610:	0a000023 	beq	16a4 <__udivsi3+0xac>
    1614:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1618:	01a01181 	lsleq	r1, r1, #3
    161c:	03a03008 	moveq	r3, #8
    1620:	13a03001 	movne	r3, #1
    1624:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1628:	31510000 	cmpcc	r1, r0
    162c:	31a01201 	lslcc	r1, r1, #4
    1630:	31a03203 	lslcc	r3, r3, #4
    1634:	3afffffa 	bcc	1624 <__udivsi3+0x2c>
    1638:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    163c:	31510000 	cmpcc	r1, r0
    1640:	31a01081 	lslcc	r1, r1, #1
    1644:	31a03083 	lslcc	r3, r3, #1
    1648:	3afffffa 	bcc	1638 <__udivsi3+0x40>
    164c:	e3a02000 	mov	r2, #0
    1650:	e1500001 	cmp	r0, r1
    1654:	20400001 	subcs	r0, r0, r1
    1658:	21822003 	orrcs	r2, r2, r3
    165c:	e15000a1 	cmp	r0, r1, lsr #1
    1660:	204000a1 	subcs	r0, r0, r1, lsr #1
    1664:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1668:	e1500121 	cmp	r0, r1, lsr #2
    166c:	20400121 	subcs	r0, r0, r1, lsr #2
    1670:	21822123 	orrcs	r2, r2, r3, lsr #2
    1674:	e15001a1 	cmp	r0, r1, lsr #3
    1678:	204001a1 	subcs	r0, r0, r1, lsr #3
    167c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1680:	e3500000 	cmp	r0, #0
    1684:	11b03223 	lsrsne	r3, r3, #4
    1688:	11a01221 	lsrne	r1, r1, #4
    168c:	1affffef 	bne	1650 <__udivsi3+0x58>
    1690:	e1a00002 	mov	r0, r2
    1694:	e12fff1e 	bx	lr
    1698:	03a00001 	moveq	r0, #1
    169c:	13a00000 	movne	r0, #0
    16a0:	e12fff1e 	bx	lr
    16a4:	e3510801 	cmp	r1, #65536	@ 0x10000
    16a8:	21a01821 	lsrcs	r1, r1, #16
    16ac:	23a02010 	movcs	r2, #16
    16b0:	33a02000 	movcc	r2, #0
    16b4:	e3510c01 	cmp	r1, #256	@ 0x100
    16b8:	21a01421 	lsrcs	r1, r1, #8
    16bc:	22822008 	addcs	r2, r2, #8
    16c0:	e3510010 	cmp	r1, #16
    16c4:	21a01221 	lsrcs	r1, r1, #4
    16c8:	22822004 	addcs	r2, r2, #4
    16cc:	e3510004 	cmp	r1, #4
    16d0:	82822003 	addhi	r2, r2, #3
    16d4:	908220a1 	addls	r2, r2, r1, lsr #1
    16d8:	e1a00230 	lsr	r0, r0, r2
    16dc:	e12fff1e 	bx	lr
    16e0:	e3500000 	cmp	r0, #0
    16e4:	13e00000 	mvnne	r0, #0
    16e8:	ea000007 	b	170c <__aeabi_idiv0>

000016ec <__aeabi_uidivmod>:
    16ec:	e3510000 	cmp	r1, #0
    16f0:	0afffffa 	beq	16e0 <__udivsi3+0xe8>
    16f4:	e92d4003 	push	{r0, r1, lr}
    16f8:	ebffffbe 	bl	15f8 <__udivsi3>
    16fc:	e8bd4006 	pop	{r1, r2, lr}
    1700:	e0030092 	mul	r3, r2, r0
    1704:	e0411003 	sub	r1, r1, r3
    1708:	e12fff1e 	bx	lr

0000170c <__aeabi_idiv0>:
    170c:	e12fff1e 	bx	lr
