
_t_sem1:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread2>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e59f1064 	ldr	r1, [pc, #100]	@ 84 <thread2+0x84>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000425 	bl	10bc <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb000230 	bl	8f8 <semDown>
      34:	e59f104c 	ldr	r1, [pc, #76]	@ 88 <thread2+0x88>
      38:	e3a00001 	mov	r0, #1
      3c:	eb00041e 	bl	10bc <printf>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e5933000 	ldr	r3, [r3]
      48:	e50b300c 	str	r3, [fp, #-12]
      4c:	e51b300c 	ldr	r3, [fp, #-12]
      50:	e5933000 	ldr	r3, [r3]
      54:	e2832001 	add	r2, r3, #1
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e5832000 	str	r2, [r3]
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e5933004 	ldr	r3, [r3, #4]
      68:	e1a00003 	mov	r0, r3
      6c:	eb000249 	bl	998 <semUp>
      70:	eb000364 	bl	e08 <thread_exit>
      74:	e3a03000 	mov	r3, #0
      78:	e1a00003 	mov	r0, r3
      7c:	e24bd004 	sub	sp, fp, #4
      80:	e8bd8800 	pop	{fp, pc}
      84:	00001778 	.word	0x00001778
      88:	00001794 	.word	0x00001794

0000008c <main>:
      8c:	e92d4800 	push	{fp, lr}
      90:	e28db004 	add	fp, sp, #4
      94:	e24dd028 	sub	sp, sp, #40	@ 0x28
      98:	e24b301c 	sub	r3, fp, #28
      9c:	e3a01001 	mov	r1, #1
      a0:	e1a00003 	mov	r0, r3
      a4:	eb0001fd 	bl	8a0 <semInit>
      a8:	e59f1074 	ldr	r1, [pc, #116]	@ 124 <main+0x98>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb000401 	bl	10bc <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      bc:	e24b3020 	sub	r3, fp, #32
      c0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
      c4:	e24b301c 	sub	r3, fp, #28
      c8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      cc:	e24b301c 	sub	r3, fp, #28
      d0:	e1a00003 	mov	r0, r3
      d4:	eb000207 	bl	8f8 <semDown>
      d8:	e24b2028 	sub	r2, fp, #40	@ 0x28
      dc:	e24b302c 	sub	r3, fp, #44	@ 0x2c
      e0:	e59f1040 	ldr	r1, [pc, #64]	@ 128 <main+0x9c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb00033d 	bl	de4 <thread_create>
      ec:	e3a000c8 	mov	r0, #200	@ 0xc8
      f0:	eb0002f3 	bl	cc4 <sleep>
      f4:	e24b301c 	sub	r3, fp, #28
      f8:	e1a00003 	mov	r0, r3
      fc:	eb000225 	bl	998 <semUp>
     100:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     104:	e1a00003 	mov	r0, r3
     108:	eb000347 	bl	e2c <thread_join>
     10c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     110:	e1a02003 	mov	r2, r3
     114:	e59f1010 	ldr	r1, [pc, #16]	@ 12c <main+0xa0>
     118:	e3a00001 	mov	r0, #1
     11c:	eb0003e6 	bl	10bc <printf>
     120:	eb000245 	bl	a3c <exit>
     124:	000017b8 	.word	0x000017b8
     128:	00000000 	.word	0x00000000
     12c:	000017c8 	.word	0x000017c8

00000130 <xchg>:
     130:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     134:	e28db000 	add	fp, sp, #0
     138:	e24dd014 	sub	sp, sp, #20
     13c:	e50b0010 	str	r0, [fp, #-16]
     140:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     144:	e51b1010 	ldr	r1, [fp, #-16]
     148:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     14c:	e1912f9f 	ldrex	r2, [r1]
     150:	e1813f90 	strex	r3, r0, [r1]
     154:	e50b2008 	str	r2, [fp, #-8]
     158:	e50b300c 	str	r3, [fp, #-12]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e3530000 	cmp	r3, #0
     164:	1afffff6 	bne	144 <xchg+0x14>
     168:	e51b3008 	ldr	r3, [fp, #-8]
     16c:	e1a00003 	mov	r0, r3
     170:	e28bd000 	add	sp, fp, #0
     174:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     178:	e12fff1e 	bx	lr

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e1a03002 	mov	r3, r2
     2e0:	e1a03403 	lsl	r3, r3, #8
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e1a03803 	lsl	r3, r3, #16
     2ec:	e1a02003 	mov	r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e1822003 	orr	r2, r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1823003 	orr	r3, r2, r3
     304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     308:	ea000008 	b	330 <memset+0x80>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e5c32000 	strb	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433001 	sub	r3, r3, #1
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530000 	cmp	r3, #0
     338:	0a000003 	beq	34c <memset+0x9c>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2033003 	and	r3, r3, #3
     344:	e3530000 	cmp	r3, #0
     348:	1affffef 	bne	30c <memset+0x5c>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	ea000008 	b	37c <memset+0xcc>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e5832000 	str	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433004 	sub	r3, r3, #4
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833004 	add	r3, r3, #4
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530003 	cmp	r3, #3
     384:	8afffff3 	bhi	358 <memset+0xa8>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000008 	b	3b8 <memset+0x108>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e5c32000 	strb	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433001 	sub	r3, r3, #1
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff3 	bne	394 <memset+0xe4>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <strchr>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd00c 	sub	sp, sp, #12
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e1a03001 	mov	r3, r1
     3ec:	e54b3009 	strb	r3, [fp, #-9]
     3f0:	ea000009 	b	41c <strchr+0x44>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e55b2009 	ldrb	r2, [fp, #-9]
     400:	e1520003 	cmp	r2, r3
     404:	1a000001 	bne	410 <strchr+0x38>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	ea000007 	b	430 <strchr+0x58>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff1 	bne	3f4 <strchr+0x1c>
     42c:	e3a03000 	mov	r3, #0
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <gets>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd018 	sub	sp, sp, #24
     44c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     450:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000016 	b	4bc <gets+0x7c>
     460:	e24b300d 	sub	r3, fp, #13
     464:	e3a02001 	mov	r2, #1
     468:	e1a01003 	mov	r1, r3
     46c:	e3a00000 	mov	r0, #0
     470:	eb00018c 	bl	aa8 <read>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e3530000 	cmp	r3, #0
     480:	da000013 	ble	4d4 <gets+0x94>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2008 	str	r2, [fp, #-8]
     490:	e1a02003 	mov	r2, r3
     494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     498:	e0833002 	add	r3, r3, r2
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000a 	cmp	r3, #10
     4ac:	0a000009 	beq	4d8 <gets+0x98>
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000d 	cmp	r3, #13
     4b8:	0a000006 	beq	4d8 <gets+0x98>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c8:	e1520003 	cmp	r2, r3
     4cc:	caffffe3 	bgt	460 <gets+0x20>
     4d0:	ea000000 	b	4d8 <gets+0x98>
     4d4:	e1a00000 	nop			@ (mov r0, r0)
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e0823003 	add	r3, r2, r3
     4e4:	e3a02000 	mov	r2, #0
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <stat>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd010 	sub	sp, sp, #16
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e3a01000 	mov	r1, #0
     514:	e51b0010 	ldr	r0, [fp, #-16]
     518:	eb00018f 	bl	b5c <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0001a1 	bl	bc8 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000168 	bl	af0 <close>
     54c:	e51b300c 	ldr	r3, [fp, #-12]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd004 	sub	sp, fp, #4
     558:	e8bd8800 	pop	{fp, pc}

0000055c <atoi>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd014 	sub	sp, sp, #20
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e3a03000 	mov	r3, #0
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	ea00000c 	b	5ac <atoi+0x50>
     578:	e51b2008 	ldr	r2, [fp, #-8]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03103 	lsl	r3, r3, #2
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03083 	lsl	r3, r3, #1
     58c:	e1a01003 	mov	r1, r3
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e2832001 	add	r2, r3, #1
     598:	e50b2010 	str	r2, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0813003 	add	r3, r1, r3
     5a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e353002f 	cmp	r3, #47	@ 0x2f
     5b8:	9a000003 	bls	5cc <atoi+0x70>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530039 	cmp	r3, #57	@ 0x39
     5c8:	9affffea 	bls	578 <atoi+0x1c>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e1a00003 	mov	r0, r3
     5d4:	e28bd000 	add	sp, fp, #0
     5d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <memmove>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd01c 	sub	sp, sp, #28
     5ec:	e50b0010 	str	r0, [fp, #-16]
     5f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	ea000007 	b	62c <memmove+0x4c>
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2823001 	add	r3, r2, #1
     614:	e50b300c 	str	r3, [fp, #-12]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2831001 	add	r1, r3, #1
     620:	e50b1008 	str	r1, [fp, #-8]
     624:	e5d22000 	ldrb	r2, [r2]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     630:	e2432001 	sub	r2, r3, #1
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e3530000 	cmp	r3, #0
     63c:	cafffff2 	bgt	60c <memmove+0x2c>
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <initiateLock>:
     654:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     658:	e28db000 	add	fp, sp, #0
     65c:	e24dd00c 	sub	sp, sp, #12
     660:	e50b0008 	str	r0, [fp, #-8]
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e3a02000 	mov	r2, #0
     66c:	e5832000 	str	r2, [r3]
     670:	e51b3008 	ldr	r3, [fp, #-8]
     674:	e3a02001 	mov	r2, #1
     678:	e5832004 	str	r2, [r3, #4]
     67c:	e1a00000 	nop			@ (mov r0, r0)
     680:	e28bd000 	add	sp, fp, #0
     684:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <acquireLock>:
     68c:	e92d4800 	push	{fp, lr}
     690:	e28db004 	add	fp, sp, #4
     694:	e24dd008 	sub	sp, sp, #8
     698:	e50b0008 	str	r0, [fp, #-8]
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e5933000 	ldr	r3, [r3]
     6a4:	e3730001 	cmn	r3, #1
     6a8:	1a000002 	bne	6b8 <acquireLock+0x2c>
     6ac:	e59f1034 	ldr	r1, [pc, #52]	@ 6e8 <acquireLock+0x5c>
     6b0:	e3a00002 	mov	r0, #2
     6b4:	eb000280 	bl	10bc <printf>
     6b8:	e1a00000 	nop			@ (mov r0, r0)
     6bc:	e51b3008 	ldr	r3, [fp, #-8]
     6c0:	e3a01001 	mov	r1, #1
     6c4:	e1a00003 	mov	r0, r3
     6c8:	ebfffe98 	bl	130 <xchg>
     6cc:	e1a03000 	mov	r3, r0
     6d0:	e3530000 	cmp	r3, #0
     6d4:	1afffff8 	bne	6bc <acquireLock+0x30>
     6d8:	e1a00000 	nop			@ (mov r0, r0)
     6dc:	e1a00000 	nop			@ (mov r0, r0)
     6e0:	e24bd004 	sub	sp, fp, #4
     6e4:	e8bd8800 	pop	{fp, pc}
     6e8:	000017dc 	.word	0x000017dc

000006ec <releaseLock>:
     6ec:	e92d4800 	push	{fp, lr}
     6f0:	e28db004 	add	fp, sp, #4
     6f4:	e24dd008 	sub	sp, sp, #8
     6f8:	e50b0008 	str	r0, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5933000 	ldr	r3, [r3]
     704:	e3530001 	cmp	r3, #1
     708:	0a000002 	beq	718 <releaseLock+0x2c>
     70c:	e59f1020 	ldr	r1, [pc, #32]	@ 734 <releaseLock+0x48>
     710:	e3a00002 	mov	r0, #2
     714:	eb000268 	bl	10bc <printf>
     718:	e51b3008 	ldr	r3, [fp, #-8]
     71c:	e3a01000 	mov	r1, #0
     720:	e1a00003 	mov	r0, r3
     724:	ebfffe81 	bl	130 <xchg>
     728:	e1a00000 	nop			@ (mov r0, r0)
     72c:	e24bd004 	sub	sp, fp, #4
     730:	e8bd8800 	pop	{fp, pc}
     734:	0000180c 	.word	0x0000180c

00000738 <initiateCondVar>:
     738:	e92d4800 	push	{fp, lr}
     73c:	e28db004 	add	fp, sp, #4
     740:	e24dd008 	sub	sp, sp, #8
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e5933004 	ldr	r3, [r3, #4]
     750:	e3530000 	cmp	r3, #0
     754:	1a000007 	bne	778 <initiateCondVar+0x40>
     758:	eb0001e0 	bl	ee0 <getChannel>
     75c:	e1a02000 	mov	r2, r0
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	e5832000 	str	r2, [r3]
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3a02001 	mov	r2, #1
     770:	e5832004 	str	r2, [r3, #4]
     774:	ea000000 	b	77c <initiateCondVar+0x44>
     778:	e1a00000 	nop			@ (mov r0, r0)
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <condWait>:
     784:	e92d4800 	push	{fp, lr}
     788:	e28db004 	add	fp, sp, #4
     78c:	e24dd008 	sub	sp, sp, #8
     790:	e50b0008 	str	r0, [fp, #-8]
     794:	e50b100c 	str	r1, [fp, #-12]
     798:	e51b3008 	ldr	r3, [fp, #-8]
     79c:	e5933004 	ldr	r3, [r3, #4]
     7a0:	e3530000 	cmp	r3, #0
     7a4:	1a000003 	bne	7b8 <condWait+0x34>
     7a8:	e59f1050 	ldr	r1, [pc, #80]	@ 800 <condWait+0x7c>
     7ac:	e3a00002 	mov	r0, #2
     7b0:	eb000241 	bl	10bc <printf>
     7b4:	ea00000f 	b	7f8 <condWait+0x74>
     7b8:	e51b300c 	ldr	r3, [fp, #-12]
     7bc:	e5933004 	ldr	r3, [r3, #4]
     7c0:	e3530000 	cmp	r3, #0
     7c4:	1a000003 	bne	7d8 <condWait+0x54>
     7c8:	e59f1034 	ldr	r1, [pc, #52]	@ 804 <condWait+0x80>
     7cc:	e3a00002 	mov	r0, #2
     7d0:	eb000239 	bl	10bc <printf>
     7d4:	ea000007 	b	7f8 <condWait+0x74>
     7d8:	e51b000c 	ldr	r0, [fp, #-12]
     7dc:	ebffffc2 	bl	6ec <releaseLock>
     7e0:	e51b3008 	ldr	r3, [fp, #-8]
     7e4:	e5933000 	ldr	r3, [r3]
     7e8:	e1a00003 	mov	r0, r3
     7ec:	eb0001b2 	bl	ebc <sleepChan>
     7f0:	e51b000c 	ldr	r0, [fp, #-12]
     7f4:	ebffffa4 	bl	68c <acquireLock>
     7f8:	e24bd004 	sub	sp, fp, #4
     7fc:	e8bd8800 	pop	{fp, pc}
     800:	00001848 	.word	0x00001848
     804:	0000186c 	.word	0x0000186c

00000808 <broadcast>:
     808:	e92d4800 	push	{fp, lr}
     80c:	e28db004 	add	fp, sp, #4
     810:	e24dd008 	sub	sp, sp, #8
     814:	e50b0008 	str	r0, [fp, #-8]
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e5933004 	ldr	r3, [r3, #4]
     820:	e3530000 	cmp	r3, #0
     824:	1a000003 	bne	838 <broadcast+0x30>
     828:	e59f1020 	ldr	r1, [pc, #32]	@ 850 <broadcast+0x48>
     82c:	e3a00002 	mov	r0, #2
     830:	eb000221 	bl	10bc <printf>
     834:	ea000003 	b	848 <broadcast+0x40>
     838:	e51b3008 	ldr	r3, [fp, #-8]
     83c:	e5933000 	ldr	r3, [r3]
     840:	e1a00003 	mov	r0, r3
     844:	eb0001ae 	bl	f04 <sigChan>
     848:	e24bd004 	sub	sp, fp, #4
     84c:	e8bd8800 	pop	{fp, pc}
     850:	00001848 	.word	0x00001848

00000854 <signal>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd008 	sub	sp, sp, #8
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e51b3008 	ldr	r3, [fp, #-8]
     868:	e5933004 	ldr	r3, [r3, #4]
     86c:	e3530000 	cmp	r3, #0
     870:	1a000003 	bne	884 <signal+0x30>
     874:	e59f1020 	ldr	r1, [pc, #32]	@ 89c <signal+0x48>
     878:	e3a00002 	mov	r0, #2
     87c:	eb00020e 	bl	10bc <printf>
     880:	ea000003 	b	894 <signal+0x40>
     884:	e51b3008 	ldr	r3, [fp, #-8]
     888:	e5933000 	ldr	r3, [r3]
     88c:	e1a00003 	mov	r0, r3
     890:	eb0001a4 	bl	f28 <sigOneChan>
     894:	e24bd004 	sub	sp, fp, #4
     898:	e8bd8800 	pop	{fp, pc}
     89c:	00001848 	.word	0x00001848

000008a0 <semInit>:
     8a0:	e92d4800 	push	{fp, lr}
     8a4:	e28db004 	add	fp, sp, #4
     8a8:	e24dd008 	sub	sp, sp, #8
     8ac:	e50b0008 	str	r0, [fp, #-8]
     8b0:	e50b100c 	str	r1, [fp, #-12]
     8b4:	e51b3008 	ldr	r3, [fp, #-8]
     8b8:	e51b200c 	ldr	r2, [fp, #-12]
     8bc:	e5832000 	str	r2, [r3]
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e2833004 	add	r3, r3, #4
     8c8:	e1a00003 	mov	r0, r3
     8cc:	ebffff60 	bl	654 <initiateLock>
     8d0:	e51b3008 	ldr	r3, [fp, #-8]
     8d4:	e283300c 	add	r3, r3, #12
     8d8:	e1a00003 	mov	r0, r3
     8dc:	ebffff95 	bl	738 <initiateCondVar>
     8e0:	e51b3008 	ldr	r3, [fp, #-8]
     8e4:	e3a02001 	mov	r2, #1
     8e8:	e5832014 	str	r2, [r3, #20]
     8ec:	e1a00000 	nop			@ (mov r0, r0)
     8f0:	e24bd004 	sub	sp, fp, #4
     8f4:	e8bd8800 	pop	{fp, pc}

000008f8 <semDown>:
     8f8:	e92d4800 	push	{fp, lr}
     8fc:	e28db004 	add	fp, sp, #4
     900:	e24dd008 	sub	sp, sp, #8
     904:	e50b0008 	str	r0, [fp, #-8]
     908:	e51b3008 	ldr	r3, [fp, #-8]
     90c:	e5933014 	ldr	r3, [r3, #20]
     910:	e3530000 	cmp	r3, #0
     914:	1a000003 	bne	928 <semDown+0x30>
     918:	e59f1074 	ldr	r1, [pc, #116]	@ 994 <semDown+0x9c>
     91c:	e3a00002 	mov	r0, #2
     920:	eb0001e5 	bl	10bc <printf>
     924:	ea000018 	b	98c <semDown+0x94>
     928:	e51b3008 	ldr	r3, [fp, #-8]
     92c:	e2833004 	add	r3, r3, #4
     930:	e1a00003 	mov	r0, r3
     934:	ebffff54 	bl	68c <acquireLock>
     938:	ea000006 	b	958 <semDown+0x60>
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e283200c 	add	r2, r3, #12
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2833004 	add	r3, r3, #4
     94c:	e1a01003 	mov	r1, r3
     950:	e1a00002 	mov	r0, r2
     954:	ebffff8a 	bl	784 <condWait>
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e5933000 	ldr	r3, [r3]
     960:	e3530000 	cmp	r3, #0
     964:	0afffff4 	beq	93c <semDown+0x44>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e5933000 	ldr	r3, [r3]
     970:	e2432001 	sub	r2, r3, #1
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e5832000 	str	r2, [r3]
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e2833004 	add	r3, r3, #4
     984:	e1a00003 	mov	r0, r3
     988:	ebffff57 	bl	6ec <releaseLock>
     98c:	e24bd004 	sub	sp, fp, #4
     990:	e8bd8800 	pop	{fp, pc}
     994:	0000188c 	.word	0x0000188c

00000998 <semUp>:
     998:	e92d4800 	push	{fp, lr}
     99c:	e28db004 	add	fp, sp, #4
     9a0:	e24dd008 	sub	sp, sp, #8
     9a4:	e50b0008 	str	r0, [fp, #-8]
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e5933014 	ldr	r3, [r3, #20]
     9b0:	e3530000 	cmp	r3, #0
     9b4:	1a000003 	bne	9c8 <semUp+0x30>
     9b8:	e59f1054 	ldr	r1, [pc, #84]	@ a14 <semUp+0x7c>
     9bc:	e3a00002 	mov	r0, #2
     9c0:	eb0001bd 	bl	10bc <printf>
     9c4:	ea000010 	b	a0c <semUp+0x74>
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e2833004 	add	r3, r3, #4
     9d0:	e1a00003 	mov	r0, r3
     9d4:	ebffff2c 	bl	68c <acquireLock>
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e5933000 	ldr	r3, [r3]
     9e0:	e2832001 	add	r2, r3, #1
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e5832000 	str	r2, [r3]
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e283300c 	add	r3, r3, #12
     9f4:	e1a00003 	mov	r0, r3
     9f8:	ebffff95 	bl	854 <signal>
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e2833004 	add	r3, r3, #4
     a04:	e1a00003 	mov	r0, r3
     a08:	ebffff37 	bl	6ec <releaseLock>
     a0c:	e24bd004 	sub	sp, fp, #4
     a10:	e8bd8800 	pop	{fp, pc}
     a14:	0000188c 	.word	0x0000188c

00000a18 <fork>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00001 	mov	r0, #1
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <exit>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00002 	mov	r0, #2
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <wait>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00003 	mov	r0, #3
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <pipe>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00004 	mov	r0, #4
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <read>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00005 	mov	r0, #5
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <write>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00010 	mov	r0, #16
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <close>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a00015 	mov	r0, #21
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <kill>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00006 	mov	r0, #6
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <exec>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00007 	mov	r0, #7
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <open>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a0000f 	mov	r0, #15
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <mknod>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00011 	mov	r0, #17
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <unlink>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00012 	mov	r0, #18
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <fstat>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00008 	mov	r0, #8
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <link>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a00013 	mov	r0, #19
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <mkdir>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a00014 	mov	r0, #20
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <chdir>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a00009 	mov	r0, #9
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <dup>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a0000a 	mov	r0, #10
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <getpid>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0000b 	mov	r0, #11
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <sbrk>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a0000c 	mov	r0, #12
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <sleep>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a0000d 	mov	r0, #13
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <uptime>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a0000e 	mov	r0, #14
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <disproc>:
     d0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d10:	e1a04003 	mov	r4, r3
     d14:	e1a03002 	mov	r3, r2
     d18:	e1a02001 	mov	r2, r1
     d1c:	e1a01000 	mov	r1, r0
     d20:	e3a00016 	mov	r0, #22
     d24:	ef000000 	svc	0x00000000
     d28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d2c:	e12fff1e 	bx	lr

00000d30 <srand>:
     d30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d34:	e1a04003 	mov	r4, r3
     d38:	e1a03002 	mov	r3, r2
     d3c:	e1a02001 	mov	r2, r1
     d40:	e1a01000 	mov	r1, r0
     d44:	e3a00017 	mov	r0, #23
     d48:	ef000000 	svc	0x00000000
     d4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d50:	e12fff1e 	bx	lr

00000d54 <setticket>:
     d54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d58:	e1a04003 	mov	r4, r3
     d5c:	e1a03002 	mov	r3, r2
     d60:	e1a02001 	mov	r2, r1
     d64:	e1a01000 	mov	r1, r0
     d68:	e3a00018 	mov	r0, #24
     d6c:	ef000000 	svc	0x00000000
     d70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d74:	e12fff1e 	bx	lr

00000d78 <getpinfo>:
     d78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d7c:	e1a04003 	mov	r4, r3
     d80:	e1a03002 	mov	r3, r2
     d84:	e1a02001 	mov	r2, r1
     d88:	e1a01000 	mov	r1, r0
     d8c:	e3a00019 	mov	r0, #25
     d90:	ef000000 	svc	0x00000000
     d94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d98:	e12fff1e 	bx	lr

00000d9c <printPages>:
     d9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     da0:	e1a04003 	mov	r4, r3
     da4:	e1a03002 	mov	r3, r2
     da8:	e1a02001 	mov	r2, r1
     dac:	e1a01000 	mov	r1, r0
     db0:	e3a0001a 	mov	r0, #26
     db4:	ef000000 	svc	0x00000000
     db8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dbc:	e12fff1e 	bx	lr

00000dc0 <kpt>:
     dc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dc4:	e1a04003 	mov	r4, r3
     dc8:	e1a03002 	mov	r3, r2
     dcc:	e1a02001 	mov	r2, r1
     dd0:	e1a01000 	mov	r1, r0
     dd4:	e3a0001b 	mov	r0, #27
     dd8:	ef000000 	svc	0x00000000
     ddc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     de0:	e12fff1e 	bx	lr

00000de4 <thread_create>:
     de4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de8:	e1a04003 	mov	r4, r3
     dec:	e1a03002 	mov	r3, r2
     df0:	e1a02001 	mov	r2, r1
     df4:	e1a01000 	mov	r1, r0
     df8:	e3a0001c 	mov	r0, #28
     dfc:	ef000000 	svc	0x00000000
     e00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e04:	e12fff1e 	bx	lr

00000e08 <thread_exit>:
     e08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e0c:	e1a04003 	mov	r4, r3
     e10:	e1a03002 	mov	r3, r2
     e14:	e1a02001 	mov	r2, r1
     e18:	e1a01000 	mov	r1, r0
     e1c:	e3a0001d 	mov	r0, #29
     e20:	ef000000 	svc	0x00000000
     e24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e28:	e12fff1e 	bx	lr

00000e2c <thread_join>:
     e2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e30:	e1a04003 	mov	r4, r3
     e34:	e1a03002 	mov	r3, r2
     e38:	e1a02001 	mov	r2, r1
     e3c:	e1a01000 	mov	r1, r0
     e40:	e3a0001e 	mov	r0, #30
     e44:	ef000000 	svc	0x00000000
     e48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e4c:	e12fff1e 	bx	lr

00000e50 <waitpid>:
     e50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e54:	e1a04003 	mov	r4, r3
     e58:	e1a03002 	mov	r3, r2
     e5c:	e1a02001 	mov	r2, r1
     e60:	e1a01000 	mov	r1, r0
     e64:	e3a0001f 	mov	r0, #31
     e68:	ef000000 	svc	0x00000000
     e6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e70:	e12fff1e 	bx	lr

00000e74 <barrier_init>:
     e74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e78:	e1a04003 	mov	r4, r3
     e7c:	e1a03002 	mov	r3, r2
     e80:	e1a02001 	mov	r2, r1
     e84:	e1a01000 	mov	r1, r0
     e88:	e3a00020 	mov	r0, #32
     e8c:	ef000000 	svc	0x00000000
     e90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e94:	e12fff1e 	bx	lr

00000e98 <barrier_check>:
     e98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e9c:	e1a04003 	mov	r4, r3
     ea0:	e1a03002 	mov	r3, r2
     ea4:	e1a02001 	mov	r2, r1
     ea8:	e1a01000 	mov	r1, r0
     eac:	e3a00021 	mov	r0, #33	@ 0x21
     eb0:	ef000000 	svc	0x00000000
     eb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb8:	e12fff1e 	bx	lr

00000ebc <sleepChan>:
     ebc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ec0:	e1a04003 	mov	r4, r3
     ec4:	e1a03002 	mov	r3, r2
     ec8:	e1a02001 	mov	r2, r1
     ecc:	e1a01000 	mov	r1, r0
     ed0:	e3a00022 	mov	r0, #34	@ 0x22
     ed4:	ef000000 	svc	0x00000000
     ed8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     edc:	e12fff1e 	bx	lr

00000ee0 <getChannel>:
     ee0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ee4:	e1a04003 	mov	r4, r3
     ee8:	e1a03002 	mov	r3, r2
     eec:	e1a02001 	mov	r2, r1
     ef0:	e1a01000 	mov	r1, r0
     ef4:	e3a00023 	mov	r0, #35	@ 0x23
     ef8:	ef000000 	svc	0x00000000
     efc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f00:	e12fff1e 	bx	lr

00000f04 <sigChan>:
     f04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f08:	e1a04003 	mov	r4, r3
     f0c:	e1a03002 	mov	r3, r2
     f10:	e1a02001 	mov	r2, r1
     f14:	e1a01000 	mov	r1, r0
     f18:	e3a00024 	mov	r0, #36	@ 0x24
     f1c:	ef000000 	svc	0x00000000
     f20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f24:	e12fff1e 	bx	lr

00000f28 <sigOneChan>:
     f28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f2c:	e1a04003 	mov	r4, r3
     f30:	e1a03002 	mov	r3, r2
     f34:	e1a02001 	mov	r2, r1
     f38:	e1a01000 	mov	r1, r0
     f3c:	e3a00025 	mov	r0, #37	@ 0x25
     f40:	ef000000 	svc	0x00000000
     f44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f48:	e12fff1e 	bx	lr

00000f4c <putc>:
     f4c:	e92d4800 	push	{fp, lr}
     f50:	e28db004 	add	fp, sp, #4
     f54:	e24dd008 	sub	sp, sp, #8
     f58:	e50b0008 	str	r0, [fp, #-8]
     f5c:	e1a03001 	mov	r3, r1
     f60:	e54b3009 	strb	r3, [fp, #-9]
     f64:	e24b3009 	sub	r3, fp, #9
     f68:	e3a02001 	mov	r2, #1
     f6c:	e1a01003 	mov	r1, r3
     f70:	e51b0008 	ldr	r0, [fp, #-8]
     f74:	ebfffed4 	bl	acc <write>
     f78:	e1a00000 	nop			@ (mov r0, r0)
     f7c:	e24bd004 	sub	sp, fp, #4
     f80:	e8bd8800 	pop	{fp, pc}

00000f84 <printint>:
     f84:	e92d4800 	push	{fp, lr}
     f88:	e28db004 	add	fp, sp, #4
     f8c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     f90:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     f94:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     f98:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     f9c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     fa0:	e3a03000 	mov	r3, #0
     fa4:	e50b300c 	str	r3, [fp, #-12]
     fa8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     fac:	e3530000 	cmp	r3, #0
     fb0:	0a000008 	beq	fd8 <printint+0x54>
     fb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fb8:	e3530000 	cmp	r3, #0
     fbc:	aa000005 	bge	fd8 <printint+0x54>
     fc0:	e3a03001 	mov	r3, #1
     fc4:	e50b300c 	str	r3, [fp, #-12]
     fc8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fcc:	e2633000 	rsb	r3, r3, #0
     fd0:	e50b3010 	str	r3, [fp, #-16]
     fd4:	ea000001 	b	fe0 <printint+0x5c>
     fd8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fdc:	e50b3010 	str	r3, [fp, #-16]
     fe0:	e3a03000 	mov	r3, #0
     fe4:	e50b3008 	str	r3, [fp, #-8]
     fe8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     fec:	e51b3010 	ldr	r3, [fp, #-16]
     ff0:	e1a01002 	mov	r1, r2
     ff4:	e1a00003 	mov	r0, r3
     ff8:	eb0001d5 	bl	1754 <__aeabi_uidivmod>
     ffc:	e1a03001 	mov	r3, r1
    1000:	e1a01003 	mov	r1, r3
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e2832001 	add	r2, r3, #1
    100c:	e50b2008 	str	r2, [fp, #-8]
    1010:	e59f20a0 	ldr	r2, [pc, #160]	@ 10b8 <printint+0x134>
    1014:	e7d22001 	ldrb	r2, [r2, r1]
    1018:	e2433004 	sub	r3, r3, #4
    101c:	e083300b 	add	r3, r3, fp
    1020:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1024:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1028:	e1a01003 	mov	r1, r3
    102c:	e51b0010 	ldr	r0, [fp, #-16]
    1030:	eb00018a 	bl	1660 <__udivsi3>
    1034:	e1a03000 	mov	r3, r0
    1038:	e50b3010 	str	r3, [fp, #-16]
    103c:	e51b3010 	ldr	r3, [fp, #-16]
    1040:	e3530000 	cmp	r3, #0
    1044:	1affffe7 	bne	fe8 <printint+0x64>
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e3530000 	cmp	r3, #0
    1050:	0a00000e 	beq	1090 <printint+0x10c>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e2832001 	add	r2, r3, #1
    105c:	e50b2008 	str	r2, [fp, #-8]
    1060:	e2433004 	sub	r3, r3, #4
    1064:	e083300b 	add	r3, r3, fp
    1068:	e3a0202d 	mov	r2, #45	@ 0x2d
    106c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1070:	ea000006 	b	1090 <printint+0x10c>
    1074:	e24b2020 	sub	r2, fp, #32
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e0823003 	add	r3, r2, r3
    1080:	e5d33000 	ldrb	r3, [r3]
    1084:	e1a01003 	mov	r1, r3
    1088:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    108c:	ebffffae 	bl	f4c <putc>
    1090:	e51b3008 	ldr	r3, [fp, #-8]
    1094:	e2433001 	sub	r3, r3, #1
    1098:	e50b3008 	str	r3, [fp, #-8]
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e3530000 	cmp	r3, #0
    10a4:	aafffff2 	bge	1074 <printint+0xf0>
    10a8:	e1a00000 	nop			@ (mov r0, r0)
    10ac:	e1a00000 	nop			@ (mov r0, r0)
    10b0:	e24bd004 	sub	sp, fp, #4
    10b4:	e8bd8800 	pop	{fp, pc}
    10b8:	000018b8 	.word	0x000018b8

000010bc <printf>:
    10bc:	e92d000e 	push	{r1, r2, r3}
    10c0:	e92d4800 	push	{fp, lr}
    10c4:	e28db004 	add	fp, sp, #4
    10c8:	e24dd024 	sub	sp, sp, #36	@ 0x24
    10cc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    10d0:	e3a03000 	mov	r3, #0
    10d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    10d8:	e28b3008 	add	r3, fp, #8
    10dc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    10e0:	e3a03000 	mov	r3, #0
    10e4:	e50b3010 	str	r3, [fp, #-16]
    10e8:	ea000074 	b	12c0 <printf+0x204>
    10ec:	e59b2004 	ldr	r2, [fp, #4]
    10f0:	e51b3010 	ldr	r3, [fp, #-16]
    10f4:	e0823003 	add	r3, r2, r3
    10f8:	e5d33000 	ldrb	r3, [r3]
    10fc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1100:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1104:	e3530000 	cmp	r3, #0
    1108:	1a00000b 	bne	113c <printf+0x80>
    110c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1110:	e3530025 	cmp	r3, #37	@ 0x25
    1114:	1a000002 	bne	1124 <printf+0x68>
    1118:	e3a03025 	mov	r3, #37	@ 0x25
    111c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1120:	ea000063 	b	12b4 <printf+0x1f8>
    1124:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1128:	e6ef3073 	uxtb	r3, r3
    112c:	e1a01003 	mov	r1, r3
    1130:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1134:	ebffff84 	bl	f4c <putc>
    1138:	ea00005d 	b	12b4 <printf+0x1f8>
    113c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1140:	e3530025 	cmp	r3, #37	@ 0x25
    1144:	1a00005a 	bne	12b4 <printf+0x1f8>
    1148:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    114c:	e3530064 	cmp	r3, #100	@ 0x64
    1150:	1a00000a 	bne	1180 <printf+0xc4>
    1154:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1158:	e5933000 	ldr	r3, [r3]
    115c:	e1a01003 	mov	r1, r3
    1160:	e3a03001 	mov	r3, #1
    1164:	e3a0200a 	mov	r2, #10
    1168:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    116c:	ebffff84 	bl	f84 <printint>
    1170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1174:	e2833004 	add	r3, r3, #4
    1178:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    117c:	ea00004a 	b	12ac <printf+0x1f0>
    1180:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1184:	e3530078 	cmp	r3, #120	@ 0x78
    1188:	0a000002 	beq	1198 <printf+0xdc>
    118c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1190:	e3530070 	cmp	r3, #112	@ 0x70
    1194:	1a00000a 	bne	11c4 <printf+0x108>
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e5933000 	ldr	r3, [r3]
    11a0:	e1a01003 	mov	r1, r3
    11a4:	e3a03000 	mov	r3, #0
    11a8:	e3a02010 	mov	r2, #16
    11ac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11b0:	ebffff73 	bl	f84 <printint>
    11b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b8:	e2833004 	add	r3, r3, #4
    11bc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11c0:	ea000039 	b	12ac <printf+0x1f0>
    11c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c8:	e3530073 	cmp	r3, #115	@ 0x73
    11cc:	1a000018 	bne	1234 <printf+0x178>
    11d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d4:	e5933000 	ldr	r3, [r3]
    11d8:	e50b300c 	str	r3, [fp, #-12]
    11dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e0:	e2833004 	add	r3, r3, #4
    11e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e3530000 	cmp	r3, #0
    11f0:	1a00000a 	bne	1220 <printf+0x164>
    11f4:	e59f30f4 	ldr	r3, [pc, #244]	@ 12f0 <printf+0x234>
    11f8:	e50b300c 	str	r3, [fp, #-12]
    11fc:	ea000007 	b	1220 <printf+0x164>
    1200:	e51b300c 	ldr	r3, [fp, #-12]
    1204:	e5d33000 	ldrb	r3, [r3]
    1208:	e1a01003 	mov	r1, r3
    120c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1210:	ebffff4d 	bl	f4c <putc>
    1214:	e51b300c 	ldr	r3, [fp, #-12]
    1218:	e2833001 	add	r3, r3, #1
    121c:	e50b300c 	str	r3, [fp, #-12]
    1220:	e51b300c 	ldr	r3, [fp, #-12]
    1224:	e5d33000 	ldrb	r3, [r3]
    1228:	e3530000 	cmp	r3, #0
    122c:	1afffff3 	bne	1200 <printf+0x144>
    1230:	ea00001d 	b	12ac <printf+0x1f0>
    1234:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1238:	e3530063 	cmp	r3, #99	@ 0x63
    123c:	1a000009 	bne	1268 <printf+0x1ac>
    1240:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1244:	e5933000 	ldr	r3, [r3]
    1248:	e6ef3073 	uxtb	r3, r3
    124c:	e1a01003 	mov	r1, r3
    1250:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1254:	ebffff3c 	bl	f4c <putc>
    1258:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    125c:	e2833004 	add	r3, r3, #4
    1260:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1264:	ea000010 	b	12ac <printf+0x1f0>
    1268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    126c:	e3530025 	cmp	r3, #37	@ 0x25
    1270:	1a000005 	bne	128c <printf+0x1d0>
    1274:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1278:	e6ef3073 	uxtb	r3, r3
    127c:	e1a01003 	mov	r1, r3
    1280:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1284:	ebffff30 	bl	f4c <putc>
    1288:	ea000007 	b	12ac <printf+0x1f0>
    128c:	e3a01025 	mov	r1, #37	@ 0x25
    1290:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1294:	ebffff2c 	bl	f4c <putc>
    1298:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    129c:	e6ef3073 	uxtb	r3, r3
    12a0:	e1a01003 	mov	r1, r3
    12a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12a8:	ebffff27 	bl	f4c <putc>
    12ac:	e3a03000 	mov	r3, #0
    12b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12b4:	e51b3010 	ldr	r3, [fp, #-16]
    12b8:	e2833001 	add	r3, r3, #1
    12bc:	e50b3010 	str	r3, [fp, #-16]
    12c0:	e59b2004 	ldr	r2, [fp, #4]
    12c4:	e51b3010 	ldr	r3, [fp, #-16]
    12c8:	e0823003 	add	r3, r2, r3
    12cc:	e5d33000 	ldrb	r3, [r3]
    12d0:	e3530000 	cmp	r3, #0
    12d4:	1affff84 	bne	10ec <printf+0x30>
    12d8:	e1a00000 	nop			@ (mov r0, r0)
    12dc:	e1a00000 	nop			@ (mov r0, r0)
    12e0:	e24bd004 	sub	sp, fp, #4
    12e4:	e8bd4800 	pop	{fp, lr}
    12e8:	e28dd00c 	add	sp, sp, #12
    12ec:	e12fff1e 	bx	lr
    12f0:	000018b0 	.word	0x000018b0

000012f4 <free>:
    12f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12f8:	e28db000 	add	fp, sp, #0
    12fc:	e24dd014 	sub	sp, sp, #20
    1300:	e50b0010 	str	r0, [fp, #-16]
    1304:	e51b3010 	ldr	r3, [fp, #-16]
    1308:	e2433008 	sub	r3, r3, #8
    130c:	e50b300c 	str	r3, [fp, #-12]
    1310:	e59f3154 	ldr	r3, [pc, #340]	@ 146c <free+0x178>
    1314:	e5933000 	ldr	r3, [r3]
    1318:	e50b3008 	str	r3, [fp, #-8]
    131c:	ea000010 	b	1364 <free+0x70>
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e5933000 	ldr	r3, [r3]
    1328:	e51b2008 	ldr	r2, [fp, #-8]
    132c:	e1520003 	cmp	r2, r3
    1330:	3a000008 	bcc	1358 <free+0x64>
    1334:	e51b200c 	ldr	r2, [fp, #-12]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e1520003 	cmp	r2, r3
    1340:	8a000010 	bhi	1388 <free+0x94>
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e51b200c 	ldr	r2, [fp, #-12]
    1350:	e1520003 	cmp	r2, r3
    1354:	3a00000b 	bcc	1388 <free+0x94>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5933000 	ldr	r3, [r3]
    1360:	e50b3008 	str	r3, [fp, #-8]
    1364:	e51b200c 	ldr	r2, [fp, #-12]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e1520003 	cmp	r2, r3
    1370:	9affffea 	bls	1320 <free+0x2c>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e5933000 	ldr	r3, [r3]
    137c:	e51b200c 	ldr	r2, [fp, #-12]
    1380:	e1520003 	cmp	r2, r3
    1384:	2affffe5 	bcs	1320 <free+0x2c>
    1388:	e51b300c 	ldr	r3, [fp, #-12]
    138c:	e5933004 	ldr	r3, [r3, #4]
    1390:	e1a03183 	lsl	r3, r3, #3
    1394:	e51b200c 	ldr	r2, [fp, #-12]
    1398:	e0822003 	add	r2, r2, r3
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e5933000 	ldr	r3, [r3]
    13a4:	e1520003 	cmp	r2, r3
    13a8:	1a00000d 	bne	13e4 <free+0xf0>
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5932004 	ldr	r2, [r3, #4]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e5933000 	ldr	r3, [r3]
    13bc:	e5933004 	ldr	r3, [r3, #4]
    13c0:	e0822003 	add	r2, r2, r3
    13c4:	e51b300c 	ldr	r3, [fp, #-12]
    13c8:	e5832004 	str	r2, [r3, #4]
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e5933000 	ldr	r3, [r3]
    13d4:	e5932000 	ldr	r2, [r3]
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e5832000 	str	r2, [r3]
    13e0:	ea000003 	b	13f4 <free+0x100>
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e5932000 	ldr	r2, [r3]
    13ec:	e51b300c 	ldr	r3, [fp, #-12]
    13f0:	e5832000 	str	r2, [r3]
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e5933004 	ldr	r3, [r3, #4]
    13fc:	e1a03183 	lsl	r3, r3, #3
    1400:	e51b2008 	ldr	r2, [fp, #-8]
    1404:	e0823003 	add	r3, r2, r3
    1408:	e51b200c 	ldr	r2, [fp, #-12]
    140c:	e1520003 	cmp	r2, r3
    1410:	1a00000b 	bne	1444 <free+0x150>
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e5932004 	ldr	r2, [r3, #4]
    141c:	e51b300c 	ldr	r3, [fp, #-12]
    1420:	e5933004 	ldr	r3, [r3, #4]
    1424:	e0822003 	add	r2, r2, r3
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5832004 	str	r2, [r3, #4]
    1430:	e51b300c 	ldr	r3, [fp, #-12]
    1434:	e5932000 	ldr	r2, [r3]
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e5832000 	str	r2, [r3]
    1440:	ea000002 	b	1450 <free+0x15c>
    1444:	e51b3008 	ldr	r3, [fp, #-8]
    1448:	e51b200c 	ldr	r2, [fp, #-12]
    144c:	e5832000 	str	r2, [r3]
    1450:	e59f2014 	ldr	r2, [pc, #20]	@ 146c <free+0x178>
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5823000 	str	r3, [r2]
    145c:	e1a00000 	nop			@ (mov r0, r0)
    1460:	e28bd000 	add	sp, fp, #0
    1464:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1468:	e12fff1e 	bx	lr
    146c:	000018d4 	.word	0x000018d4

00001470 <morecore>:
    1470:	e92d4800 	push	{fp, lr}
    1474:	e28db004 	add	fp, sp, #4
    1478:	e24dd010 	sub	sp, sp, #16
    147c:	e50b0010 	str	r0, [fp, #-16]
    1480:	e51b3010 	ldr	r3, [fp, #-16]
    1484:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1488:	2a000001 	bcs	1494 <morecore+0x24>
    148c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1490:	e50b3010 	str	r3, [fp, #-16]
    1494:	e51b3010 	ldr	r3, [fp, #-16]
    1498:	e1a03183 	lsl	r3, r3, #3
    149c:	e1a00003 	mov	r0, r3
    14a0:	ebfffdfe 	bl	ca0 <sbrk>
    14a4:	e50b0008 	str	r0, [fp, #-8]
    14a8:	e51b3008 	ldr	r3, [fp, #-8]
    14ac:	e3730001 	cmn	r3, #1
    14b0:	1a000001 	bne	14bc <morecore+0x4c>
    14b4:	e3a03000 	mov	r3, #0
    14b8:	ea00000a 	b	14e8 <morecore+0x78>
    14bc:	e51b3008 	ldr	r3, [fp, #-8]
    14c0:	e50b300c 	str	r3, [fp, #-12]
    14c4:	e51b300c 	ldr	r3, [fp, #-12]
    14c8:	e51b2010 	ldr	r2, [fp, #-16]
    14cc:	e5832004 	str	r2, [r3, #4]
    14d0:	e51b300c 	ldr	r3, [fp, #-12]
    14d4:	e2833008 	add	r3, r3, #8
    14d8:	e1a00003 	mov	r0, r3
    14dc:	ebffff84 	bl	12f4 <free>
    14e0:	e59f300c 	ldr	r3, [pc, #12]	@ 14f4 <morecore+0x84>
    14e4:	e5933000 	ldr	r3, [r3]
    14e8:	e1a00003 	mov	r0, r3
    14ec:	e24bd004 	sub	sp, fp, #4
    14f0:	e8bd8800 	pop	{fp, pc}
    14f4:	000018d4 	.word	0x000018d4

000014f8 <malloc>:
    14f8:	e92d4800 	push	{fp, lr}
    14fc:	e28db004 	add	fp, sp, #4
    1500:	e24dd018 	sub	sp, sp, #24
    1504:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1508:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    150c:	e2833007 	add	r3, r3, #7
    1510:	e1a031a3 	lsr	r3, r3, #3
    1514:	e2833001 	add	r3, r3, #1
    1518:	e50b3010 	str	r3, [fp, #-16]
    151c:	e59f3134 	ldr	r3, [pc, #308]	@ 1658 <malloc+0x160>
    1520:	e5933000 	ldr	r3, [r3]
    1524:	e50b300c 	str	r3, [fp, #-12]
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e3530000 	cmp	r3, #0
    1530:	1a00000b 	bne	1564 <malloc+0x6c>
    1534:	e59f3120 	ldr	r3, [pc, #288]	@ 165c <malloc+0x164>
    1538:	e50b300c 	str	r3, [fp, #-12]
    153c:	e59f2114 	ldr	r2, [pc, #276]	@ 1658 <malloc+0x160>
    1540:	e51b300c 	ldr	r3, [fp, #-12]
    1544:	e5823000 	str	r3, [r2]
    1548:	e59f3108 	ldr	r3, [pc, #264]	@ 1658 <malloc+0x160>
    154c:	e5933000 	ldr	r3, [r3]
    1550:	e59f2104 	ldr	r2, [pc, #260]	@ 165c <malloc+0x164>
    1554:	e5823000 	str	r3, [r2]
    1558:	e59f30fc 	ldr	r3, [pc, #252]	@ 165c <malloc+0x164>
    155c:	e3a02000 	mov	r2, #0
    1560:	e5832004 	str	r2, [r3, #4]
    1564:	e51b300c 	ldr	r3, [fp, #-12]
    1568:	e5933000 	ldr	r3, [r3]
    156c:	e50b3008 	str	r3, [fp, #-8]
    1570:	e51b3008 	ldr	r3, [fp, #-8]
    1574:	e5933004 	ldr	r3, [r3, #4]
    1578:	e51b2010 	ldr	r2, [fp, #-16]
    157c:	e1520003 	cmp	r2, r3
    1580:	8a00001e 	bhi	1600 <malloc+0x108>
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e5933004 	ldr	r3, [r3, #4]
    158c:	e51b2010 	ldr	r2, [fp, #-16]
    1590:	e1520003 	cmp	r2, r3
    1594:	1a000004 	bne	15ac <malloc+0xb4>
    1598:	e51b3008 	ldr	r3, [fp, #-8]
    159c:	e5932000 	ldr	r2, [r3]
    15a0:	e51b300c 	ldr	r3, [fp, #-12]
    15a4:	e5832000 	str	r2, [r3]
    15a8:	ea00000e 	b	15e8 <malloc+0xf0>
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e5932004 	ldr	r2, [r3, #4]
    15b4:	e51b3010 	ldr	r3, [fp, #-16]
    15b8:	e0422003 	sub	r2, r2, r3
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e5832004 	str	r2, [r3, #4]
    15c4:	e51b3008 	ldr	r3, [fp, #-8]
    15c8:	e5933004 	ldr	r3, [r3, #4]
    15cc:	e1a03183 	lsl	r3, r3, #3
    15d0:	e51b2008 	ldr	r2, [fp, #-8]
    15d4:	e0823003 	add	r3, r2, r3
    15d8:	e50b3008 	str	r3, [fp, #-8]
    15dc:	e51b3008 	ldr	r3, [fp, #-8]
    15e0:	e51b2010 	ldr	r2, [fp, #-16]
    15e4:	e5832004 	str	r2, [r3, #4]
    15e8:	e59f2068 	ldr	r2, [pc, #104]	@ 1658 <malloc+0x160>
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e5823000 	str	r3, [r2]
    15f4:	e51b3008 	ldr	r3, [fp, #-8]
    15f8:	e2833008 	add	r3, r3, #8
    15fc:	ea000012 	b	164c <malloc+0x154>
    1600:	e59f3050 	ldr	r3, [pc, #80]	@ 1658 <malloc+0x160>
    1604:	e5933000 	ldr	r3, [r3]
    1608:	e51b2008 	ldr	r2, [fp, #-8]
    160c:	e1520003 	cmp	r2, r3
    1610:	1a000007 	bne	1634 <malloc+0x13c>
    1614:	e51b0010 	ldr	r0, [fp, #-16]
    1618:	ebffff94 	bl	1470 <morecore>
    161c:	e50b0008 	str	r0, [fp, #-8]
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e3530000 	cmp	r3, #0
    1628:	1a000001 	bne	1634 <malloc+0x13c>
    162c:	e3a03000 	mov	r3, #0
    1630:	ea000005 	b	164c <malloc+0x154>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e50b300c 	str	r3, [fp, #-12]
    163c:	e51b3008 	ldr	r3, [fp, #-8]
    1640:	e5933000 	ldr	r3, [r3]
    1644:	e50b3008 	str	r3, [fp, #-8]
    1648:	eaffffc8 	b	1570 <malloc+0x78>
    164c:	e1a00003 	mov	r0, r3
    1650:	e24bd004 	sub	sp, fp, #4
    1654:	e8bd8800 	pop	{fp, pc}
    1658:	000018d4 	.word	0x000018d4
    165c:	000018cc 	.word	0x000018cc

00001660 <__udivsi3>:
    1660:	e2512001 	subs	r2, r1, #1
    1664:	012fff1e 	bxeq	lr
    1668:	3a000036 	bcc	1748 <__udivsi3+0xe8>
    166c:	e1500001 	cmp	r0, r1
    1670:	9a000022 	bls	1700 <__udivsi3+0xa0>
    1674:	e1110002 	tst	r1, r2
    1678:	0a000023 	beq	170c <__udivsi3+0xac>
    167c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1680:	01a01181 	lsleq	r1, r1, #3
    1684:	03a03008 	moveq	r3, #8
    1688:	13a03001 	movne	r3, #1
    168c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1690:	31510000 	cmpcc	r1, r0
    1694:	31a01201 	lslcc	r1, r1, #4
    1698:	31a03203 	lslcc	r3, r3, #4
    169c:	3afffffa 	bcc	168c <__udivsi3+0x2c>
    16a0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    16a4:	31510000 	cmpcc	r1, r0
    16a8:	31a01081 	lslcc	r1, r1, #1
    16ac:	31a03083 	lslcc	r3, r3, #1
    16b0:	3afffffa 	bcc	16a0 <__udivsi3+0x40>
    16b4:	e3a02000 	mov	r2, #0
    16b8:	e1500001 	cmp	r0, r1
    16bc:	20400001 	subcs	r0, r0, r1
    16c0:	21822003 	orrcs	r2, r2, r3
    16c4:	e15000a1 	cmp	r0, r1, lsr #1
    16c8:	204000a1 	subcs	r0, r0, r1, lsr #1
    16cc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    16d0:	e1500121 	cmp	r0, r1, lsr #2
    16d4:	20400121 	subcs	r0, r0, r1, lsr #2
    16d8:	21822123 	orrcs	r2, r2, r3, lsr #2
    16dc:	e15001a1 	cmp	r0, r1, lsr #3
    16e0:	204001a1 	subcs	r0, r0, r1, lsr #3
    16e4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    16e8:	e3500000 	cmp	r0, #0
    16ec:	11b03223 	lsrsne	r3, r3, #4
    16f0:	11a01221 	lsrne	r1, r1, #4
    16f4:	1affffef 	bne	16b8 <__udivsi3+0x58>
    16f8:	e1a00002 	mov	r0, r2
    16fc:	e12fff1e 	bx	lr
    1700:	03a00001 	moveq	r0, #1
    1704:	13a00000 	movne	r0, #0
    1708:	e12fff1e 	bx	lr
    170c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1710:	21a01821 	lsrcs	r1, r1, #16
    1714:	23a02010 	movcs	r2, #16
    1718:	33a02000 	movcc	r2, #0
    171c:	e3510c01 	cmp	r1, #256	@ 0x100
    1720:	21a01421 	lsrcs	r1, r1, #8
    1724:	22822008 	addcs	r2, r2, #8
    1728:	e3510010 	cmp	r1, #16
    172c:	21a01221 	lsrcs	r1, r1, #4
    1730:	22822004 	addcs	r2, r2, #4
    1734:	e3510004 	cmp	r1, #4
    1738:	82822003 	addhi	r2, r2, #3
    173c:	908220a1 	addls	r2, r2, r1, lsr #1
    1740:	e1a00230 	lsr	r0, r0, r2
    1744:	e12fff1e 	bx	lr
    1748:	e3500000 	cmp	r0, #0
    174c:	13e00000 	mvnne	r0, #0
    1750:	ea000007 	b	1774 <__aeabi_idiv0>

00001754 <__aeabi_uidivmod>:
    1754:	e3510000 	cmp	r1, #0
    1758:	0afffffa 	beq	1748 <__udivsi3+0xe8>
    175c:	e92d4003 	push	{r0, r1, lr}
    1760:	ebffffbe 	bl	1660 <__udivsi3>
    1764:	e8bd4006 	pop	{r1, r2, lr}
    1768:	e0030092 	mul	r3, r2, r0
    176c:	e0411003 	sub	r1, r1, r3
    1770:	e12fff1e 	bx	lr

00001774 <__aeabi_idiv0>:
    1774:	e12fff1e 	bx	lr
