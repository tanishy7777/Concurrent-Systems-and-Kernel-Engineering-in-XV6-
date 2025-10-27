
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb00012d 	bl	4d0 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	@ 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000118 	bl	4d0 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb000111 	bl	4d0 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb0001ed 	bl	854 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb00010a 	bl	4d0 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb000105 	bl	4d0 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000114 	bl	524 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	00001b2c 	.word	0x00001b2c

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb000333 	bl	dd0 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb000483 	bl	1330 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb000341 	bl	e3c <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb000477 	bl	1330 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb000302 	bl	d64 <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000064 	bne	30c <ls+0x228>
     178:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	@ 324 <ls+0x240>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb00045d 	bl	1330 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000c2 	bl	4d0 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb000453 	bl	1330 <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00007e 	bl	3f0 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000b3 	bl	4d0 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	@ 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002f 	b	2e8 <ls+0x204>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	@ 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	0a000029 	beq	2e4 <ls+0x200>
     23c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     240:	e2833002 	add	r3, r3, #2
     244:	e3a0200e 	mov	r2, #14
     248:	e1a01003 	mov	r1, r3
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	eb00017f 	bl	854 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb00013d 	bl	770 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb000425 	bl	1330 <printf>
     298:	ea000012 	b	2e8 <ls+0x204>
     29c:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     2a0:	e1a00003 	mov	r0, r3
     2a4:	ebffff55 	bl	0 <fmtname>
     2a8:	e1a01000 	mov	r1, r0
     2ac:	e24b3004 	sub	r3, fp, #4
     2b0:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     2b4:	e1d330f0 	ldrsh	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     2c0:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     2c4:	e58d2004 	str	r2, [sp, #4]
     2c8:	e58d3000 	str	r3, [sp]
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e1a02001 	mov	r2, r1
     2d4:	e59f1048 	ldr	r1, [pc, #72]	@ 324 <ls+0x240>
     2d8:	e3a00001 	mov	r0, #1
     2dc:	eb000413 	bl	1330 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb000287 	bl	d1c <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb000293 	bl	d64 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	000019ec 	.word	0x000019ec
     320:	00001a00 	.word	0x00001a00
     324:	00001a14 	.word	0x00001a14
     328:	00001a24 	.word	0x00001a24

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	@ 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb000255 	bl	cb0 <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb000243 	bl	cb0 <exit>
     3a0:	00001a38 	.word	0x00001a38

000003a4 <xchg>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e51b1010 	ldr	r1, [fp, #-16]
     3bc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     3c0:	e1912f9f 	ldrex	r2, [r1]
     3c4:	e1813f90 	strex	r3, r0, [r1]
     3c8:	e50b2008 	str	r2, [fp, #-8]
     3cc:	e50b300c 	str	r3, [fp, #-12]
     3d0:	e51b300c 	ldr	r3, [fp, #-12]
     3d4:	e3530000 	cmp	r3, #0
     3d8:	1afffff6 	bne	3b8 <xchg+0x14>
     3dc:	e51b3008 	ldr	r3, [fp, #-8]
     3e0:	e1a00003 	mov	r0, r3
     3e4:	e28bd000 	add	sp, fp, #0
     3e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3ec:	e12fff1e 	bx	lr

000003f0 <strcpy>:
     3f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3f4:	e28db000 	add	fp, sp, #0
     3f8:	e24dd014 	sub	sp, sp, #20
     3fc:	e50b0010 	str	r0, [fp, #-16]
     400:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     404:	e51b3010 	ldr	r3, [fp, #-16]
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	e1a00000 	nop			@ (mov r0, r0)
     410:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     414:	e2823001 	add	r3, r2, #1
     418:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     41c:	e51b3010 	ldr	r3, [fp, #-16]
     420:	e2831001 	add	r1, r3, #1
     424:	e50b1010 	str	r1, [fp, #-16]
     428:	e5d22000 	ldrb	r2, [r2]
     42c:	e5c32000 	strb	r2, [r3]
     430:	e5d33000 	ldrb	r3, [r3]
     434:	e3530000 	cmp	r3, #0
     438:	1afffff4 	bne	410 <strcpy+0x20>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e1a00003 	mov	r0, r3
     444:	e28bd000 	add	sp, fp, #0
     448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     44c:	e12fff1e 	bx	lr

00000450 <strcmp>:
     450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     454:	e28db000 	add	fp, sp, #0
     458:	e24dd00c 	sub	sp, sp, #12
     45c:	e50b0008 	str	r0, [fp, #-8]
     460:	e50b100c 	str	r1, [fp, #-12]
     464:	ea000005 	b	480 <strcmp+0x30>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e2833001 	add	r3, r3, #1
     470:	e50b3008 	str	r3, [fp, #-8]
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b300c 	str	r3, [fp, #-12]
     480:	e51b3008 	ldr	r3, [fp, #-8]
     484:	e5d33000 	ldrb	r3, [r3]
     488:	e3530000 	cmp	r3, #0
     48c:	0a000005 	beq	4a8 <strcmp+0x58>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e5d32000 	ldrb	r2, [r3]
     498:	e51b300c 	ldr	r3, [fp, #-12]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e1520003 	cmp	r2, r3
     4a4:	0affffef 	beq	468 <strcmp+0x18>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e5d33000 	ldrb	r3, [r3]
     4b0:	e1a02003 	mov	r2, r3
     4b4:	e51b300c 	ldr	r3, [fp, #-12]
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e0423003 	sub	r3, r2, r3
     4c0:	e1a00003 	mov	r0, r3
     4c4:	e28bd000 	add	sp, fp, #0
     4c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4cc:	e12fff1e 	bx	lr

000004d0 <strlen>:
     4d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4d4:	e28db000 	add	fp, sp, #0
     4d8:	e24dd014 	sub	sp, sp, #20
     4dc:	e50b0010 	str	r0, [fp, #-16]
     4e0:	e3a03000 	mov	r3, #0
     4e4:	e50b3008 	str	r3, [fp, #-8]
     4e8:	ea000002 	b	4f8 <strlen+0x28>
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e2833001 	add	r3, r3, #1
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e51b2010 	ldr	r2, [fp, #-16]
     500:	e0823003 	add	r3, r2, r3
     504:	e5d33000 	ldrb	r3, [r3]
     508:	e3530000 	cmp	r3, #0
     50c:	1afffff6 	bne	4ec <strlen+0x1c>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e1a00003 	mov	r0, r3
     518:	e28bd000 	add	sp, fp, #0
     51c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     520:	e12fff1e 	bx	lr

00000524 <memset>:
     524:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     528:	e28db000 	add	fp, sp, #0
     52c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     530:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     534:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     538:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     53c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     540:	e50b3008 	str	r3, [fp, #-8]
     544:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     548:	e54b300d 	strb	r3, [fp, #-13]
     54c:	e55b200d 	ldrb	r2, [fp, #-13]
     550:	e1a03002 	mov	r3, r2
     554:	e1a03403 	lsl	r3, r3, #8
     558:	e0833002 	add	r3, r3, r2
     55c:	e1a03803 	lsl	r3, r3, #16
     560:	e1a02003 	mov	r2, r3
     564:	e55b300d 	ldrb	r3, [fp, #-13]
     568:	e1a03403 	lsl	r3, r3, #8
     56c:	e1822003 	orr	r2, r2, r3
     570:	e55b300d 	ldrb	r3, [fp, #-13]
     574:	e1823003 	orr	r3, r2, r3
     578:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     57c:	ea000008 	b	5a4 <memset+0x80>
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e55b200d 	ldrb	r2, [fp, #-13]
     588:	e5c32000 	strb	r2, [r3]
     58c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     590:	e2433001 	sub	r3, r3, #1
     594:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e2833001 	add	r3, r3, #1
     5a0:	e50b3008 	str	r3, [fp, #-8]
     5a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5a8:	e3530000 	cmp	r3, #0
     5ac:	0a000003 	beq	5c0 <memset+0x9c>
     5b0:	e51b3008 	ldr	r3, [fp, #-8]
     5b4:	e2033003 	and	r3, r3, #3
     5b8:	e3530000 	cmp	r3, #0
     5bc:	1affffef 	bne	580 <memset+0x5c>
     5c0:	e51b3008 	ldr	r3, [fp, #-8]
     5c4:	e50b300c 	str	r3, [fp, #-12]
     5c8:	ea000008 	b	5f0 <memset+0xcc>
     5cc:	e51b300c 	ldr	r3, [fp, #-12]
     5d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5d4:	e5832000 	str	r2, [r3]
     5d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5dc:	e2433004 	sub	r3, r3, #4
     5e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5e4:	e51b300c 	ldr	r3, [fp, #-12]
     5e8:	e2833004 	add	r3, r3, #4
     5ec:	e50b300c 	str	r3, [fp, #-12]
     5f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5f4:	e3530003 	cmp	r3, #3
     5f8:	8afffff3 	bhi	5cc <memset+0xa8>
     5fc:	e51b300c 	ldr	r3, [fp, #-12]
     600:	e50b3008 	str	r3, [fp, #-8]
     604:	ea000008 	b	62c <memset+0x108>
     608:	e51b3008 	ldr	r3, [fp, #-8]
     60c:	e55b200d 	ldrb	r2, [fp, #-13]
     610:	e5c32000 	strb	r2, [r3]
     614:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     618:	e2433001 	sub	r3, r3, #1
     61c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e2833001 	add	r3, r3, #1
     628:	e50b3008 	str	r3, [fp, #-8]
     62c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     630:	e3530000 	cmp	r3, #0
     634:	1afffff3 	bne	608 <memset+0xe4>
     638:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     63c:	e1a00003 	mov	r0, r3
     640:	e28bd000 	add	sp, fp, #0
     644:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     648:	e12fff1e 	bx	lr

0000064c <strchr>:
     64c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     650:	e28db000 	add	fp, sp, #0
     654:	e24dd00c 	sub	sp, sp, #12
     658:	e50b0008 	str	r0, [fp, #-8]
     65c:	e1a03001 	mov	r3, r1
     660:	e54b3009 	strb	r3, [fp, #-9]
     664:	ea000009 	b	690 <strchr+0x44>
     668:	e51b3008 	ldr	r3, [fp, #-8]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e55b2009 	ldrb	r2, [fp, #-9]
     674:	e1520003 	cmp	r2, r3
     678:	1a000001 	bne	684 <strchr+0x38>
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	ea000007 	b	6a4 <strchr+0x58>
     684:	e51b3008 	ldr	r3, [fp, #-8]
     688:	e2833001 	add	r3, r3, #1
     68c:	e50b3008 	str	r3, [fp, #-8]
     690:	e51b3008 	ldr	r3, [fp, #-8]
     694:	e5d33000 	ldrb	r3, [r3]
     698:	e3530000 	cmp	r3, #0
     69c:	1afffff1 	bne	668 <strchr+0x1c>
     6a0:	e3a03000 	mov	r3, #0
     6a4:	e1a00003 	mov	r0, r3
     6a8:	e28bd000 	add	sp, fp, #0
     6ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <gets>:
     6b4:	e92d4800 	push	{fp, lr}
     6b8:	e28db004 	add	fp, sp, #4
     6bc:	e24dd018 	sub	sp, sp, #24
     6c0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     6c4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     6c8:	e3a03000 	mov	r3, #0
     6cc:	e50b3008 	str	r3, [fp, #-8]
     6d0:	ea000016 	b	730 <gets+0x7c>
     6d4:	e24b300d 	sub	r3, fp, #13
     6d8:	e3a02001 	mov	r2, #1
     6dc:	e1a01003 	mov	r1, r3
     6e0:	e3a00000 	mov	r0, #0
     6e4:	eb00018c 	bl	d1c <read>
     6e8:	e50b000c 	str	r0, [fp, #-12]
     6ec:	e51b300c 	ldr	r3, [fp, #-12]
     6f0:	e3530000 	cmp	r3, #0
     6f4:	da000013 	ble	748 <gets+0x94>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e2832001 	add	r2, r3, #1
     700:	e50b2008 	str	r2, [fp, #-8]
     704:	e1a02003 	mov	r2, r3
     708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     70c:	e0833002 	add	r3, r3, r2
     710:	e55b200d 	ldrb	r2, [fp, #-13]
     714:	e5c32000 	strb	r2, [r3]
     718:	e55b300d 	ldrb	r3, [fp, #-13]
     71c:	e353000a 	cmp	r3, #10
     720:	0a000009 	beq	74c <gets+0x98>
     724:	e55b300d 	ldrb	r3, [fp, #-13]
     728:	e353000d 	cmp	r3, #13
     72c:	0a000006 	beq	74c <gets+0x98>
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e2833001 	add	r3, r3, #1
     738:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     73c:	e1520003 	cmp	r2, r3
     740:	caffffe3 	bgt	6d4 <gets+0x20>
     744:	ea000000 	b	74c <gets+0x98>
     748:	e1a00000 	nop			@ (mov r0, r0)
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     754:	e0823003 	add	r3, r2, r3
     758:	e3a02000 	mov	r2, #0
     75c:	e5c32000 	strb	r2, [r3]
     760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     764:	e1a00003 	mov	r0, r3
     768:	e24bd004 	sub	sp, fp, #4
     76c:	e8bd8800 	pop	{fp, pc}

00000770 <stat>:
     770:	e92d4800 	push	{fp, lr}
     774:	e28db004 	add	fp, sp, #4
     778:	e24dd010 	sub	sp, sp, #16
     77c:	e50b0010 	str	r0, [fp, #-16]
     780:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     784:	e3a01000 	mov	r1, #0
     788:	e51b0010 	ldr	r0, [fp, #-16]
     78c:	eb00018f 	bl	dd0 <open>
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e3530000 	cmp	r3, #0
     79c:	aa000001 	bge	7a8 <stat+0x38>
     7a0:	e3e03000 	mvn	r3, #0
     7a4:	ea000006 	b	7c4 <stat+0x54>
     7a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     7ac:	e51b0008 	ldr	r0, [fp, #-8]
     7b0:	eb0001a1 	bl	e3c <fstat>
     7b4:	e50b000c 	str	r0, [fp, #-12]
     7b8:	e51b0008 	ldr	r0, [fp, #-8]
     7bc:	eb000168 	bl	d64 <close>
     7c0:	e51b300c 	ldr	r3, [fp, #-12]
     7c4:	e1a00003 	mov	r0, r3
     7c8:	e24bd004 	sub	sp, fp, #4
     7cc:	e8bd8800 	pop	{fp, pc}

000007d0 <atoi>:
     7d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     7d4:	e28db000 	add	fp, sp, #0
     7d8:	e24dd014 	sub	sp, sp, #20
     7dc:	e50b0010 	str	r0, [fp, #-16]
     7e0:	e3a03000 	mov	r3, #0
     7e4:	e50b3008 	str	r3, [fp, #-8]
     7e8:	ea00000c 	b	820 <atoi+0x50>
     7ec:	e51b2008 	ldr	r2, [fp, #-8]
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a03103 	lsl	r3, r3, #2
     7f8:	e0833002 	add	r3, r3, r2
     7fc:	e1a03083 	lsl	r3, r3, #1
     800:	e1a01003 	mov	r1, r3
     804:	e51b3010 	ldr	r3, [fp, #-16]
     808:	e2832001 	add	r2, r3, #1
     80c:	e50b2010 	str	r2, [fp, #-16]
     810:	e5d33000 	ldrb	r3, [r3]
     814:	e0813003 	add	r3, r1, r3
     818:	e2433030 	sub	r3, r3, #48	@ 0x30
     81c:	e50b3008 	str	r3, [fp, #-8]
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e5d33000 	ldrb	r3, [r3]
     828:	e353002f 	cmp	r3, #47	@ 0x2f
     82c:	9a000003 	bls	840 <atoi+0x70>
     830:	e51b3010 	ldr	r3, [fp, #-16]
     834:	e5d33000 	ldrb	r3, [r3]
     838:	e3530039 	cmp	r3, #57	@ 0x39
     83c:	9affffea 	bls	7ec <atoi+0x1c>
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e1a00003 	mov	r0, r3
     848:	e28bd000 	add	sp, fp, #0
     84c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <memmove>:
     854:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     858:	e28db000 	add	fp, sp, #0
     85c:	e24dd01c 	sub	sp, sp, #28
     860:	e50b0010 	str	r0, [fp, #-16]
     864:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     868:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     86c:	e51b3010 	ldr	r3, [fp, #-16]
     870:	e50b3008 	str	r3, [fp, #-8]
     874:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     878:	e50b300c 	str	r3, [fp, #-12]
     87c:	ea000007 	b	8a0 <memmove+0x4c>
     880:	e51b200c 	ldr	r2, [fp, #-12]
     884:	e2823001 	add	r3, r2, #1
     888:	e50b300c 	str	r3, [fp, #-12]
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e2831001 	add	r1, r3, #1
     894:	e50b1008 	str	r1, [fp, #-8]
     898:	e5d22000 	ldrb	r2, [r2]
     89c:	e5c32000 	strb	r2, [r3]
     8a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     8a4:	e2432001 	sub	r2, r3, #1
     8a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8ac:	e3530000 	cmp	r3, #0
     8b0:	cafffff2 	bgt	880 <memmove+0x2c>
     8b4:	e51b3010 	ldr	r3, [fp, #-16]
     8b8:	e1a00003 	mov	r0, r3
     8bc:	e28bd000 	add	sp, fp, #0
     8c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <initiateLock>:
     8c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8cc:	e28db000 	add	fp, sp, #0
     8d0:	e24dd00c 	sub	sp, sp, #12
     8d4:	e50b0008 	str	r0, [fp, #-8]
     8d8:	e51b3008 	ldr	r3, [fp, #-8]
     8dc:	e3a02000 	mov	r2, #0
     8e0:	e5832000 	str	r2, [r3]
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e3a02001 	mov	r2, #1
     8ec:	e5832004 	str	r2, [r3, #4]
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e28bd000 	add	sp, fp, #0
     8f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <acquireLock>:
     900:	e92d4800 	push	{fp, lr}
     904:	e28db004 	add	fp, sp, #4
     908:	e24dd008 	sub	sp, sp, #8
     90c:	e50b0008 	str	r0, [fp, #-8]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5933000 	ldr	r3, [r3]
     918:	e3730001 	cmn	r3, #1
     91c:	1a000002 	bne	92c <acquireLock+0x2c>
     920:	e59f1034 	ldr	r1, [pc, #52]	@ 95c <acquireLock+0x5c>
     924:	e3a00002 	mov	r0, #2
     928:	eb000280 	bl	1330 <printf>
     92c:	e1a00000 	nop			@ (mov r0, r0)
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e3a01001 	mov	r1, #1
     938:	e1a00003 	mov	r0, r3
     93c:	ebfffe98 	bl	3a4 <xchg>
     940:	e1a03000 	mov	r3, r0
     944:	e3530000 	cmp	r3, #0
     948:	1afffff8 	bne	930 <acquireLock+0x30>
     94c:	e1a00000 	nop			@ (mov r0, r0)
     950:	e1a00000 	nop			@ (mov r0, r0)
     954:	e24bd004 	sub	sp, fp, #4
     958:	e8bd8800 	pop	{fp, pc}
     95c:	00001a3c 	.word	0x00001a3c

00000960 <releaseLock>:
     960:	e92d4800 	push	{fp, lr}
     964:	e28db004 	add	fp, sp, #4
     968:	e24dd008 	sub	sp, sp, #8
     96c:	e50b0008 	str	r0, [fp, #-8]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e5933000 	ldr	r3, [r3]
     978:	e3530001 	cmp	r3, #1
     97c:	0a000002 	beq	98c <releaseLock+0x2c>
     980:	e59f1020 	ldr	r1, [pc, #32]	@ 9a8 <releaseLock+0x48>
     984:	e3a00002 	mov	r0, #2
     988:	eb000268 	bl	1330 <printf>
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e3a01000 	mov	r1, #0
     994:	e1a00003 	mov	r0, r3
     998:	ebfffe81 	bl	3a4 <xchg>
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e24bd004 	sub	sp, fp, #4
     9a4:	e8bd8800 	pop	{fp, pc}
     9a8:	00001a6c 	.word	0x00001a6c

000009ac <initiateCondVar>:
     9ac:	e92d4800 	push	{fp, lr}
     9b0:	e28db004 	add	fp, sp, #4
     9b4:	e24dd008 	sub	sp, sp, #8
     9b8:	e50b0008 	str	r0, [fp, #-8]
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e5933004 	ldr	r3, [r3, #4]
     9c4:	e3530000 	cmp	r3, #0
     9c8:	1a000007 	bne	9ec <initiateCondVar+0x40>
     9cc:	eb0001e0 	bl	1154 <getChannel>
     9d0:	e1a02000 	mov	r2, r0
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e5832000 	str	r2, [r3]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e3a02001 	mov	r2, #1
     9e4:	e5832004 	str	r2, [r3, #4]
     9e8:	ea000000 	b	9f0 <initiateCondVar+0x44>
     9ec:	e1a00000 	nop			@ (mov r0, r0)
     9f0:	e24bd004 	sub	sp, fp, #4
     9f4:	e8bd8800 	pop	{fp, pc}

000009f8 <condWait>:
     9f8:	e92d4800 	push	{fp, lr}
     9fc:	e28db004 	add	fp, sp, #4
     a00:	e24dd008 	sub	sp, sp, #8
     a04:	e50b0008 	str	r0, [fp, #-8]
     a08:	e50b100c 	str	r1, [fp, #-12]
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e5933004 	ldr	r3, [r3, #4]
     a14:	e3530000 	cmp	r3, #0
     a18:	1a000003 	bne	a2c <condWait+0x34>
     a1c:	e59f1050 	ldr	r1, [pc, #80]	@ a74 <condWait+0x7c>
     a20:	e3a00002 	mov	r0, #2
     a24:	eb000241 	bl	1330 <printf>
     a28:	ea00000f 	b	a6c <condWait+0x74>
     a2c:	e51b300c 	ldr	r3, [fp, #-12]
     a30:	e5933004 	ldr	r3, [r3, #4]
     a34:	e3530000 	cmp	r3, #0
     a38:	1a000003 	bne	a4c <condWait+0x54>
     a3c:	e59f1034 	ldr	r1, [pc, #52]	@ a78 <condWait+0x80>
     a40:	e3a00002 	mov	r0, #2
     a44:	eb000239 	bl	1330 <printf>
     a48:	ea000007 	b	a6c <condWait+0x74>
     a4c:	e51b000c 	ldr	r0, [fp, #-12]
     a50:	ebffffc2 	bl	960 <releaseLock>
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e5933000 	ldr	r3, [r3]
     a5c:	e1a00003 	mov	r0, r3
     a60:	eb0001b2 	bl	1130 <sleepChan>
     a64:	e51b000c 	ldr	r0, [fp, #-12]
     a68:	ebffffa4 	bl	900 <acquireLock>
     a6c:	e24bd004 	sub	sp, fp, #4
     a70:	e8bd8800 	pop	{fp, pc}
     a74:	00001aa8 	.word	0x00001aa8
     a78:	00001acc 	.word	0x00001acc

00000a7c <broadcast>:
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd008 	sub	sp, sp, #8
     a88:	e50b0008 	str	r0, [fp, #-8]
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e5933004 	ldr	r3, [r3, #4]
     a94:	e3530000 	cmp	r3, #0
     a98:	1a000003 	bne	aac <broadcast+0x30>
     a9c:	e59f1020 	ldr	r1, [pc, #32]	@ ac4 <broadcast+0x48>
     aa0:	e3a00002 	mov	r0, #2
     aa4:	eb000221 	bl	1330 <printf>
     aa8:	ea000003 	b	abc <broadcast+0x40>
     aac:	e51b3008 	ldr	r3, [fp, #-8]
     ab0:	e5933000 	ldr	r3, [r3]
     ab4:	e1a00003 	mov	r0, r3
     ab8:	eb0001ae 	bl	1178 <sigChan>
     abc:	e24bd004 	sub	sp, fp, #4
     ac0:	e8bd8800 	pop	{fp, pc}
     ac4:	00001aa8 	.word	0x00001aa8

00000ac8 <signal>:
     ac8:	e92d4800 	push	{fp, lr}
     acc:	e28db004 	add	fp, sp, #4
     ad0:	e24dd008 	sub	sp, sp, #8
     ad4:	e50b0008 	str	r0, [fp, #-8]
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e5933004 	ldr	r3, [r3, #4]
     ae0:	e3530000 	cmp	r3, #0
     ae4:	1a000003 	bne	af8 <signal+0x30>
     ae8:	e59f1020 	ldr	r1, [pc, #32]	@ b10 <signal+0x48>
     aec:	e3a00002 	mov	r0, #2
     af0:	eb00020e 	bl	1330 <printf>
     af4:	ea000003 	b	b08 <signal+0x40>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e5933000 	ldr	r3, [r3]
     b00:	e1a00003 	mov	r0, r3
     b04:	eb0001a4 	bl	119c <sigOneChan>
     b08:	e24bd004 	sub	sp, fp, #4
     b0c:	e8bd8800 	pop	{fp, pc}
     b10:	00001aa8 	.word	0x00001aa8

00000b14 <semInit>:
     b14:	e92d4800 	push	{fp, lr}
     b18:	e28db004 	add	fp, sp, #4
     b1c:	e24dd008 	sub	sp, sp, #8
     b20:	e50b0008 	str	r0, [fp, #-8]
     b24:	e50b100c 	str	r1, [fp, #-12]
     b28:	e51b3008 	ldr	r3, [fp, #-8]
     b2c:	e51b200c 	ldr	r2, [fp, #-12]
     b30:	e5832000 	str	r2, [r3]
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e2833004 	add	r3, r3, #4
     b3c:	e1a00003 	mov	r0, r3
     b40:	ebffff60 	bl	8c8 <initiateLock>
     b44:	e51b3008 	ldr	r3, [fp, #-8]
     b48:	e283300c 	add	r3, r3, #12
     b4c:	e1a00003 	mov	r0, r3
     b50:	ebffff95 	bl	9ac <initiateCondVar>
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e3a02001 	mov	r2, #1
     b5c:	e5832014 	str	r2, [r3, #20]
     b60:	e1a00000 	nop			@ (mov r0, r0)
     b64:	e24bd004 	sub	sp, fp, #4
     b68:	e8bd8800 	pop	{fp, pc}

00000b6c <semDown>:
     b6c:	e92d4800 	push	{fp, lr}
     b70:	e28db004 	add	fp, sp, #4
     b74:	e24dd008 	sub	sp, sp, #8
     b78:	e50b0008 	str	r0, [fp, #-8]
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e5933014 	ldr	r3, [r3, #20]
     b84:	e3530000 	cmp	r3, #0
     b88:	1a000003 	bne	b9c <semDown+0x30>
     b8c:	e59f1074 	ldr	r1, [pc, #116]	@ c08 <semDown+0x9c>
     b90:	e3a00002 	mov	r0, #2
     b94:	eb0001e5 	bl	1330 <printf>
     b98:	ea000018 	b	c00 <semDown+0x94>
     b9c:	e51b3008 	ldr	r3, [fp, #-8]
     ba0:	e2833004 	add	r3, r3, #4
     ba4:	e1a00003 	mov	r0, r3
     ba8:	ebffff54 	bl	900 <acquireLock>
     bac:	ea000006 	b	bcc <semDown+0x60>
     bb0:	e51b3008 	ldr	r3, [fp, #-8]
     bb4:	e283200c 	add	r2, r3, #12
     bb8:	e51b3008 	ldr	r3, [fp, #-8]
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e1a00002 	mov	r0, r2
     bc8:	ebffff8a 	bl	9f8 <condWait>
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e5933000 	ldr	r3, [r3]
     bd4:	e3530000 	cmp	r3, #0
     bd8:	0afffff4 	beq	bb0 <semDown+0x44>
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e5933000 	ldr	r3, [r3]
     be4:	e2432001 	sub	r2, r3, #1
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e5832000 	str	r2, [r3]
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e2833004 	add	r3, r3, #4
     bf8:	e1a00003 	mov	r0, r3
     bfc:	ebffff57 	bl	960 <releaseLock>
     c00:	e24bd004 	sub	sp, fp, #4
     c04:	e8bd8800 	pop	{fp, pc}
     c08:	00001aec 	.word	0x00001aec

00000c0c <semUp>:
     c0c:	e92d4800 	push	{fp, lr}
     c10:	e28db004 	add	fp, sp, #4
     c14:	e24dd008 	sub	sp, sp, #8
     c18:	e50b0008 	str	r0, [fp, #-8]
     c1c:	e51b3008 	ldr	r3, [fp, #-8]
     c20:	e5933014 	ldr	r3, [r3, #20]
     c24:	e3530000 	cmp	r3, #0
     c28:	1a000003 	bne	c3c <semUp+0x30>
     c2c:	e59f1054 	ldr	r1, [pc, #84]	@ c88 <semUp+0x7c>
     c30:	e3a00002 	mov	r0, #2
     c34:	eb0001bd 	bl	1330 <printf>
     c38:	ea000010 	b	c80 <semUp+0x74>
     c3c:	e51b3008 	ldr	r3, [fp, #-8]
     c40:	e2833004 	add	r3, r3, #4
     c44:	e1a00003 	mov	r0, r3
     c48:	ebffff2c 	bl	900 <acquireLock>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e2832001 	add	r2, r3, #1
     c58:	e51b3008 	ldr	r3, [fp, #-8]
     c5c:	e5832000 	str	r2, [r3]
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e283300c 	add	r3, r3, #12
     c68:	e1a00003 	mov	r0, r3
     c6c:	ebffff95 	bl	ac8 <signal>
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e2833004 	add	r3, r3, #4
     c78:	e1a00003 	mov	r0, r3
     c7c:	ebffff37 	bl	960 <releaseLock>
     c80:	e24bd004 	sub	sp, fp, #4
     c84:	e8bd8800 	pop	{fp, pc}
     c88:	00001aec 	.word	0x00001aec

00000c8c <fork>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a00001 	mov	r0, #1
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <exit>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a00002 	mov	r0, #2
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <wait>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a00003 	mov	r0, #3
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <pipe>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a00004 	mov	r0, #4
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <read>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a00005 	mov	r0, #5
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <write>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a00010 	mov	r0, #16
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <close>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a00015 	mov	r0, #21
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <kill>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a00006 	mov	r0, #6
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <exec>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a00007 	mov	r0, #7
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <open>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a0000f 	mov	r0, #15
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <mknod>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a00011 	mov	r0, #17
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <unlink>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a00012 	mov	r0, #18
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <fstat>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a00008 	mov	r0, #8
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <link>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a00013 	mov	r0, #19
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <mkdir>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a00014 	mov	r0, #20
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <chdir>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a00009 	mov	r0, #9
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <dup>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a0000a 	mov	r0, #10
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <getpid>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a0000b 	mov	r0, #11
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <sbrk>:
     f14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f18:	e1a04003 	mov	r4, r3
     f1c:	e1a03002 	mov	r3, r2
     f20:	e1a02001 	mov	r2, r1
     f24:	e1a01000 	mov	r1, r0
     f28:	e3a0000c 	mov	r0, #12
     f2c:	ef000000 	svc	0x00000000
     f30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f34:	e12fff1e 	bx	lr

00000f38 <sleep>:
     f38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f3c:	e1a04003 	mov	r4, r3
     f40:	e1a03002 	mov	r3, r2
     f44:	e1a02001 	mov	r2, r1
     f48:	e1a01000 	mov	r1, r0
     f4c:	e3a0000d 	mov	r0, #13
     f50:	ef000000 	svc	0x00000000
     f54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f58:	e12fff1e 	bx	lr

00000f5c <uptime>:
     f5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f60:	e1a04003 	mov	r4, r3
     f64:	e1a03002 	mov	r3, r2
     f68:	e1a02001 	mov	r2, r1
     f6c:	e1a01000 	mov	r1, r0
     f70:	e3a0000e 	mov	r0, #14
     f74:	ef000000 	svc	0x00000000
     f78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f7c:	e12fff1e 	bx	lr

00000f80 <disproc>:
     f80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f84:	e1a04003 	mov	r4, r3
     f88:	e1a03002 	mov	r3, r2
     f8c:	e1a02001 	mov	r2, r1
     f90:	e1a01000 	mov	r1, r0
     f94:	e3a00016 	mov	r0, #22
     f98:	ef000000 	svc	0x00000000
     f9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa0:	e12fff1e 	bx	lr

00000fa4 <srand>:
     fa4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fa8:	e1a04003 	mov	r4, r3
     fac:	e1a03002 	mov	r3, r2
     fb0:	e1a02001 	mov	r2, r1
     fb4:	e1a01000 	mov	r1, r0
     fb8:	e3a00017 	mov	r0, #23
     fbc:	ef000000 	svc	0x00000000
     fc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fc4:	e12fff1e 	bx	lr

00000fc8 <setticket>:
     fc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fcc:	e1a04003 	mov	r4, r3
     fd0:	e1a03002 	mov	r3, r2
     fd4:	e1a02001 	mov	r2, r1
     fd8:	e1a01000 	mov	r1, r0
     fdc:	e3a00018 	mov	r0, #24
     fe0:	ef000000 	svc	0x00000000
     fe4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fe8:	e12fff1e 	bx	lr

00000fec <getpinfo>:
     fec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff0:	e1a04003 	mov	r4, r3
     ff4:	e1a03002 	mov	r3, r2
     ff8:	e1a02001 	mov	r2, r1
     ffc:	e1a01000 	mov	r1, r0
    1000:	e3a00019 	mov	r0, #25
    1004:	ef000000 	svc	0x00000000
    1008:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    100c:	e12fff1e 	bx	lr

00001010 <printPages>:
    1010:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1014:	e1a04003 	mov	r4, r3
    1018:	e1a03002 	mov	r3, r2
    101c:	e1a02001 	mov	r2, r1
    1020:	e1a01000 	mov	r1, r0
    1024:	e3a0001a 	mov	r0, #26
    1028:	ef000000 	svc	0x00000000
    102c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1030:	e12fff1e 	bx	lr

00001034 <kpt>:
    1034:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1038:	e1a04003 	mov	r4, r3
    103c:	e1a03002 	mov	r3, r2
    1040:	e1a02001 	mov	r2, r1
    1044:	e1a01000 	mov	r1, r0
    1048:	e3a0001b 	mov	r0, #27
    104c:	ef000000 	svc	0x00000000
    1050:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1054:	e12fff1e 	bx	lr

00001058 <thread_create>:
    1058:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    105c:	e1a04003 	mov	r4, r3
    1060:	e1a03002 	mov	r3, r2
    1064:	e1a02001 	mov	r2, r1
    1068:	e1a01000 	mov	r1, r0
    106c:	e3a0001c 	mov	r0, #28
    1070:	ef000000 	svc	0x00000000
    1074:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1078:	e12fff1e 	bx	lr

0000107c <thread_exit>:
    107c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1080:	e1a04003 	mov	r4, r3
    1084:	e1a03002 	mov	r3, r2
    1088:	e1a02001 	mov	r2, r1
    108c:	e1a01000 	mov	r1, r0
    1090:	e3a0001d 	mov	r0, #29
    1094:	ef000000 	svc	0x00000000
    1098:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    109c:	e12fff1e 	bx	lr

000010a0 <thread_join>:
    10a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10a4:	e1a04003 	mov	r4, r3
    10a8:	e1a03002 	mov	r3, r2
    10ac:	e1a02001 	mov	r2, r1
    10b0:	e1a01000 	mov	r1, r0
    10b4:	e3a0001e 	mov	r0, #30
    10b8:	ef000000 	svc	0x00000000
    10bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10c0:	e12fff1e 	bx	lr

000010c4 <waitpid>:
    10c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10c8:	e1a04003 	mov	r4, r3
    10cc:	e1a03002 	mov	r3, r2
    10d0:	e1a02001 	mov	r2, r1
    10d4:	e1a01000 	mov	r1, r0
    10d8:	e3a0001f 	mov	r0, #31
    10dc:	ef000000 	svc	0x00000000
    10e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    10e4:	e12fff1e 	bx	lr

000010e8 <barrier_init>:
    10e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    10ec:	e1a04003 	mov	r4, r3
    10f0:	e1a03002 	mov	r3, r2
    10f4:	e1a02001 	mov	r2, r1
    10f8:	e1a01000 	mov	r1, r0
    10fc:	e3a00020 	mov	r0, #32
    1100:	ef000000 	svc	0x00000000
    1104:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1108:	e12fff1e 	bx	lr

0000110c <barrier_check>:
    110c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1110:	e1a04003 	mov	r4, r3
    1114:	e1a03002 	mov	r3, r2
    1118:	e1a02001 	mov	r2, r1
    111c:	e1a01000 	mov	r1, r0
    1120:	e3a00021 	mov	r0, #33	@ 0x21
    1124:	ef000000 	svc	0x00000000
    1128:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    112c:	e12fff1e 	bx	lr

00001130 <sleepChan>:
    1130:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1134:	e1a04003 	mov	r4, r3
    1138:	e1a03002 	mov	r3, r2
    113c:	e1a02001 	mov	r2, r1
    1140:	e1a01000 	mov	r1, r0
    1144:	e3a00022 	mov	r0, #34	@ 0x22
    1148:	ef000000 	svc	0x00000000
    114c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1150:	e12fff1e 	bx	lr

00001154 <getChannel>:
    1154:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1158:	e1a04003 	mov	r4, r3
    115c:	e1a03002 	mov	r3, r2
    1160:	e1a02001 	mov	r2, r1
    1164:	e1a01000 	mov	r1, r0
    1168:	e3a00023 	mov	r0, #35	@ 0x23
    116c:	ef000000 	svc	0x00000000
    1170:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1174:	e12fff1e 	bx	lr

00001178 <sigChan>:
    1178:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    117c:	e1a04003 	mov	r4, r3
    1180:	e1a03002 	mov	r3, r2
    1184:	e1a02001 	mov	r2, r1
    1188:	e1a01000 	mov	r1, r0
    118c:	e3a00024 	mov	r0, #36	@ 0x24
    1190:	ef000000 	svc	0x00000000
    1194:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1198:	e12fff1e 	bx	lr

0000119c <sigOneChan>:
    119c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    11a0:	e1a04003 	mov	r4, r3
    11a4:	e1a03002 	mov	r3, r2
    11a8:	e1a02001 	mov	r2, r1
    11ac:	e1a01000 	mov	r1, r0
    11b0:	e3a00025 	mov	r0, #37	@ 0x25
    11b4:	ef000000 	svc	0x00000000
    11b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    11bc:	e12fff1e 	bx	lr

000011c0 <putc>:
    11c0:	e92d4800 	push	{fp, lr}
    11c4:	e28db004 	add	fp, sp, #4
    11c8:	e24dd008 	sub	sp, sp, #8
    11cc:	e50b0008 	str	r0, [fp, #-8]
    11d0:	e1a03001 	mov	r3, r1
    11d4:	e54b3009 	strb	r3, [fp, #-9]
    11d8:	e24b3009 	sub	r3, fp, #9
    11dc:	e3a02001 	mov	r2, #1
    11e0:	e1a01003 	mov	r1, r3
    11e4:	e51b0008 	ldr	r0, [fp, #-8]
    11e8:	ebfffed4 	bl	d40 <write>
    11ec:	e1a00000 	nop			@ (mov r0, r0)
    11f0:	e24bd004 	sub	sp, fp, #4
    11f4:	e8bd8800 	pop	{fp, pc}

000011f8 <printint>:
    11f8:	e92d4800 	push	{fp, lr}
    11fc:	e28db004 	add	fp, sp, #4
    1200:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1204:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1208:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    120c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1210:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1214:	e3a03000 	mov	r3, #0
    1218:	e50b300c 	str	r3, [fp, #-12]
    121c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1220:	e3530000 	cmp	r3, #0
    1224:	0a000008 	beq	124c <printint+0x54>
    1228:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    122c:	e3530000 	cmp	r3, #0
    1230:	aa000005 	bge	124c <printint+0x54>
    1234:	e3a03001 	mov	r3, #1
    1238:	e50b300c 	str	r3, [fp, #-12]
    123c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1240:	e2633000 	rsb	r3, r3, #0
    1244:	e50b3010 	str	r3, [fp, #-16]
    1248:	ea000001 	b	1254 <printint+0x5c>
    124c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1250:	e50b3010 	str	r3, [fp, #-16]
    1254:	e3a03000 	mov	r3, #0
    1258:	e50b3008 	str	r3, [fp, #-8]
    125c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1260:	e51b3010 	ldr	r3, [fp, #-16]
    1264:	e1a01002 	mov	r1, r2
    1268:	e1a00003 	mov	r0, r3
    126c:	eb0001d5 	bl	19c8 <__aeabi_uidivmod>
    1270:	e1a03001 	mov	r3, r1
    1274:	e1a01003 	mov	r1, r3
    1278:	e51b3008 	ldr	r3, [fp, #-8]
    127c:	e2832001 	add	r2, r3, #1
    1280:	e50b2008 	str	r2, [fp, #-8]
    1284:	e59f20a0 	ldr	r2, [pc, #160]	@ 132c <printint+0x134>
    1288:	e7d22001 	ldrb	r2, [r2, r1]
    128c:	e2433004 	sub	r3, r3, #4
    1290:	e083300b 	add	r3, r3, fp
    1294:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1298:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    129c:	e1a01003 	mov	r1, r3
    12a0:	e51b0010 	ldr	r0, [fp, #-16]
    12a4:	eb00018a 	bl	18d4 <__udivsi3>
    12a8:	e1a03000 	mov	r3, r0
    12ac:	e50b3010 	str	r3, [fp, #-16]
    12b0:	e51b3010 	ldr	r3, [fp, #-16]
    12b4:	e3530000 	cmp	r3, #0
    12b8:	1affffe7 	bne	125c <printint+0x64>
    12bc:	e51b300c 	ldr	r3, [fp, #-12]
    12c0:	e3530000 	cmp	r3, #0
    12c4:	0a00000e 	beq	1304 <printint+0x10c>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e2832001 	add	r2, r3, #1
    12d0:	e50b2008 	str	r2, [fp, #-8]
    12d4:	e2433004 	sub	r3, r3, #4
    12d8:	e083300b 	add	r3, r3, fp
    12dc:	e3a0202d 	mov	r2, #45	@ 0x2d
    12e0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    12e4:	ea000006 	b	1304 <printint+0x10c>
    12e8:	e24b2020 	sub	r2, fp, #32
    12ec:	e51b3008 	ldr	r3, [fp, #-8]
    12f0:	e0823003 	add	r3, r2, r3
    12f4:	e5d33000 	ldrb	r3, [r3]
    12f8:	e1a01003 	mov	r1, r3
    12fc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1300:	ebffffae 	bl	11c0 <putc>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e2433001 	sub	r3, r3, #1
    130c:	e50b3008 	str	r3, [fp, #-8]
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e3530000 	cmp	r3, #0
    1318:	aafffff2 	bge	12e8 <printint+0xf0>
    131c:	e1a00000 	nop			@ (mov r0, r0)
    1320:	e1a00000 	nop			@ (mov r0, r0)
    1324:	e24bd004 	sub	sp, fp, #4
    1328:	e8bd8800 	pop	{fp, pc}
    132c:	00001b18 	.word	0x00001b18

00001330 <printf>:
    1330:	e92d000e 	push	{r1, r2, r3}
    1334:	e92d4800 	push	{fp, lr}
    1338:	e28db004 	add	fp, sp, #4
    133c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1340:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1344:	e3a03000 	mov	r3, #0
    1348:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    134c:	e28b3008 	add	r3, fp, #8
    1350:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1354:	e3a03000 	mov	r3, #0
    1358:	e50b3010 	str	r3, [fp, #-16]
    135c:	ea000074 	b	1534 <printf+0x204>
    1360:	e59b2004 	ldr	r2, [fp, #4]
    1364:	e51b3010 	ldr	r3, [fp, #-16]
    1368:	e0823003 	add	r3, r2, r3
    136c:	e5d33000 	ldrb	r3, [r3]
    1370:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1374:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1378:	e3530000 	cmp	r3, #0
    137c:	1a00000b 	bne	13b0 <printf+0x80>
    1380:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1384:	e3530025 	cmp	r3, #37	@ 0x25
    1388:	1a000002 	bne	1398 <printf+0x68>
    138c:	e3a03025 	mov	r3, #37	@ 0x25
    1390:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1394:	ea000063 	b	1528 <printf+0x1f8>
    1398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    139c:	e6ef3073 	uxtb	r3, r3
    13a0:	e1a01003 	mov	r1, r3
    13a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a8:	ebffff84 	bl	11c0 <putc>
    13ac:	ea00005d 	b	1528 <printf+0x1f8>
    13b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    13b4:	e3530025 	cmp	r3, #37	@ 0x25
    13b8:	1a00005a 	bne	1528 <printf+0x1f8>
    13bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13c0:	e3530064 	cmp	r3, #100	@ 0x64
    13c4:	1a00000a 	bne	13f4 <printf+0xc4>
    13c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13cc:	e5933000 	ldr	r3, [r3]
    13d0:	e1a01003 	mov	r1, r3
    13d4:	e3a03001 	mov	r3, #1
    13d8:	e3a0200a 	mov	r2, #10
    13dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13e0:	ebffff84 	bl	11f8 <printint>
    13e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13e8:	e2833004 	add	r3, r3, #4
    13ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    13f0:	ea00004a 	b	1520 <printf+0x1f0>
    13f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13f8:	e3530078 	cmp	r3, #120	@ 0x78
    13fc:	0a000002 	beq	140c <printf+0xdc>
    1400:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1404:	e3530070 	cmp	r3, #112	@ 0x70
    1408:	1a00000a 	bne	1438 <printf+0x108>
    140c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1410:	e5933000 	ldr	r3, [r3]
    1414:	e1a01003 	mov	r1, r3
    1418:	e3a03000 	mov	r3, #0
    141c:	e3a02010 	mov	r2, #16
    1420:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1424:	ebffff73 	bl	11f8 <printint>
    1428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    142c:	e2833004 	add	r3, r3, #4
    1430:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1434:	ea000039 	b	1520 <printf+0x1f0>
    1438:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    143c:	e3530073 	cmp	r3, #115	@ 0x73
    1440:	1a000018 	bne	14a8 <printf+0x178>
    1444:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1448:	e5933000 	ldr	r3, [r3]
    144c:	e50b300c 	str	r3, [fp, #-12]
    1450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1454:	e2833004 	add	r3, r3, #4
    1458:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    145c:	e51b300c 	ldr	r3, [fp, #-12]
    1460:	e3530000 	cmp	r3, #0
    1464:	1a00000a 	bne	1494 <printf+0x164>
    1468:	e59f30f4 	ldr	r3, [pc, #244]	@ 1564 <printf+0x234>
    146c:	e50b300c 	str	r3, [fp, #-12]
    1470:	ea000007 	b	1494 <printf+0x164>
    1474:	e51b300c 	ldr	r3, [fp, #-12]
    1478:	e5d33000 	ldrb	r3, [r3]
    147c:	e1a01003 	mov	r1, r3
    1480:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1484:	ebffff4d 	bl	11c0 <putc>
    1488:	e51b300c 	ldr	r3, [fp, #-12]
    148c:	e2833001 	add	r3, r3, #1
    1490:	e50b300c 	str	r3, [fp, #-12]
    1494:	e51b300c 	ldr	r3, [fp, #-12]
    1498:	e5d33000 	ldrb	r3, [r3]
    149c:	e3530000 	cmp	r3, #0
    14a0:	1afffff3 	bne	1474 <printf+0x144>
    14a4:	ea00001d 	b	1520 <printf+0x1f0>
    14a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14ac:	e3530063 	cmp	r3, #99	@ 0x63
    14b0:	1a000009 	bne	14dc <printf+0x1ac>
    14b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14b8:	e5933000 	ldr	r3, [r3]
    14bc:	e6ef3073 	uxtb	r3, r3
    14c0:	e1a01003 	mov	r1, r3
    14c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14c8:	ebffff3c 	bl	11c0 <putc>
    14cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14d0:	e2833004 	add	r3, r3, #4
    14d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14d8:	ea000010 	b	1520 <printf+0x1f0>
    14dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14e0:	e3530025 	cmp	r3, #37	@ 0x25
    14e4:	1a000005 	bne	1500 <printf+0x1d0>
    14e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    14ec:	e6ef3073 	uxtb	r3, r3
    14f0:	e1a01003 	mov	r1, r3
    14f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    14f8:	ebffff30 	bl	11c0 <putc>
    14fc:	ea000007 	b	1520 <printf+0x1f0>
    1500:	e3a01025 	mov	r1, #37	@ 0x25
    1504:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1508:	ebffff2c 	bl	11c0 <putc>
    150c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1510:	e6ef3073 	uxtb	r3, r3
    1514:	e1a01003 	mov	r1, r3
    1518:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    151c:	ebffff27 	bl	11c0 <putc>
    1520:	e3a03000 	mov	r3, #0
    1524:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1528:	e51b3010 	ldr	r3, [fp, #-16]
    152c:	e2833001 	add	r3, r3, #1
    1530:	e50b3010 	str	r3, [fp, #-16]
    1534:	e59b2004 	ldr	r2, [fp, #4]
    1538:	e51b3010 	ldr	r3, [fp, #-16]
    153c:	e0823003 	add	r3, r2, r3
    1540:	e5d33000 	ldrb	r3, [r3]
    1544:	e3530000 	cmp	r3, #0
    1548:	1affff84 	bne	1360 <printf+0x30>
    154c:	e1a00000 	nop			@ (mov r0, r0)
    1550:	e1a00000 	nop			@ (mov r0, r0)
    1554:	e24bd004 	sub	sp, fp, #4
    1558:	e8bd4800 	pop	{fp, lr}
    155c:	e28dd00c 	add	sp, sp, #12
    1560:	e12fff1e 	bx	lr
    1564:	00001b10 	.word	0x00001b10

00001568 <free>:
    1568:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    156c:	e28db000 	add	fp, sp, #0
    1570:	e24dd014 	sub	sp, sp, #20
    1574:	e50b0010 	str	r0, [fp, #-16]
    1578:	e51b3010 	ldr	r3, [fp, #-16]
    157c:	e2433008 	sub	r3, r3, #8
    1580:	e50b300c 	str	r3, [fp, #-12]
    1584:	e59f3154 	ldr	r3, [pc, #340]	@ 16e0 <free+0x178>
    1588:	e5933000 	ldr	r3, [r3]
    158c:	e50b3008 	str	r3, [fp, #-8]
    1590:	ea000010 	b	15d8 <free+0x70>
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e5933000 	ldr	r3, [r3]
    159c:	e51b2008 	ldr	r2, [fp, #-8]
    15a0:	e1520003 	cmp	r2, r3
    15a4:	3a000008 	bcc	15cc <free+0x64>
    15a8:	e51b200c 	ldr	r2, [fp, #-12]
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e1520003 	cmp	r2, r3
    15b4:	8a000010 	bhi	15fc <free+0x94>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5933000 	ldr	r3, [r3]
    15c0:	e51b200c 	ldr	r2, [fp, #-12]
    15c4:	e1520003 	cmp	r2, r3
    15c8:	3a00000b 	bcc	15fc <free+0x94>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5933000 	ldr	r3, [r3]
    15d4:	e50b3008 	str	r3, [fp, #-8]
    15d8:	e51b200c 	ldr	r2, [fp, #-12]
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e1520003 	cmp	r2, r3
    15e4:	9affffea 	bls	1594 <free+0x2c>
    15e8:	e51b3008 	ldr	r3, [fp, #-8]
    15ec:	e5933000 	ldr	r3, [r3]
    15f0:	e51b200c 	ldr	r2, [fp, #-12]
    15f4:	e1520003 	cmp	r2, r3
    15f8:	2affffe5 	bcs	1594 <free+0x2c>
    15fc:	e51b300c 	ldr	r3, [fp, #-12]
    1600:	e5933004 	ldr	r3, [r3, #4]
    1604:	e1a03183 	lsl	r3, r3, #3
    1608:	e51b200c 	ldr	r2, [fp, #-12]
    160c:	e0822003 	add	r2, r2, r3
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5933000 	ldr	r3, [r3]
    1618:	e1520003 	cmp	r2, r3
    161c:	1a00000d 	bne	1658 <free+0xf0>
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5932004 	ldr	r2, [r3, #4]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e5933000 	ldr	r3, [r3]
    1630:	e5933004 	ldr	r3, [r3, #4]
    1634:	e0822003 	add	r2, r2, r3
    1638:	e51b300c 	ldr	r3, [fp, #-12]
    163c:	e5832004 	str	r2, [r3, #4]
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e5933000 	ldr	r3, [r3]
    1648:	e5932000 	ldr	r2, [r3]
    164c:	e51b300c 	ldr	r3, [fp, #-12]
    1650:	e5832000 	str	r2, [r3]
    1654:	ea000003 	b	1668 <free+0x100>
    1658:	e51b3008 	ldr	r3, [fp, #-8]
    165c:	e5932000 	ldr	r2, [r3]
    1660:	e51b300c 	ldr	r3, [fp, #-12]
    1664:	e5832000 	str	r2, [r3]
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e5933004 	ldr	r3, [r3, #4]
    1670:	e1a03183 	lsl	r3, r3, #3
    1674:	e51b2008 	ldr	r2, [fp, #-8]
    1678:	e0823003 	add	r3, r2, r3
    167c:	e51b200c 	ldr	r2, [fp, #-12]
    1680:	e1520003 	cmp	r2, r3
    1684:	1a00000b 	bne	16b8 <free+0x150>
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e5932004 	ldr	r2, [r3, #4]
    1690:	e51b300c 	ldr	r3, [fp, #-12]
    1694:	e5933004 	ldr	r3, [r3, #4]
    1698:	e0822003 	add	r2, r2, r3
    169c:	e51b3008 	ldr	r3, [fp, #-8]
    16a0:	e5832004 	str	r2, [r3, #4]
    16a4:	e51b300c 	ldr	r3, [fp, #-12]
    16a8:	e5932000 	ldr	r2, [r3]
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e5832000 	str	r2, [r3]
    16b4:	ea000002 	b	16c4 <free+0x15c>
    16b8:	e51b3008 	ldr	r3, [fp, #-8]
    16bc:	e51b200c 	ldr	r2, [fp, #-12]
    16c0:	e5832000 	str	r2, [r3]
    16c4:	e59f2014 	ldr	r2, [pc, #20]	@ 16e0 <free+0x178>
    16c8:	e51b3008 	ldr	r3, [fp, #-8]
    16cc:	e5823000 	str	r3, [r2]
    16d0:	e1a00000 	nop			@ (mov r0, r0)
    16d4:	e28bd000 	add	sp, fp, #0
    16d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    16dc:	e12fff1e 	bx	lr
    16e0:	00001b44 	.word	0x00001b44

000016e4 <morecore>:
    16e4:	e92d4800 	push	{fp, lr}
    16e8:	e28db004 	add	fp, sp, #4
    16ec:	e24dd010 	sub	sp, sp, #16
    16f0:	e50b0010 	str	r0, [fp, #-16]
    16f4:	e51b3010 	ldr	r3, [fp, #-16]
    16f8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    16fc:	2a000001 	bcs	1708 <morecore+0x24>
    1700:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1704:	e50b3010 	str	r3, [fp, #-16]
    1708:	e51b3010 	ldr	r3, [fp, #-16]
    170c:	e1a03183 	lsl	r3, r3, #3
    1710:	e1a00003 	mov	r0, r3
    1714:	ebfffdfe 	bl	f14 <sbrk>
    1718:	e50b0008 	str	r0, [fp, #-8]
    171c:	e51b3008 	ldr	r3, [fp, #-8]
    1720:	e3730001 	cmn	r3, #1
    1724:	1a000001 	bne	1730 <morecore+0x4c>
    1728:	e3a03000 	mov	r3, #0
    172c:	ea00000a 	b	175c <morecore+0x78>
    1730:	e51b3008 	ldr	r3, [fp, #-8]
    1734:	e50b300c 	str	r3, [fp, #-12]
    1738:	e51b300c 	ldr	r3, [fp, #-12]
    173c:	e51b2010 	ldr	r2, [fp, #-16]
    1740:	e5832004 	str	r2, [r3, #4]
    1744:	e51b300c 	ldr	r3, [fp, #-12]
    1748:	e2833008 	add	r3, r3, #8
    174c:	e1a00003 	mov	r0, r3
    1750:	ebffff84 	bl	1568 <free>
    1754:	e59f300c 	ldr	r3, [pc, #12]	@ 1768 <morecore+0x84>
    1758:	e5933000 	ldr	r3, [r3]
    175c:	e1a00003 	mov	r0, r3
    1760:	e24bd004 	sub	sp, fp, #4
    1764:	e8bd8800 	pop	{fp, pc}
    1768:	00001b44 	.word	0x00001b44

0000176c <malloc>:
    176c:	e92d4800 	push	{fp, lr}
    1770:	e28db004 	add	fp, sp, #4
    1774:	e24dd018 	sub	sp, sp, #24
    1778:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    177c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1780:	e2833007 	add	r3, r3, #7
    1784:	e1a031a3 	lsr	r3, r3, #3
    1788:	e2833001 	add	r3, r3, #1
    178c:	e50b3010 	str	r3, [fp, #-16]
    1790:	e59f3134 	ldr	r3, [pc, #308]	@ 18cc <malloc+0x160>
    1794:	e5933000 	ldr	r3, [r3]
    1798:	e50b300c 	str	r3, [fp, #-12]
    179c:	e51b300c 	ldr	r3, [fp, #-12]
    17a0:	e3530000 	cmp	r3, #0
    17a4:	1a00000b 	bne	17d8 <malloc+0x6c>
    17a8:	e59f3120 	ldr	r3, [pc, #288]	@ 18d0 <malloc+0x164>
    17ac:	e50b300c 	str	r3, [fp, #-12]
    17b0:	e59f2114 	ldr	r2, [pc, #276]	@ 18cc <malloc+0x160>
    17b4:	e51b300c 	ldr	r3, [fp, #-12]
    17b8:	e5823000 	str	r3, [r2]
    17bc:	e59f3108 	ldr	r3, [pc, #264]	@ 18cc <malloc+0x160>
    17c0:	e5933000 	ldr	r3, [r3]
    17c4:	e59f2104 	ldr	r2, [pc, #260]	@ 18d0 <malloc+0x164>
    17c8:	e5823000 	str	r3, [r2]
    17cc:	e59f30fc 	ldr	r3, [pc, #252]	@ 18d0 <malloc+0x164>
    17d0:	e3a02000 	mov	r2, #0
    17d4:	e5832004 	str	r2, [r3, #4]
    17d8:	e51b300c 	ldr	r3, [fp, #-12]
    17dc:	e5933000 	ldr	r3, [r3]
    17e0:	e50b3008 	str	r3, [fp, #-8]
    17e4:	e51b3008 	ldr	r3, [fp, #-8]
    17e8:	e5933004 	ldr	r3, [r3, #4]
    17ec:	e51b2010 	ldr	r2, [fp, #-16]
    17f0:	e1520003 	cmp	r2, r3
    17f4:	8a00001e 	bhi	1874 <malloc+0x108>
    17f8:	e51b3008 	ldr	r3, [fp, #-8]
    17fc:	e5933004 	ldr	r3, [r3, #4]
    1800:	e51b2010 	ldr	r2, [fp, #-16]
    1804:	e1520003 	cmp	r2, r3
    1808:	1a000004 	bne	1820 <malloc+0xb4>
    180c:	e51b3008 	ldr	r3, [fp, #-8]
    1810:	e5932000 	ldr	r2, [r3]
    1814:	e51b300c 	ldr	r3, [fp, #-12]
    1818:	e5832000 	str	r2, [r3]
    181c:	ea00000e 	b	185c <malloc+0xf0>
    1820:	e51b3008 	ldr	r3, [fp, #-8]
    1824:	e5932004 	ldr	r2, [r3, #4]
    1828:	e51b3010 	ldr	r3, [fp, #-16]
    182c:	e0422003 	sub	r2, r2, r3
    1830:	e51b3008 	ldr	r3, [fp, #-8]
    1834:	e5832004 	str	r2, [r3, #4]
    1838:	e51b3008 	ldr	r3, [fp, #-8]
    183c:	e5933004 	ldr	r3, [r3, #4]
    1840:	e1a03183 	lsl	r3, r3, #3
    1844:	e51b2008 	ldr	r2, [fp, #-8]
    1848:	e0823003 	add	r3, r2, r3
    184c:	e50b3008 	str	r3, [fp, #-8]
    1850:	e51b3008 	ldr	r3, [fp, #-8]
    1854:	e51b2010 	ldr	r2, [fp, #-16]
    1858:	e5832004 	str	r2, [r3, #4]
    185c:	e59f2068 	ldr	r2, [pc, #104]	@ 18cc <malloc+0x160>
    1860:	e51b300c 	ldr	r3, [fp, #-12]
    1864:	e5823000 	str	r3, [r2]
    1868:	e51b3008 	ldr	r3, [fp, #-8]
    186c:	e2833008 	add	r3, r3, #8
    1870:	ea000012 	b	18c0 <malloc+0x154>
    1874:	e59f3050 	ldr	r3, [pc, #80]	@ 18cc <malloc+0x160>
    1878:	e5933000 	ldr	r3, [r3]
    187c:	e51b2008 	ldr	r2, [fp, #-8]
    1880:	e1520003 	cmp	r2, r3
    1884:	1a000007 	bne	18a8 <malloc+0x13c>
    1888:	e51b0010 	ldr	r0, [fp, #-16]
    188c:	ebffff94 	bl	16e4 <morecore>
    1890:	e50b0008 	str	r0, [fp, #-8]
    1894:	e51b3008 	ldr	r3, [fp, #-8]
    1898:	e3530000 	cmp	r3, #0
    189c:	1a000001 	bne	18a8 <malloc+0x13c>
    18a0:	e3a03000 	mov	r3, #0
    18a4:	ea000005 	b	18c0 <malloc+0x154>
    18a8:	e51b3008 	ldr	r3, [fp, #-8]
    18ac:	e50b300c 	str	r3, [fp, #-12]
    18b0:	e51b3008 	ldr	r3, [fp, #-8]
    18b4:	e5933000 	ldr	r3, [r3]
    18b8:	e50b3008 	str	r3, [fp, #-8]
    18bc:	eaffffc8 	b	17e4 <malloc+0x78>
    18c0:	e1a00003 	mov	r0, r3
    18c4:	e24bd004 	sub	sp, fp, #4
    18c8:	e8bd8800 	pop	{fp, pc}
    18cc:	00001b44 	.word	0x00001b44
    18d0:	00001b3c 	.word	0x00001b3c

000018d4 <__udivsi3>:
    18d4:	e2512001 	subs	r2, r1, #1
    18d8:	012fff1e 	bxeq	lr
    18dc:	3a000036 	bcc	19bc <__udivsi3+0xe8>
    18e0:	e1500001 	cmp	r0, r1
    18e4:	9a000022 	bls	1974 <__udivsi3+0xa0>
    18e8:	e1110002 	tst	r1, r2
    18ec:	0a000023 	beq	1980 <__udivsi3+0xac>
    18f0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    18f4:	01a01181 	lsleq	r1, r1, #3
    18f8:	03a03008 	moveq	r3, #8
    18fc:	13a03001 	movne	r3, #1
    1900:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1904:	31510000 	cmpcc	r1, r0
    1908:	31a01201 	lslcc	r1, r1, #4
    190c:	31a03203 	lslcc	r3, r3, #4
    1910:	3afffffa 	bcc	1900 <__udivsi3+0x2c>
    1914:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1918:	31510000 	cmpcc	r1, r0
    191c:	31a01081 	lslcc	r1, r1, #1
    1920:	31a03083 	lslcc	r3, r3, #1
    1924:	3afffffa 	bcc	1914 <__udivsi3+0x40>
    1928:	e3a02000 	mov	r2, #0
    192c:	e1500001 	cmp	r0, r1
    1930:	20400001 	subcs	r0, r0, r1
    1934:	21822003 	orrcs	r2, r2, r3
    1938:	e15000a1 	cmp	r0, r1, lsr #1
    193c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1940:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1944:	e1500121 	cmp	r0, r1, lsr #2
    1948:	20400121 	subcs	r0, r0, r1, lsr #2
    194c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1950:	e15001a1 	cmp	r0, r1, lsr #3
    1954:	204001a1 	subcs	r0, r0, r1, lsr #3
    1958:	218221a3 	orrcs	r2, r2, r3, lsr #3
    195c:	e3500000 	cmp	r0, #0
    1960:	11b03223 	lsrsne	r3, r3, #4
    1964:	11a01221 	lsrne	r1, r1, #4
    1968:	1affffef 	bne	192c <__udivsi3+0x58>
    196c:	e1a00002 	mov	r0, r2
    1970:	e12fff1e 	bx	lr
    1974:	03a00001 	moveq	r0, #1
    1978:	13a00000 	movne	r0, #0
    197c:	e12fff1e 	bx	lr
    1980:	e3510801 	cmp	r1, #65536	@ 0x10000
    1984:	21a01821 	lsrcs	r1, r1, #16
    1988:	23a02010 	movcs	r2, #16
    198c:	33a02000 	movcc	r2, #0
    1990:	e3510c01 	cmp	r1, #256	@ 0x100
    1994:	21a01421 	lsrcs	r1, r1, #8
    1998:	22822008 	addcs	r2, r2, #8
    199c:	e3510010 	cmp	r1, #16
    19a0:	21a01221 	lsrcs	r1, r1, #4
    19a4:	22822004 	addcs	r2, r2, #4
    19a8:	e3510004 	cmp	r1, #4
    19ac:	82822003 	addhi	r2, r2, #3
    19b0:	908220a1 	addls	r2, r2, r1, lsr #1
    19b4:	e1a00230 	lsr	r0, r0, r2
    19b8:	e12fff1e 	bx	lr
    19bc:	e3500000 	cmp	r0, #0
    19c0:	13e00000 	mvnne	r0, #0
    19c4:	ea000007 	b	19e8 <__aeabi_idiv0>

000019c8 <__aeabi_uidivmod>:
    19c8:	e3510000 	cmp	r1, #0
    19cc:	0afffffa 	beq	19bc <__udivsi3+0xe8>
    19d0:	e92d4003 	push	{r0, r1, lr}
    19d4:	ebffffbe 	bl	18d4 <__udivsi3>
    19d8:	e8bd4006 	pop	{r1, r2, lr}
    19dc:	e0030092 	mul	r3, r2, r0
    19e0:	e0411003 	sub	r1, r1, r3
    19e4:	e12fff1e 	bx	lr

000019e8 <__aeabi_idiv0>:
    19e8:	e12fff1e 	bx	lr
