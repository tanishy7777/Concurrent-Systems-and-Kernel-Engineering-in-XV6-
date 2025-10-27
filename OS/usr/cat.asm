
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0002ab 	bl	ad4 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb00029e 	bl	ab0 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb000419 	bl	10c4 <printf>
      5c:	eb000278 	bl	a44 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	0000189c 	.word	0x0000189c
      70:	00001780 	.word	0x00001780

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb000268 	bl	a44 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0002a5 	bl	b64 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb0003f0 	bl	10c4 <printf>
     100:	eb00024f 	bl	a44 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb000278 	bl	af8 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb000243 	bl	a44 <exit>
     134:	00001794 	.word	0x00001794

00000138 <xchg>:
     138:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     14c:	e51b1010 	ldr	r1, [fp, #-16]
     150:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     154:	e1912f9f 	ldrex	r2, [r1]
     158:	e1813f90 	strex	r3, r0, [r1]
     15c:	e50b2008 	str	r2, [fp, #-8]
     160:	e50b300c 	str	r3, [fp, #-12]
     164:	e51b300c 	ldr	r3, [fp, #-12]
     168:	e3530000 	cmp	r3, #0
     16c:	1afffff6 	bne	14c <xchg+0x14>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e1a00003 	mov	r0, r3
     178:	e28bd000 	add	sp, fp, #0
     17c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     180:	e12fff1e 	bx	lr

00000184 <strcpy>:
     184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     188:	e28db000 	add	fp, sp, #0
     18c:	e24dd014 	sub	sp, sp, #20
     190:	e50b0010 	str	r0, [fp, #-16]
     194:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e50b3008 	str	r3, [fp, #-8]
     1a0:	e1a00000 	nop			@ (mov r0, r0)
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e2823001 	add	r3, r2, #1
     1ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b0:	e51b3010 	ldr	r3, [fp, #-16]
     1b4:	e2831001 	add	r1, r3, #1
     1b8:	e50b1010 	str	r1, [fp, #-16]
     1bc:	e5d22000 	ldrb	r2, [r2]
     1c0:	e5c32000 	strb	r2, [r3]
     1c4:	e5d33000 	ldrb	r3, [r3]
     1c8:	e3530000 	cmp	r3, #0
     1cc:	1afffff4 	bne	1a4 <strcpy+0x20>
     1d0:	e51b3008 	ldr	r3, [fp, #-8]
     1d4:	e1a00003 	mov	r0, r3
     1d8:	e28bd000 	add	sp, fp, #0
     1dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e0:	e12fff1e 	bx	lr

000001e4 <strcmp>:
     1e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e8:	e28db000 	add	fp, sp, #0
     1ec:	e24dd00c 	sub	sp, sp, #12
     1f0:	e50b0008 	str	r0, [fp, #-8]
     1f4:	e50b100c 	str	r1, [fp, #-12]
     1f8:	ea000005 	b	214 <strcmp+0x30>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e2833001 	add	r3, r3, #1
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e2833001 	add	r3, r3, #1
     210:	e50b300c 	str	r3, [fp, #-12]
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e5d33000 	ldrb	r3, [r3]
     21c:	e3530000 	cmp	r3, #0
     220:	0a000005 	beq	23c <strcmp+0x58>
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e5d32000 	ldrb	r2, [r3]
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e5d33000 	ldrb	r3, [r3]
     234:	e1520003 	cmp	r2, r3
     238:	0affffef 	beq	1fc <strcmp+0x18>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e5d33000 	ldrb	r3, [r3]
     244:	e1a02003 	mov	r2, r3
     248:	e51b300c 	ldr	r3, [fp, #-12]
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e0423003 	sub	r3, r2, r3
     254:	e1a00003 	mov	r0, r3
     258:	e28bd000 	add	sp, fp, #0
     25c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     260:	e12fff1e 	bx	lr

00000264 <strlen>:
     264:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     268:	e28db000 	add	fp, sp, #0
     26c:	e24dd014 	sub	sp, sp, #20
     270:	e50b0010 	str	r0, [fp, #-16]
     274:	e3a03000 	mov	r3, #0
     278:	e50b3008 	str	r3, [fp, #-8]
     27c:	ea000002 	b	28c <strlen+0x28>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e2833001 	add	r3, r3, #1
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e51b2010 	ldr	r2, [fp, #-16]
     294:	e0823003 	add	r3, r2, r3
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e3530000 	cmp	r3, #0
     2a0:	1afffff6 	bne	280 <strlen+0x1c>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e1a00003 	mov	r0, r3
     2ac:	e28bd000 	add	sp, fp, #0
     2b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2b4:	e12fff1e 	bx	lr

000002b8 <memset>:
     2b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2bc:	e28db000 	add	fp, sp, #0
     2c0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2cc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e50b3008 	str	r3, [fp, #-8]
     2d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2dc:	e54b300d 	strb	r3, [fp, #-13]
     2e0:	e55b200d 	ldrb	r2, [fp, #-13]
     2e4:	e1a03002 	mov	r3, r2
     2e8:	e1a03403 	lsl	r3, r3, #8
     2ec:	e0833002 	add	r3, r3, r2
     2f0:	e1a03803 	lsl	r3, r3, #16
     2f4:	e1a02003 	mov	r2, r3
     2f8:	e55b300d 	ldrb	r3, [fp, #-13]
     2fc:	e1a03403 	lsl	r3, r3, #8
     300:	e1822003 	orr	r2, r2, r3
     304:	e55b300d 	ldrb	r3, [fp, #-13]
     308:	e1823003 	orr	r3, r2, r3
     30c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     310:	ea000008 	b	338 <memset+0x80>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	e55b200d 	ldrb	r2, [fp, #-13]
     31c:	e5c32000 	strb	r2, [r3]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e2433001 	sub	r3, r3, #1
     328:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2833001 	add	r3, r3, #1
     334:	e50b3008 	str	r3, [fp, #-8]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e3530000 	cmp	r3, #0
     340:	0a000003 	beq	354 <memset+0x9c>
     344:	e51b3008 	ldr	r3, [fp, #-8]
     348:	e2033003 	and	r3, r3, #3
     34c:	e3530000 	cmp	r3, #0
     350:	1affffef 	bne	314 <memset+0x5c>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e50b300c 	str	r3, [fp, #-12]
     35c:	ea000008 	b	384 <memset+0xcc>
     360:	e51b300c 	ldr	r3, [fp, #-12]
     364:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     368:	e5832000 	str	r2, [r3]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e2433004 	sub	r3, r3, #4
     374:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     378:	e51b300c 	ldr	r3, [fp, #-12]
     37c:	e2833004 	add	r3, r3, #4
     380:	e50b300c 	str	r3, [fp, #-12]
     384:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     388:	e3530003 	cmp	r3, #3
     38c:	8afffff3 	bhi	360 <memset+0xa8>
     390:	e51b300c 	ldr	r3, [fp, #-12]
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	ea000008 	b	3c0 <memset+0x108>
     39c:	e51b3008 	ldr	r3, [fp, #-8]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e5c32000 	strb	r2, [r3]
     3a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e2433001 	sub	r3, r3, #1
     3b0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3b4:	e51b3008 	ldr	r3, [fp, #-8]
     3b8:	e2833001 	add	r3, r3, #1
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c4:	e3530000 	cmp	r3, #0
     3c8:	1afffff3 	bne	39c <memset+0xe4>
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e1a00003 	mov	r0, r3
     3d4:	e28bd000 	add	sp, fp, #0
     3d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3dc:	e12fff1e 	bx	lr

000003e0 <strchr>:
     3e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3e4:	e28db000 	add	fp, sp, #0
     3e8:	e24dd00c 	sub	sp, sp, #12
     3ec:	e50b0008 	str	r0, [fp, #-8]
     3f0:	e1a03001 	mov	r3, r1
     3f4:	e54b3009 	strb	r3, [fp, #-9]
     3f8:	ea000009 	b	424 <strchr+0x44>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e5d33000 	ldrb	r3, [r3]
     404:	e55b2009 	ldrb	r2, [fp, #-9]
     408:	e1520003 	cmp	r2, r3
     40c:	1a000001 	bne	418 <strchr+0x38>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	ea000007 	b	438 <strchr+0x58>
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e2833001 	add	r3, r3, #1
     420:	e50b3008 	str	r3, [fp, #-8]
     424:	e51b3008 	ldr	r3, [fp, #-8]
     428:	e5d33000 	ldrb	r3, [r3]
     42c:	e3530000 	cmp	r3, #0
     430:	1afffff1 	bne	3fc <strchr+0x1c>
     434:	e3a03000 	mov	r3, #0
     438:	e1a00003 	mov	r0, r3
     43c:	e28bd000 	add	sp, fp, #0
     440:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     444:	e12fff1e 	bx	lr

00000448 <gets>:
     448:	e92d4800 	push	{fp, lr}
     44c:	e28db004 	add	fp, sp, #4
     450:	e24dd018 	sub	sp, sp, #24
     454:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     458:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     45c:	e3a03000 	mov	r3, #0
     460:	e50b3008 	str	r3, [fp, #-8]
     464:	ea000016 	b	4c4 <gets+0x7c>
     468:	e24b300d 	sub	r3, fp, #13
     46c:	e3a02001 	mov	r2, #1
     470:	e1a01003 	mov	r1, r3
     474:	e3a00000 	mov	r0, #0
     478:	eb00018c 	bl	ab0 <read>
     47c:	e50b000c 	str	r0, [fp, #-12]
     480:	e51b300c 	ldr	r3, [fp, #-12]
     484:	e3530000 	cmp	r3, #0
     488:	da000013 	ble	4dc <gets+0x94>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e2832001 	add	r2, r3, #1
     494:	e50b2008 	str	r2, [fp, #-8]
     498:	e1a02003 	mov	r2, r3
     49c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4a0:	e0833002 	add	r3, r3, r2
     4a4:	e55b200d 	ldrb	r2, [fp, #-13]
     4a8:	e5c32000 	strb	r2, [r3]
     4ac:	e55b300d 	ldrb	r3, [fp, #-13]
     4b0:	e353000a 	cmp	r3, #10
     4b4:	0a000009 	beq	4e0 <gets+0x98>
     4b8:	e55b300d 	ldrb	r3, [fp, #-13]
     4bc:	e353000d 	cmp	r3, #13
     4c0:	0a000006 	beq	4e0 <gets+0x98>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e2833001 	add	r3, r3, #1
     4cc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4d0:	e1520003 	cmp	r2, r3
     4d4:	caffffe3 	bgt	468 <gets+0x20>
     4d8:	ea000000 	b	4e0 <gets+0x98>
     4dc:	e1a00000 	nop			@ (mov r0, r0)
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e8:	e0823003 	add	r3, r2, r3
     4ec:	e3a02000 	mov	r2, #0
     4f0:	e5c32000 	strb	r2, [r3]
     4f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e24bd004 	sub	sp, fp, #4
     500:	e8bd8800 	pop	{fp, pc}

00000504 <stat>:
     504:	e92d4800 	push	{fp, lr}
     508:	e28db004 	add	fp, sp, #4
     50c:	e24dd010 	sub	sp, sp, #16
     510:	e50b0010 	str	r0, [fp, #-16]
     514:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     518:	e3a01000 	mov	r1, #0
     51c:	e51b0010 	ldr	r0, [fp, #-16]
     520:	eb00018f 	bl	b64 <open>
     524:	e50b0008 	str	r0, [fp, #-8]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e3530000 	cmp	r3, #0
     530:	aa000001 	bge	53c <stat+0x38>
     534:	e3e03000 	mvn	r3, #0
     538:	ea000006 	b	558 <stat+0x54>
     53c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     540:	e51b0008 	ldr	r0, [fp, #-8]
     544:	eb0001a1 	bl	bd0 <fstat>
     548:	e50b000c 	str	r0, [fp, #-12]
     54c:	e51b0008 	ldr	r0, [fp, #-8]
     550:	eb000168 	bl	af8 <close>
     554:	e51b300c 	ldr	r3, [fp, #-12]
     558:	e1a00003 	mov	r0, r3
     55c:	e24bd004 	sub	sp, fp, #4
     560:	e8bd8800 	pop	{fp, pc}

00000564 <atoi>:
     564:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     568:	e28db000 	add	fp, sp, #0
     56c:	e24dd014 	sub	sp, sp, #20
     570:	e50b0010 	str	r0, [fp, #-16]
     574:	e3a03000 	mov	r3, #0
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	ea00000c 	b	5b4 <atoi+0x50>
     580:	e51b2008 	ldr	r2, [fp, #-8]
     584:	e1a03002 	mov	r3, r2
     588:	e1a03103 	lsl	r3, r3, #2
     58c:	e0833002 	add	r3, r3, r2
     590:	e1a03083 	lsl	r3, r3, #1
     594:	e1a01003 	mov	r1, r3
     598:	e51b3010 	ldr	r3, [fp, #-16]
     59c:	e2832001 	add	r2, r3, #1
     5a0:	e50b2010 	str	r2, [fp, #-16]
     5a4:	e5d33000 	ldrb	r3, [r3]
     5a8:	e0813003 	add	r3, r1, r3
     5ac:	e2433030 	sub	r3, r3, #48	@ 0x30
     5b0:	e50b3008 	str	r3, [fp, #-8]
     5b4:	e51b3010 	ldr	r3, [fp, #-16]
     5b8:	e5d33000 	ldrb	r3, [r3]
     5bc:	e353002f 	cmp	r3, #47	@ 0x2f
     5c0:	9a000003 	bls	5d4 <atoi+0x70>
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e5d33000 	ldrb	r3, [r3]
     5cc:	e3530039 	cmp	r3, #57	@ 0x39
     5d0:	9affffea 	bls	580 <atoi+0x1c>
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e1a00003 	mov	r0, r3
     5dc:	e28bd000 	add	sp, fp, #0
     5e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e4:	e12fff1e 	bx	lr

000005e8 <memmove>:
     5e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ec:	e28db000 	add	fp, sp, #0
     5f0:	e24dd01c 	sub	sp, sp, #28
     5f4:	e50b0010 	str	r0, [fp, #-16]
     5f8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e50b3008 	str	r3, [fp, #-8]
     608:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     60c:	e50b300c 	str	r3, [fp, #-12]
     610:	ea000007 	b	634 <memmove+0x4c>
     614:	e51b200c 	ldr	r2, [fp, #-12]
     618:	e2823001 	add	r3, r2, #1
     61c:	e50b300c 	str	r3, [fp, #-12]
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e2831001 	add	r1, r3, #1
     628:	e50b1008 	str	r1, [fp, #-8]
     62c:	e5d22000 	ldrb	r2, [r2]
     630:	e5c32000 	strb	r2, [r3]
     634:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     638:	e2432001 	sub	r2, r3, #1
     63c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     640:	e3530000 	cmp	r3, #0
     644:	cafffff2 	bgt	614 <memmove+0x2c>
     648:	e51b3010 	ldr	r3, [fp, #-16]
     64c:	e1a00003 	mov	r0, r3
     650:	e28bd000 	add	sp, fp, #0
     654:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <initiateLock>:
     65c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     660:	e28db000 	add	fp, sp, #0
     664:	e24dd00c 	sub	sp, sp, #12
     668:	e50b0008 	str	r0, [fp, #-8]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e3a02000 	mov	r2, #0
     674:	e5832000 	str	r2, [r3]
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e3a02001 	mov	r2, #1
     680:	e5832004 	str	r2, [r3, #4]
     684:	e1a00000 	nop			@ (mov r0, r0)
     688:	e28bd000 	add	sp, fp, #0
     68c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     690:	e12fff1e 	bx	lr

00000694 <acquireLock>:
     694:	e92d4800 	push	{fp, lr}
     698:	e28db004 	add	fp, sp, #4
     69c:	e24dd008 	sub	sp, sp, #8
     6a0:	e50b0008 	str	r0, [fp, #-8]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e5933000 	ldr	r3, [r3]
     6ac:	e3730001 	cmn	r3, #1
     6b0:	1a000002 	bne	6c0 <acquireLock+0x2c>
     6b4:	e59f1034 	ldr	r1, [pc, #52]	@ 6f0 <acquireLock+0x5c>
     6b8:	e3a00002 	mov	r0, #2
     6bc:	eb000280 	bl	10c4 <printf>
     6c0:	e1a00000 	nop			@ (mov r0, r0)
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e3a01001 	mov	r1, #1
     6cc:	e1a00003 	mov	r0, r3
     6d0:	ebfffe98 	bl	138 <xchg>
     6d4:	e1a03000 	mov	r3, r0
     6d8:	e3530000 	cmp	r3, #0
     6dc:	1afffff8 	bne	6c4 <acquireLock+0x30>
     6e0:	e1a00000 	nop			@ (mov r0, r0)
     6e4:	e1a00000 	nop			@ (mov r0, r0)
     6e8:	e24bd004 	sub	sp, fp, #4
     6ec:	e8bd8800 	pop	{fp, pc}
     6f0:	000017ac 	.word	0x000017ac

000006f4 <releaseLock>:
     6f4:	e92d4800 	push	{fp, lr}
     6f8:	e28db004 	add	fp, sp, #4
     6fc:	e24dd008 	sub	sp, sp, #8
     700:	e50b0008 	str	r0, [fp, #-8]
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e5933000 	ldr	r3, [r3]
     70c:	e3530001 	cmp	r3, #1
     710:	0a000002 	beq	720 <releaseLock+0x2c>
     714:	e59f1020 	ldr	r1, [pc, #32]	@ 73c <releaseLock+0x48>
     718:	e3a00002 	mov	r0, #2
     71c:	eb000268 	bl	10c4 <printf>
     720:	e51b3008 	ldr	r3, [fp, #-8]
     724:	e3a01000 	mov	r1, #0
     728:	e1a00003 	mov	r0, r3
     72c:	ebfffe81 	bl	138 <xchg>
     730:	e1a00000 	nop			@ (mov r0, r0)
     734:	e24bd004 	sub	sp, fp, #4
     738:	e8bd8800 	pop	{fp, pc}
     73c:	000017dc 	.word	0x000017dc

00000740 <initiateCondVar>:
     740:	e92d4800 	push	{fp, lr}
     744:	e28db004 	add	fp, sp, #4
     748:	e24dd008 	sub	sp, sp, #8
     74c:	e50b0008 	str	r0, [fp, #-8]
     750:	e51b3008 	ldr	r3, [fp, #-8]
     754:	e5933004 	ldr	r3, [r3, #4]
     758:	e3530000 	cmp	r3, #0
     75c:	1a000007 	bne	780 <initiateCondVar+0x40>
     760:	eb0001e0 	bl	ee8 <getChannel>
     764:	e1a02000 	mov	r2, r0
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e5832000 	str	r2, [r3]
     770:	e51b3008 	ldr	r3, [fp, #-8]
     774:	e3a02001 	mov	r2, #1
     778:	e5832004 	str	r2, [r3, #4]
     77c:	ea000000 	b	784 <initiateCondVar+0x44>
     780:	e1a00000 	nop			@ (mov r0, r0)
     784:	e24bd004 	sub	sp, fp, #4
     788:	e8bd8800 	pop	{fp, pc}

0000078c <condWait>:
     78c:	e92d4800 	push	{fp, lr}
     790:	e28db004 	add	fp, sp, #4
     794:	e24dd008 	sub	sp, sp, #8
     798:	e50b0008 	str	r0, [fp, #-8]
     79c:	e50b100c 	str	r1, [fp, #-12]
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e5933004 	ldr	r3, [r3, #4]
     7a8:	e3530000 	cmp	r3, #0
     7ac:	1a000003 	bne	7c0 <condWait+0x34>
     7b0:	e59f1050 	ldr	r1, [pc, #80]	@ 808 <condWait+0x7c>
     7b4:	e3a00002 	mov	r0, #2
     7b8:	eb000241 	bl	10c4 <printf>
     7bc:	ea00000f 	b	800 <condWait+0x74>
     7c0:	e51b300c 	ldr	r3, [fp, #-12]
     7c4:	e5933004 	ldr	r3, [r3, #4]
     7c8:	e3530000 	cmp	r3, #0
     7cc:	1a000003 	bne	7e0 <condWait+0x54>
     7d0:	e59f1034 	ldr	r1, [pc, #52]	@ 80c <condWait+0x80>
     7d4:	e3a00002 	mov	r0, #2
     7d8:	eb000239 	bl	10c4 <printf>
     7dc:	ea000007 	b	800 <condWait+0x74>
     7e0:	e51b000c 	ldr	r0, [fp, #-12]
     7e4:	ebffffc2 	bl	6f4 <releaseLock>
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5933000 	ldr	r3, [r3]
     7f0:	e1a00003 	mov	r0, r3
     7f4:	eb0001b2 	bl	ec4 <sleepChan>
     7f8:	e51b000c 	ldr	r0, [fp, #-12]
     7fc:	ebffffa4 	bl	694 <acquireLock>
     800:	e24bd004 	sub	sp, fp, #4
     804:	e8bd8800 	pop	{fp, pc}
     808:	00001818 	.word	0x00001818
     80c:	0000183c 	.word	0x0000183c

00000810 <broadcast>:
     810:	e92d4800 	push	{fp, lr}
     814:	e28db004 	add	fp, sp, #4
     818:	e24dd008 	sub	sp, sp, #8
     81c:	e50b0008 	str	r0, [fp, #-8]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5933004 	ldr	r3, [r3, #4]
     828:	e3530000 	cmp	r3, #0
     82c:	1a000003 	bne	840 <broadcast+0x30>
     830:	e59f1020 	ldr	r1, [pc, #32]	@ 858 <broadcast+0x48>
     834:	e3a00002 	mov	r0, #2
     838:	eb000221 	bl	10c4 <printf>
     83c:	ea000003 	b	850 <broadcast+0x40>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e5933000 	ldr	r3, [r3]
     848:	e1a00003 	mov	r0, r3
     84c:	eb0001ae 	bl	f0c <sigChan>
     850:	e24bd004 	sub	sp, fp, #4
     854:	e8bd8800 	pop	{fp, pc}
     858:	00001818 	.word	0x00001818

0000085c <signal>:
     85c:	e92d4800 	push	{fp, lr}
     860:	e28db004 	add	fp, sp, #4
     864:	e24dd008 	sub	sp, sp, #8
     868:	e50b0008 	str	r0, [fp, #-8]
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e5933004 	ldr	r3, [r3, #4]
     874:	e3530000 	cmp	r3, #0
     878:	1a000003 	bne	88c <signal+0x30>
     87c:	e59f1020 	ldr	r1, [pc, #32]	@ 8a4 <signal+0x48>
     880:	e3a00002 	mov	r0, #2
     884:	eb00020e 	bl	10c4 <printf>
     888:	ea000003 	b	89c <signal+0x40>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e5933000 	ldr	r3, [r3]
     894:	e1a00003 	mov	r0, r3
     898:	eb0001a4 	bl	f30 <sigOneChan>
     89c:	e24bd004 	sub	sp, fp, #4
     8a0:	e8bd8800 	pop	{fp, pc}
     8a4:	00001818 	.word	0x00001818

000008a8 <semInit>:
     8a8:	e92d4800 	push	{fp, lr}
     8ac:	e28db004 	add	fp, sp, #4
     8b0:	e24dd008 	sub	sp, sp, #8
     8b4:	e50b0008 	str	r0, [fp, #-8]
     8b8:	e50b100c 	str	r1, [fp, #-12]
     8bc:	e51b3008 	ldr	r3, [fp, #-8]
     8c0:	e51b200c 	ldr	r2, [fp, #-12]
     8c4:	e5832000 	str	r2, [r3]
     8c8:	e51b3008 	ldr	r3, [fp, #-8]
     8cc:	e2833004 	add	r3, r3, #4
     8d0:	e1a00003 	mov	r0, r3
     8d4:	ebffff60 	bl	65c <initiateLock>
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e283300c 	add	r3, r3, #12
     8e0:	e1a00003 	mov	r0, r3
     8e4:	ebffff95 	bl	740 <initiateCondVar>
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e3a02001 	mov	r2, #1
     8f0:	e5832014 	str	r2, [r3, #20]
     8f4:	e1a00000 	nop			@ (mov r0, r0)
     8f8:	e24bd004 	sub	sp, fp, #4
     8fc:	e8bd8800 	pop	{fp, pc}

00000900 <semDown>:
     900:	e92d4800 	push	{fp, lr}
     904:	e28db004 	add	fp, sp, #4
     908:	e24dd008 	sub	sp, sp, #8
     90c:	e50b0008 	str	r0, [fp, #-8]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5933014 	ldr	r3, [r3, #20]
     918:	e3530000 	cmp	r3, #0
     91c:	1a000003 	bne	930 <semDown+0x30>
     920:	e59f1074 	ldr	r1, [pc, #116]	@ 99c <semDown+0x9c>
     924:	e3a00002 	mov	r0, #2
     928:	eb0001e5 	bl	10c4 <printf>
     92c:	ea000018 	b	994 <semDown+0x94>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e2833004 	add	r3, r3, #4
     938:	e1a00003 	mov	r0, r3
     93c:	ebffff54 	bl	694 <acquireLock>
     940:	ea000006 	b	960 <semDown+0x60>
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e283200c 	add	r2, r3, #12
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e2833004 	add	r3, r3, #4
     954:	e1a01003 	mov	r1, r3
     958:	e1a00002 	mov	r0, r2
     95c:	ebffff8a 	bl	78c <condWait>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e5933000 	ldr	r3, [r3]
     968:	e3530000 	cmp	r3, #0
     96c:	0afffff4 	beq	944 <semDown+0x44>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933000 	ldr	r3, [r3]
     978:	e2432001 	sub	r2, r3, #1
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e5832000 	str	r2, [r3]
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e2833004 	add	r3, r3, #4
     98c:	e1a00003 	mov	r0, r3
     990:	ebffff57 	bl	6f4 <releaseLock>
     994:	e24bd004 	sub	sp, fp, #4
     998:	e8bd8800 	pop	{fp, pc}
     99c:	0000185c 	.word	0x0000185c

000009a0 <semUp>:
     9a0:	e92d4800 	push	{fp, lr}
     9a4:	e28db004 	add	fp, sp, #4
     9a8:	e24dd008 	sub	sp, sp, #8
     9ac:	e50b0008 	str	r0, [fp, #-8]
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e5933014 	ldr	r3, [r3, #20]
     9b8:	e3530000 	cmp	r3, #0
     9bc:	1a000003 	bne	9d0 <semUp+0x30>
     9c0:	e59f1054 	ldr	r1, [pc, #84]	@ a1c <semUp+0x7c>
     9c4:	e3a00002 	mov	r0, #2
     9c8:	eb0001bd 	bl	10c4 <printf>
     9cc:	ea000010 	b	a14 <semUp+0x74>
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e2833004 	add	r3, r3, #4
     9d8:	e1a00003 	mov	r0, r3
     9dc:	ebffff2c 	bl	694 <acquireLock>
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e5933000 	ldr	r3, [r3]
     9e8:	e2832001 	add	r2, r3, #1
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e5832000 	str	r2, [r3]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e283300c 	add	r3, r3, #12
     9fc:	e1a00003 	mov	r0, r3
     a00:	ebffff95 	bl	85c <signal>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e2833004 	add	r3, r3, #4
     a0c:	e1a00003 	mov	r0, r3
     a10:	ebffff37 	bl	6f4 <releaseLock>
     a14:	e24bd004 	sub	sp, fp, #4
     a18:	e8bd8800 	pop	{fp, pc}
     a1c:	0000185c 	.word	0x0000185c

00000a20 <fork>:
     a20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a24:	e1a04003 	mov	r4, r3
     a28:	e1a03002 	mov	r3, r2
     a2c:	e1a02001 	mov	r2, r1
     a30:	e1a01000 	mov	r1, r0
     a34:	e3a00001 	mov	r0, #1
     a38:	ef000000 	svc	0x00000000
     a3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a40:	e12fff1e 	bx	lr

00000a44 <exit>:
     a44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a48:	e1a04003 	mov	r4, r3
     a4c:	e1a03002 	mov	r3, r2
     a50:	e1a02001 	mov	r2, r1
     a54:	e1a01000 	mov	r1, r0
     a58:	e3a00002 	mov	r0, #2
     a5c:	ef000000 	svc	0x00000000
     a60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a64:	e12fff1e 	bx	lr

00000a68 <wait>:
     a68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a6c:	e1a04003 	mov	r4, r3
     a70:	e1a03002 	mov	r3, r2
     a74:	e1a02001 	mov	r2, r1
     a78:	e1a01000 	mov	r1, r0
     a7c:	e3a00003 	mov	r0, #3
     a80:	ef000000 	svc	0x00000000
     a84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a88:	e12fff1e 	bx	lr

00000a8c <pipe>:
     a8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a90:	e1a04003 	mov	r4, r3
     a94:	e1a03002 	mov	r3, r2
     a98:	e1a02001 	mov	r2, r1
     a9c:	e1a01000 	mov	r1, r0
     aa0:	e3a00004 	mov	r0, #4
     aa4:	ef000000 	svc	0x00000000
     aa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aac:	e12fff1e 	bx	lr

00000ab0 <read>:
     ab0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab4:	e1a04003 	mov	r4, r3
     ab8:	e1a03002 	mov	r3, r2
     abc:	e1a02001 	mov	r2, r1
     ac0:	e1a01000 	mov	r1, r0
     ac4:	e3a00005 	mov	r0, #5
     ac8:	ef000000 	svc	0x00000000
     acc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad0:	e12fff1e 	bx	lr

00000ad4 <write>:
     ad4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad8:	e1a04003 	mov	r4, r3
     adc:	e1a03002 	mov	r3, r2
     ae0:	e1a02001 	mov	r2, r1
     ae4:	e1a01000 	mov	r1, r0
     ae8:	e3a00010 	mov	r0, #16
     aec:	ef000000 	svc	0x00000000
     af0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af4:	e12fff1e 	bx	lr

00000af8 <close>:
     af8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     afc:	e1a04003 	mov	r4, r3
     b00:	e1a03002 	mov	r3, r2
     b04:	e1a02001 	mov	r2, r1
     b08:	e1a01000 	mov	r1, r0
     b0c:	e3a00015 	mov	r0, #21
     b10:	ef000000 	svc	0x00000000
     b14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b18:	e12fff1e 	bx	lr

00000b1c <kill>:
     b1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b20:	e1a04003 	mov	r4, r3
     b24:	e1a03002 	mov	r3, r2
     b28:	e1a02001 	mov	r2, r1
     b2c:	e1a01000 	mov	r1, r0
     b30:	e3a00006 	mov	r0, #6
     b34:	ef000000 	svc	0x00000000
     b38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b3c:	e12fff1e 	bx	lr

00000b40 <exec>:
     b40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b44:	e1a04003 	mov	r4, r3
     b48:	e1a03002 	mov	r3, r2
     b4c:	e1a02001 	mov	r2, r1
     b50:	e1a01000 	mov	r1, r0
     b54:	e3a00007 	mov	r0, #7
     b58:	ef000000 	svc	0x00000000
     b5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b60:	e12fff1e 	bx	lr

00000b64 <open>:
     b64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b68:	e1a04003 	mov	r4, r3
     b6c:	e1a03002 	mov	r3, r2
     b70:	e1a02001 	mov	r2, r1
     b74:	e1a01000 	mov	r1, r0
     b78:	e3a0000f 	mov	r0, #15
     b7c:	ef000000 	svc	0x00000000
     b80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b84:	e12fff1e 	bx	lr

00000b88 <mknod>:
     b88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b8c:	e1a04003 	mov	r4, r3
     b90:	e1a03002 	mov	r3, r2
     b94:	e1a02001 	mov	r2, r1
     b98:	e1a01000 	mov	r1, r0
     b9c:	e3a00011 	mov	r0, #17
     ba0:	ef000000 	svc	0x00000000
     ba4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba8:	e12fff1e 	bx	lr

00000bac <unlink>:
     bac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb0:	e1a04003 	mov	r4, r3
     bb4:	e1a03002 	mov	r3, r2
     bb8:	e1a02001 	mov	r2, r1
     bbc:	e1a01000 	mov	r1, r0
     bc0:	e3a00012 	mov	r0, #18
     bc4:	ef000000 	svc	0x00000000
     bc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bcc:	e12fff1e 	bx	lr

00000bd0 <fstat>:
     bd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd4:	e1a04003 	mov	r4, r3
     bd8:	e1a03002 	mov	r3, r2
     bdc:	e1a02001 	mov	r2, r1
     be0:	e1a01000 	mov	r1, r0
     be4:	e3a00008 	mov	r0, #8
     be8:	ef000000 	svc	0x00000000
     bec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf0:	e12fff1e 	bx	lr

00000bf4 <link>:
     bf4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf8:	e1a04003 	mov	r4, r3
     bfc:	e1a03002 	mov	r3, r2
     c00:	e1a02001 	mov	r2, r1
     c04:	e1a01000 	mov	r1, r0
     c08:	e3a00013 	mov	r0, #19
     c0c:	ef000000 	svc	0x00000000
     c10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c14:	e12fff1e 	bx	lr

00000c18 <mkdir>:
     c18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c1c:	e1a04003 	mov	r4, r3
     c20:	e1a03002 	mov	r3, r2
     c24:	e1a02001 	mov	r2, r1
     c28:	e1a01000 	mov	r1, r0
     c2c:	e3a00014 	mov	r0, #20
     c30:	ef000000 	svc	0x00000000
     c34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c38:	e12fff1e 	bx	lr

00000c3c <chdir>:
     c3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c40:	e1a04003 	mov	r4, r3
     c44:	e1a03002 	mov	r3, r2
     c48:	e1a02001 	mov	r2, r1
     c4c:	e1a01000 	mov	r1, r0
     c50:	e3a00009 	mov	r0, #9
     c54:	ef000000 	svc	0x00000000
     c58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c5c:	e12fff1e 	bx	lr

00000c60 <dup>:
     c60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c64:	e1a04003 	mov	r4, r3
     c68:	e1a03002 	mov	r3, r2
     c6c:	e1a02001 	mov	r2, r1
     c70:	e1a01000 	mov	r1, r0
     c74:	e3a0000a 	mov	r0, #10
     c78:	ef000000 	svc	0x00000000
     c7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c80:	e12fff1e 	bx	lr

00000c84 <getpid>:
     c84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c88:	e1a04003 	mov	r4, r3
     c8c:	e1a03002 	mov	r3, r2
     c90:	e1a02001 	mov	r2, r1
     c94:	e1a01000 	mov	r1, r0
     c98:	e3a0000b 	mov	r0, #11
     c9c:	ef000000 	svc	0x00000000
     ca0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca4:	e12fff1e 	bx	lr

00000ca8 <sbrk>:
     ca8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cac:	e1a04003 	mov	r4, r3
     cb0:	e1a03002 	mov	r3, r2
     cb4:	e1a02001 	mov	r2, r1
     cb8:	e1a01000 	mov	r1, r0
     cbc:	e3a0000c 	mov	r0, #12
     cc0:	ef000000 	svc	0x00000000
     cc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc8:	e12fff1e 	bx	lr

00000ccc <sleep>:
     ccc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd0:	e1a04003 	mov	r4, r3
     cd4:	e1a03002 	mov	r3, r2
     cd8:	e1a02001 	mov	r2, r1
     cdc:	e1a01000 	mov	r1, r0
     ce0:	e3a0000d 	mov	r0, #13
     ce4:	ef000000 	svc	0x00000000
     ce8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cec:	e12fff1e 	bx	lr

00000cf0 <uptime>:
     cf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf4:	e1a04003 	mov	r4, r3
     cf8:	e1a03002 	mov	r3, r2
     cfc:	e1a02001 	mov	r2, r1
     d00:	e1a01000 	mov	r1, r0
     d04:	e3a0000e 	mov	r0, #14
     d08:	ef000000 	svc	0x00000000
     d0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d10:	e12fff1e 	bx	lr

00000d14 <disproc>:
     d14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d18:	e1a04003 	mov	r4, r3
     d1c:	e1a03002 	mov	r3, r2
     d20:	e1a02001 	mov	r2, r1
     d24:	e1a01000 	mov	r1, r0
     d28:	e3a00016 	mov	r0, #22
     d2c:	ef000000 	svc	0x00000000
     d30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d34:	e12fff1e 	bx	lr

00000d38 <srand>:
     d38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d3c:	e1a04003 	mov	r4, r3
     d40:	e1a03002 	mov	r3, r2
     d44:	e1a02001 	mov	r2, r1
     d48:	e1a01000 	mov	r1, r0
     d4c:	e3a00017 	mov	r0, #23
     d50:	ef000000 	svc	0x00000000
     d54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d58:	e12fff1e 	bx	lr

00000d5c <setticket>:
     d5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d60:	e1a04003 	mov	r4, r3
     d64:	e1a03002 	mov	r3, r2
     d68:	e1a02001 	mov	r2, r1
     d6c:	e1a01000 	mov	r1, r0
     d70:	e3a00018 	mov	r0, #24
     d74:	ef000000 	svc	0x00000000
     d78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d7c:	e12fff1e 	bx	lr

00000d80 <getpinfo>:
     d80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d84:	e1a04003 	mov	r4, r3
     d88:	e1a03002 	mov	r3, r2
     d8c:	e1a02001 	mov	r2, r1
     d90:	e1a01000 	mov	r1, r0
     d94:	e3a00019 	mov	r0, #25
     d98:	ef000000 	svc	0x00000000
     d9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da0:	e12fff1e 	bx	lr

00000da4 <printPages>:
     da4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da8:	e1a04003 	mov	r4, r3
     dac:	e1a03002 	mov	r3, r2
     db0:	e1a02001 	mov	r2, r1
     db4:	e1a01000 	mov	r1, r0
     db8:	e3a0001a 	mov	r0, #26
     dbc:	ef000000 	svc	0x00000000
     dc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc4:	e12fff1e 	bx	lr

00000dc8 <kpt>:
     dc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dcc:	e1a04003 	mov	r4, r3
     dd0:	e1a03002 	mov	r3, r2
     dd4:	e1a02001 	mov	r2, r1
     dd8:	e1a01000 	mov	r1, r0
     ddc:	e3a0001b 	mov	r0, #27
     de0:	ef000000 	svc	0x00000000
     de4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de8:	e12fff1e 	bx	lr

00000dec <thread_create>:
     dec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df0:	e1a04003 	mov	r4, r3
     df4:	e1a03002 	mov	r3, r2
     df8:	e1a02001 	mov	r2, r1
     dfc:	e1a01000 	mov	r1, r0
     e00:	e3a0001c 	mov	r0, #28
     e04:	ef000000 	svc	0x00000000
     e08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e0c:	e12fff1e 	bx	lr

00000e10 <thread_exit>:
     e10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e14:	e1a04003 	mov	r4, r3
     e18:	e1a03002 	mov	r3, r2
     e1c:	e1a02001 	mov	r2, r1
     e20:	e1a01000 	mov	r1, r0
     e24:	e3a0001d 	mov	r0, #29
     e28:	ef000000 	svc	0x00000000
     e2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e30:	e12fff1e 	bx	lr

00000e34 <thread_join>:
     e34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e38:	e1a04003 	mov	r4, r3
     e3c:	e1a03002 	mov	r3, r2
     e40:	e1a02001 	mov	r2, r1
     e44:	e1a01000 	mov	r1, r0
     e48:	e3a0001e 	mov	r0, #30
     e4c:	ef000000 	svc	0x00000000
     e50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e54:	e12fff1e 	bx	lr

00000e58 <waitpid>:
     e58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e5c:	e1a04003 	mov	r4, r3
     e60:	e1a03002 	mov	r3, r2
     e64:	e1a02001 	mov	r2, r1
     e68:	e1a01000 	mov	r1, r0
     e6c:	e3a0001f 	mov	r0, #31
     e70:	ef000000 	svc	0x00000000
     e74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e78:	e12fff1e 	bx	lr

00000e7c <barrier_init>:
     e7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e80:	e1a04003 	mov	r4, r3
     e84:	e1a03002 	mov	r3, r2
     e88:	e1a02001 	mov	r2, r1
     e8c:	e1a01000 	mov	r1, r0
     e90:	e3a00020 	mov	r0, #32
     e94:	ef000000 	svc	0x00000000
     e98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e9c:	e12fff1e 	bx	lr

00000ea0 <barrier_check>:
     ea0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea4:	e1a04003 	mov	r4, r3
     ea8:	e1a03002 	mov	r3, r2
     eac:	e1a02001 	mov	r2, r1
     eb0:	e1a01000 	mov	r1, r0
     eb4:	e3a00021 	mov	r0, #33	@ 0x21
     eb8:	ef000000 	svc	0x00000000
     ebc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec0:	e12fff1e 	bx	lr

00000ec4 <sleepChan>:
     ec4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec8:	e1a04003 	mov	r4, r3
     ecc:	e1a03002 	mov	r3, r2
     ed0:	e1a02001 	mov	r2, r1
     ed4:	e1a01000 	mov	r1, r0
     ed8:	e3a00022 	mov	r0, #34	@ 0x22
     edc:	ef000000 	svc	0x00000000
     ee0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee4:	e12fff1e 	bx	lr

00000ee8 <getChannel>:
     ee8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eec:	e1a04003 	mov	r4, r3
     ef0:	e1a03002 	mov	r3, r2
     ef4:	e1a02001 	mov	r2, r1
     ef8:	e1a01000 	mov	r1, r0
     efc:	e3a00023 	mov	r0, #35	@ 0x23
     f00:	ef000000 	svc	0x00000000
     f04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f08:	e12fff1e 	bx	lr

00000f0c <sigChan>:
     f0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f10:	e1a04003 	mov	r4, r3
     f14:	e1a03002 	mov	r3, r2
     f18:	e1a02001 	mov	r2, r1
     f1c:	e1a01000 	mov	r1, r0
     f20:	e3a00024 	mov	r0, #36	@ 0x24
     f24:	ef000000 	svc	0x00000000
     f28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f2c:	e12fff1e 	bx	lr

00000f30 <sigOneChan>:
     f30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f34:	e1a04003 	mov	r4, r3
     f38:	e1a03002 	mov	r3, r2
     f3c:	e1a02001 	mov	r2, r1
     f40:	e1a01000 	mov	r1, r0
     f44:	e3a00025 	mov	r0, #37	@ 0x25
     f48:	ef000000 	svc	0x00000000
     f4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f50:	e12fff1e 	bx	lr

00000f54 <putc>:
     f54:	e92d4800 	push	{fp, lr}
     f58:	e28db004 	add	fp, sp, #4
     f5c:	e24dd008 	sub	sp, sp, #8
     f60:	e50b0008 	str	r0, [fp, #-8]
     f64:	e1a03001 	mov	r3, r1
     f68:	e54b3009 	strb	r3, [fp, #-9]
     f6c:	e24b3009 	sub	r3, fp, #9
     f70:	e3a02001 	mov	r2, #1
     f74:	e1a01003 	mov	r1, r3
     f78:	e51b0008 	ldr	r0, [fp, #-8]
     f7c:	ebfffed4 	bl	ad4 <write>
     f80:	e1a00000 	nop			@ (mov r0, r0)
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}

00000f8c <printint>:
     f8c:	e92d4800 	push	{fp, lr}
     f90:	e28db004 	add	fp, sp, #4
     f94:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f98:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f9c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     fa0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     fa4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     fa8:	e3a03000 	mov	r3, #0
     fac:	e50b300c 	str	r3, [fp, #-12]
     fb0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     fb4:	e3530000 	cmp	r3, #0
     fb8:	0a000008 	beq	fe0 <printint+0x54>
     fbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fc0:	e3530000 	cmp	r3, #0
     fc4:	aa000005 	bge	fe0 <printint+0x54>
     fc8:	e3a03001 	mov	r3, #1
     fcc:	e50b300c 	str	r3, [fp, #-12]
     fd0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fd4:	e2633000 	rsb	r3, r3, #0
     fd8:	e50b3010 	str	r3, [fp, #-16]
     fdc:	ea000001 	b	fe8 <printint+0x5c>
     fe0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fe4:	e50b3010 	str	r3, [fp, #-16]
     fe8:	e3a03000 	mov	r3, #0
     fec:	e50b3008 	str	r3, [fp, #-8]
     ff0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ff4:	e51b3010 	ldr	r3, [fp, #-16]
     ff8:	e1a01002 	mov	r1, r2
     ffc:	e1a00003 	mov	r0, r3
    1000:	eb0001d5 	bl	175c <__aeabi_uidivmod>
    1004:	e1a03001 	mov	r3, r1
    1008:	e1a01003 	mov	r1, r3
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e2832001 	add	r2, r3, #1
    1014:	e50b2008 	str	r2, [fp, #-8]
    1018:	e59f20a0 	ldr	r2, [pc, #160]	@ 10c0 <printint+0x134>
    101c:	e7d22001 	ldrb	r2, [r2, r1]
    1020:	e2433004 	sub	r3, r3, #4
    1024:	e083300b 	add	r3, r3, fp
    1028:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    102c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1030:	e1a01003 	mov	r1, r3
    1034:	e51b0010 	ldr	r0, [fp, #-16]
    1038:	eb00018a 	bl	1668 <__udivsi3>
    103c:	e1a03000 	mov	r3, r0
    1040:	e50b3010 	str	r3, [fp, #-16]
    1044:	e51b3010 	ldr	r3, [fp, #-16]
    1048:	e3530000 	cmp	r3, #0
    104c:	1affffe7 	bne	ff0 <printint+0x64>
    1050:	e51b300c 	ldr	r3, [fp, #-12]
    1054:	e3530000 	cmp	r3, #0
    1058:	0a00000e 	beq	1098 <printint+0x10c>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e2832001 	add	r2, r3, #1
    1064:	e50b2008 	str	r2, [fp, #-8]
    1068:	e2433004 	sub	r3, r3, #4
    106c:	e083300b 	add	r3, r3, fp
    1070:	e3a0202d 	mov	r2, #45	@ 0x2d
    1074:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1078:	ea000006 	b	1098 <printint+0x10c>
    107c:	e24b2020 	sub	r2, fp, #32
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e0823003 	add	r3, r2, r3
    1088:	e5d33000 	ldrb	r3, [r3]
    108c:	e1a01003 	mov	r1, r3
    1090:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1094:	ebffffae 	bl	f54 <putc>
    1098:	e51b3008 	ldr	r3, [fp, #-8]
    109c:	e2433001 	sub	r3, r3, #1
    10a0:	e50b3008 	str	r3, [fp, #-8]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	aafffff2 	bge	107c <printint+0xf0>
    10b0:	e1a00000 	nop			@ (mov r0, r0)
    10b4:	e1a00000 	nop			@ (mov r0, r0)
    10b8:	e24bd004 	sub	sp, fp, #4
    10bc:	e8bd8800 	pop	{fp, pc}
    10c0:	00001888 	.word	0x00001888

000010c4 <printf>:
    10c4:	e92d000e 	push	{r1, r2, r3}
    10c8:	e92d4800 	push	{fp, lr}
    10cc:	e28db004 	add	fp, sp, #4
    10d0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    10d4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    10d8:	e3a03000 	mov	r3, #0
    10dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10e0:	e28b3008 	add	r3, fp, #8
    10e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e8:	e3a03000 	mov	r3, #0
    10ec:	e50b3010 	str	r3, [fp, #-16]
    10f0:	ea000074 	b	12c8 <printf+0x204>
    10f4:	e59b2004 	ldr	r2, [fp, #4]
    10f8:	e51b3010 	ldr	r3, [fp, #-16]
    10fc:	e0823003 	add	r3, r2, r3
    1100:	e5d33000 	ldrb	r3, [r3]
    1104:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1108:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    110c:	e3530000 	cmp	r3, #0
    1110:	1a00000b 	bne	1144 <printf+0x80>
    1114:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1118:	e3530025 	cmp	r3, #37	@ 0x25
    111c:	1a000002 	bne	112c <printf+0x68>
    1120:	e3a03025 	mov	r3, #37	@ 0x25
    1124:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1128:	ea000063 	b	12bc <printf+0x1f8>
    112c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1130:	e6ef3073 	uxtb	r3, r3
    1134:	e1a01003 	mov	r1, r3
    1138:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    113c:	ebffff84 	bl	f54 <putc>
    1140:	ea00005d 	b	12bc <printf+0x1f8>
    1144:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1148:	e3530025 	cmp	r3, #37	@ 0x25
    114c:	1a00005a 	bne	12bc <printf+0x1f8>
    1150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e3530064 	cmp	r3, #100	@ 0x64
    1158:	1a00000a 	bne	1188 <printf+0xc4>
    115c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e1a01003 	mov	r1, r3
    1168:	e3a03001 	mov	r3, #1
    116c:	e3a0200a 	mov	r2, #10
    1170:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1174:	ebffff84 	bl	f8c <printint>
    1178:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    117c:	e2833004 	add	r3, r3, #4
    1180:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1184:	ea00004a 	b	12b4 <printf+0x1f0>
    1188:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    118c:	e3530078 	cmp	r3, #120	@ 0x78
    1190:	0a000002 	beq	11a0 <printf+0xdc>
    1194:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1198:	e3530070 	cmp	r3, #112	@ 0x70
    119c:	1a00000a 	bne	11cc <printf+0x108>
    11a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e1a01003 	mov	r1, r3
    11ac:	e3a03000 	mov	r3, #0
    11b0:	e3a02010 	mov	r2, #16
    11b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b8:	ebffff73 	bl	f8c <printint>
    11bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c0:	e2833004 	add	r3, r3, #4
    11c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	ea000039 	b	12b4 <printf+0x1f0>
    11cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d0:	e3530073 	cmp	r3, #115	@ 0x73
    11d4:	1a000018 	bne	123c <printf+0x178>
    11d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11dc:	e5933000 	ldr	r3, [r3]
    11e0:	e50b300c 	str	r3, [fp, #-12]
    11e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e8:	e2833004 	add	r3, r3, #4
    11ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e3530000 	cmp	r3, #0
    11f8:	1a00000a 	bne	1228 <printf+0x164>
    11fc:	e59f30f4 	ldr	r3, [pc, #244]	@ 12f8 <printf+0x234>
    1200:	e50b300c 	str	r3, [fp, #-12]
    1204:	ea000007 	b	1228 <printf+0x164>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e5d33000 	ldrb	r3, [r3]
    1210:	e1a01003 	mov	r1, r3
    1214:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1218:	ebffff4d 	bl	f54 <putc>
    121c:	e51b300c 	ldr	r3, [fp, #-12]
    1220:	e2833001 	add	r3, r3, #1
    1224:	e50b300c 	str	r3, [fp, #-12]
    1228:	e51b300c 	ldr	r3, [fp, #-12]
    122c:	e5d33000 	ldrb	r3, [r3]
    1230:	e3530000 	cmp	r3, #0
    1234:	1afffff3 	bne	1208 <printf+0x144>
    1238:	ea00001d 	b	12b4 <printf+0x1f0>
    123c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1240:	e3530063 	cmp	r3, #99	@ 0x63
    1244:	1a000009 	bne	1270 <printf+0x1ac>
    1248:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e6ef3073 	uxtb	r3, r3
    1254:	e1a01003 	mov	r1, r3
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff3c 	bl	f54 <putc>
    1260:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1264:	e2833004 	add	r3, r3, #4
    1268:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    126c:	ea000010 	b	12b4 <printf+0x1f0>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e3530025 	cmp	r3, #37	@ 0x25
    1278:	1a000005 	bne	1294 <printf+0x1d0>
    127c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1280:	e6ef3073 	uxtb	r3, r3
    1284:	e1a01003 	mov	r1, r3
    1288:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    128c:	ebffff30 	bl	f54 <putc>
    1290:	ea000007 	b	12b4 <printf+0x1f0>
    1294:	e3a01025 	mov	r1, #37	@ 0x25
    1298:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    129c:	ebffff2c 	bl	f54 <putc>
    12a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a4:	e6ef3073 	uxtb	r3, r3
    12a8:	e1a01003 	mov	r1, r3
    12ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12b0:	ebffff27 	bl	f54 <putc>
    12b4:	e3a03000 	mov	r3, #0
    12b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12bc:	e51b3010 	ldr	r3, [fp, #-16]
    12c0:	e2833001 	add	r3, r3, #1
    12c4:	e50b3010 	str	r3, [fp, #-16]
    12c8:	e59b2004 	ldr	r2, [fp, #4]
    12cc:	e51b3010 	ldr	r3, [fp, #-16]
    12d0:	e0823003 	add	r3, r2, r3
    12d4:	e5d33000 	ldrb	r3, [r3]
    12d8:	e3530000 	cmp	r3, #0
    12dc:	1affff84 	bne	10f4 <printf+0x30>
    12e0:	e1a00000 	nop			@ (mov r0, r0)
    12e4:	e1a00000 	nop			@ (mov r0, r0)
    12e8:	e24bd004 	sub	sp, fp, #4
    12ec:	e8bd4800 	pop	{fp, lr}
    12f0:	e28dd00c 	add	sp, sp, #12
    12f4:	e12fff1e 	bx	lr
    12f8:	00001880 	.word	0x00001880

000012fc <free>:
    12fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1300:	e28db000 	add	fp, sp, #0
    1304:	e24dd014 	sub	sp, sp, #20
    1308:	e50b0010 	str	r0, [fp, #-16]
    130c:	e51b3010 	ldr	r3, [fp, #-16]
    1310:	e2433008 	sub	r3, r3, #8
    1314:	e50b300c 	str	r3, [fp, #-12]
    1318:	e59f3154 	ldr	r3, [pc, #340]	@ 1474 <free+0x178>
    131c:	e5933000 	ldr	r3, [r3]
    1320:	e50b3008 	str	r3, [fp, #-8]
    1324:	ea000010 	b	136c <free+0x70>
    1328:	e51b3008 	ldr	r3, [fp, #-8]
    132c:	e5933000 	ldr	r3, [r3]
    1330:	e51b2008 	ldr	r2, [fp, #-8]
    1334:	e1520003 	cmp	r2, r3
    1338:	3a000008 	bcc	1360 <free+0x64>
    133c:	e51b200c 	ldr	r2, [fp, #-12]
    1340:	e51b3008 	ldr	r3, [fp, #-8]
    1344:	e1520003 	cmp	r2, r3
    1348:	8a000010 	bhi	1390 <free+0x94>
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e5933000 	ldr	r3, [r3]
    1354:	e51b200c 	ldr	r2, [fp, #-12]
    1358:	e1520003 	cmp	r2, r3
    135c:	3a00000b 	bcc	1390 <free+0x94>
    1360:	e51b3008 	ldr	r3, [fp, #-8]
    1364:	e5933000 	ldr	r3, [r3]
    1368:	e50b3008 	str	r3, [fp, #-8]
    136c:	e51b200c 	ldr	r2, [fp, #-12]
    1370:	e51b3008 	ldr	r3, [fp, #-8]
    1374:	e1520003 	cmp	r2, r3
    1378:	9affffea 	bls	1328 <free+0x2c>
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5933000 	ldr	r3, [r3]
    1384:	e51b200c 	ldr	r2, [fp, #-12]
    1388:	e1520003 	cmp	r2, r3
    138c:	2affffe5 	bcs	1328 <free+0x2c>
    1390:	e51b300c 	ldr	r3, [fp, #-12]
    1394:	e5933004 	ldr	r3, [r3, #4]
    1398:	e1a03183 	lsl	r3, r3, #3
    139c:	e51b200c 	ldr	r2, [fp, #-12]
    13a0:	e0822003 	add	r2, r2, r3
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e1520003 	cmp	r2, r3
    13b0:	1a00000d 	bne	13ec <free+0xf0>
    13b4:	e51b300c 	ldr	r3, [fp, #-12]
    13b8:	e5932004 	ldr	r2, [r3, #4]
    13bc:	e51b3008 	ldr	r3, [fp, #-8]
    13c0:	e5933000 	ldr	r3, [r3]
    13c4:	e5933004 	ldr	r3, [r3, #4]
    13c8:	e0822003 	add	r2, r2, r3
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e5832004 	str	r2, [r3, #4]
    13d4:	e51b3008 	ldr	r3, [fp, #-8]
    13d8:	e5933000 	ldr	r3, [r3]
    13dc:	e5932000 	ldr	r2, [r3]
    13e0:	e51b300c 	ldr	r3, [fp, #-12]
    13e4:	e5832000 	str	r2, [r3]
    13e8:	ea000003 	b	13fc <free+0x100>
    13ec:	e51b3008 	ldr	r3, [fp, #-8]
    13f0:	e5932000 	ldr	r2, [r3]
    13f4:	e51b300c 	ldr	r3, [fp, #-12]
    13f8:	e5832000 	str	r2, [r3]
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5933004 	ldr	r3, [r3, #4]
    1404:	e1a03183 	lsl	r3, r3, #3
    1408:	e51b2008 	ldr	r2, [fp, #-8]
    140c:	e0823003 	add	r3, r2, r3
    1410:	e51b200c 	ldr	r2, [fp, #-12]
    1414:	e1520003 	cmp	r2, r3
    1418:	1a00000b 	bne	144c <free+0x150>
    141c:	e51b3008 	ldr	r3, [fp, #-8]
    1420:	e5932004 	ldr	r2, [r3, #4]
    1424:	e51b300c 	ldr	r3, [fp, #-12]
    1428:	e5933004 	ldr	r3, [r3, #4]
    142c:	e0822003 	add	r2, r2, r3
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5832004 	str	r2, [r3, #4]
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5932000 	ldr	r2, [r3]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5832000 	str	r2, [r3]
    1448:	ea000002 	b	1458 <free+0x15c>
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e51b200c 	ldr	r2, [fp, #-12]
    1454:	e5832000 	str	r2, [r3]
    1458:	e59f2014 	ldr	r2, [pc, #20]	@ 1474 <free+0x178>
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e5823000 	str	r3, [r2]
    1464:	e1a00000 	nop			@ (mov r0, r0)
    1468:	e28bd000 	add	sp, fp, #0
    146c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1470:	e12fff1e 	bx	lr
    1474:	00001aa4 	.word	0x00001aa4

00001478 <morecore>:
    1478:	e92d4800 	push	{fp, lr}
    147c:	e28db004 	add	fp, sp, #4
    1480:	e24dd010 	sub	sp, sp, #16
    1484:	e50b0010 	str	r0, [fp, #-16]
    1488:	e51b3010 	ldr	r3, [fp, #-16]
    148c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1490:	2a000001 	bcs	149c <morecore+0x24>
    1494:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1498:	e50b3010 	str	r3, [fp, #-16]
    149c:	e51b3010 	ldr	r3, [fp, #-16]
    14a0:	e1a03183 	lsl	r3, r3, #3
    14a4:	e1a00003 	mov	r0, r3
    14a8:	ebfffdfe 	bl	ca8 <sbrk>
    14ac:	e50b0008 	str	r0, [fp, #-8]
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e3730001 	cmn	r3, #1
    14b8:	1a000001 	bne	14c4 <morecore+0x4c>
    14bc:	e3a03000 	mov	r3, #0
    14c0:	ea00000a 	b	14f0 <morecore+0x78>
    14c4:	e51b3008 	ldr	r3, [fp, #-8]
    14c8:	e50b300c 	str	r3, [fp, #-12]
    14cc:	e51b300c 	ldr	r3, [fp, #-12]
    14d0:	e51b2010 	ldr	r2, [fp, #-16]
    14d4:	e5832004 	str	r2, [r3, #4]
    14d8:	e51b300c 	ldr	r3, [fp, #-12]
    14dc:	e2833008 	add	r3, r3, #8
    14e0:	e1a00003 	mov	r0, r3
    14e4:	ebffff84 	bl	12fc <free>
    14e8:	e59f300c 	ldr	r3, [pc, #12]	@ 14fc <morecore+0x84>
    14ec:	e5933000 	ldr	r3, [r3]
    14f0:	e1a00003 	mov	r0, r3
    14f4:	e24bd004 	sub	sp, fp, #4
    14f8:	e8bd8800 	pop	{fp, pc}
    14fc:	00001aa4 	.word	0x00001aa4

00001500 <malloc>:
    1500:	e92d4800 	push	{fp, lr}
    1504:	e28db004 	add	fp, sp, #4
    1508:	e24dd018 	sub	sp, sp, #24
    150c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1510:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1514:	e2833007 	add	r3, r3, #7
    1518:	e1a031a3 	lsr	r3, r3, #3
    151c:	e2833001 	add	r3, r3, #1
    1520:	e50b3010 	str	r3, [fp, #-16]
    1524:	e59f3134 	ldr	r3, [pc, #308]	@ 1660 <malloc+0x160>
    1528:	e5933000 	ldr	r3, [r3]
    152c:	e50b300c 	str	r3, [fp, #-12]
    1530:	e51b300c 	ldr	r3, [fp, #-12]
    1534:	e3530000 	cmp	r3, #0
    1538:	1a00000b 	bne	156c <malloc+0x6c>
    153c:	e59f3120 	ldr	r3, [pc, #288]	@ 1664 <malloc+0x164>
    1540:	e50b300c 	str	r3, [fp, #-12]
    1544:	e59f2114 	ldr	r2, [pc, #276]	@ 1660 <malloc+0x160>
    1548:	e51b300c 	ldr	r3, [fp, #-12]
    154c:	e5823000 	str	r3, [r2]
    1550:	e59f3108 	ldr	r3, [pc, #264]	@ 1660 <malloc+0x160>
    1554:	e5933000 	ldr	r3, [r3]
    1558:	e59f2104 	ldr	r2, [pc, #260]	@ 1664 <malloc+0x164>
    155c:	e5823000 	str	r3, [r2]
    1560:	e59f30fc 	ldr	r3, [pc, #252]	@ 1664 <malloc+0x164>
    1564:	e3a02000 	mov	r2, #0
    1568:	e5832004 	str	r2, [r3, #4]
    156c:	e51b300c 	ldr	r3, [fp, #-12]
    1570:	e5933000 	ldr	r3, [r3]
    1574:	e50b3008 	str	r3, [fp, #-8]
    1578:	e51b3008 	ldr	r3, [fp, #-8]
    157c:	e5933004 	ldr	r3, [r3, #4]
    1580:	e51b2010 	ldr	r2, [fp, #-16]
    1584:	e1520003 	cmp	r2, r3
    1588:	8a00001e 	bhi	1608 <malloc+0x108>
    158c:	e51b3008 	ldr	r3, [fp, #-8]
    1590:	e5933004 	ldr	r3, [r3, #4]
    1594:	e51b2010 	ldr	r2, [fp, #-16]
    1598:	e1520003 	cmp	r2, r3
    159c:	1a000004 	bne	15b4 <malloc+0xb4>
    15a0:	e51b3008 	ldr	r3, [fp, #-8]
    15a4:	e5932000 	ldr	r2, [r3]
    15a8:	e51b300c 	ldr	r3, [fp, #-12]
    15ac:	e5832000 	str	r2, [r3]
    15b0:	ea00000e 	b	15f0 <malloc+0xf0>
    15b4:	e51b3008 	ldr	r3, [fp, #-8]
    15b8:	e5932004 	ldr	r2, [r3, #4]
    15bc:	e51b3010 	ldr	r3, [fp, #-16]
    15c0:	e0422003 	sub	r2, r2, r3
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5832004 	str	r2, [r3, #4]
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5933004 	ldr	r3, [r3, #4]
    15d4:	e1a03183 	lsl	r3, r3, #3
    15d8:	e51b2008 	ldr	r2, [fp, #-8]
    15dc:	e0823003 	add	r3, r2, r3
    15e0:	e50b3008 	str	r3, [fp, #-8]
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e51b2010 	ldr	r2, [fp, #-16]
    15ec:	e5832004 	str	r2, [r3, #4]
    15f0:	e59f2068 	ldr	r2, [pc, #104]	@ 1660 <malloc+0x160>
    15f4:	e51b300c 	ldr	r3, [fp, #-12]
    15f8:	e5823000 	str	r3, [r2]
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e2833008 	add	r3, r3, #8
    1604:	ea000012 	b	1654 <malloc+0x154>
    1608:	e59f3050 	ldr	r3, [pc, #80]	@ 1660 <malloc+0x160>
    160c:	e5933000 	ldr	r3, [r3]
    1610:	e51b2008 	ldr	r2, [fp, #-8]
    1614:	e1520003 	cmp	r2, r3
    1618:	1a000007 	bne	163c <malloc+0x13c>
    161c:	e51b0010 	ldr	r0, [fp, #-16]
    1620:	ebffff94 	bl	1478 <morecore>
    1624:	e50b0008 	str	r0, [fp, #-8]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e3530000 	cmp	r3, #0
    1630:	1a000001 	bne	163c <malloc+0x13c>
    1634:	e3a03000 	mov	r3, #0
    1638:	ea000005 	b	1654 <malloc+0x154>
    163c:	e51b3008 	ldr	r3, [fp, #-8]
    1640:	e50b300c 	str	r3, [fp, #-12]
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5933000 	ldr	r3, [r3]
    164c:	e50b3008 	str	r3, [fp, #-8]
    1650:	eaffffc8 	b	1578 <malloc+0x78>
    1654:	e1a00003 	mov	r0, r3
    1658:	e24bd004 	sub	sp, fp, #4
    165c:	e8bd8800 	pop	{fp, pc}
    1660:	00001aa4 	.word	0x00001aa4
    1664:	00001a9c 	.word	0x00001a9c

00001668 <__udivsi3>:
    1668:	e2512001 	subs	r2, r1, #1
    166c:	012fff1e 	bxeq	lr
    1670:	3a000036 	bcc	1750 <__udivsi3+0xe8>
    1674:	e1500001 	cmp	r0, r1
    1678:	9a000022 	bls	1708 <__udivsi3+0xa0>
    167c:	e1110002 	tst	r1, r2
    1680:	0a000023 	beq	1714 <__udivsi3+0xac>
    1684:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1688:	01a01181 	lsleq	r1, r1, #3
    168c:	03a03008 	moveq	r3, #8
    1690:	13a03001 	movne	r3, #1
    1694:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1698:	31510000 	cmpcc	r1, r0
    169c:	31a01201 	lslcc	r1, r1, #4
    16a0:	31a03203 	lslcc	r3, r3, #4
    16a4:	3afffffa 	bcc	1694 <__udivsi3+0x2c>
    16a8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    16ac:	31510000 	cmpcc	r1, r0
    16b0:	31a01081 	lslcc	r1, r1, #1
    16b4:	31a03083 	lslcc	r3, r3, #1
    16b8:	3afffffa 	bcc	16a8 <__udivsi3+0x40>
    16bc:	e3a02000 	mov	r2, #0
    16c0:	e1500001 	cmp	r0, r1
    16c4:	20400001 	subcs	r0, r0, r1
    16c8:	21822003 	orrcs	r2, r2, r3
    16cc:	e15000a1 	cmp	r0, r1, lsr #1
    16d0:	204000a1 	subcs	r0, r0, r1, lsr #1
    16d4:	218220a3 	orrcs	r2, r2, r3, lsr #1
    16d8:	e1500121 	cmp	r0, r1, lsr #2
    16dc:	20400121 	subcs	r0, r0, r1, lsr #2
    16e0:	21822123 	orrcs	r2, r2, r3, lsr #2
    16e4:	e15001a1 	cmp	r0, r1, lsr #3
    16e8:	204001a1 	subcs	r0, r0, r1, lsr #3
    16ec:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16f0:	e3500000 	cmp	r0, #0
    16f4:	11b03223 	lsrsne	r3, r3, #4
    16f8:	11a01221 	lsrne	r1, r1, #4
    16fc:	1affffef 	bne	16c0 <__udivsi3+0x58>
    1700:	e1a00002 	mov	r0, r2
    1704:	e12fff1e 	bx	lr
    1708:	03a00001 	moveq	r0, #1
    170c:	13a00000 	movne	r0, #0
    1710:	e12fff1e 	bx	lr
    1714:	e3510801 	cmp	r1, #65536	@ 0x10000
    1718:	21a01821 	lsrcs	r1, r1, #16
    171c:	23a02010 	movcs	r2, #16
    1720:	33a02000 	movcc	r2, #0
    1724:	e3510c01 	cmp	r1, #256	@ 0x100
    1728:	21a01421 	lsrcs	r1, r1, #8
    172c:	22822008 	addcs	r2, r2, #8
    1730:	e3510010 	cmp	r1, #16
    1734:	21a01221 	lsrcs	r1, r1, #4
    1738:	22822004 	addcs	r2, r2, #4
    173c:	e3510004 	cmp	r1, #4
    1740:	82822003 	addhi	r2, r2, #3
    1744:	908220a1 	addls	r2, r2, r1, lsr #1
    1748:	e1a00230 	lsr	r0, r0, r2
    174c:	e12fff1e 	bx	lr
    1750:	e3500000 	cmp	r0, #0
    1754:	13e00000 	mvnne	r0, #0
    1758:	ea000007 	b	177c <__aeabi_idiv0>

0000175c <__aeabi_uidivmod>:
    175c:	e3510000 	cmp	r1, #0
    1760:	0afffffa 	beq	1750 <__udivsi3+0xe8>
    1764:	e92d4003 	push	{r0, r1, lr}
    1768:	ebffffbe 	bl	1668 <__udivsi3>
    176c:	e8bd4006 	pop	{r1, r2, lr}
    1770:	e0030092 	mul	r3, r2, r0
    1774:	e0411003 	sub	r1, r1, r3
    1778:	e12fff1e 	bx	lr

0000177c <__aeabi_idiv0>:
    177c:	e12fff1e 	bx	lr
