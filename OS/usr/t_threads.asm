
_t_threads:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e5933000 	ldr	r3, [r3]
      18:	e1a02003 	mov	r2, r3
      1c:	e59f1034 	ldr	r1, [pc, #52]	@ 58 <thread1+0x58>
      20:	e3a00001 	mov	r0, #1
      24:	eb000421 	bl	10b0 <printf>
      28:	e51b3010 	ldr	r3, [fp, #-16]
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e5933000 	ldr	r3, [r3]
      38:	e2832001 	add	r2, r3, #1
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e5832000 	str	r2, [r3]
      44:	eb00036c 	bl	dfc <thread_exit>
      48:	e3a03000 	mov	r3, #0
      4c:	e1a00003 	mov	r0, r3
      50:	e24bd004 	sub	sp, fp, #4
      54:	e8bd8800 	pop	{fp, pc}
      58:	0000176c 	.word	0x0000176c

0000005c <thread2>:
      5c:	e92d4800 	push	{fp, lr}
      60:	e28db004 	add	fp, sp, #4
      64:	e24dd008 	sub	sp, sp, #8
      68:	e50b0008 	str	r0, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e5933000 	ldr	r3, [r3]
      74:	e1a02003 	mov	r2, r3
      78:	e59f1018 	ldr	r1, [pc, #24]	@ 98 <thread2+0x3c>
      7c:	e3a00001 	mov	r0, #1
      80:	eb00040a 	bl	10b0 <printf>
      84:	eb00035c 	bl	dfc <thread_exit>
      88:	e3a03000 	mov	r3, #0
      8c:	e1a00003 	mov	r0, r3
      90:	e24bd004 	sub	sp, fp, #4
      94:	e8bd8800 	pop	{fp, pc}
      98:	00001784 	.word	0x00001784

0000009c <main>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd010 	sub	sp, sp, #16
      a8:	e59f1064 	ldr	r1, [pc, #100]	@ 114 <main+0x78>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb0003fe 	bl	10b0 <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3008 	str	r3, [fp, #-8]
      bc:	e24b2008 	sub	r2, fp, #8
      c0:	e24b300c 	sub	r3, fp, #12
      c4:	e59f104c 	ldr	r1, [pc, #76]	@ 118 <main+0x7c>
      c8:	e1a00003 	mov	r0, r3
      cc:	eb000341 	bl	dd8 <thread_create>
      d0:	e24b2008 	sub	r2, fp, #8
      d4:	e24b3010 	sub	r3, fp, #16
      d8:	e59f103c 	ldr	r1, [pc, #60]	@ 11c <main+0x80>
      dc:	e1a00003 	mov	r0, r3
      e0:	eb00033c 	bl	dd8 <thread_create>
      e4:	e51b3010 	ldr	r3, [fp, #-16]
      e8:	e1a00003 	mov	r0, r3
      ec:	eb00034b 	bl	e20 <thread_join>
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e1a00003 	mov	r0, r3
      f8:	eb000348 	bl	e20 <thread_join>
      fc:	e51b3008 	ldr	r3, [fp, #-8]
     100:	e1a02003 	mov	r2, r3
     104:	e59f1014 	ldr	r1, [pc, #20]	@ 120 <main+0x84>
     108:	e3a00001 	mov	r0, #1
     10c:	eb0003e7 	bl	10b0 <printf>
     110:	eb000246 	bl	a30 <exit>
     114:	0000179c 	.word	0x0000179c
     118:	00000000 	.word	0x00000000
     11c:	0000005c 	.word	0x0000005c
     120:	000017ac 	.word	0x000017ac

00000124 <xchg>:
     124:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     128:	e28db000 	add	fp, sp, #0
     12c:	e24dd014 	sub	sp, sp, #20
     130:	e50b0010 	str	r0, [fp, #-16]
     134:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     138:	e51b1010 	ldr	r1, [fp, #-16]
     13c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     140:	e1912f9f 	ldrex	r2, [r1]
     144:	e1813f90 	strex	r3, r0, [r1]
     148:	e50b2008 	str	r2, [fp, #-8]
     14c:	e50b300c 	str	r3, [fp, #-12]
     150:	e51b300c 	ldr	r3, [fp, #-12]
     154:	e3530000 	cmp	r3, #0
     158:	1afffff6 	bne	138 <xchg+0x14>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strcpy>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     184:	e51b3010 	ldr	r3, [fp, #-16]
     188:	e50b3008 	str	r3, [fp, #-8]
     18c:	e1a00000 	nop			@ (mov r0, r0)
     190:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     194:	e2823001 	add	r3, r2, #1
     198:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     19c:	e51b3010 	ldr	r3, [fp, #-16]
     1a0:	e2831001 	add	r1, r3, #1
     1a4:	e50b1010 	str	r1, [fp, #-16]
     1a8:	e5d22000 	ldrb	r2, [r2]
     1ac:	e5c32000 	strb	r2, [r3]
     1b0:	e5d33000 	ldrb	r3, [r3]
     1b4:	e3530000 	cmp	r3, #0
     1b8:	1afffff4 	bne	190 <strcpy+0x20>
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e1a00003 	mov	r0, r3
     1c4:	e28bd000 	add	sp, fp, #0
     1c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1cc:	e12fff1e 	bx	lr

000001d0 <strcmp>:
     1d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1d4:	e28db000 	add	fp, sp, #0
     1d8:	e24dd00c 	sub	sp, sp, #12
     1dc:	e50b0008 	str	r0, [fp, #-8]
     1e0:	e50b100c 	str	r1, [fp, #-12]
     1e4:	ea000005 	b	200 <strcmp+0x30>
     1e8:	e51b3008 	ldr	r3, [fp, #-8]
     1ec:	e2833001 	add	r3, r3, #1
     1f0:	e50b3008 	str	r3, [fp, #-8]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b300c 	str	r3, [fp, #-12]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e5d33000 	ldrb	r3, [r3]
     208:	e3530000 	cmp	r3, #0
     20c:	0a000005 	beq	228 <strcmp+0x58>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e5d32000 	ldrb	r2, [r3]
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e5d33000 	ldrb	r3, [r3]
     220:	e1520003 	cmp	r2, r3
     224:	0affffef 	beq	1e8 <strcmp+0x18>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e5d33000 	ldrb	r3, [r3]
     230:	e1a02003 	mov	r2, r3
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e0423003 	sub	r3, r2, r3
     240:	e1a00003 	mov	r0, r3
     244:	e28bd000 	add	sp, fp, #0
     248:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     24c:	e12fff1e 	bx	lr

00000250 <strlen>:
     250:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     254:	e28db000 	add	fp, sp, #0
     258:	e24dd014 	sub	sp, sp, #20
     25c:	e50b0010 	str	r0, [fp, #-16]
     260:	e3a03000 	mov	r3, #0
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	ea000002 	b	278 <strlen+0x28>
     26c:	e51b3008 	ldr	r3, [fp, #-8]
     270:	e2833001 	add	r3, r3, #1
     274:	e50b3008 	str	r3, [fp, #-8]
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e51b2010 	ldr	r2, [fp, #-16]
     280:	e0823003 	add	r3, r2, r3
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff6 	bne	26c <strlen+0x1c>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <memset>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2b4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2b8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2c8:	e54b300d 	strb	r3, [fp, #-13]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e1a03002 	mov	r3, r2
     2d4:	e1a03403 	lsl	r3, r3, #8
     2d8:	e0833002 	add	r3, r3, r2
     2dc:	e1a03803 	lsl	r3, r3, #16
     2e0:	e1a02003 	mov	r2, r3
     2e4:	e55b300d 	ldrb	r3, [fp, #-13]
     2e8:	e1a03403 	lsl	r3, r3, #8
     2ec:	e1822003 	orr	r2, r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1823003 	orr	r3, r2, r3
     2f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2fc:	ea000008 	b	324 <memset+0x80>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e55b200d 	ldrb	r2, [fp, #-13]
     308:	e5c32000 	strb	r2, [r3]
     30c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     310:	e2433001 	sub	r3, r3, #1
     314:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e2833001 	add	r3, r3, #1
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     328:	e3530000 	cmp	r3, #0
     32c:	0a000003 	beq	340 <memset+0x9c>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e2033003 	and	r3, r3, #3
     338:	e3530000 	cmp	r3, #0
     33c:	1affffef 	bne	300 <memset+0x5c>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e50b300c 	str	r3, [fp, #-12]
     348:	ea000008 	b	370 <memset+0xcc>
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     354:	e5832000 	str	r2, [r3]
     358:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     35c:	e2433004 	sub	r3, r3, #4
     360:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     364:	e51b300c 	ldr	r3, [fp, #-12]
     368:	e2833004 	add	r3, r3, #4
     36c:	e50b300c 	str	r3, [fp, #-12]
     370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     374:	e3530003 	cmp	r3, #3
     378:	8afffff3 	bhi	34c <memset+0xa8>
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	ea000008 	b	3ac <memset+0x108>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e55b200d 	ldrb	r2, [fp, #-13]
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     398:	e2433001 	sub	r3, r3, #1
     39c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e3530000 	cmp	r3, #0
     3b4:	1afffff3 	bne	388 <memset+0xe4>
     3b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3bc:	e1a00003 	mov	r0, r3
     3c0:	e28bd000 	add	sp, fp, #0
     3c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c8:	e12fff1e 	bx	lr

000003cc <strchr>:
     3cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d0:	e28db000 	add	fp, sp, #0
     3d4:	e24dd00c 	sub	sp, sp, #12
     3d8:	e50b0008 	str	r0, [fp, #-8]
     3dc:	e1a03001 	mov	r3, r1
     3e0:	e54b3009 	strb	r3, [fp, #-9]
     3e4:	ea000009 	b	410 <strchr+0x44>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e5d33000 	ldrb	r3, [r3]
     3f0:	e55b2009 	ldrb	r2, [fp, #-9]
     3f4:	e1520003 	cmp	r2, r3
     3f8:	1a000001 	bne	404 <strchr+0x38>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	ea000007 	b	424 <strchr+0x58>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2833001 	add	r3, r3, #1
     40c:	e50b3008 	str	r3, [fp, #-8]
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	1afffff1 	bne	3e8 <strchr+0x1c>
     420:	e3a03000 	mov	r3, #0
     424:	e1a00003 	mov	r0, r3
     428:	e28bd000 	add	sp, fp, #0
     42c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     430:	e12fff1e 	bx	lr

00000434 <gets>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd018 	sub	sp, sp, #24
     440:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     444:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     448:	e3a03000 	mov	r3, #0
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	ea000016 	b	4b0 <gets+0x7c>
     454:	e24b300d 	sub	r3, fp, #13
     458:	e3a02001 	mov	r2, #1
     45c:	e1a01003 	mov	r1, r3
     460:	e3a00000 	mov	r0, #0
     464:	eb00018c 	bl	a9c <read>
     468:	e50b000c 	str	r0, [fp, #-12]
     46c:	e51b300c 	ldr	r3, [fp, #-12]
     470:	e3530000 	cmp	r3, #0
     474:	da000013 	ble	4c8 <gets+0x94>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2832001 	add	r2, r3, #1
     480:	e50b2008 	str	r2, [fp, #-8]
     484:	e1a02003 	mov	r2, r3
     488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     48c:	e0833002 	add	r3, r3, r2
     490:	e55b200d 	ldrb	r2, [fp, #-13]
     494:	e5c32000 	strb	r2, [r3]
     498:	e55b300d 	ldrb	r3, [fp, #-13]
     49c:	e353000a 	cmp	r3, #10
     4a0:	0a000009 	beq	4cc <gets+0x98>
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000d 	cmp	r3, #13
     4ac:	0a000006 	beq	4cc <gets+0x98>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e2833001 	add	r3, r3, #1
     4b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4bc:	e1520003 	cmp	r2, r3
     4c0:	caffffe3 	bgt	454 <gets+0x20>
     4c4:	ea000000 	b	4cc <gets+0x98>
     4c8:	e1a00000 	nop			@ (mov r0, r0)
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4d4:	e0823003 	add	r3, r2, r3
     4d8:	e3a02000 	mov	r2, #0
     4dc:	e5c32000 	strb	r2, [r3]
     4e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e24bd004 	sub	sp, fp, #4
     4ec:	e8bd8800 	pop	{fp, pc}

000004f0 <stat>:
     4f0:	e92d4800 	push	{fp, lr}
     4f4:	e28db004 	add	fp, sp, #4
     4f8:	e24dd010 	sub	sp, sp, #16
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     504:	e3a01000 	mov	r1, #0
     508:	e51b0010 	ldr	r0, [fp, #-16]
     50c:	eb00018f 	bl	b50 <open>
     510:	e50b0008 	str	r0, [fp, #-8]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e3530000 	cmp	r3, #0
     51c:	aa000001 	bge	528 <stat+0x38>
     520:	e3e03000 	mvn	r3, #0
     524:	ea000006 	b	544 <stat+0x54>
     528:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     52c:	e51b0008 	ldr	r0, [fp, #-8]
     530:	eb0001a1 	bl	bbc <fstat>
     534:	e50b000c 	str	r0, [fp, #-12]
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb000168 	bl	ae4 <close>
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e1a00003 	mov	r0, r3
     548:	e24bd004 	sub	sp, fp, #4
     54c:	e8bd8800 	pop	{fp, pc}

00000550 <atoi>:
     550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     554:	e28db000 	add	fp, sp, #0
     558:	e24dd014 	sub	sp, sp, #20
     55c:	e50b0010 	str	r0, [fp, #-16]
     560:	e3a03000 	mov	r3, #0
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	ea00000c 	b	5a0 <atoi+0x50>
     56c:	e51b2008 	ldr	r2, [fp, #-8]
     570:	e1a03002 	mov	r3, r2
     574:	e1a03103 	lsl	r3, r3, #2
     578:	e0833002 	add	r3, r3, r2
     57c:	e1a03083 	lsl	r3, r3, #1
     580:	e1a01003 	mov	r1, r3
     584:	e51b3010 	ldr	r3, [fp, #-16]
     588:	e2832001 	add	r2, r3, #1
     58c:	e50b2010 	str	r2, [fp, #-16]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e0813003 	add	r3, r1, r3
     598:	e2433030 	sub	r3, r3, #48	@ 0x30
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	e51b3010 	ldr	r3, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e353002f 	cmp	r3, #47	@ 0x2f
     5ac:	9a000003 	bls	5c0 <atoi+0x70>
     5b0:	e51b3010 	ldr	r3, [fp, #-16]
     5b4:	e5d33000 	ldrb	r3, [r3]
     5b8:	e3530039 	cmp	r3, #57	@ 0x39
     5bc:	9affffea 	bls	56c <atoi+0x1c>
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e1a00003 	mov	r0, r3
     5c8:	e28bd000 	add	sp, fp, #0
     5cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <memmove>:
     5d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5d8:	e28db000 	add	fp, sp, #0
     5dc:	e24dd01c 	sub	sp, sp, #28
     5e0:	e50b0010 	str	r0, [fp, #-16]
     5e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5ec:	e51b3010 	ldr	r3, [fp, #-16]
     5f0:	e50b3008 	str	r3, [fp, #-8]
     5f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5f8:	e50b300c 	str	r3, [fp, #-12]
     5fc:	ea000007 	b	620 <memmove+0x4c>
     600:	e51b200c 	ldr	r2, [fp, #-12]
     604:	e2823001 	add	r3, r2, #1
     608:	e50b300c 	str	r3, [fp, #-12]
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e2831001 	add	r1, r3, #1
     614:	e50b1008 	str	r1, [fp, #-8]
     618:	e5d22000 	ldrb	r2, [r2]
     61c:	e5c32000 	strb	r2, [r3]
     620:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     624:	e2432001 	sub	r2, r3, #1
     628:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     62c:	e3530000 	cmp	r3, #0
     630:	cafffff2 	bgt	600 <memmove+0x2c>
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e1a00003 	mov	r0, r3
     63c:	e28bd000 	add	sp, fp, #0
     640:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <initiateLock>:
     648:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     64c:	e28db000 	add	fp, sp, #0
     650:	e24dd00c 	sub	sp, sp, #12
     654:	e50b0008 	str	r0, [fp, #-8]
     658:	e51b3008 	ldr	r3, [fp, #-8]
     65c:	e3a02000 	mov	r2, #0
     660:	e5832000 	str	r2, [r3]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e3a02001 	mov	r2, #1
     66c:	e5832004 	str	r2, [r3, #4]
     670:	e1a00000 	nop			@ (mov r0, r0)
     674:	e28bd000 	add	sp, fp, #0
     678:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <acquireLock>:
     680:	e92d4800 	push	{fp, lr}
     684:	e28db004 	add	fp, sp, #4
     688:	e24dd008 	sub	sp, sp, #8
     68c:	e50b0008 	str	r0, [fp, #-8]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e5933000 	ldr	r3, [r3]
     698:	e3730001 	cmn	r3, #1
     69c:	1a000002 	bne	6ac <acquireLock+0x2c>
     6a0:	e59f1034 	ldr	r1, [pc, #52]	@ 6dc <acquireLock+0x5c>
     6a4:	e3a00002 	mov	r0, #2
     6a8:	eb000280 	bl	10b0 <printf>
     6ac:	e1a00000 	nop			@ (mov r0, r0)
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e3a01001 	mov	r1, #1
     6b8:	e1a00003 	mov	r0, r3
     6bc:	ebfffe98 	bl	124 <xchg>
     6c0:	e1a03000 	mov	r3, r0
     6c4:	e3530000 	cmp	r3, #0
     6c8:	1afffff8 	bne	6b0 <acquireLock+0x30>
     6cc:	e1a00000 	nop			@ (mov r0, r0)
     6d0:	e1a00000 	nop			@ (mov r0, r0)
     6d4:	e24bd004 	sub	sp, fp, #4
     6d8:	e8bd8800 	pop	{fp, pc}
     6dc:	000017c0 	.word	0x000017c0

000006e0 <releaseLock>:
     6e0:	e92d4800 	push	{fp, lr}
     6e4:	e28db004 	add	fp, sp, #4
     6e8:	e24dd008 	sub	sp, sp, #8
     6ec:	e50b0008 	str	r0, [fp, #-8]
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e5933000 	ldr	r3, [r3]
     6f8:	e3530001 	cmp	r3, #1
     6fc:	0a000002 	beq	70c <releaseLock+0x2c>
     700:	e59f1020 	ldr	r1, [pc, #32]	@ 728 <releaseLock+0x48>
     704:	e3a00002 	mov	r0, #2
     708:	eb000268 	bl	10b0 <printf>
     70c:	e51b3008 	ldr	r3, [fp, #-8]
     710:	e3a01000 	mov	r1, #0
     714:	e1a00003 	mov	r0, r3
     718:	ebfffe81 	bl	124 <xchg>
     71c:	e1a00000 	nop			@ (mov r0, r0)
     720:	e24bd004 	sub	sp, fp, #4
     724:	e8bd8800 	pop	{fp, pc}
     728:	000017f0 	.word	0x000017f0

0000072c <initiateCondVar>:
     72c:	e92d4800 	push	{fp, lr}
     730:	e28db004 	add	fp, sp, #4
     734:	e24dd008 	sub	sp, sp, #8
     738:	e50b0008 	str	r0, [fp, #-8]
     73c:	e51b3008 	ldr	r3, [fp, #-8]
     740:	e5933004 	ldr	r3, [r3, #4]
     744:	e3530000 	cmp	r3, #0
     748:	1a000007 	bne	76c <initiateCondVar+0x40>
     74c:	eb0001e0 	bl	ed4 <getChannel>
     750:	e1a02000 	mov	r2, r0
     754:	e51b3008 	ldr	r3, [fp, #-8]
     758:	e5832000 	str	r2, [r3]
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e3a02001 	mov	r2, #1
     764:	e5832004 	str	r2, [r3, #4]
     768:	ea000000 	b	770 <initiateCondVar+0x44>
     76c:	e1a00000 	nop			@ (mov r0, r0)
     770:	e24bd004 	sub	sp, fp, #4
     774:	e8bd8800 	pop	{fp, pc}

00000778 <condWait>:
     778:	e92d4800 	push	{fp, lr}
     77c:	e28db004 	add	fp, sp, #4
     780:	e24dd008 	sub	sp, sp, #8
     784:	e50b0008 	str	r0, [fp, #-8]
     788:	e50b100c 	str	r1, [fp, #-12]
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e5933004 	ldr	r3, [r3, #4]
     794:	e3530000 	cmp	r3, #0
     798:	1a000003 	bne	7ac <condWait+0x34>
     79c:	e59f1050 	ldr	r1, [pc, #80]	@ 7f4 <condWait+0x7c>
     7a0:	e3a00002 	mov	r0, #2
     7a4:	eb000241 	bl	10b0 <printf>
     7a8:	ea00000f 	b	7ec <condWait+0x74>
     7ac:	e51b300c 	ldr	r3, [fp, #-12]
     7b0:	e5933004 	ldr	r3, [r3, #4]
     7b4:	e3530000 	cmp	r3, #0
     7b8:	1a000003 	bne	7cc <condWait+0x54>
     7bc:	e59f1034 	ldr	r1, [pc, #52]	@ 7f8 <condWait+0x80>
     7c0:	e3a00002 	mov	r0, #2
     7c4:	eb000239 	bl	10b0 <printf>
     7c8:	ea000007 	b	7ec <condWait+0x74>
     7cc:	e51b000c 	ldr	r0, [fp, #-12]
     7d0:	ebffffc2 	bl	6e0 <releaseLock>
     7d4:	e51b3008 	ldr	r3, [fp, #-8]
     7d8:	e5933000 	ldr	r3, [r3]
     7dc:	e1a00003 	mov	r0, r3
     7e0:	eb0001b2 	bl	eb0 <sleepChan>
     7e4:	e51b000c 	ldr	r0, [fp, #-12]
     7e8:	ebffffa4 	bl	680 <acquireLock>
     7ec:	e24bd004 	sub	sp, fp, #4
     7f0:	e8bd8800 	pop	{fp, pc}
     7f4:	0000182c 	.word	0x0000182c
     7f8:	00001850 	.word	0x00001850

000007fc <broadcast>:
     7fc:	e92d4800 	push	{fp, lr}
     800:	e28db004 	add	fp, sp, #4
     804:	e24dd008 	sub	sp, sp, #8
     808:	e50b0008 	str	r0, [fp, #-8]
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e5933004 	ldr	r3, [r3, #4]
     814:	e3530000 	cmp	r3, #0
     818:	1a000003 	bne	82c <broadcast+0x30>
     81c:	e59f1020 	ldr	r1, [pc, #32]	@ 844 <broadcast+0x48>
     820:	e3a00002 	mov	r0, #2
     824:	eb000221 	bl	10b0 <printf>
     828:	ea000003 	b	83c <broadcast+0x40>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e5933000 	ldr	r3, [r3]
     834:	e1a00003 	mov	r0, r3
     838:	eb0001ae 	bl	ef8 <sigChan>
     83c:	e24bd004 	sub	sp, fp, #4
     840:	e8bd8800 	pop	{fp, pc}
     844:	0000182c 	.word	0x0000182c

00000848 <signal>:
     848:	e92d4800 	push	{fp, lr}
     84c:	e28db004 	add	fp, sp, #4
     850:	e24dd008 	sub	sp, sp, #8
     854:	e50b0008 	str	r0, [fp, #-8]
     858:	e51b3008 	ldr	r3, [fp, #-8]
     85c:	e5933004 	ldr	r3, [r3, #4]
     860:	e3530000 	cmp	r3, #0
     864:	1a000003 	bne	878 <signal+0x30>
     868:	e59f1020 	ldr	r1, [pc, #32]	@ 890 <signal+0x48>
     86c:	e3a00002 	mov	r0, #2
     870:	eb00020e 	bl	10b0 <printf>
     874:	ea000003 	b	888 <signal+0x40>
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e5933000 	ldr	r3, [r3]
     880:	e1a00003 	mov	r0, r3
     884:	eb0001a4 	bl	f1c <sigOneChan>
     888:	e24bd004 	sub	sp, fp, #4
     88c:	e8bd8800 	pop	{fp, pc}
     890:	0000182c 	.word	0x0000182c

00000894 <semInit>:
     894:	e92d4800 	push	{fp, lr}
     898:	e28db004 	add	fp, sp, #4
     89c:	e24dd008 	sub	sp, sp, #8
     8a0:	e50b0008 	str	r0, [fp, #-8]
     8a4:	e50b100c 	str	r1, [fp, #-12]
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e51b200c 	ldr	r2, [fp, #-12]
     8b0:	e5832000 	str	r2, [r3]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e2833004 	add	r3, r3, #4
     8bc:	e1a00003 	mov	r0, r3
     8c0:	ebffff60 	bl	648 <initiateLock>
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e283300c 	add	r3, r3, #12
     8cc:	e1a00003 	mov	r0, r3
     8d0:	ebffff95 	bl	72c <initiateCondVar>
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e3a02001 	mov	r2, #1
     8dc:	e5832014 	str	r2, [r3, #20]
     8e0:	e1a00000 	nop			@ (mov r0, r0)
     8e4:	e24bd004 	sub	sp, fp, #4
     8e8:	e8bd8800 	pop	{fp, pc}

000008ec <semDown>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e51b3008 	ldr	r3, [fp, #-8]
     900:	e5933014 	ldr	r3, [r3, #20]
     904:	e3530000 	cmp	r3, #0
     908:	1a000003 	bne	91c <semDown+0x30>
     90c:	e59f1074 	ldr	r1, [pc, #116]	@ 988 <semDown+0x9c>
     910:	e3a00002 	mov	r0, #2
     914:	eb0001e5 	bl	10b0 <printf>
     918:	ea000018 	b	980 <semDown+0x94>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e2833004 	add	r3, r3, #4
     924:	e1a00003 	mov	r0, r3
     928:	ebffff54 	bl	680 <acquireLock>
     92c:	ea000006 	b	94c <semDown+0x60>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e283200c 	add	r2, r3, #12
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e2833004 	add	r3, r3, #4
     940:	e1a01003 	mov	r1, r3
     944:	e1a00002 	mov	r0, r2
     948:	ebffff8a 	bl	778 <condWait>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5933000 	ldr	r3, [r3]
     954:	e3530000 	cmp	r3, #0
     958:	0afffff4 	beq	930 <semDown+0x44>
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e5933000 	ldr	r3, [r3]
     964:	e2432001 	sub	r2, r3, #1
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e5832000 	str	r2, [r3]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e2833004 	add	r3, r3, #4
     978:	e1a00003 	mov	r0, r3
     97c:	ebffff57 	bl	6e0 <releaseLock>
     980:	e24bd004 	sub	sp, fp, #4
     984:	e8bd8800 	pop	{fp, pc}
     988:	00001870 	.word	0x00001870

0000098c <semUp>:
     98c:	e92d4800 	push	{fp, lr}
     990:	e28db004 	add	fp, sp, #4
     994:	e24dd008 	sub	sp, sp, #8
     998:	e50b0008 	str	r0, [fp, #-8]
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e5933014 	ldr	r3, [r3, #20]
     9a4:	e3530000 	cmp	r3, #0
     9a8:	1a000003 	bne	9bc <semUp+0x30>
     9ac:	e59f1054 	ldr	r1, [pc, #84]	@ a08 <semUp+0x7c>
     9b0:	e3a00002 	mov	r0, #2
     9b4:	eb0001bd 	bl	10b0 <printf>
     9b8:	ea000010 	b	a00 <semUp+0x74>
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e2833004 	add	r3, r3, #4
     9c4:	e1a00003 	mov	r0, r3
     9c8:	ebffff2c 	bl	680 <acquireLock>
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e5933000 	ldr	r3, [r3]
     9d4:	e2832001 	add	r2, r3, #1
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e5832000 	str	r2, [r3]
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e283300c 	add	r3, r3, #12
     9e8:	e1a00003 	mov	r0, r3
     9ec:	ebffff95 	bl	848 <signal>
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e2833004 	add	r3, r3, #4
     9f8:	e1a00003 	mov	r0, r3
     9fc:	ebffff37 	bl	6e0 <releaseLock>
     a00:	e24bd004 	sub	sp, fp, #4
     a04:	e8bd8800 	pop	{fp, pc}
     a08:	00001870 	.word	0x00001870

00000a0c <fork>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00001 	mov	r0, #1
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <exit>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00002 	mov	r0, #2
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <wait>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00003 	mov	r0, #3
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <pipe>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a00004 	mov	r0, #4
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <read>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00005 	mov	r0, #5
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <write>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00010 	mov	r0, #16
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <close>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00015 	mov	r0, #21
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <kill>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00006 	mov	r0, #6
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <exec>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00007 	mov	r0, #7
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <open>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a0000f 	mov	r0, #15
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <mknod>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00011 	mov	r0, #17
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <unlink>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00012 	mov	r0, #18
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <fstat>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00008 	mov	r0, #8
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <link>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00013 	mov	r0, #19
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <mkdir>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00014 	mov	r0, #20
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <chdir>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00009 	mov	r0, #9
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <dup>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a0000a 	mov	r0, #10
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <getpid>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a0000b 	mov	r0, #11
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <sbrk>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a0000c 	mov	r0, #12
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <sleep>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a0000d 	mov	r0, #13
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <uptime>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a0000e 	mov	r0, #14
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <disproc>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00016 	mov	r0, #22
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <srand>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00017 	mov	r0, #23
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <setticket>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00018 	mov	r0, #24
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <getpinfo>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a00019 	mov	r0, #25
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <printPages>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0001a 	mov	r0, #26
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <kpt>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a0001b 	mov	r0, #27
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <thread_create>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0001c 	mov	r0, #28
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <thread_exit>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a0001d 	mov	r0, #29
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <thread_join>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a0001e 	mov	r0, #30
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <waitpid>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a0001f 	mov	r0, #31
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <barrier_init>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00020 	mov	r0, #32
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <barrier_check>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a00021 	mov	r0, #33	@ 0x21
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <sleepChan>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a00022 	mov	r0, #34	@ 0x22
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <getChannel>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a00023 	mov	r0, #35	@ 0x23
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <sigChan>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a00024 	mov	r0, #36	@ 0x24
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <sigOneChan>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a00025 	mov	r0, #37	@ 0x25
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <putc>:
     f40:	e92d4800 	push	{fp, lr}
     f44:	e28db004 	add	fp, sp, #4
     f48:	e24dd008 	sub	sp, sp, #8
     f4c:	e50b0008 	str	r0, [fp, #-8]
     f50:	e1a03001 	mov	r3, r1
     f54:	e54b3009 	strb	r3, [fp, #-9]
     f58:	e24b3009 	sub	r3, fp, #9
     f5c:	e3a02001 	mov	r2, #1
     f60:	e1a01003 	mov	r1, r3
     f64:	e51b0008 	ldr	r0, [fp, #-8]
     f68:	ebfffed4 	bl	ac0 <write>
     f6c:	e1a00000 	nop			@ (mov r0, r0)
     f70:	e24bd004 	sub	sp, fp, #4
     f74:	e8bd8800 	pop	{fp, pc}

00000f78 <printint>:
     f78:	e92d4800 	push	{fp, lr}
     f7c:	e28db004 	add	fp, sp, #4
     f80:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f84:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f88:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f8c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f90:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     f94:	e3a03000 	mov	r3, #0
     f98:	e50b300c 	str	r3, [fp, #-12]
     f9c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     fa0:	e3530000 	cmp	r3, #0
     fa4:	0a000008 	beq	fcc <printint+0x54>
     fa8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fac:	e3530000 	cmp	r3, #0
     fb0:	aa000005 	bge	fcc <printint+0x54>
     fb4:	e3a03001 	mov	r3, #1
     fb8:	e50b300c 	str	r3, [fp, #-12]
     fbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fc0:	e2633000 	rsb	r3, r3, #0
     fc4:	e50b3010 	str	r3, [fp, #-16]
     fc8:	ea000001 	b	fd4 <printint+0x5c>
     fcc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fd0:	e50b3010 	str	r3, [fp, #-16]
     fd4:	e3a03000 	mov	r3, #0
     fd8:	e50b3008 	str	r3, [fp, #-8]
     fdc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fe0:	e51b3010 	ldr	r3, [fp, #-16]
     fe4:	e1a01002 	mov	r1, r2
     fe8:	e1a00003 	mov	r0, r3
     fec:	eb0001d5 	bl	1748 <__aeabi_uidivmod>
     ff0:	e1a03001 	mov	r3, r1
     ff4:	e1a01003 	mov	r1, r3
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e2832001 	add	r2, r3, #1
    1000:	e50b2008 	str	r2, [fp, #-8]
    1004:	e59f20a0 	ldr	r2, [pc, #160]	@ 10ac <printint+0x134>
    1008:	e7d22001 	ldrb	r2, [r2, r1]
    100c:	e2433004 	sub	r3, r3, #4
    1010:	e083300b 	add	r3, r3, fp
    1014:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1018:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    101c:	e1a01003 	mov	r1, r3
    1020:	e51b0010 	ldr	r0, [fp, #-16]
    1024:	eb00018a 	bl	1654 <__udivsi3>
    1028:	e1a03000 	mov	r3, r0
    102c:	e50b3010 	str	r3, [fp, #-16]
    1030:	e51b3010 	ldr	r3, [fp, #-16]
    1034:	e3530000 	cmp	r3, #0
    1038:	1affffe7 	bne	fdc <printint+0x64>
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e3530000 	cmp	r3, #0
    1044:	0a00000e 	beq	1084 <printint+0x10c>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e2832001 	add	r2, r3, #1
    1050:	e50b2008 	str	r2, [fp, #-8]
    1054:	e2433004 	sub	r3, r3, #4
    1058:	e083300b 	add	r3, r3, fp
    105c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1060:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1064:	ea000006 	b	1084 <printint+0x10c>
    1068:	e24b2020 	sub	r2, fp, #32
    106c:	e51b3008 	ldr	r3, [fp, #-8]
    1070:	e0823003 	add	r3, r2, r3
    1074:	e5d33000 	ldrb	r3, [r3]
    1078:	e1a01003 	mov	r1, r3
    107c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1080:	ebffffae 	bl	f40 <putc>
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e2433001 	sub	r3, r3, #1
    108c:	e50b3008 	str	r3, [fp, #-8]
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e3530000 	cmp	r3, #0
    1098:	aafffff2 	bge	1068 <printint+0xf0>
    109c:	e1a00000 	nop			@ (mov r0, r0)
    10a0:	e1a00000 	nop			@ (mov r0, r0)
    10a4:	e24bd004 	sub	sp, fp, #4
    10a8:	e8bd8800 	pop	{fp, pc}
    10ac:	0000189c 	.word	0x0000189c

000010b0 <printf>:
    10b0:	e92d000e 	push	{r1, r2, r3}
    10b4:	e92d4800 	push	{fp, lr}
    10b8:	e28db004 	add	fp, sp, #4
    10bc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    10c0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    10c4:	e3a03000 	mov	r3, #0
    10c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10cc:	e28b3008 	add	r3, fp, #8
    10d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10d4:	e3a03000 	mov	r3, #0
    10d8:	e50b3010 	str	r3, [fp, #-16]
    10dc:	ea000074 	b	12b4 <printf+0x204>
    10e0:	e59b2004 	ldr	r2, [fp, #4]
    10e4:	e51b3010 	ldr	r3, [fp, #-16]
    10e8:	e0823003 	add	r3, r2, r3
    10ec:	e5d33000 	ldrb	r3, [r3]
    10f0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    10f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10f8:	e3530000 	cmp	r3, #0
    10fc:	1a00000b 	bne	1130 <printf+0x80>
    1100:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1104:	e3530025 	cmp	r3, #37	@ 0x25
    1108:	1a000002 	bne	1118 <printf+0x68>
    110c:	e3a03025 	mov	r3, #37	@ 0x25
    1110:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1114:	ea000063 	b	12a8 <printf+0x1f8>
    1118:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    111c:	e6ef3073 	uxtb	r3, r3
    1120:	e1a01003 	mov	r1, r3
    1124:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1128:	ebffff84 	bl	f40 <putc>
    112c:	ea00005d 	b	12a8 <printf+0x1f8>
    1130:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1134:	e3530025 	cmp	r3, #37	@ 0x25
    1138:	1a00005a 	bne	12a8 <printf+0x1f8>
    113c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1140:	e3530064 	cmp	r3, #100	@ 0x64
    1144:	1a00000a 	bne	1174 <printf+0xc4>
    1148:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    114c:	e5933000 	ldr	r3, [r3]
    1150:	e1a01003 	mov	r1, r3
    1154:	e3a03001 	mov	r3, #1
    1158:	e3a0200a 	mov	r2, #10
    115c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1160:	ebffff84 	bl	f78 <printint>
    1164:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1168:	e2833004 	add	r3, r3, #4
    116c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1170:	ea00004a 	b	12a0 <printf+0x1f0>
    1174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1178:	e3530078 	cmp	r3, #120	@ 0x78
    117c:	0a000002 	beq	118c <printf+0xdc>
    1180:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1184:	e3530070 	cmp	r3, #112	@ 0x70
    1188:	1a00000a 	bne	11b8 <printf+0x108>
    118c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e1a01003 	mov	r1, r3
    1198:	e3a03000 	mov	r3, #0
    119c:	e3a02010 	mov	r2, #16
    11a0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a4:	ebffff73 	bl	f78 <printint>
    11a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11ac:	e2833004 	add	r3, r3, #4
    11b0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11b4:	ea000039 	b	12a0 <printf+0x1f0>
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e3530073 	cmp	r3, #115	@ 0x73
    11c0:	1a000018 	bne	1228 <printf+0x178>
    11c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	e5933000 	ldr	r3, [r3]
    11cc:	e50b300c 	str	r3, [fp, #-12]
    11d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d4:	e2833004 	add	r3, r3, #4
    11d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e3530000 	cmp	r3, #0
    11e4:	1a00000a 	bne	1214 <printf+0x164>
    11e8:	e59f30f4 	ldr	r3, [pc, #244]	@ 12e4 <printf+0x234>
    11ec:	e50b300c 	str	r3, [fp, #-12]
    11f0:	ea000007 	b	1214 <printf+0x164>
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e5d33000 	ldrb	r3, [r3]
    11fc:	e1a01003 	mov	r1, r3
    1200:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1204:	ebffff4d 	bl	f40 <putc>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e2833001 	add	r3, r3, #1
    1210:	e50b300c 	str	r3, [fp, #-12]
    1214:	e51b300c 	ldr	r3, [fp, #-12]
    1218:	e5d33000 	ldrb	r3, [r3]
    121c:	e3530000 	cmp	r3, #0
    1220:	1afffff3 	bne	11f4 <printf+0x144>
    1224:	ea00001d 	b	12a0 <printf+0x1f0>
    1228:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    122c:	e3530063 	cmp	r3, #99	@ 0x63
    1230:	1a000009 	bne	125c <printf+0x1ac>
    1234:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1238:	e5933000 	ldr	r3, [r3]
    123c:	e6ef3073 	uxtb	r3, r3
    1240:	e1a01003 	mov	r1, r3
    1244:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1248:	ebffff3c 	bl	f40 <putc>
    124c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1250:	e2833004 	add	r3, r3, #4
    1254:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1258:	ea000010 	b	12a0 <printf+0x1f0>
    125c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1260:	e3530025 	cmp	r3, #37	@ 0x25
    1264:	1a000005 	bne	1280 <printf+0x1d0>
    1268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    126c:	e6ef3073 	uxtb	r3, r3
    1270:	e1a01003 	mov	r1, r3
    1274:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1278:	ebffff30 	bl	f40 <putc>
    127c:	ea000007 	b	12a0 <printf+0x1f0>
    1280:	e3a01025 	mov	r1, #37	@ 0x25
    1284:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1288:	ebffff2c 	bl	f40 <putc>
    128c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1290:	e6ef3073 	uxtb	r3, r3
    1294:	e1a01003 	mov	r1, r3
    1298:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    129c:	ebffff27 	bl	f40 <putc>
    12a0:	e3a03000 	mov	r3, #0
    12a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12a8:	e51b3010 	ldr	r3, [fp, #-16]
    12ac:	e2833001 	add	r3, r3, #1
    12b0:	e50b3010 	str	r3, [fp, #-16]
    12b4:	e59b2004 	ldr	r2, [fp, #4]
    12b8:	e51b3010 	ldr	r3, [fp, #-16]
    12bc:	e0823003 	add	r3, r2, r3
    12c0:	e5d33000 	ldrb	r3, [r3]
    12c4:	e3530000 	cmp	r3, #0
    12c8:	1affff84 	bne	10e0 <printf+0x30>
    12cc:	e1a00000 	nop			@ (mov r0, r0)
    12d0:	e1a00000 	nop			@ (mov r0, r0)
    12d4:	e24bd004 	sub	sp, fp, #4
    12d8:	e8bd4800 	pop	{fp, lr}
    12dc:	e28dd00c 	add	sp, sp, #12
    12e0:	e12fff1e 	bx	lr
    12e4:	00001894 	.word	0x00001894

000012e8 <free>:
    12e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12ec:	e28db000 	add	fp, sp, #0
    12f0:	e24dd014 	sub	sp, sp, #20
    12f4:	e50b0010 	str	r0, [fp, #-16]
    12f8:	e51b3010 	ldr	r3, [fp, #-16]
    12fc:	e2433008 	sub	r3, r3, #8
    1300:	e50b300c 	str	r3, [fp, #-12]
    1304:	e59f3154 	ldr	r3, [pc, #340]	@ 1460 <free+0x178>
    1308:	e5933000 	ldr	r3, [r3]
    130c:	e50b3008 	str	r3, [fp, #-8]
    1310:	ea000010 	b	1358 <free+0x70>
    1314:	e51b3008 	ldr	r3, [fp, #-8]
    1318:	e5933000 	ldr	r3, [r3]
    131c:	e51b2008 	ldr	r2, [fp, #-8]
    1320:	e1520003 	cmp	r2, r3
    1324:	3a000008 	bcc	134c <free+0x64>
    1328:	e51b200c 	ldr	r2, [fp, #-12]
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e1520003 	cmp	r2, r3
    1334:	8a000010 	bhi	137c <free+0x94>
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e5933000 	ldr	r3, [r3]
    1340:	e51b200c 	ldr	r2, [fp, #-12]
    1344:	e1520003 	cmp	r2, r3
    1348:	3a00000b 	bcc	137c <free+0x94>
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5933000 	ldr	r3, [r3]
    1354:	e50b3008 	str	r3, [fp, #-8]
    1358:	e51b200c 	ldr	r2, [fp, #-12]
    135c:	e51b3008 	ldr	r3, [fp, #-8]
    1360:	e1520003 	cmp	r2, r3
    1364:	9affffea 	bls	1314 <free+0x2c>
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e5933000 	ldr	r3, [r3]
    1370:	e51b200c 	ldr	r2, [fp, #-12]
    1374:	e1520003 	cmp	r2, r3
    1378:	2affffe5 	bcs	1314 <free+0x2c>
    137c:	e51b300c 	ldr	r3, [fp, #-12]
    1380:	e5933004 	ldr	r3, [r3, #4]
    1384:	e1a03183 	lsl	r3, r3, #3
    1388:	e51b200c 	ldr	r2, [fp, #-12]
    138c:	e0822003 	add	r2, r2, r3
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e1520003 	cmp	r2, r3
    139c:	1a00000d 	bne	13d8 <free+0xf0>
    13a0:	e51b300c 	ldr	r3, [fp, #-12]
    13a4:	e5932004 	ldr	r2, [r3, #4]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5933000 	ldr	r3, [r3]
    13b0:	e5933004 	ldr	r3, [r3, #4]
    13b4:	e0822003 	add	r2, r2, r3
    13b8:	e51b300c 	ldr	r3, [fp, #-12]
    13bc:	e5832004 	str	r2, [r3, #4]
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e5932000 	ldr	r2, [r3]
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e5832000 	str	r2, [r3]
    13d4:	ea000003 	b	13e8 <free+0x100>
    13d8:	e51b3008 	ldr	r3, [fp, #-8]
    13dc:	e5932000 	ldr	r2, [r3]
    13e0:	e51b300c 	ldr	r3, [fp, #-12]
    13e4:	e5832000 	str	r2, [r3]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5933004 	ldr	r3, [r3, #4]
    13f0:	e1a03183 	lsl	r3, r3, #3
    13f4:	e51b2008 	ldr	r2, [fp, #-8]
    13f8:	e0823003 	add	r3, r2, r3
    13fc:	e51b200c 	ldr	r2, [fp, #-12]
    1400:	e1520003 	cmp	r2, r3
    1404:	1a00000b 	bne	1438 <free+0x150>
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e5932004 	ldr	r2, [r3, #4]
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5933004 	ldr	r3, [r3, #4]
    1418:	e0822003 	add	r2, r2, r3
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5832004 	str	r2, [r3, #4]
    1424:	e51b300c 	ldr	r3, [fp, #-12]
    1428:	e5932000 	ldr	r2, [r3]
    142c:	e51b3008 	ldr	r3, [fp, #-8]
    1430:	e5832000 	str	r2, [r3]
    1434:	ea000002 	b	1444 <free+0x15c>
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e51b200c 	ldr	r2, [fp, #-12]
    1440:	e5832000 	str	r2, [r3]
    1444:	e59f2014 	ldr	r2, [pc, #20]	@ 1460 <free+0x178>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5823000 	str	r3, [r2]
    1450:	e1a00000 	nop			@ (mov r0, r0)
    1454:	e28bd000 	add	sp, fp, #0
    1458:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    145c:	e12fff1e 	bx	lr
    1460:	000018b8 	.word	0x000018b8

00001464 <morecore>:
    1464:	e92d4800 	push	{fp, lr}
    1468:	e28db004 	add	fp, sp, #4
    146c:	e24dd010 	sub	sp, sp, #16
    1470:	e50b0010 	str	r0, [fp, #-16]
    1474:	e51b3010 	ldr	r3, [fp, #-16]
    1478:	e3530a01 	cmp	r3, #4096	@ 0x1000
    147c:	2a000001 	bcs	1488 <morecore+0x24>
    1480:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1484:	e50b3010 	str	r3, [fp, #-16]
    1488:	e51b3010 	ldr	r3, [fp, #-16]
    148c:	e1a03183 	lsl	r3, r3, #3
    1490:	e1a00003 	mov	r0, r3
    1494:	ebfffdfe 	bl	c94 <sbrk>
    1498:	e50b0008 	str	r0, [fp, #-8]
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e3730001 	cmn	r3, #1
    14a4:	1a000001 	bne	14b0 <morecore+0x4c>
    14a8:	e3a03000 	mov	r3, #0
    14ac:	ea00000a 	b	14dc <morecore+0x78>
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e50b300c 	str	r3, [fp, #-12]
    14b8:	e51b300c 	ldr	r3, [fp, #-12]
    14bc:	e51b2010 	ldr	r2, [fp, #-16]
    14c0:	e5832004 	str	r2, [r3, #4]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e2833008 	add	r3, r3, #8
    14cc:	e1a00003 	mov	r0, r3
    14d0:	ebffff84 	bl	12e8 <free>
    14d4:	e59f300c 	ldr	r3, [pc, #12]	@ 14e8 <morecore+0x84>
    14d8:	e5933000 	ldr	r3, [r3]
    14dc:	e1a00003 	mov	r0, r3
    14e0:	e24bd004 	sub	sp, fp, #4
    14e4:	e8bd8800 	pop	{fp, pc}
    14e8:	000018b8 	.word	0x000018b8

000014ec <malloc>:
    14ec:	e92d4800 	push	{fp, lr}
    14f0:	e28db004 	add	fp, sp, #4
    14f4:	e24dd018 	sub	sp, sp, #24
    14f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    14fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1500:	e2833007 	add	r3, r3, #7
    1504:	e1a031a3 	lsr	r3, r3, #3
    1508:	e2833001 	add	r3, r3, #1
    150c:	e50b3010 	str	r3, [fp, #-16]
    1510:	e59f3134 	ldr	r3, [pc, #308]	@ 164c <malloc+0x160>
    1514:	e5933000 	ldr	r3, [r3]
    1518:	e50b300c 	str	r3, [fp, #-12]
    151c:	e51b300c 	ldr	r3, [fp, #-12]
    1520:	e3530000 	cmp	r3, #0
    1524:	1a00000b 	bne	1558 <malloc+0x6c>
    1528:	e59f3120 	ldr	r3, [pc, #288]	@ 1650 <malloc+0x164>
    152c:	e50b300c 	str	r3, [fp, #-12]
    1530:	e59f2114 	ldr	r2, [pc, #276]	@ 164c <malloc+0x160>
    1534:	e51b300c 	ldr	r3, [fp, #-12]
    1538:	e5823000 	str	r3, [r2]
    153c:	e59f3108 	ldr	r3, [pc, #264]	@ 164c <malloc+0x160>
    1540:	e5933000 	ldr	r3, [r3]
    1544:	e59f2104 	ldr	r2, [pc, #260]	@ 1650 <malloc+0x164>
    1548:	e5823000 	str	r3, [r2]
    154c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1650 <malloc+0x164>
    1550:	e3a02000 	mov	r2, #0
    1554:	e5832004 	str	r2, [r3, #4]
    1558:	e51b300c 	ldr	r3, [fp, #-12]
    155c:	e5933000 	ldr	r3, [r3]
    1560:	e50b3008 	str	r3, [fp, #-8]
    1564:	e51b3008 	ldr	r3, [fp, #-8]
    1568:	e5933004 	ldr	r3, [r3, #4]
    156c:	e51b2010 	ldr	r2, [fp, #-16]
    1570:	e1520003 	cmp	r2, r3
    1574:	8a00001e 	bhi	15f4 <malloc+0x108>
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5933004 	ldr	r3, [r3, #4]
    1580:	e51b2010 	ldr	r2, [fp, #-16]
    1584:	e1520003 	cmp	r2, r3
    1588:	1a000004 	bne	15a0 <malloc+0xb4>
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5932000 	ldr	r2, [r3]
    1594:	e51b300c 	ldr	r3, [fp, #-12]
    1598:	e5832000 	str	r2, [r3]
    159c:	ea00000e 	b	15dc <malloc+0xf0>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5932004 	ldr	r2, [r3, #4]
    15a8:	e51b3010 	ldr	r3, [fp, #-16]
    15ac:	e0422003 	sub	r2, r2, r3
    15b0:	e51b3008 	ldr	r3, [fp, #-8]
    15b4:	e5832004 	str	r2, [r3, #4]
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5933004 	ldr	r3, [r3, #4]
    15c0:	e1a03183 	lsl	r3, r3, #3
    15c4:	e51b2008 	ldr	r2, [fp, #-8]
    15c8:	e0823003 	add	r3, r2, r3
    15cc:	e50b3008 	str	r3, [fp, #-8]
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e51b2010 	ldr	r2, [fp, #-16]
    15d8:	e5832004 	str	r2, [r3, #4]
    15dc:	e59f2068 	ldr	r2, [pc, #104]	@ 164c <malloc+0x160>
    15e0:	e51b300c 	ldr	r3, [fp, #-12]
    15e4:	e5823000 	str	r3, [r2]
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e2833008 	add	r3, r3, #8
    15f0:	ea000012 	b	1640 <malloc+0x154>
    15f4:	e59f3050 	ldr	r3, [pc, #80]	@ 164c <malloc+0x160>
    15f8:	e5933000 	ldr	r3, [r3]
    15fc:	e51b2008 	ldr	r2, [fp, #-8]
    1600:	e1520003 	cmp	r2, r3
    1604:	1a000007 	bne	1628 <malloc+0x13c>
    1608:	e51b0010 	ldr	r0, [fp, #-16]
    160c:	ebffff94 	bl	1464 <morecore>
    1610:	e50b0008 	str	r0, [fp, #-8]
    1614:	e51b3008 	ldr	r3, [fp, #-8]
    1618:	e3530000 	cmp	r3, #0
    161c:	1a000001 	bne	1628 <malloc+0x13c>
    1620:	e3a03000 	mov	r3, #0
    1624:	ea000005 	b	1640 <malloc+0x154>
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e50b300c 	str	r3, [fp, #-12]
    1630:	e51b3008 	ldr	r3, [fp, #-8]
    1634:	e5933000 	ldr	r3, [r3]
    1638:	e50b3008 	str	r3, [fp, #-8]
    163c:	eaffffc8 	b	1564 <malloc+0x78>
    1640:	e1a00003 	mov	r0, r3
    1644:	e24bd004 	sub	sp, fp, #4
    1648:	e8bd8800 	pop	{fp, pc}
    164c:	000018b8 	.word	0x000018b8
    1650:	000018b0 	.word	0x000018b0

00001654 <__udivsi3>:
    1654:	e2512001 	subs	r2, r1, #1
    1658:	012fff1e 	bxeq	lr
    165c:	3a000036 	bcc	173c <__udivsi3+0xe8>
    1660:	e1500001 	cmp	r0, r1
    1664:	9a000022 	bls	16f4 <__udivsi3+0xa0>
    1668:	e1110002 	tst	r1, r2
    166c:	0a000023 	beq	1700 <__udivsi3+0xac>
    1670:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1674:	01a01181 	lsleq	r1, r1, #3
    1678:	03a03008 	moveq	r3, #8
    167c:	13a03001 	movne	r3, #1
    1680:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1684:	31510000 	cmpcc	r1, r0
    1688:	31a01201 	lslcc	r1, r1, #4
    168c:	31a03203 	lslcc	r3, r3, #4
    1690:	3afffffa 	bcc	1680 <__udivsi3+0x2c>
    1694:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1698:	31510000 	cmpcc	r1, r0
    169c:	31a01081 	lslcc	r1, r1, #1
    16a0:	31a03083 	lslcc	r3, r3, #1
    16a4:	3afffffa 	bcc	1694 <__udivsi3+0x40>
    16a8:	e3a02000 	mov	r2, #0
    16ac:	e1500001 	cmp	r0, r1
    16b0:	20400001 	subcs	r0, r0, r1
    16b4:	21822003 	orrcs	r2, r2, r3
    16b8:	e15000a1 	cmp	r0, r1, lsr #1
    16bc:	204000a1 	subcs	r0, r0, r1, lsr #1
    16c0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    16c4:	e1500121 	cmp	r0, r1, lsr #2
    16c8:	20400121 	subcs	r0, r0, r1, lsr #2
    16cc:	21822123 	orrcs	r2, r2, r3, lsr #2
    16d0:	e15001a1 	cmp	r0, r1, lsr #3
    16d4:	204001a1 	subcs	r0, r0, r1, lsr #3
    16d8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16dc:	e3500000 	cmp	r0, #0
    16e0:	11b03223 	lsrsne	r3, r3, #4
    16e4:	11a01221 	lsrne	r1, r1, #4
    16e8:	1affffef 	bne	16ac <__udivsi3+0x58>
    16ec:	e1a00002 	mov	r0, r2
    16f0:	e12fff1e 	bx	lr
    16f4:	03a00001 	moveq	r0, #1
    16f8:	13a00000 	movne	r0, #0
    16fc:	e12fff1e 	bx	lr
    1700:	e3510801 	cmp	r1, #65536	@ 0x10000
    1704:	21a01821 	lsrcs	r1, r1, #16
    1708:	23a02010 	movcs	r2, #16
    170c:	33a02000 	movcc	r2, #0
    1710:	e3510c01 	cmp	r1, #256	@ 0x100
    1714:	21a01421 	lsrcs	r1, r1, #8
    1718:	22822008 	addcs	r2, r2, #8
    171c:	e3510010 	cmp	r1, #16
    1720:	21a01221 	lsrcs	r1, r1, #4
    1724:	22822004 	addcs	r2, r2, #4
    1728:	e3510004 	cmp	r1, #4
    172c:	82822003 	addhi	r2, r2, #3
    1730:	908220a1 	addls	r2, r2, r1, lsr #1
    1734:	e1a00230 	lsr	r0, r0, r2
    1738:	e12fff1e 	bx	lr
    173c:	e3500000 	cmp	r0, #0
    1740:	13e00000 	mvnne	r0, #0
    1744:	ea000007 	b	1768 <__aeabi_idiv0>

00001748 <__aeabi_uidivmod>:
    1748:	e3510000 	cmp	r1, #0
    174c:	0afffffa 	beq	173c <__udivsi3+0xe8>
    1750:	e92d4003 	push	{r0, r1, lr}
    1754:	ebffffbe 	bl	1654 <__udivsi3>
    1758:	e8bd4006 	pop	{r1, r2, lr}
    175c:	e0030092 	mul	r3, r2, r0
    1760:	e0411003 	sub	r1, r1, r3
    1764:	e12fff1e 	bx	lr

00001768 <__aeabi_idiv0>:
    1768:	e12fff1e 	bx	lr
