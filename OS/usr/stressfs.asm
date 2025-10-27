
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb000434 	bl	1108 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb0000ac 	bl	2fc <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb000282 	bl	a64 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb00041c 	bl	1108 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0002ba 	bl	ba8 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb00028d 	bl	b18 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb00028e 	bl	b3c <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb0003fe 	bl	1108 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb0002a2 	bl	ba8 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb00026c 	bl	af4 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000276 	bl	b3c <close>
     160:	eb000251 	bl	aac <wait>
     164:	eb000247 	bl	a88 <exit>
     168:	000017ec 	.word	0x000017ec
     16c:	000017c4 	.word	0x000017c4
     170:	000017d8 	.word	0x000017d8
     174:	00000202 	.word	0x00000202
     178:	000017e4 	.word	0x000017e4

0000017c <xchg>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b1010 	ldr	r1, [fp, #-16]
     194:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     198:	e1912f9f 	ldrex	r2, [r1]
     19c:	e1813f90 	strex	r3, r0, [r1]
     1a0:	e50b2008 	str	r2, [fp, #-8]
     1a4:	e50b300c 	str	r3, [fp, #-12]
     1a8:	e51b300c 	ldr	r3, [fp, #-12]
     1ac:	e3530000 	cmp	r3, #0
     1b0:	1afffff6 	bne	190 <xchg+0x14>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e1a00003 	mov	r0, r3
     1bc:	e28bd000 	add	sp, fp, #0
     1c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c4:	e12fff1e 	bx	lr

000001c8 <strcpy>:
     1c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1cc:	e28db000 	add	fp, sp, #0
     1d0:	e24dd014 	sub	sp, sp, #20
     1d4:	e50b0010 	str	r0, [fp, #-16]
     1d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1dc:	e51b3010 	ldr	r3, [fp, #-16]
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e1a00000 	nop			@ (mov r0, r0)
     1e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1ec:	e2823001 	add	r3, r2, #1
     1f0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1f4:	e51b3010 	ldr	r3, [fp, #-16]
     1f8:	e2831001 	add	r1, r3, #1
     1fc:	e50b1010 	str	r1, [fp, #-16]
     200:	e5d22000 	ldrb	r2, [r2]
     204:	e5c32000 	strb	r2, [r3]
     208:	e5d33000 	ldrb	r3, [r3]
     20c:	e3530000 	cmp	r3, #0
     210:	1afffff4 	bne	1e8 <strcpy+0x20>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e1a00003 	mov	r0, r3
     21c:	e28bd000 	add	sp, fp, #0
     220:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     224:	e12fff1e 	bx	lr

00000228 <strcmp>:
     228:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     22c:	e28db000 	add	fp, sp, #0
     230:	e24dd00c 	sub	sp, sp, #12
     234:	e50b0008 	str	r0, [fp, #-8]
     238:	e50b100c 	str	r1, [fp, #-12]
     23c:	ea000005 	b	258 <strcmp+0x30>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e2833001 	add	r3, r3, #1
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b300c 	ldr	r3, [fp, #-12]
     250:	e2833001 	add	r3, r3, #1
     254:	e50b300c 	str	r3, [fp, #-12]
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e5d33000 	ldrb	r3, [r3]
     260:	e3530000 	cmp	r3, #0
     264:	0a000005 	beq	280 <strcmp+0x58>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e5d32000 	ldrb	r2, [r3]
     270:	e51b300c 	ldr	r3, [fp, #-12]
     274:	e5d33000 	ldrb	r3, [r3]
     278:	e1520003 	cmp	r2, r3
     27c:	0affffef 	beq	240 <strcmp+0x18>
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e1a02003 	mov	r2, r3
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e0423003 	sub	r3, r2, r3
     298:	e1a00003 	mov	r0, r3
     29c:	e28bd000 	add	sp, fp, #0
     2a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a4:	e12fff1e 	bx	lr

000002a8 <strlen>:
     2a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ac:	e28db000 	add	fp, sp, #0
     2b0:	e24dd014 	sub	sp, sp, #20
     2b4:	e50b0010 	str	r0, [fp, #-16]
     2b8:	e3a03000 	mov	r3, #0
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	ea000002 	b	2d0 <strlen+0x28>
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e2833001 	add	r3, r3, #1
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e51b2010 	ldr	r2, [fp, #-16]
     2d8:	e0823003 	add	r3, r2, r3
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1afffff6 	bne	2c4 <strlen+0x1c>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e1a00003 	mov	r0, r3
     2f0:	e28bd000 	add	sp, fp, #0
     2f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2f8:	e12fff1e 	bx	lr

000002fc <memset>:
     2fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     300:	e28db000 	add	fp, sp, #0
     304:	e24dd024 	sub	sp, sp, #36	@ 0x24
     308:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     30c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     310:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     314:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     318:	e50b3008 	str	r3, [fp, #-8]
     31c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     320:	e54b300d 	strb	r3, [fp, #-13]
     324:	e55b200d 	ldrb	r2, [fp, #-13]
     328:	e1a03002 	mov	r3, r2
     32c:	e1a03403 	lsl	r3, r3, #8
     330:	e0833002 	add	r3, r3, r2
     334:	e1a03803 	lsl	r3, r3, #16
     338:	e1a02003 	mov	r2, r3
     33c:	e55b300d 	ldrb	r3, [fp, #-13]
     340:	e1a03403 	lsl	r3, r3, #8
     344:	e1822003 	orr	r2, r2, r3
     348:	e55b300d 	ldrb	r3, [fp, #-13]
     34c:	e1823003 	orr	r3, r2, r3
     350:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     354:	ea000008 	b	37c <memset+0x80>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e55b200d 	ldrb	r2, [fp, #-13]
     360:	e5c32000 	strb	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433001 	sub	r3, r3, #1
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e2833001 	add	r3, r3, #1
     378:	e50b3008 	str	r3, [fp, #-8]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530000 	cmp	r3, #0
     384:	0a000003 	beq	398 <memset+0x9c>
     388:	e51b3008 	ldr	r3, [fp, #-8]
     38c:	e2033003 	and	r3, r3, #3
     390:	e3530000 	cmp	r3, #0
     394:	1affffef 	bne	358 <memset+0x5c>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e50b300c 	str	r3, [fp, #-12]
     3a0:	ea000008 	b	3c8 <memset+0xcc>
     3a4:	e51b300c 	ldr	r3, [fp, #-12]
     3a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3ac:	e5832000 	str	r2, [r3]
     3b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b4:	e2433004 	sub	r3, r3, #4
     3b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e51b300c 	ldr	r3, [fp, #-12]
     3c0:	e2833004 	add	r3, r3, #4
     3c4:	e50b300c 	str	r3, [fp, #-12]
     3c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3cc:	e3530003 	cmp	r3, #3
     3d0:	8afffff3 	bhi	3a4 <memset+0xa8>
     3d4:	e51b300c 	ldr	r3, [fp, #-12]
     3d8:	e50b3008 	str	r3, [fp, #-8]
     3dc:	ea000008 	b	404 <memset+0x108>
     3e0:	e51b3008 	ldr	r3, [fp, #-8]
     3e4:	e55b200d 	ldrb	r2, [fp, #-13]
     3e8:	e5c32000 	strb	r2, [r3]
     3ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e2433001 	sub	r3, r3, #1
     3f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e2833001 	add	r3, r3, #1
     400:	e50b3008 	str	r3, [fp, #-8]
     404:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     408:	e3530000 	cmp	r3, #0
     40c:	1afffff3 	bne	3e0 <memset+0xe4>
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e1a00003 	mov	r0, r3
     418:	e28bd000 	add	sp, fp, #0
     41c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     420:	e12fff1e 	bx	lr

00000424 <strchr>:
     424:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     428:	e28db000 	add	fp, sp, #0
     42c:	e24dd00c 	sub	sp, sp, #12
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e1a03001 	mov	r3, r1
     438:	e54b3009 	strb	r3, [fp, #-9]
     43c:	ea000009 	b	468 <strchr+0x44>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e5d33000 	ldrb	r3, [r3]
     448:	e55b2009 	ldrb	r2, [fp, #-9]
     44c:	e1520003 	cmp	r2, r3
     450:	1a000001 	bne	45c <strchr+0x38>
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	ea000007 	b	47c <strchr+0x58>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e2833001 	add	r3, r3, #1
     464:	e50b3008 	str	r3, [fp, #-8]
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e3530000 	cmp	r3, #0
     474:	1afffff1 	bne	440 <strchr+0x1c>
     478:	e3a03000 	mov	r3, #0
     47c:	e1a00003 	mov	r0, r3
     480:	e28bd000 	add	sp, fp, #0
     484:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     488:	e12fff1e 	bx	lr

0000048c <gets>:
     48c:	e92d4800 	push	{fp, lr}
     490:	e28db004 	add	fp, sp, #4
     494:	e24dd018 	sub	sp, sp, #24
     498:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     49c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4a0:	e3a03000 	mov	r3, #0
     4a4:	e50b3008 	str	r3, [fp, #-8]
     4a8:	ea000016 	b	508 <gets+0x7c>
     4ac:	e24b300d 	sub	r3, fp, #13
     4b0:	e3a02001 	mov	r2, #1
     4b4:	e1a01003 	mov	r1, r3
     4b8:	e3a00000 	mov	r0, #0
     4bc:	eb00018c 	bl	af4 <read>
     4c0:	e50b000c 	str	r0, [fp, #-12]
     4c4:	e51b300c 	ldr	r3, [fp, #-12]
     4c8:	e3530000 	cmp	r3, #0
     4cc:	da000013 	ble	520 <gets+0x94>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e2832001 	add	r2, r3, #1
     4d8:	e50b2008 	str	r2, [fp, #-8]
     4dc:	e1a02003 	mov	r2, r3
     4e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e4:	e0833002 	add	r3, r3, r2
     4e8:	e55b200d 	ldrb	r2, [fp, #-13]
     4ec:	e5c32000 	strb	r2, [r3]
     4f0:	e55b300d 	ldrb	r3, [fp, #-13]
     4f4:	e353000a 	cmp	r3, #10
     4f8:	0a000009 	beq	524 <gets+0x98>
     4fc:	e55b300d 	ldrb	r3, [fp, #-13]
     500:	e353000d 	cmp	r3, #13
     504:	0a000006 	beq	524 <gets+0x98>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e2833001 	add	r3, r3, #1
     510:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     514:	e1520003 	cmp	r2, r3
     518:	caffffe3 	bgt	4ac <gets+0x20>
     51c:	ea000000 	b	524 <gets+0x98>
     520:	e1a00000 	nop			@ (mov r0, r0)
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     52c:	e0823003 	add	r3, r2, r3
     530:	e3a02000 	mov	r2, #0
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e1a00003 	mov	r0, r3
     540:	e24bd004 	sub	sp, fp, #4
     544:	e8bd8800 	pop	{fp, pc}

00000548 <stat>:
     548:	e92d4800 	push	{fp, lr}
     54c:	e28db004 	add	fp, sp, #4
     550:	e24dd010 	sub	sp, sp, #16
     554:	e50b0010 	str	r0, [fp, #-16]
     558:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     55c:	e3a01000 	mov	r1, #0
     560:	e51b0010 	ldr	r0, [fp, #-16]
     564:	eb00018f 	bl	ba8 <open>
     568:	e50b0008 	str	r0, [fp, #-8]
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e3530000 	cmp	r3, #0
     574:	aa000001 	bge	580 <stat+0x38>
     578:	e3e03000 	mvn	r3, #0
     57c:	ea000006 	b	59c <stat+0x54>
     580:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     584:	e51b0008 	ldr	r0, [fp, #-8]
     588:	eb0001a1 	bl	c14 <fstat>
     58c:	e50b000c 	str	r0, [fp, #-12]
     590:	e51b0008 	ldr	r0, [fp, #-8]
     594:	eb000168 	bl	b3c <close>
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e1a00003 	mov	r0, r3
     5a0:	e24bd004 	sub	sp, fp, #4
     5a4:	e8bd8800 	pop	{fp, pc}

000005a8 <atoi>:
     5a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5ac:	e28db000 	add	fp, sp, #0
     5b0:	e24dd014 	sub	sp, sp, #20
     5b4:	e50b0010 	str	r0, [fp, #-16]
     5b8:	e3a03000 	mov	r3, #0
     5bc:	e50b3008 	str	r3, [fp, #-8]
     5c0:	ea00000c 	b	5f8 <atoi+0x50>
     5c4:	e51b2008 	ldr	r2, [fp, #-8]
     5c8:	e1a03002 	mov	r3, r2
     5cc:	e1a03103 	lsl	r3, r3, #2
     5d0:	e0833002 	add	r3, r3, r2
     5d4:	e1a03083 	lsl	r3, r3, #1
     5d8:	e1a01003 	mov	r1, r3
     5dc:	e51b3010 	ldr	r3, [fp, #-16]
     5e0:	e2832001 	add	r2, r3, #1
     5e4:	e50b2010 	str	r2, [fp, #-16]
     5e8:	e5d33000 	ldrb	r3, [r3]
     5ec:	e0813003 	add	r3, r1, r3
     5f0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5f4:	e50b3008 	str	r3, [fp, #-8]
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e5d33000 	ldrb	r3, [r3]
     600:	e353002f 	cmp	r3, #47	@ 0x2f
     604:	9a000003 	bls	618 <atoi+0x70>
     608:	e51b3010 	ldr	r3, [fp, #-16]
     60c:	e5d33000 	ldrb	r3, [r3]
     610:	e3530039 	cmp	r3, #57	@ 0x39
     614:	9affffea 	bls	5c4 <atoi+0x1c>
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e1a00003 	mov	r0, r3
     620:	e28bd000 	add	sp, fp, #0
     624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <memmove>:
     62c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     630:	e28db000 	add	fp, sp, #0
     634:	e24dd01c 	sub	sp, sp, #28
     638:	e50b0010 	str	r0, [fp, #-16]
     63c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     640:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     644:	e51b3010 	ldr	r3, [fp, #-16]
     648:	e50b3008 	str	r3, [fp, #-8]
     64c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     650:	e50b300c 	str	r3, [fp, #-12]
     654:	ea000007 	b	678 <memmove+0x4c>
     658:	e51b200c 	ldr	r2, [fp, #-12]
     65c:	e2823001 	add	r3, r2, #1
     660:	e50b300c 	str	r3, [fp, #-12]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e2831001 	add	r1, r3, #1
     66c:	e50b1008 	str	r1, [fp, #-8]
     670:	e5d22000 	ldrb	r2, [r2]
     674:	e5c32000 	strb	r2, [r3]
     678:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     67c:	e2432001 	sub	r2, r3, #1
     680:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     684:	e3530000 	cmp	r3, #0
     688:	cafffff2 	bgt	658 <memmove+0x2c>
     68c:	e51b3010 	ldr	r3, [fp, #-16]
     690:	e1a00003 	mov	r0, r3
     694:	e28bd000 	add	sp, fp, #0
     698:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <initiateLock>:
     6a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6a4:	e28db000 	add	fp, sp, #0
     6a8:	e24dd00c 	sub	sp, sp, #12
     6ac:	e50b0008 	str	r0, [fp, #-8]
     6b0:	e51b3008 	ldr	r3, [fp, #-8]
     6b4:	e3a02000 	mov	r2, #0
     6b8:	e5832000 	str	r2, [r3]
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e3a02001 	mov	r2, #1
     6c4:	e5832004 	str	r2, [r3, #4]
     6c8:	e1a00000 	nop			@ (mov r0, r0)
     6cc:	e28bd000 	add	sp, fp, #0
     6d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <acquireLock>:
     6d8:	e92d4800 	push	{fp, lr}
     6dc:	e28db004 	add	fp, sp, #4
     6e0:	e24dd008 	sub	sp, sp, #8
     6e4:	e50b0008 	str	r0, [fp, #-8]
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e5933000 	ldr	r3, [r3]
     6f0:	e3730001 	cmn	r3, #1
     6f4:	1a000002 	bne	704 <acquireLock+0x2c>
     6f8:	e59f1034 	ldr	r1, [pc, #52]	@ 734 <acquireLock+0x5c>
     6fc:	e3a00002 	mov	r0, #2
     700:	eb000280 	bl	1108 <printf>
     704:	e1a00000 	nop			@ (mov r0, r0)
     708:	e51b3008 	ldr	r3, [fp, #-8]
     70c:	e3a01001 	mov	r1, #1
     710:	e1a00003 	mov	r0, r3
     714:	ebfffe98 	bl	17c <xchg>
     718:	e1a03000 	mov	r3, r0
     71c:	e3530000 	cmp	r3, #0
     720:	1afffff8 	bne	708 <acquireLock+0x30>
     724:	e1a00000 	nop			@ (mov r0, r0)
     728:	e1a00000 	nop			@ (mov r0, r0)
     72c:	e24bd004 	sub	sp, fp, #4
     730:	e8bd8800 	pop	{fp, pc}
     734:	000017f8 	.word	0x000017f8

00000738 <releaseLock>:
     738:	e92d4800 	push	{fp, lr}
     73c:	e28db004 	add	fp, sp, #4
     740:	e24dd008 	sub	sp, sp, #8
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e5933000 	ldr	r3, [r3]
     750:	e3530001 	cmp	r3, #1
     754:	0a000002 	beq	764 <releaseLock+0x2c>
     758:	e59f1020 	ldr	r1, [pc, #32]	@ 780 <releaseLock+0x48>
     75c:	e3a00002 	mov	r0, #2
     760:	eb000268 	bl	1108 <printf>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e3a01000 	mov	r1, #0
     76c:	e1a00003 	mov	r0, r3
     770:	ebfffe81 	bl	17c <xchg>
     774:	e1a00000 	nop			@ (mov r0, r0)
     778:	e24bd004 	sub	sp, fp, #4
     77c:	e8bd8800 	pop	{fp, pc}
     780:	00001828 	.word	0x00001828

00000784 <initiateCondVar>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5933004 	ldr	r3, [r3, #4]
     79c:	e3530000 	cmp	r3, #0
     7a0:	1a000007 	bne	7c4 <initiateCondVar+0x40>
     7a4:	eb0001e0 	bl	f2c <getChannel>
     7a8:	e1a02000 	mov	r2, r0
     7ac:	e51b3008 	ldr	r3, [fp, #-8]
     7b0:	e5832000 	str	r2, [r3]
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e3a02001 	mov	r2, #1
     7bc:	e5832004 	str	r2, [r3, #4]
     7c0:	ea000000 	b	7c8 <initiateCondVar+0x44>
     7c4:	e1a00000 	nop			@ (mov r0, r0)
     7c8:	e24bd004 	sub	sp, fp, #4
     7cc:	e8bd8800 	pop	{fp, pc}

000007d0 <condWait>:
     7d0:	e92d4800 	push	{fp, lr}
     7d4:	e28db004 	add	fp, sp, #4
     7d8:	e24dd008 	sub	sp, sp, #8
     7dc:	e50b0008 	str	r0, [fp, #-8]
     7e0:	e50b100c 	str	r1, [fp, #-12]
     7e4:	e51b3008 	ldr	r3, [fp, #-8]
     7e8:	e5933004 	ldr	r3, [r3, #4]
     7ec:	e3530000 	cmp	r3, #0
     7f0:	1a000003 	bne	804 <condWait+0x34>
     7f4:	e59f1050 	ldr	r1, [pc, #80]	@ 84c <condWait+0x7c>
     7f8:	e3a00002 	mov	r0, #2
     7fc:	eb000241 	bl	1108 <printf>
     800:	ea00000f 	b	844 <condWait+0x74>
     804:	e51b300c 	ldr	r3, [fp, #-12]
     808:	e5933004 	ldr	r3, [r3, #4]
     80c:	e3530000 	cmp	r3, #0
     810:	1a000003 	bne	824 <condWait+0x54>
     814:	e59f1034 	ldr	r1, [pc, #52]	@ 850 <condWait+0x80>
     818:	e3a00002 	mov	r0, #2
     81c:	eb000239 	bl	1108 <printf>
     820:	ea000007 	b	844 <condWait+0x74>
     824:	e51b000c 	ldr	r0, [fp, #-12]
     828:	ebffffc2 	bl	738 <releaseLock>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e5933000 	ldr	r3, [r3]
     834:	e1a00003 	mov	r0, r3
     838:	eb0001b2 	bl	f08 <sleepChan>
     83c:	e51b000c 	ldr	r0, [fp, #-12]
     840:	ebffffa4 	bl	6d8 <acquireLock>
     844:	e24bd004 	sub	sp, fp, #4
     848:	e8bd8800 	pop	{fp, pc}
     84c:	00001864 	.word	0x00001864
     850:	00001888 	.word	0x00001888

00000854 <broadcast>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd008 	sub	sp, sp, #8
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e5933004 	ldr	r3, [r3, #4]
     86c:	e3530000 	cmp	r3, #0
     870:	1a000003 	bne	884 <broadcast+0x30>
     874:	e59f1020 	ldr	r1, [pc, #32]	@ 89c <broadcast+0x48>
     878:	e3a00002 	mov	r0, #2
     87c:	eb000221 	bl	1108 <printf>
     880:	ea000003 	b	894 <broadcast+0x40>
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e5933000 	ldr	r3, [r3]
     88c:	e1a00003 	mov	r0, r3
     890:	eb0001ae 	bl	f50 <sigChan>
     894:	e24bd004 	sub	sp, fp, #4
     898:	e8bd8800 	pop	{fp, pc}
     89c:	00001864 	.word	0x00001864

000008a0 <signal>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5933004 	ldr	r3, [r3, #4]
     8b8:	e3530000 	cmp	r3, #0
     8bc:	1a000003 	bne	8d0 <signal+0x30>
     8c0:	e59f1020 	ldr	r1, [pc, #32]	@ 8e8 <signal+0x48>
     8c4:	e3a00002 	mov	r0, #2
     8c8:	eb00020e 	bl	1108 <printf>
     8cc:	ea000003 	b	8e0 <signal+0x40>
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e5933000 	ldr	r3, [r3]
     8d8:	e1a00003 	mov	r0, r3
     8dc:	eb0001a4 	bl	f74 <sigOneChan>
     8e0:	e24bd004 	sub	sp, fp, #4
     8e4:	e8bd8800 	pop	{fp, pc}
     8e8:	00001864 	.word	0x00001864

000008ec <semInit>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e50b100c 	str	r1, [fp, #-12]
     900:	e51b3008 	ldr	r3, [fp, #-8]
     904:	e51b200c 	ldr	r2, [fp, #-12]
     908:	e5832000 	str	r2, [r3]
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2833004 	add	r3, r3, #4
     914:	e1a00003 	mov	r0, r3
     918:	ebffff60 	bl	6a0 <initiateLock>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e283300c 	add	r3, r3, #12
     924:	e1a00003 	mov	r0, r3
     928:	ebffff95 	bl	784 <initiateCondVar>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e3a02001 	mov	r2, #1
     934:	e5832014 	str	r2, [r3, #20]
     938:	e1a00000 	nop			@ (mov r0, r0)
     93c:	e24bd004 	sub	sp, fp, #4
     940:	e8bd8800 	pop	{fp, pc}

00000944 <semDown>:
     944:	e92d4800 	push	{fp, lr}
     948:	e28db004 	add	fp, sp, #4
     94c:	e24dd008 	sub	sp, sp, #8
     950:	e50b0008 	str	r0, [fp, #-8]
     954:	e51b3008 	ldr	r3, [fp, #-8]
     958:	e5933014 	ldr	r3, [r3, #20]
     95c:	e3530000 	cmp	r3, #0
     960:	1a000003 	bne	974 <semDown+0x30>
     964:	e59f1074 	ldr	r1, [pc, #116]	@ 9e0 <semDown+0x9c>
     968:	e3a00002 	mov	r0, #2
     96c:	eb0001e5 	bl	1108 <printf>
     970:	ea000018 	b	9d8 <semDown+0x94>
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e2833004 	add	r3, r3, #4
     97c:	e1a00003 	mov	r0, r3
     980:	ebffff54 	bl	6d8 <acquireLock>
     984:	ea000006 	b	9a4 <semDown+0x60>
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e283200c 	add	r2, r3, #12
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e2833004 	add	r3, r3, #4
     998:	e1a01003 	mov	r1, r3
     99c:	e1a00002 	mov	r0, r2
     9a0:	ebffff8a 	bl	7d0 <condWait>
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e5933000 	ldr	r3, [r3]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	0afffff4 	beq	988 <semDown+0x44>
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933000 	ldr	r3, [r3]
     9bc:	e2432001 	sub	r2, r3, #1
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e5832000 	str	r2, [r3]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e2833004 	add	r3, r3, #4
     9d0:	e1a00003 	mov	r0, r3
     9d4:	ebffff57 	bl	738 <releaseLock>
     9d8:	e24bd004 	sub	sp, fp, #4
     9dc:	e8bd8800 	pop	{fp, pc}
     9e0:	000018a8 	.word	0x000018a8

000009e4 <semUp>:
     9e4:	e92d4800 	push	{fp, lr}
     9e8:	e28db004 	add	fp, sp, #4
     9ec:	e24dd008 	sub	sp, sp, #8
     9f0:	e50b0008 	str	r0, [fp, #-8]
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e5933014 	ldr	r3, [r3, #20]
     9fc:	e3530000 	cmp	r3, #0
     a00:	1a000003 	bne	a14 <semUp+0x30>
     a04:	e59f1054 	ldr	r1, [pc, #84]	@ a60 <semUp+0x7c>
     a08:	e3a00002 	mov	r0, #2
     a0c:	eb0001bd 	bl	1108 <printf>
     a10:	ea000010 	b	a58 <semUp+0x74>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e2833004 	add	r3, r3, #4
     a1c:	e1a00003 	mov	r0, r3
     a20:	ebffff2c 	bl	6d8 <acquireLock>
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e5933000 	ldr	r3, [r3]
     a2c:	e2832001 	add	r2, r3, #1
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5832000 	str	r2, [r3]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e283300c 	add	r3, r3, #12
     a40:	e1a00003 	mov	r0, r3
     a44:	ebffff95 	bl	8a0 <signal>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e2833004 	add	r3, r3, #4
     a50:	e1a00003 	mov	r0, r3
     a54:	ebffff37 	bl	738 <releaseLock>
     a58:	e24bd004 	sub	sp, fp, #4
     a5c:	e8bd8800 	pop	{fp, pc}
     a60:	000018a8 	.word	0x000018a8

00000a64 <fork>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00001 	mov	r0, #1
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <exit>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00002 	mov	r0, #2
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <wait>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00003 	mov	r0, #3
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <pipe>:
     ad0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad4:	e1a04003 	mov	r4, r3
     ad8:	e1a03002 	mov	r3, r2
     adc:	e1a02001 	mov	r2, r1
     ae0:	e1a01000 	mov	r1, r0
     ae4:	e3a00004 	mov	r0, #4
     ae8:	ef000000 	svc	0x00000000
     aec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     af0:	e12fff1e 	bx	lr

00000af4 <read>:
     af4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af8:	e1a04003 	mov	r4, r3
     afc:	e1a03002 	mov	r3, r2
     b00:	e1a02001 	mov	r2, r1
     b04:	e1a01000 	mov	r1, r0
     b08:	e3a00005 	mov	r0, #5
     b0c:	ef000000 	svc	0x00000000
     b10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b14:	e12fff1e 	bx	lr

00000b18 <write>:
     b18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b1c:	e1a04003 	mov	r4, r3
     b20:	e1a03002 	mov	r3, r2
     b24:	e1a02001 	mov	r2, r1
     b28:	e1a01000 	mov	r1, r0
     b2c:	e3a00010 	mov	r0, #16
     b30:	ef000000 	svc	0x00000000
     b34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b38:	e12fff1e 	bx	lr

00000b3c <close>:
     b3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b40:	e1a04003 	mov	r4, r3
     b44:	e1a03002 	mov	r3, r2
     b48:	e1a02001 	mov	r2, r1
     b4c:	e1a01000 	mov	r1, r0
     b50:	e3a00015 	mov	r0, #21
     b54:	ef000000 	svc	0x00000000
     b58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b5c:	e12fff1e 	bx	lr

00000b60 <kill>:
     b60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b64:	e1a04003 	mov	r4, r3
     b68:	e1a03002 	mov	r3, r2
     b6c:	e1a02001 	mov	r2, r1
     b70:	e1a01000 	mov	r1, r0
     b74:	e3a00006 	mov	r0, #6
     b78:	ef000000 	svc	0x00000000
     b7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b80:	e12fff1e 	bx	lr

00000b84 <exec>:
     b84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b88:	e1a04003 	mov	r4, r3
     b8c:	e1a03002 	mov	r3, r2
     b90:	e1a02001 	mov	r2, r1
     b94:	e1a01000 	mov	r1, r0
     b98:	e3a00007 	mov	r0, #7
     b9c:	ef000000 	svc	0x00000000
     ba0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba4:	e12fff1e 	bx	lr

00000ba8 <open>:
     ba8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bac:	e1a04003 	mov	r4, r3
     bb0:	e1a03002 	mov	r3, r2
     bb4:	e1a02001 	mov	r2, r1
     bb8:	e1a01000 	mov	r1, r0
     bbc:	e3a0000f 	mov	r0, #15
     bc0:	ef000000 	svc	0x00000000
     bc4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc8:	e12fff1e 	bx	lr

00000bcc <mknod>:
     bcc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bd0:	e1a04003 	mov	r4, r3
     bd4:	e1a03002 	mov	r3, r2
     bd8:	e1a02001 	mov	r2, r1
     bdc:	e1a01000 	mov	r1, r0
     be0:	e3a00011 	mov	r0, #17
     be4:	ef000000 	svc	0x00000000
     be8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bec:	e12fff1e 	bx	lr

00000bf0 <unlink>:
     bf0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf4:	e1a04003 	mov	r4, r3
     bf8:	e1a03002 	mov	r3, r2
     bfc:	e1a02001 	mov	r2, r1
     c00:	e1a01000 	mov	r1, r0
     c04:	e3a00012 	mov	r0, #18
     c08:	ef000000 	svc	0x00000000
     c0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c10:	e12fff1e 	bx	lr

00000c14 <fstat>:
     c14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c18:	e1a04003 	mov	r4, r3
     c1c:	e1a03002 	mov	r3, r2
     c20:	e1a02001 	mov	r2, r1
     c24:	e1a01000 	mov	r1, r0
     c28:	e3a00008 	mov	r0, #8
     c2c:	ef000000 	svc	0x00000000
     c30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c34:	e12fff1e 	bx	lr

00000c38 <link>:
     c38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c3c:	e1a04003 	mov	r4, r3
     c40:	e1a03002 	mov	r3, r2
     c44:	e1a02001 	mov	r2, r1
     c48:	e1a01000 	mov	r1, r0
     c4c:	e3a00013 	mov	r0, #19
     c50:	ef000000 	svc	0x00000000
     c54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c58:	e12fff1e 	bx	lr

00000c5c <mkdir>:
     c5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c60:	e1a04003 	mov	r4, r3
     c64:	e1a03002 	mov	r3, r2
     c68:	e1a02001 	mov	r2, r1
     c6c:	e1a01000 	mov	r1, r0
     c70:	e3a00014 	mov	r0, #20
     c74:	ef000000 	svc	0x00000000
     c78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c7c:	e12fff1e 	bx	lr

00000c80 <chdir>:
     c80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c84:	e1a04003 	mov	r4, r3
     c88:	e1a03002 	mov	r3, r2
     c8c:	e1a02001 	mov	r2, r1
     c90:	e1a01000 	mov	r1, r0
     c94:	e3a00009 	mov	r0, #9
     c98:	ef000000 	svc	0x00000000
     c9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ca0:	e12fff1e 	bx	lr

00000ca4 <dup>:
     ca4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca8:	e1a04003 	mov	r4, r3
     cac:	e1a03002 	mov	r3, r2
     cb0:	e1a02001 	mov	r2, r1
     cb4:	e1a01000 	mov	r1, r0
     cb8:	e3a0000a 	mov	r0, #10
     cbc:	ef000000 	svc	0x00000000
     cc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc4:	e12fff1e 	bx	lr

00000cc8 <getpid>:
     cc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ccc:	e1a04003 	mov	r4, r3
     cd0:	e1a03002 	mov	r3, r2
     cd4:	e1a02001 	mov	r2, r1
     cd8:	e1a01000 	mov	r1, r0
     cdc:	e3a0000b 	mov	r0, #11
     ce0:	ef000000 	svc	0x00000000
     ce4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce8:	e12fff1e 	bx	lr

00000cec <sbrk>:
     cec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cf0:	e1a04003 	mov	r4, r3
     cf4:	e1a03002 	mov	r3, r2
     cf8:	e1a02001 	mov	r2, r1
     cfc:	e1a01000 	mov	r1, r0
     d00:	e3a0000c 	mov	r0, #12
     d04:	ef000000 	svc	0x00000000
     d08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d0c:	e12fff1e 	bx	lr

00000d10 <sleep>:
     d10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d14:	e1a04003 	mov	r4, r3
     d18:	e1a03002 	mov	r3, r2
     d1c:	e1a02001 	mov	r2, r1
     d20:	e1a01000 	mov	r1, r0
     d24:	e3a0000d 	mov	r0, #13
     d28:	ef000000 	svc	0x00000000
     d2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d30:	e12fff1e 	bx	lr

00000d34 <uptime>:
     d34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d38:	e1a04003 	mov	r4, r3
     d3c:	e1a03002 	mov	r3, r2
     d40:	e1a02001 	mov	r2, r1
     d44:	e1a01000 	mov	r1, r0
     d48:	e3a0000e 	mov	r0, #14
     d4c:	ef000000 	svc	0x00000000
     d50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d54:	e12fff1e 	bx	lr

00000d58 <disproc>:
     d58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d5c:	e1a04003 	mov	r4, r3
     d60:	e1a03002 	mov	r3, r2
     d64:	e1a02001 	mov	r2, r1
     d68:	e1a01000 	mov	r1, r0
     d6c:	e3a00016 	mov	r0, #22
     d70:	ef000000 	svc	0x00000000
     d74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d78:	e12fff1e 	bx	lr

00000d7c <srand>:
     d7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d80:	e1a04003 	mov	r4, r3
     d84:	e1a03002 	mov	r3, r2
     d88:	e1a02001 	mov	r2, r1
     d8c:	e1a01000 	mov	r1, r0
     d90:	e3a00017 	mov	r0, #23
     d94:	ef000000 	svc	0x00000000
     d98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d9c:	e12fff1e 	bx	lr

00000da0 <setticket>:
     da0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da4:	e1a04003 	mov	r4, r3
     da8:	e1a03002 	mov	r3, r2
     dac:	e1a02001 	mov	r2, r1
     db0:	e1a01000 	mov	r1, r0
     db4:	e3a00018 	mov	r0, #24
     db8:	ef000000 	svc	0x00000000
     dbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dc0:	e12fff1e 	bx	lr

00000dc4 <getpinfo>:
     dc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc8:	e1a04003 	mov	r4, r3
     dcc:	e1a03002 	mov	r3, r2
     dd0:	e1a02001 	mov	r2, r1
     dd4:	e1a01000 	mov	r1, r0
     dd8:	e3a00019 	mov	r0, #25
     ddc:	ef000000 	svc	0x00000000
     de0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de4:	e12fff1e 	bx	lr

00000de8 <printPages>:
     de8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dec:	e1a04003 	mov	r4, r3
     df0:	e1a03002 	mov	r3, r2
     df4:	e1a02001 	mov	r2, r1
     df8:	e1a01000 	mov	r1, r0
     dfc:	e3a0001a 	mov	r0, #26
     e00:	ef000000 	svc	0x00000000
     e04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e08:	e12fff1e 	bx	lr

00000e0c <kpt>:
     e0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e10:	e1a04003 	mov	r4, r3
     e14:	e1a03002 	mov	r3, r2
     e18:	e1a02001 	mov	r2, r1
     e1c:	e1a01000 	mov	r1, r0
     e20:	e3a0001b 	mov	r0, #27
     e24:	ef000000 	svc	0x00000000
     e28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e2c:	e12fff1e 	bx	lr

00000e30 <thread_create>:
     e30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e34:	e1a04003 	mov	r4, r3
     e38:	e1a03002 	mov	r3, r2
     e3c:	e1a02001 	mov	r2, r1
     e40:	e1a01000 	mov	r1, r0
     e44:	e3a0001c 	mov	r0, #28
     e48:	ef000000 	svc	0x00000000
     e4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e50:	e12fff1e 	bx	lr

00000e54 <thread_exit>:
     e54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e58:	e1a04003 	mov	r4, r3
     e5c:	e1a03002 	mov	r3, r2
     e60:	e1a02001 	mov	r2, r1
     e64:	e1a01000 	mov	r1, r0
     e68:	e3a0001d 	mov	r0, #29
     e6c:	ef000000 	svc	0x00000000
     e70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e74:	e12fff1e 	bx	lr

00000e78 <thread_join>:
     e78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e7c:	e1a04003 	mov	r4, r3
     e80:	e1a03002 	mov	r3, r2
     e84:	e1a02001 	mov	r2, r1
     e88:	e1a01000 	mov	r1, r0
     e8c:	e3a0001e 	mov	r0, #30
     e90:	ef000000 	svc	0x00000000
     e94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e98:	e12fff1e 	bx	lr

00000e9c <waitpid>:
     e9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ea0:	e1a04003 	mov	r4, r3
     ea4:	e1a03002 	mov	r3, r2
     ea8:	e1a02001 	mov	r2, r1
     eac:	e1a01000 	mov	r1, r0
     eb0:	e3a0001f 	mov	r0, #31
     eb4:	ef000000 	svc	0x00000000
     eb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ebc:	e12fff1e 	bx	lr

00000ec0 <barrier_init>:
     ec0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec4:	e1a04003 	mov	r4, r3
     ec8:	e1a03002 	mov	r3, r2
     ecc:	e1a02001 	mov	r2, r1
     ed0:	e1a01000 	mov	r1, r0
     ed4:	e3a00020 	mov	r0, #32
     ed8:	ef000000 	svc	0x00000000
     edc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ee0:	e12fff1e 	bx	lr

00000ee4 <barrier_check>:
     ee4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee8:	e1a04003 	mov	r4, r3
     eec:	e1a03002 	mov	r3, r2
     ef0:	e1a02001 	mov	r2, r1
     ef4:	e1a01000 	mov	r1, r0
     ef8:	e3a00021 	mov	r0, #33	@ 0x21
     efc:	ef000000 	svc	0x00000000
     f00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f04:	e12fff1e 	bx	lr

00000f08 <sleepChan>:
     f08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f0c:	e1a04003 	mov	r4, r3
     f10:	e1a03002 	mov	r3, r2
     f14:	e1a02001 	mov	r2, r1
     f18:	e1a01000 	mov	r1, r0
     f1c:	e3a00022 	mov	r0, #34	@ 0x22
     f20:	ef000000 	svc	0x00000000
     f24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f28:	e12fff1e 	bx	lr

00000f2c <getChannel>:
     f2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f30:	e1a04003 	mov	r4, r3
     f34:	e1a03002 	mov	r3, r2
     f38:	e1a02001 	mov	r2, r1
     f3c:	e1a01000 	mov	r1, r0
     f40:	e3a00023 	mov	r0, #35	@ 0x23
     f44:	ef000000 	svc	0x00000000
     f48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f4c:	e12fff1e 	bx	lr

00000f50 <sigChan>:
     f50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f54:	e1a04003 	mov	r4, r3
     f58:	e1a03002 	mov	r3, r2
     f5c:	e1a02001 	mov	r2, r1
     f60:	e1a01000 	mov	r1, r0
     f64:	e3a00024 	mov	r0, #36	@ 0x24
     f68:	ef000000 	svc	0x00000000
     f6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f70:	e12fff1e 	bx	lr

00000f74 <sigOneChan>:
     f74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f78:	e1a04003 	mov	r4, r3
     f7c:	e1a03002 	mov	r3, r2
     f80:	e1a02001 	mov	r2, r1
     f84:	e1a01000 	mov	r1, r0
     f88:	e3a00025 	mov	r0, #37	@ 0x25
     f8c:	ef000000 	svc	0x00000000
     f90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f94:	e12fff1e 	bx	lr

00000f98 <putc>:
     f98:	e92d4800 	push	{fp, lr}
     f9c:	e28db004 	add	fp, sp, #4
     fa0:	e24dd008 	sub	sp, sp, #8
     fa4:	e50b0008 	str	r0, [fp, #-8]
     fa8:	e1a03001 	mov	r3, r1
     fac:	e54b3009 	strb	r3, [fp, #-9]
     fb0:	e24b3009 	sub	r3, fp, #9
     fb4:	e3a02001 	mov	r2, #1
     fb8:	e1a01003 	mov	r1, r3
     fbc:	e51b0008 	ldr	r0, [fp, #-8]
     fc0:	ebfffed4 	bl	b18 <write>
     fc4:	e1a00000 	nop			@ (mov r0, r0)
     fc8:	e24bd004 	sub	sp, fp, #4
     fcc:	e8bd8800 	pop	{fp, pc}

00000fd0 <printint>:
     fd0:	e92d4800 	push	{fp, lr}
     fd4:	e28db004 	add	fp, sp, #4
     fd8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     fdc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     fe0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     fe4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     fe8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     fec:	e3a03000 	mov	r3, #0
     ff0:	e50b300c 	str	r3, [fp, #-12]
     ff4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     ff8:	e3530000 	cmp	r3, #0
     ffc:	0a000008 	beq	1024 <printint+0x54>
    1000:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1004:	e3530000 	cmp	r3, #0
    1008:	aa000005 	bge	1024 <printint+0x54>
    100c:	e3a03001 	mov	r3, #1
    1010:	e50b300c 	str	r3, [fp, #-12]
    1014:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1018:	e2633000 	rsb	r3, r3, #0
    101c:	e50b3010 	str	r3, [fp, #-16]
    1020:	ea000001 	b	102c <printint+0x5c>
    1024:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1028:	e50b3010 	str	r3, [fp, #-16]
    102c:	e3a03000 	mov	r3, #0
    1030:	e50b3008 	str	r3, [fp, #-8]
    1034:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1038:	e51b3010 	ldr	r3, [fp, #-16]
    103c:	e1a01002 	mov	r1, r2
    1040:	e1a00003 	mov	r0, r3
    1044:	eb0001d5 	bl	17a0 <__aeabi_uidivmod>
    1048:	e1a03001 	mov	r3, r1
    104c:	e1a01003 	mov	r1, r3
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e2832001 	add	r2, r3, #1
    1058:	e50b2008 	str	r2, [fp, #-8]
    105c:	e59f20a0 	ldr	r2, [pc, #160]	@ 1104 <printint+0x134>
    1060:	e7d22001 	ldrb	r2, [r2, r1]
    1064:	e2433004 	sub	r3, r3, #4
    1068:	e083300b 	add	r3, r3, fp
    106c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1070:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1074:	e1a01003 	mov	r1, r3
    1078:	e51b0010 	ldr	r0, [fp, #-16]
    107c:	eb00018a 	bl	16ac <__udivsi3>
    1080:	e1a03000 	mov	r3, r0
    1084:	e50b3010 	str	r3, [fp, #-16]
    1088:	e51b3010 	ldr	r3, [fp, #-16]
    108c:	e3530000 	cmp	r3, #0
    1090:	1affffe7 	bne	1034 <printint+0x64>
    1094:	e51b300c 	ldr	r3, [fp, #-12]
    1098:	e3530000 	cmp	r3, #0
    109c:	0a00000e 	beq	10dc <printint+0x10c>
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e2832001 	add	r2, r3, #1
    10a8:	e50b2008 	str	r2, [fp, #-8]
    10ac:	e2433004 	sub	r3, r3, #4
    10b0:	e083300b 	add	r3, r3, fp
    10b4:	e3a0202d 	mov	r2, #45	@ 0x2d
    10b8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10bc:	ea000006 	b	10dc <printint+0x10c>
    10c0:	e24b2020 	sub	r2, fp, #32
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e0823003 	add	r3, r2, r3
    10cc:	e5d33000 	ldrb	r3, [r3]
    10d0:	e1a01003 	mov	r1, r3
    10d4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    10d8:	ebffffae 	bl	f98 <putc>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e2433001 	sub	r3, r3, #1
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	aafffff2 	bge	10c0 <printint+0xf0>
    10f4:	e1a00000 	nop			@ (mov r0, r0)
    10f8:	e1a00000 	nop			@ (mov r0, r0)
    10fc:	e24bd004 	sub	sp, fp, #4
    1100:	e8bd8800 	pop	{fp, pc}
    1104:	000018d4 	.word	0x000018d4

00001108 <printf>:
    1108:	e92d000e 	push	{r1, r2, r3}
    110c:	e92d4800 	push	{fp, lr}
    1110:	e28db004 	add	fp, sp, #4
    1114:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1118:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    111c:	e3a03000 	mov	r3, #0
    1120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1124:	e28b3008 	add	r3, fp, #8
    1128:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    112c:	e3a03000 	mov	r3, #0
    1130:	e50b3010 	str	r3, [fp, #-16]
    1134:	ea000074 	b	130c <printf+0x204>
    1138:	e59b2004 	ldr	r2, [fp, #4]
    113c:	e51b3010 	ldr	r3, [fp, #-16]
    1140:	e0823003 	add	r3, r2, r3
    1144:	e5d33000 	ldrb	r3, [r3]
    1148:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1150:	e3530000 	cmp	r3, #0
    1154:	1a00000b 	bne	1188 <printf+0x80>
    1158:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    115c:	e3530025 	cmp	r3, #37	@ 0x25
    1160:	1a000002 	bne	1170 <printf+0x68>
    1164:	e3a03025 	mov	r3, #37	@ 0x25
    1168:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    116c:	ea000063 	b	1300 <printf+0x1f8>
    1170:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1174:	e6ef3073 	uxtb	r3, r3
    1178:	e1a01003 	mov	r1, r3
    117c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1180:	ebffff84 	bl	f98 <putc>
    1184:	ea00005d 	b	1300 <printf+0x1f8>
    1188:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    118c:	e3530025 	cmp	r3, #37	@ 0x25
    1190:	1a00005a 	bne	1300 <printf+0x1f8>
    1194:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1198:	e3530064 	cmp	r3, #100	@ 0x64
    119c:	1a00000a 	bne	11cc <printf+0xc4>
    11a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a4:	e5933000 	ldr	r3, [r3]
    11a8:	e1a01003 	mov	r1, r3
    11ac:	e3a03001 	mov	r3, #1
    11b0:	e3a0200a 	mov	r2, #10
    11b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b8:	ebffff84 	bl	fd0 <printint>
    11bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11c0:	e2833004 	add	r3, r3, #4
    11c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c8:	ea00004a 	b	12f8 <printf+0x1f0>
    11cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d0:	e3530078 	cmp	r3, #120	@ 0x78
    11d4:	0a000002 	beq	11e4 <printf+0xdc>
    11d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11dc:	e3530070 	cmp	r3, #112	@ 0x70
    11e0:	1a00000a 	bne	1210 <printf+0x108>
    11e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e8:	e5933000 	ldr	r3, [r3]
    11ec:	e1a01003 	mov	r1, r3
    11f0:	e3a03000 	mov	r3, #0
    11f4:	e3a02010 	mov	r2, #16
    11f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11fc:	ebffff73 	bl	fd0 <printint>
    1200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1204:	e2833004 	add	r3, r3, #4
    1208:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    120c:	ea000039 	b	12f8 <printf+0x1f0>
    1210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e3530073 	cmp	r3, #115	@ 0x73
    1218:	1a000018 	bne	1280 <printf+0x178>
    121c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1220:	e5933000 	ldr	r3, [r3]
    1224:	e50b300c 	str	r3, [fp, #-12]
    1228:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    122c:	e2833004 	add	r3, r3, #4
    1230:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e3530000 	cmp	r3, #0
    123c:	1a00000a 	bne	126c <printf+0x164>
    1240:	e59f30f4 	ldr	r3, [pc, #244]	@ 133c <printf+0x234>
    1244:	e50b300c 	str	r3, [fp, #-12]
    1248:	ea000007 	b	126c <printf+0x164>
    124c:	e51b300c 	ldr	r3, [fp, #-12]
    1250:	e5d33000 	ldrb	r3, [r3]
    1254:	e1a01003 	mov	r1, r3
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff4d 	bl	f98 <putc>
    1260:	e51b300c 	ldr	r3, [fp, #-12]
    1264:	e2833001 	add	r3, r3, #1
    1268:	e50b300c 	str	r3, [fp, #-12]
    126c:	e51b300c 	ldr	r3, [fp, #-12]
    1270:	e5d33000 	ldrb	r3, [r3]
    1274:	e3530000 	cmp	r3, #0
    1278:	1afffff3 	bne	124c <printf+0x144>
    127c:	ea00001d 	b	12f8 <printf+0x1f0>
    1280:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1284:	e3530063 	cmp	r3, #99	@ 0x63
    1288:	1a000009 	bne	12b4 <printf+0x1ac>
    128c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1290:	e5933000 	ldr	r3, [r3]
    1294:	e6ef3073 	uxtb	r3, r3
    1298:	e1a01003 	mov	r1, r3
    129c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12a0:	ebffff3c 	bl	f98 <putc>
    12a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12a8:	e2833004 	add	r3, r3, #4
    12ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	ea000010 	b	12f8 <printf+0x1f0>
    12b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12b8:	e3530025 	cmp	r3, #37	@ 0x25
    12bc:	1a000005 	bne	12d8 <printf+0x1d0>
    12c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c4:	e6ef3073 	uxtb	r3, r3
    12c8:	e1a01003 	mov	r1, r3
    12cc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12d0:	ebffff30 	bl	f98 <putc>
    12d4:	ea000007 	b	12f8 <printf+0x1f0>
    12d8:	e3a01025 	mov	r1, #37	@ 0x25
    12dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12e0:	ebffff2c 	bl	f98 <putc>
    12e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e8:	e6ef3073 	uxtb	r3, r3
    12ec:	e1a01003 	mov	r1, r3
    12f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12f4:	ebffff27 	bl	f98 <putc>
    12f8:	e3a03000 	mov	r3, #0
    12fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1300:	e51b3010 	ldr	r3, [fp, #-16]
    1304:	e2833001 	add	r3, r3, #1
    1308:	e50b3010 	str	r3, [fp, #-16]
    130c:	e59b2004 	ldr	r2, [fp, #4]
    1310:	e51b3010 	ldr	r3, [fp, #-16]
    1314:	e0823003 	add	r3, r2, r3
    1318:	e5d33000 	ldrb	r3, [r3]
    131c:	e3530000 	cmp	r3, #0
    1320:	1affff84 	bne	1138 <printf+0x30>
    1324:	e1a00000 	nop			@ (mov r0, r0)
    1328:	e1a00000 	nop			@ (mov r0, r0)
    132c:	e24bd004 	sub	sp, fp, #4
    1330:	e8bd4800 	pop	{fp, lr}
    1334:	e28dd00c 	add	sp, sp, #12
    1338:	e12fff1e 	bx	lr
    133c:	000018cc 	.word	0x000018cc

00001340 <free>:
    1340:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1344:	e28db000 	add	fp, sp, #0
    1348:	e24dd014 	sub	sp, sp, #20
    134c:	e50b0010 	str	r0, [fp, #-16]
    1350:	e51b3010 	ldr	r3, [fp, #-16]
    1354:	e2433008 	sub	r3, r3, #8
    1358:	e50b300c 	str	r3, [fp, #-12]
    135c:	e59f3154 	ldr	r3, [pc, #340]	@ 14b8 <free+0x178>
    1360:	e5933000 	ldr	r3, [r3]
    1364:	e50b3008 	str	r3, [fp, #-8]
    1368:	ea000010 	b	13b0 <free+0x70>
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e5933000 	ldr	r3, [r3]
    1374:	e51b2008 	ldr	r2, [fp, #-8]
    1378:	e1520003 	cmp	r2, r3
    137c:	3a000008 	bcc	13a4 <free+0x64>
    1380:	e51b200c 	ldr	r2, [fp, #-12]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e1520003 	cmp	r2, r3
    138c:	8a000010 	bhi	13d4 <free+0x94>
    1390:	e51b3008 	ldr	r3, [fp, #-8]
    1394:	e5933000 	ldr	r3, [r3]
    1398:	e51b200c 	ldr	r2, [fp, #-12]
    139c:	e1520003 	cmp	r2, r3
    13a0:	3a00000b 	bcc	13d4 <free+0x94>
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e5933000 	ldr	r3, [r3]
    13ac:	e50b3008 	str	r3, [fp, #-8]
    13b0:	e51b200c 	ldr	r2, [fp, #-12]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e1520003 	cmp	r2, r3
    13bc:	9affffea 	bls	136c <free+0x2c>
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e51b200c 	ldr	r2, [fp, #-12]
    13cc:	e1520003 	cmp	r2, r3
    13d0:	2affffe5 	bcs	136c <free+0x2c>
    13d4:	e51b300c 	ldr	r3, [fp, #-12]
    13d8:	e5933004 	ldr	r3, [r3, #4]
    13dc:	e1a03183 	lsl	r3, r3, #3
    13e0:	e51b200c 	ldr	r2, [fp, #-12]
    13e4:	e0822003 	add	r2, r2, r3
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5933000 	ldr	r3, [r3]
    13f0:	e1520003 	cmp	r2, r3
    13f4:	1a00000d 	bne	1430 <free+0xf0>
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5932004 	ldr	r2, [r3, #4]
    1400:	e51b3008 	ldr	r3, [fp, #-8]
    1404:	e5933000 	ldr	r3, [r3]
    1408:	e5933004 	ldr	r3, [r3, #4]
    140c:	e0822003 	add	r2, r2, r3
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5832004 	str	r2, [r3, #4]
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5933000 	ldr	r3, [r3]
    1420:	e5932000 	ldr	r2, [r3]
    1424:	e51b300c 	ldr	r3, [fp, #-12]
    1428:	e5832000 	str	r2, [r3]
    142c:	ea000003 	b	1440 <free+0x100>
    1430:	e51b3008 	ldr	r3, [fp, #-8]
    1434:	e5932000 	ldr	r2, [r3]
    1438:	e51b300c 	ldr	r3, [fp, #-12]
    143c:	e5832000 	str	r2, [r3]
    1440:	e51b3008 	ldr	r3, [fp, #-8]
    1444:	e5933004 	ldr	r3, [r3, #4]
    1448:	e1a03183 	lsl	r3, r3, #3
    144c:	e51b2008 	ldr	r2, [fp, #-8]
    1450:	e0823003 	add	r3, r2, r3
    1454:	e51b200c 	ldr	r2, [fp, #-12]
    1458:	e1520003 	cmp	r2, r3
    145c:	1a00000b 	bne	1490 <free+0x150>
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5932004 	ldr	r2, [r3, #4]
    1468:	e51b300c 	ldr	r3, [fp, #-12]
    146c:	e5933004 	ldr	r3, [r3, #4]
    1470:	e0822003 	add	r2, r2, r3
    1474:	e51b3008 	ldr	r3, [fp, #-8]
    1478:	e5832004 	str	r2, [r3, #4]
    147c:	e51b300c 	ldr	r3, [fp, #-12]
    1480:	e5932000 	ldr	r2, [r3]
    1484:	e51b3008 	ldr	r3, [fp, #-8]
    1488:	e5832000 	str	r2, [r3]
    148c:	ea000002 	b	149c <free+0x15c>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e51b200c 	ldr	r2, [fp, #-12]
    1498:	e5832000 	str	r2, [r3]
    149c:	e59f2014 	ldr	r2, [pc, #20]	@ 14b8 <free+0x178>
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5823000 	str	r3, [r2]
    14a8:	e1a00000 	nop			@ (mov r0, r0)
    14ac:	e28bd000 	add	sp, fp, #0
    14b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14b4:	e12fff1e 	bx	lr
    14b8:	000018f0 	.word	0x000018f0

000014bc <morecore>:
    14bc:	e92d4800 	push	{fp, lr}
    14c0:	e28db004 	add	fp, sp, #4
    14c4:	e24dd010 	sub	sp, sp, #16
    14c8:	e50b0010 	str	r0, [fp, #-16]
    14cc:	e51b3010 	ldr	r3, [fp, #-16]
    14d0:	e3530a01 	cmp	r3, #4096	@ 0x1000
    14d4:	2a000001 	bcs	14e0 <morecore+0x24>
    14d8:	e3a03a01 	mov	r3, #4096	@ 0x1000
    14dc:	e50b3010 	str	r3, [fp, #-16]
    14e0:	e51b3010 	ldr	r3, [fp, #-16]
    14e4:	e1a03183 	lsl	r3, r3, #3
    14e8:	e1a00003 	mov	r0, r3
    14ec:	ebfffdfe 	bl	cec <sbrk>
    14f0:	e50b0008 	str	r0, [fp, #-8]
    14f4:	e51b3008 	ldr	r3, [fp, #-8]
    14f8:	e3730001 	cmn	r3, #1
    14fc:	1a000001 	bne	1508 <morecore+0x4c>
    1500:	e3a03000 	mov	r3, #0
    1504:	ea00000a 	b	1534 <morecore+0x78>
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e50b300c 	str	r3, [fp, #-12]
    1510:	e51b300c 	ldr	r3, [fp, #-12]
    1514:	e51b2010 	ldr	r2, [fp, #-16]
    1518:	e5832004 	str	r2, [r3, #4]
    151c:	e51b300c 	ldr	r3, [fp, #-12]
    1520:	e2833008 	add	r3, r3, #8
    1524:	e1a00003 	mov	r0, r3
    1528:	ebffff84 	bl	1340 <free>
    152c:	e59f300c 	ldr	r3, [pc, #12]	@ 1540 <morecore+0x84>
    1530:	e5933000 	ldr	r3, [r3]
    1534:	e1a00003 	mov	r0, r3
    1538:	e24bd004 	sub	sp, fp, #4
    153c:	e8bd8800 	pop	{fp, pc}
    1540:	000018f0 	.word	0x000018f0

00001544 <malloc>:
    1544:	e92d4800 	push	{fp, lr}
    1548:	e28db004 	add	fp, sp, #4
    154c:	e24dd018 	sub	sp, sp, #24
    1550:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1554:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1558:	e2833007 	add	r3, r3, #7
    155c:	e1a031a3 	lsr	r3, r3, #3
    1560:	e2833001 	add	r3, r3, #1
    1564:	e50b3010 	str	r3, [fp, #-16]
    1568:	e59f3134 	ldr	r3, [pc, #308]	@ 16a4 <malloc+0x160>
    156c:	e5933000 	ldr	r3, [r3]
    1570:	e50b300c 	str	r3, [fp, #-12]
    1574:	e51b300c 	ldr	r3, [fp, #-12]
    1578:	e3530000 	cmp	r3, #0
    157c:	1a00000b 	bne	15b0 <malloc+0x6c>
    1580:	e59f3120 	ldr	r3, [pc, #288]	@ 16a8 <malloc+0x164>
    1584:	e50b300c 	str	r3, [fp, #-12]
    1588:	e59f2114 	ldr	r2, [pc, #276]	@ 16a4 <malloc+0x160>
    158c:	e51b300c 	ldr	r3, [fp, #-12]
    1590:	e5823000 	str	r3, [r2]
    1594:	e59f3108 	ldr	r3, [pc, #264]	@ 16a4 <malloc+0x160>
    1598:	e5933000 	ldr	r3, [r3]
    159c:	e59f2104 	ldr	r2, [pc, #260]	@ 16a8 <malloc+0x164>
    15a0:	e5823000 	str	r3, [r2]
    15a4:	e59f30fc 	ldr	r3, [pc, #252]	@ 16a8 <malloc+0x164>
    15a8:	e3a02000 	mov	r2, #0
    15ac:	e5832004 	str	r2, [r3, #4]
    15b0:	e51b300c 	ldr	r3, [fp, #-12]
    15b4:	e5933000 	ldr	r3, [r3]
    15b8:	e50b3008 	str	r3, [fp, #-8]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e5933004 	ldr	r3, [r3, #4]
    15c4:	e51b2010 	ldr	r2, [fp, #-16]
    15c8:	e1520003 	cmp	r2, r3
    15cc:	8a00001e 	bhi	164c <malloc+0x108>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e5933004 	ldr	r3, [r3, #4]
    15d8:	e51b2010 	ldr	r2, [fp, #-16]
    15dc:	e1520003 	cmp	r2, r3
    15e0:	1a000004 	bne	15f8 <malloc+0xb4>
    15e4:	e51b3008 	ldr	r3, [fp, #-8]
    15e8:	e5932000 	ldr	r2, [r3]
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e5832000 	str	r2, [r3]
    15f4:	ea00000e 	b	1634 <malloc+0xf0>
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e5932004 	ldr	r2, [r3, #4]
    1600:	e51b3010 	ldr	r3, [fp, #-16]
    1604:	e0422003 	sub	r2, r2, r3
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e5832004 	str	r2, [r3, #4]
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e5933004 	ldr	r3, [r3, #4]
    1618:	e1a03183 	lsl	r3, r3, #3
    161c:	e51b2008 	ldr	r2, [fp, #-8]
    1620:	e0823003 	add	r3, r2, r3
    1624:	e50b3008 	str	r3, [fp, #-8]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e51b2010 	ldr	r2, [fp, #-16]
    1630:	e5832004 	str	r2, [r3, #4]
    1634:	e59f2068 	ldr	r2, [pc, #104]	@ 16a4 <malloc+0x160>
    1638:	e51b300c 	ldr	r3, [fp, #-12]
    163c:	e5823000 	str	r3, [r2]
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e2833008 	add	r3, r3, #8
    1648:	ea000012 	b	1698 <malloc+0x154>
    164c:	e59f3050 	ldr	r3, [pc, #80]	@ 16a4 <malloc+0x160>
    1650:	e5933000 	ldr	r3, [r3]
    1654:	e51b2008 	ldr	r2, [fp, #-8]
    1658:	e1520003 	cmp	r2, r3
    165c:	1a000007 	bne	1680 <malloc+0x13c>
    1660:	e51b0010 	ldr	r0, [fp, #-16]
    1664:	ebffff94 	bl	14bc <morecore>
    1668:	e50b0008 	str	r0, [fp, #-8]
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e3530000 	cmp	r3, #0
    1674:	1a000001 	bne	1680 <malloc+0x13c>
    1678:	e3a03000 	mov	r3, #0
    167c:	ea000005 	b	1698 <malloc+0x154>
    1680:	e51b3008 	ldr	r3, [fp, #-8]
    1684:	e50b300c 	str	r3, [fp, #-12]
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e5933000 	ldr	r3, [r3]
    1690:	e50b3008 	str	r3, [fp, #-8]
    1694:	eaffffc8 	b	15bc <malloc+0x78>
    1698:	e1a00003 	mov	r0, r3
    169c:	e24bd004 	sub	sp, fp, #4
    16a0:	e8bd8800 	pop	{fp, pc}
    16a4:	000018f0 	.word	0x000018f0
    16a8:	000018e8 	.word	0x000018e8

000016ac <__udivsi3>:
    16ac:	e2512001 	subs	r2, r1, #1
    16b0:	012fff1e 	bxeq	lr
    16b4:	3a000036 	bcc	1794 <__udivsi3+0xe8>
    16b8:	e1500001 	cmp	r0, r1
    16bc:	9a000022 	bls	174c <__udivsi3+0xa0>
    16c0:	e1110002 	tst	r1, r2
    16c4:	0a000023 	beq	1758 <__udivsi3+0xac>
    16c8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    16cc:	01a01181 	lsleq	r1, r1, #3
    16d0:	03a03008 	moveq	r3, #8
    16d4:	13a03001 	movne	r3, #1
    16d8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    16dc:	31510000 	cmpcc	r1, r0
    16e0:	31a01201 	lslcc	r1, r1, #4
    16e4:	31a03203 	lslcc	r3, r3, #4
    16e8:	3afffffa 	bcc	16d8 <__udivsi3+0x2c>
    16ec:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    16f0:	31510000 	cmpcc	r1, r0
    16f4:	31a01081 	lslcc	r1, r1, #1
    16f8:	31a03083 	lslcc	r3, r3, #1
    16fc:	3afffffa 	bcc	16ec <__udivsi3+0x40>
    1700:	e3a02000 	mov	r2, #0
    1704:	e1500001 	cmp	r0, r1
    1708:	20400001 	subcs	r0, r0, r1
    170c:	21822003 	orrcs	r2, r2, r3
    1710:	e15000a1 	cmp	r0, r1, lsr #1
    1714:	204000a1 	subcs	r0, r0, r1, lsr #1
    1718:	218220a3 	orrcs	r2, r2, r3, lsr #1
    171c:	e1500121 	cmp	r0, r1, lsr #2
    1720:	20400121 	subcs	r0, r0, r1, lsr #2
    1724:	21822123 	orrcs	r2, r2, r3, lsr #2
    1728:	e15001a1 	cmp	r0, r1, lsr #3
    172c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1730:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1734:	e3500000 	cmp	r0, #0
    1738:	11b03223 	lsrsne	r3, r3, #4
    173c:	11a01221 	lsrne	r1, r1, #4
    1740:	1affffef 	bne	1704 <__udivsi3+0x58>
    1744:	e1a00002 	mov	r0, r2
    1748:	e12fff1e 	bx	lr
    174c:	03a00001 	moveq	r0, #1
    1750:	13a00000 	movne	r0, #0
    1754:	e12fff1e 	bx	lr
    1758:	e3510801 	cmp	r1, #65536	@ 0x10000
    175c:	21a01821 	lsrcs	r1, r1, #16
    1760:	23a02010 	movcs	r2, #16
    1764:	33a02000 	movcc	r2, #0
    1768:	e3510c01 	cmp	r1, #256	@ 0x100
    176c:	21a01421 	lsrcs	r1, r1, #8
    1770:	22822008 	addcs	r2, r2, #8
    1774:	e3510010 	cmp	r1, #16
    1778:	21a01221 	lsrcs	r1, r1, #4
    177c:	22822004 	addcs	r2, r2, #4
    1780:	e3510004 	cmp	r1, #4
    1784:	82822003 	addhi	r2, r2, #3
    1788:	908220a1 	addls	r2, r2, r1, lsr #1
    178c:	e1a00230 	lsr	r0, r0, r2
    1790:	e12fff1e 	bx	lr
    1794:	e3500000 	cmp	r0, #0
    1798:	13e00000 	mvnne	r0, #0
    179c:	ea000007 	b	17c0 <__aeabi_idiv0>

000017a0 <__aeabi_uidivmod>:
    17a0:	e3510000 	cmp	r1, #0
    17a4:	0afffffa 	beq	1794 <__udivsi3+0xe8>
    17a8:	e92d4003 	push	{r0, r1, lr}
    17ac:	ebffffbe 	bl	16ac <__udivsi3>
    17b0:	e8bd4006 	pop	{r1, r2, lr}
    17b4:	e0030092 	mul	r3, r2, r0
    17b8:	e0411003 	sub	r1, r1, r3
    17bc:	e12fff1e 	bx	lr

000017c0 <__aeabi_idiv0>:
    17c0:	e12fff1e 	bx	lr
