
_t_l_cv1:     file format elf32-littlearm


Disassembly of section .text:

00000000 <thread2>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e51b3010 	ldr	r3, [fp, #-16]
      14:	e50b3008 	str	r3, [fp, #-8]
      18:	e59f1074 	ldr	r1, [pc, #116]	@ 94 <thread2+0x94>
      1c:	e3a00001 	mov	r0, #1
      20:	eb000432 	bl	10f0 <printf>
      24:	e51b3008 	ldr	r3, [fp, #-8]
      28:	e5933004 	ldr	r3, [r3, #4]
      2c:	e1a00003 	mov	r0, r3
      30:	eb0001a2 	bl	6c0 <acquireLock>
      34:	e59f105c 	ldr	r1, [pc, #92]	@ 98 <thread2+0x98>
      38:	e3a00001 	mov	r0, #1
      3c:	eb00042b 	bl	10f0 <printf>
      40:	e51b3008 	ldr	r3, [fp, #-8]
      44:	e5933000 	ldr	r3, [r3]
      48:	e50b300c 	str	r3, [fp, #-12]
      4c:	e51b300c 	ldr	r3, [fp, #-12]
      50:	e5933000 	ldr	r3, [r3]
      54:	e2832001 	add	r2, r3, #1
      58:	e51b300c 	ldr	r3, [fp, #-12]
      5c:	e5832000 	str	r2, [r3]
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e5933008 	ldr	r3, [r3, #8]
      68:	e1a00003 	mov	r0, r3
      6c:	eb0001f2 	bl	83c <broadcast>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e5933004 	ldr	r3, [r3, #4]
      78:	e1a00003 	mov	r0, r3
      7c:	eb0001a7 	bl	720 <releaseLock>
      80:	eb00036d 	bl	e3c <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	000017ac 	.word	0x000017ac
      98:	000017c0 	.word	0x000017c0

0000009c <main>:
      9c:	e92d4800 	push	{fp, lr}
      a0:	e28db004 	add	fp, sp, #4
      a4:	e24dd028 	sub	sp, sp, #40	@ 0x28
      a8:	e59f10a8 	ldr	r1, [pc, #168]	@ 158 <main+0xbc>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00040e 	bl	10f0 <printf>
      b4:	e3a0300a 	mov	r3, #10
      b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      bc:	e24b3018 	sub	r3, fp, #24
      c0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
      c4:	e24b300c 	sub	r3, fp, #12
      c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
      cc:	e24b3014 	sub	r3, fp, #20
      d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
      d4:	e24b300c 	sub	r3, fp, #12
      d8:	e1a00003 	mov	r0, r3
      dc:	eb000169 	bl	688 <initiateLock>
      e0:	e24b3014 	sub	r3, fp, #20
      e4:	e1a00003 	mov	r0, r3
      e8:	eb00019f 	bl	76c <initiateCondVar>
      ec:	e24b300c 	sub	r3, fp, #12
      f0:	e1a00003 	mov	r0, r3
      f4:	eb000171 	bl	6c0 <acquireLock>
      f8:	e24b2024 	sub	r2, fp, #36	@ 0x24
      fc:	e24b3028 	sub	r3, fp, #40	@ 0x28
     100:	e59f1054 	ldr	r1, [pc, #84]	@ 15c <main+0xc0>
     104:	e1a00003 	mov	r0, r3
     108:	eb000342 	bl	e18 <thread_create>
     10c:	e3a000c8 	mov	r0, #200	@ 0xc8
     110:	eb0002f8 	bl	cf8 <sleep>
     114:	e24b200c 	sub	r2, fp, #12
     118:	e24b3014 	sub	r3, fp, #20
     11c:	e1a01002 	mov	r1, r2
     120:	e1a00003 	mov	r0, r3
     124:	eb0001a3 	bl	7b8 <condWait>
     128:	e24b300c 	sub	r3, fp, #12
     12c:	e1a00003 	mov	r0, r3
     130:	eb00017a 	bl	720 <releaseLock>
     134:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     138:	e1a00003 	mov	r0, r3
     13c:	eb000347 	bl	e60 <thread_join>
     140:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     144:	e1a02003 	mov	r2, r3
     148:	e59f1010 	ldr	r1, [pc, #16]	@ 160 <main+0xc4>
     14c:	e3a00001 	mov	r0, #1
     150:	eb0003e6 	bl	10f0 <printf>
     154:	eb000245 	bl	a70 <exit>
     158:	000017dc 	.word	0x000017dc
     15c:	00000000 	.word	0x00000000
     160:	000017ec 	.word	0x000017ec

00000164 <xchg>:
     164:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     168:	e28db000 	add	fp, sp, #0
     16c:	e24dd014 	sub	sp, sp, #20
     170:	e50b0010 	str	r0, [fp, #-16]
     174:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     178:	e51b1010 	ldr	r1, [fp, #-16]
     17c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     180:	e1912f9f 	ldrex	r2, [r1]
     184:	e1813f90 	strex	r3, r0, [r1]
     188:	e50b2008 	str	r2, [fp, #-8]
     18c:	e50b300c 	str	r3, [fp, #-12]
     190:	e51b300c 	ldr	r3, [fp, #-12]
     194:	e3530000 	cmp	r3, #0
     198:	1afffff6 	bne	178 <xchg+0x14>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a00003 	mov	r0, r3
     1a4:	e28bd000 	add	sp, fp, #0
     1a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1ac:	e12fff1e 	bx	lr

000001b0 <strcpy>:
     1b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b4:	e28db000 	add	fp, sp, #0
     1b8:	e24dd014 	sub	sp, sp, #20
     1bc:	e50b0010 	str	r0, [fp, #-16]
     1c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1c4:	e51b3010 	ldr	r3, [fp, #-16]
     1c8:	e50b3008 	str	r3, [fp, #-8]
     1cc:	e1a00000 	nop			@ (mov r0, r0)
     1d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d4:	e2823001 	add	r3, r2, #1
     1d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1dc:	e51b3010 	ldr	r3, [fp, #-16]
     1e0:	e2831001 	add	r1, r3, #1
     1e4:	e50b1010 	str	r1, [fp, #-16]
     1e8:	e5d22000 	ldrb	r2, [r2]
     1ec:	e5c32000 	strb	r2, [r3]
     1f0:	e5d33000 	ldrb	r3, [r3]
     1f4:	e3530000 	cmp	r3, #0
     1f8:	1afffff4 	bne	1d0 <strcpy+0x20>
     1fc:	e51b3008 	ldr	r3, [fp, #-8]
     200:	e1a00003 	mov	r0, r3
     204:	e28bd000 	add	sp, fp, #0
     208:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     20c:	e12fff1e 	bx	lr

00000210 <strcmp>:
     210:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     214:	e28db000 	add	fp, sp, #0
     218:	e24dd00c 	sub	sp, sp, #12
     21c:	e50b0008 	str	r0, [fp, #-8]
     220:	e50b100c 	str	r1, [fp, #-12]
     224:	ea000005 	b	240 <strcmp+0x30>
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e2833001 	add	r3, r3, #1
     230:	e50b3008 	str	r3, [fp, #-8]
     234:	e51b300c 	ldr	r3, [fp, #-12]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b300c 	str	r3, [fp, #-12]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e3530000 	cmp	r3, #0
     24c:	0a000005 	beq	268 <strcmp+0x58>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d32000 	ldrb	r2, [r3]
     258:	e51b300c 	ldr	r3, [fp, #-12]
     25c:	e5d33000 	ldrb	r3, [r3]
     260:	e1520003 	cmp	r2, r3
     264:	0affffef 	beq	228 <strcmp+0x18>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e5d33000 	ldrb	r3, [r3]
     270:	e1a02003 	mov	r2, r3
     274:	e51b300c 	ldr	r3, [fp, #-12]
     278:	e5d33000 	ldrb	r3, [r3]
     27c:	e0423003 	sub	r3, r2, r3
     280:	e1a00003 	mov	r0, r3
     284:	e28bd000 	add	sp, fp, #0
     288:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     28c:	e12fff1e 	bx	lr

00000290 <strlen>:
     290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     294:	e28db000 	add	fp, sp, #0
     298:	e24dd014 	sub	sp, sp, #20
     29c:	e50b0010 	str	r0, [fp, #-16]
     2a0:	e3a03000 	mov	r3, #0
     2a4:	e50b3008 	str	r3, [fp, #-8]
     2a8:	ea000002 	b	2b8 <strlen+0x28>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e51b2010 	ldr	r2, [fp, #-16]
     2c0:	e0823003 	add	r3, r2, r3
     2c4:	e5d33000 	ldrb	r3, [r3]
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff6 	bne	2ac <strlen+0x1c>
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <memset>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2f8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     308:	e54b300d 	strb	r3, [fp, #-13]
     30c:	e55b200d 	ldrb	r2, [fp, #-13]
     310:	e1a03002 	mov	r3, r2
     314:	e1a03403 	lsl	r3, r3, #8
     318:	e0833002 	add	r3, r3, r2
     31c:	e1a03803 	lsl	r3, r3, #16
     320:	e1a02003 	mov	r2, r3
     324:	e55b300d 	ldrb	r3, [fp, #-13]
     328:	e1a03403 	lsl	r3, r3, #8
     32c:	e1822003 	orr	r2, r2, r3
     330:	e55b300d 	ldrb	r3, [fp, #-13]
     334:	e1823003 	orr	r3, r2, r3
     338:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     33c:	ea000008 	b	364 <memset+0x80>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e55b200d 	ldrb	r2, [fp, #-13]
     348:	e5c32000 	strb	r2, [r3]
     34c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     350:	e2433001 	sub	r3, r3, #1
     354:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e2833001 	add	r3, r3, #1
     360:	e50b3008 	str	r3, [fp, #-8]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e3530000 	cmp	r3, #0
     36c:	0a000003 	beq	380 <memset+0x9c>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e2033003 	and	r3, r3, #3
     378:	e3530000 	cmp	r3, #0
     37c:	1affffef 	bne	340 <memset+0x5c>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e50b300c 	str	r3, [fp, #-12]
     388:	ea000008 	b	3b0 <memset+0xcc>
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     394:	e5832000 	str	r2, [r3]
     398:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     39c:	e2433004 	sub	r3, r3, #4
     3a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e51b300c 	ldr	r3, [fp, #-12]
     3a8:	e2833004 	add	r3, r3, #4
     3ac:	e50b300c 	str	r3, [fp, #-12]
     3b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3b4:	e3530003 	cmp	r3, #3
     3b8:	8afffff3 	bhi	38c <memset+0xa8>
     3bc:	e51b300c 	ldr	r3, [fp, #-12]
     3c0:	e50b3008 	str	r3, [fp, #-8]
     3c4:	ea000008 	b	3ec <memset+0x108>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e55b200d 	ldrb	r2, [fp, #-13]
     3d0:	e5c32000 	strb	r2, [r3]
     3d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d8:	e2433001 	sub	r3, r3, #1
     3dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e51b3008 	ldr	r3, [fp, #-8]
     3e4:	e2833001 	add	r3, r3, #1
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e3530000 	cmp	r3, #0
     3f4:	1afffff3 	bne	3c8 <memset+0xe4>
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e28bd000 	add	sp, fp, #0
     404:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     408:	e12fff1e 	bx	lr

0000040c <strchr>:
     40c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     410:	e28db000 	add	fp, sp, #0
     414:	e24dd00c 	sub	sp, sp, #12
     418:	e50b0008 	str	r0, [fp, #-8]
     41c:	e1a03001 	mov	r3, r1
     420:	e54b3009 	strb	r3, [fp, #-9]
     424:	ea000009 	b	450 <strchr+0x44>
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e55b2009 	ldrb	r2, [fp, #-9]
     434:	e1520003 	cmp	r2, r3
     438:	1a000001 	bne	444 <strchr+0x38>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	ea000007 	b	464 <strchr+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e2833001 	add	r3, r3, #1
     44c:	e50b3008 	str	r3, [fp, #-8]
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e5d33000 	ldrb	r3, [r3]
     458:	e3530000 	cmp	r3, #0
     45c:	1afffff1 	bne	428 <strchr+0x1c>
     460:	e3a03000 	mov	r3, #0
     464:	e1a00003 	mov	r0, r3
     468:	e28bd000 	add	sp, fp, #0
     46c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     470:	e12fff1e 	bx	lr

00000474 <gets>:
     474:	e92d4800 	push	{fp, lr}
     478:	e28db004 	add	fp, sp, #4
     47c:	e24dd018 	sub	sp, sp, #24
     480:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     484:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     488:	e3a03000 	mov	r3, #0
     48c:	e50b3008 	str	r3, [fp, #-8]
     490:	ea000016 	b	4f0 <gets+0x7c>
     494:	e24b300d 	sub	r3, fp, #13
     498:	e3a02001 	mov	r2, #1
     49c:	e1a01003 	mov	r1, r3
     4a0:	e3a00000 	mov	r0, #0
     4a4:	eb00018c 	bl	adc <read>
     4a8:	e50b000c 	str	r0, [fp, #-12]
     4ac:	e51b300c 	ldr	r3, [fp, #-12]
     4b0:	e3530000 	cmp	r3, #0
     4b4:	da000013 	ble	508 <gets+0x94>
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e2832001 	add	r2, r3, #1
     4c0:	e50b2008 	str	r2, [fp, #-8]
     4c4:	e1a02003 	mov	r2, r3
     4c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4cc:	e0833002 	add	r3, r3, r2
     4d0:	e55b200d 	ldrb	r2, [fp, #-13]
     4d4:	e5c32000 	strb	r2, [r3]
     4d8:	e55b300d 	ldrb	r3, [fp, #-13]
     4dc:	e353000a 	cmp	r3, #10
     4e0:	0a000009 	beq	50c <gets+0x98>
     4e4:	e55b300d 	ldrb	r3, [fp, #-13]
     4e8:	e353000d 	cmp	r3, #13
     4ec:	0a000006 	beq	50c <gets+0x98>
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e2833001 	add	r3, r3, #1
     4f8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4fc:	e1520003 	cmp	r2, r3
     500:	caffffe3 	bgt	494 <gets+0x20>
     504:	ea000000 	b	50c <gets+0x98>
     508:	e1a00000 	nop			@ (mov r0, r0)
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     514:	e0823003 	add	r3, r2, r3
     518:	e3a02000 	mov	r2, #0
     51c:	e5c32000 	strb	r2, [r3]
     520:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     524:	e1a00003 	mov	r0, r3
     528:	e24bd004 	sub	sp, fp, #4
     52c:	e8bd8800 	pop	{fp, pc}

00000530 <stat>:
     530:	e92d4800 	push	{fp, lr}
     534:	e28db004 	add	fp, sp, #4
     538:	e24dd010 	sub	sp, sp, #16
     53c:	e50b0010 	str	r0, [fp, #-16]
     540:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     544:	e3a01000 	mov	r1, #0
     548:	e51b0010 	ldr	r0, [fp, #-16]
     54c:	eb00018f 	bl	b90 <open>
     550:	e50b0008 	str	r0, [fp, #-8]
     554:	e51b3008 	ldr	r3, [fp, #-8]
     558:	e3530000 	cmp	r3, #0
     55c:	aa000001 	bge	568 <stat+0x38>
     560:	e3e03000 	mvn	r3, #0
     564:	ea000006 	b	584 <stat+0x54>
     568:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     56c:	e51b0008 	ldr	r0, [fp, #-8]
     570:	eb0001a1 	bl	bfc <fstat>
     574:	e50b000c 	str	r0, [fp, #-12]
     578:	e51b0008 	ldr	r0, [fp, #-8]
     57c:	eb000168 	bl	b24 <close>
     580:	e51b300c 	ldr	r3, [fp, #-12]
     584:	e1a00003 	mov	r0, r3
     588:	e24bd004 	sub	sp, fp, #4
     58c:	e8bd8800 	pop	{fp, pc}

00000590 <atoi>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd014 	sub	sp, sp, #20
     59c:	e50b0010 	str	r0, [fp, #-16]
     5a0:	e3a03000 	mov	r3, #0
     5a4:	e50b3008 	str	r3, [fp, #-8]
     5a8:	ea00000c 	b	5e0 <atoi+0x50>
     5ac:	e51b2008 	ldr	r2, [fp, #-8]
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a03103 	lsl	r3, r3, #2
     5b8:	e0833002 	add	r3, r3, r2
     5bc:	e1a03083 	lsl	r3, r3, #1
     5c0:	e1a01003 	mov	r1, r3
     5c4:	e51b3010 	ldr	r3, [fp, #-16]
     5c8:	e2832001 	add	r2, r3, #1
     5cc:	e50b2010 	str	r2, [fp, #-16]
     5d0:	e5d33000 	ldrb	r3, [r3]
     5d4:	e0813003 	add	r3, r1, r3
     5d8:	e2433030 	sub	r3, r3, #48	@ 0x30
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b3010 	ldr	r3, [fp, #-16]
     5e4:	e5d33000 	ldrb	r3, [r3]
     5e8:	e353002f 	cmp	r3, #47	@ 0x2f
     5ec:	9a000003 	bls	600 <atoi+0x70>
     5f0:	e51b3010 	ldr	r3, [fp, #-16]
     5f4:	e5d33000 	ldrb	r3, [r3]
     5f8:	e3530039 	cmp	r3, #57	@ 0x39
     5fc:	9affffea 	bls	5ac <atoi+0x1c>
     600:	e51b3008 	ldr	r3, [fp, #-8]
     604:	e1a00003 	mov	r0, r3
     608:	e28bd000 	add	sp, fp, #0
     60c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <memmove>:
     614:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     618:	e28db000 	add	fp, sp, #0
     61c:	e24dd01c 	sub	sp, sp, #28
     620:	e50b0010 	str	r0, [fp, #-16]
     624:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     628:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     62c:	e51b3010 	ldr	r3, [fp, #-16]
     630:	e50b3008 	str	r3, [fp, #-8]
     634:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     638:	e50b300c 	str	r3, [fp, #-12]
     63c:	ea000007 	b	660 <memmove+0x4c>
     640:	e51b200c 	ldr	r2, [fp, #-12]
     644:	e2823001 	add	r3, r2, #1
     648:	e50b300c 	str	r3, [fp, #-12]
     64c:	e51b3008 	ldr	r3, [fp, #-8]
     650:	e2831001 	add	r1, r3, #1
     654:	e50b1008 	str	r1, [fp, #-8]
     658:	e5d22000 	ldrb	r2, [r2]
     65c:	e5c32000 	strb	r2, [r3]
     660:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     664:	e2432001 	sub	r2, r3, #1
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e3530000 	cmp	r3, #0
     670:	cafffff2 	bgt	640 <memmove+0x2c>
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e1a00003 	mov	r0, r3
     67c:	e28bd000 	add	sp, fp, #0
     680:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <initiateLock>:
     688:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     68c:	e28db000 	add	fp, sp, #0
     690:	e24dd00c 	sub	sp, sp, #12
     694:	e50b0008 	str	r0, [fp, #-8]
     698:	e51b3008 	ldr	r3, [fp, #-8]
     69c:	e3a02000 	mov	r2, #0
     6a0:	e5832000 	str	r2, [r3]
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e3a02001 	mov	r2, #1
     6ac:	e5832004 	str	r2, [r3, #4]
     6b0:	e1a00000 	nop			@ (mov r0, r0)
     6b4:	e28bd000 	add	sp, fp, #0
     6b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <acquireLock>:
     6c0:	e92d4800 	push	{fp, lr}
     6c4:	e28db004 	add	fp, sp, #4
     6c8:	e24dd008 	sub	sp, sp, #8
     6cc:	e50b0008 	str	r0, [fp, #-8]
     6d0:	e51b3008 	ldr	r3, [fp, #-8]
     6d4:	e5933000 	ldr	r3, [r3]
     6d8:	e3730001 	cmn	r3, #1
     6dc:	1a000002 	bne	6ec <acquireLock+0x2c>
     6e0:	e59f1034 	ldr	r1, [pc, #52]	@ 71c <acquireLock+0x5c>
     6e4:	e3a00002 	mov	r0, #2
     6e8:	eb000280 	bl	10f0 <printf>
     6ec:	e1a00000 	nop			@ (mov r0, r0)
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e3a01001 	mov	r1, #1
     6f8:	e1a00003 	mov	r0, r3
     6fc:	ebfffe98 	bl	164 <xchg>
     700:	e1a03000 	mov	r3, r0
     704:	e3530000 	cmp	r3, #0
     708:	1afffff8 	bne	6f0 <acquireLock+0x30>
     70c:	e1a00000 	nop			@ (mov r0, r0)
     710:	e1a00000 	nop			@ (mov r0, r0)
     714:	e24bd004 	sub	sp, fp, #4
     718:	e8bd8800 	pop	{fp, pc}
     71c:	00001800 	.word	0x00001800

00000720 <releaseLock>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd008 	sub	sp, sp, #8
     72c:	e50b0008 	str	r0, [fp, #-8]
     730:	e51b3008 	ldr	r3, [fp, #-8]
     734:	e5933000 	ldr	r3, [r3]
     738:	e3530001 	cmp	r3, #1
     73c:	0a000002 	beq	74c <releaseLock+0x2c>
     740:	e59f1020 	ldr	r1, [pc, #32]	@ 768 <releaseLock+0x48>
     744:	e3a00002 	mov	r0, #2
     748:	eb000268 	bl	10f0 <printf>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e3a01000 	mov	r1, #0
     754:	e1a00003 	mov	r0, r3
     758:	ebfffe81 	bl	164 <xchg>
     75c:	e1a00000 	nop			@ (mov r0, r0)
     760:	e24bd004 	sub	sp, fp, #4
     764:	e8bd8800 	pop	{fp, pc}
     768:	00001830 	.word	0x00001830

0000076c <initiateCondVar>:
     76c:	e92d4800 	push	{fp, lr}
     770:	e28db004 	add	fp, sp, #4
     774:	e24dd008 	sub	sp, sp, #8
     778:	e50b0008 	str	r0, [fp, #-8]
     77c:	e51b3008 	ldr	r3, [fp, #-8]
     780:	e5933004 	ldr	r3, [r3, #4]
     784:	e3530000 	cmp	r3, #0
     788:	1a000007 	bne	7ac <initiateCondVar+0x40>
     78c:	eb0001e0 	bl	f14 <getChannel>
     790:	e1a02000 	mov	r2, r0
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5832000 	str	r2, [r3]
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e3a02001 	mov	r2, #1
     7a4:	e5832004 	str	r2, [r3, #4]
     7a8:	ea000000 	b	7b0 <initiateCondVar+0x44>
     7ac:	e1a00000 	nop			@ (mov r0, r0)
     7b0:	e24bd004 	sub	sp, fp, #4
     7b4:	e8bd8800 	pop	{fp, pc}

000007b8 <condWait>:
     7b8:	e92d4800 	push	{fp, lr}
     7bc:	e28db004 	add	fp, sp, #4
     7c0:	e24dd008 	sub	sp, sp, #8
     7c4:	e50b0008 	str	r0, [fp, #-8]
     7c8:	e50b100c 	str	r1, [fp, #-12]
     7cc:	e51b3008 	ldr	r3, [fp, #-8]
     7d0:	e5933004 	ldr	r3, [r3, #4]
     7d4:	e3530000 	cmp	r3, #0
     7d8:	1a000003 	bne	7ec <condWait+0x34>
     7dc:	e59f1050 	ldr	r1, [pc, #80]	@ 834 <condWait+0x7c>
     7e0:	e3a00002 	mov	r0, #2
     7e4:	eb000241 	bl	10f0 <printf>
     7e8:	ea00000f 	b	82c <condWait+0x74>
     7ec:	e51b300c 	ldr	r3, [fp, #-12]
     7f0:	e5933004 	ldr	r3, [r3, #4]
     7f4:	e3530000 	cmp	r3, #0
     7f8:	1a000003 	bne	80c <condWait+0x54>
     7fc:	e59f1034 	ldr	r1, [pc, #52]	@ 838 <condWait+0x80>
     800:	e3a00002 	mov	r0, #2
     804:	eb000239 	bl	10f0 <printf>
     808:	ea000007 	b	82c <condWait+0x74>
     80c:	e51b000c 	ldr	r0, [fp, #-12]
     810:	ebffffc2 	bl	720 <releaseLock>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e5933000 	ldr	r3, [r3]
     81c:	e1a00003 	mov	r0, r3
     820:	eb0001b2 	bl	ef0 <sleepChan>
     824:	e51b000c 	ldr	r0, [fp, #-12]
     828:	ebffffa4 	bl	6c0 <acquireLock>
     82c:	e24bd004 	sub	sp, fp, #4
     830:	e8bd8800 	pop	{fp, pc}
     834:	0000186c 	.word	0x0000186c
     838:	00001890 	.word	0x00001890

0000083c <broadcast>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e5933004 	ldr	r3, [r3, #4]
     854:	e3530000 	cmp	r3, #0
     858:	1a000003 	bne	86c <broadcast+0x30>
     85c:	e59f1020 	ldr	r1, [pc, #32]	@ 884 <broadcast+0x48>
     860:	e3a00002 	mov	r0, #2
     864:	eb000221 	bl	10f0 <printf>
     868:	ea000003 	b	87c <broadcast+0x40>
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e5933000 	ldr	r3, [r3]
     874:	e1a00003 	mov	r0, r3
     878:	eb0001ae 	bl	f38 <sigChan>
     87c:	e24bd004 	sub	sp, fp, #4
     880:	e8bd8800 	pop	{fp, pc}
     884:	0000186c 	.word	0x0000186c

00000888 <signal>:
     888:	e92d4800 	push	{fp, lr}
     88c:	e28db004 	add	fp, sp, #4
     890:	e24dd008 	sub	sp, sp, #8
     894:	e50b0008 	str	r0, [fp, #-8]
     898:	e51b3008 	ldr	r3, [fp, #-8]
     89c:	e5933004 	ldr	r3, [r3, #4]
     8a0:	e3530000 	cmp	r3, #0
     8a4:	1a000003 	bne	8b8 <signal+0x30>
     8a8:	e59f1020 	ldr	r1, [pc, #32]	@ 8d0 <signal+0x48>
     8ac:	e3a00002 	mov	r0, #2
     8b0:	eb00020e 	bl	10f0 <printf>
     8b4:	ea000003 	b	8c8 <signal+0x40>
     8b8:	e51b3008 	ldr	r3, [fp, #-8]
     8bc:	e5933000 	ldr	r3, [r3]
     8c0:	e1a00003 	mov	r0, r3
     8c4:	eb0001a4 	bl	f5c <sigOneChan>
     8c8:	e24bd004 	sub	sp, fp, #4
     8cc:	e8bd8800 	pop	{fp, pc}
     8d0:	0000186c 	.word	0x0000186c

000008d4 <semInit>:
     8d4:	e92d4800 	push	{fp, lr}
     8d8:	e28db004 	add	fp, sp, #4
     8dc:	e24dd008 	sub	sp, sp, #8
     8e0:	e50b0008 	str	r0, [fp, #-8]
     8e4:	e50b100c 	str	r1, [fp, #-12]
     8e8:	e51b3008 	ldr	r3, [fp, #-8]
     8ec:	e51b200c 	ldr	r2, [fp, #-12]
     8f0:	e5832000 	str	r2, [r3]
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e2833004 	add	r3, r3, #4
     8fc:	e1a00003 	mov	r0, r3
     900:	ebffff60 	bl	688 <initiateLock>
     904:	e51b3008 	ldr	r3, [fp, #-8]
     908:	e283300c 	add	r3, r3, #12
     90c:	e1a00003 	mov	r0, r3
     910:	ebffff95 	bl	76c <initiateCondVar>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e3a02001 	mov	r2, #1
     91c:	e5832014 	str	r2, [r3, #20]
     920:	e1a00000 	nop			@ (mov r0, r0)
     924:	e24bd004 	sub	sp, fp, #4
     928:	e8bd8800 	pop	{fp, pc}

0000092c <semDown>:
     92c:	e92d4800 	push	{fp, lr}
     930:	e28db004 	add	fp, sp, #4
     934:	e24dd008 	sub	sp, sp, #8
     938:	e50b0008 	str	r0, [fp, #-8]
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5933014 	ldr	r3, [r3, #20]
     944:	e3530000 	cmp	r3, #0
     948:	1a000003 	bne	95c <semDown+0x30>
     94c:	e59f1074 	ldr	r1, [pc, #116]	@ 9c8 <semDown+0x9c>
     950:	e3a00002 	mov	r0, #2
     954:	eb0001e5 	bl	10f0 <printf>
     958:	ea000018 	b	9c0 <semDown+0x94>
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e2833004 	add	r3, r3, #4
     964:	e1a00003 	mov	r0, r3
     968:	ebffff54 	bl	6c0 <acquireLock>
     96c:	ea000006 	b	98c <semDown+0x60>
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e283200c 	add	r2, r3, #12
     978:	e51b3008 	ldr	r3, [fp, #-8]
     97c:	e2833004 	add	r3, r3, #4
     980:	e1a01003 	mov	r1, r3
     984:	e1a00002 	mov	r0, r2
     988:	ebffff8a 	bl	7b8 <condWait>
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e5933000 	ldr	r3, [r3]
     994:	e3530000 	cmp	r3, #0
     998:	0afffff4 	beq	970 <semDown+0x44>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e5933000 	ldr	r3, [r3]
     9a4:	e2432001 	sub	r2, r3, #1
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e5832000 	str	r2, [r3]
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2833004 	add	r3, r3, #4
     9b8:	e1a00003 	mov	r0, r3
     9bc:	ebffff57 	bl	720 <releaseLock>
     9c0:	e24bd004 	sub	sp, fp, #4
     9c4:	e8bd8800 	pop	{fp, pc}
     9c8:	000018b0 	.word	0x000018b0

000009cc <semUp>:
     9cc:	e92d4800 	push	{fp, lr}
     9d0:	e28db004 	add	fp, sp, #4
     9d4:	e24dd008 	sub	sp, sp, #8
     9d8:	e50b0008 	str	r0, [fp, #-8]
     9dc:	e51b3008 	ldr	r3, [fp, #-8]
     9e0:	e5933014 	ldr	r3, [r3, #20]
     9e4:	e3530000 	cmp	r3, #0
     9e8:	1a000003 	bne	9fc <semUp+0x30>
     9ec:	e59f1054 	ldr	r1, [pc, #84]	@ a48 <semUp+0x7c>
     9f0:	e3a00002 	mov	r0, #2
     9f4:	eb0001bd 	bl	10f0 <printf>
     9f8:	ea000010 	b	a40 <semUp+0x74>
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e2833004 	add	r3, r3, #4
     a04:	e1a00003 	mov	r0, r3
     a08:	ebffff2c 	bl	6c0 <acquireLock>
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e5933000 	ldr	r3, [r3]
     a14:	e2832001 	add	r2, r3, #1
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e5832000 	str	r2, [r3]
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e283300c 	add	r3, r3, #12
     a28:	e1a00003 	mov	r0, r3
     a2c:	ebffff95 	bl	888 <signal>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2833004 	add	r3, r3, #4
     a38:	e1a00003 	mov	r0, r3
     a3c:	ebffff37 	bl	720 <releaseLock>
     a40:	e24bd004 	sub	sp, fp, #4
     a44:	e8bd8800 	pop	{fp, pc}
     a48:	000018b0 	.word	0x000018b0

00000a4c <fork>:
     a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a50:	e1a04003 	mov	r4, r3
     a54:	e1a03002 	mov	r3, r2
     a58:	e1a02001 	mov	r2, r1
     a5c:	e1a01000 	mov	r1, r0
     a60:	e3a00001 	mov	r0, #1
     a64:	ef000000 	svc	0x00000000
     a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a6c:	e12fff1e 	bx	lr

00000a70 <exit>:
     a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a74:	e1a04003 	mov	r4, r3
     a78:	e1a03002 	mov	r3, r2
     a7c:	e1a02001 	mov	r2, r1
     a80:	e1a01000 	mov	r1, r0
     a84:	e3a00002 	mov	r0, #2
     a88:	ef000000 	svc	0x00000000
     a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a90:	e12fff1e 	bx	lr

00000a94 <wait>:
     a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a98:	e1a04003 	mov	r4, r3
     a9c:	e1a03002 	mov	r3, r2
     aa0:	e1a02001 	mov	r2, r1
     aa4:	e1a01000 	mov	r1, r0
     aa8:	e3a00003 	mov	r0, #3
     aac:	ef000000 	svc	0x00000000
     ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab4:	e12fff1e 	bx	lr

00000ab8 <pipe>:
     ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     abc:	e1a04003 	mov	r4, r3
     ac0:	e1a03002 	mov	r3, r2
     ac4:	e1a02001 	mov	r2, r1
     ac8:	e1a01000 	mov	r1, r0
     acc:	e3a00004 	mov	r0, #4
     ad0:	ef000000 	svc	0x00000000
     ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ad8:	e12fff1e 	bx	lr

00000adc <read>:
     adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae0:	e1a04003 	mov	r4, r3
     ae4:	e1a03002 	mov	r3, r2
     ae8:	e1a02001 	mov	r2, r1
     aec:	e1a01000 	mov	r1, r0
     af0:	e3a00005 	mov	r0, #5
     af4:	ef000000 	svc	0x00000000
     af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     afc:	e12fff1e 	bx	lr

00000b00 <write>:
     b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b04:	e1a04003 	mov	r4, r3
     b08:	e1a03002 	mov	r3, r2
     b0c:	e1a02001 	mov	r2, r1
     b10:	e1a01000 	mov	r1, r0
     b14:	e3a00010 	mov	r0, #16
     b18:	ef000000 	svc	0x00000000
     b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b20:	e12fff1e 	bx	lr

00000b24 <close>:
     b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b28:	e1a04003 	mov	r4, r3
     b2c:	e1a03002 	mov	r3, r2
     b30:	e1a02001 	mov	r2, r1
     b34:	e1a01000 	mov	r1, r0
     b38:	e3a00015 	mov	r0, #21
     b3c:	ef000000 	svc	0x00000000
     b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b44:	e12fff1e 	bx	lr

00000b48 <kill>:
     b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b4c:	e1a04003 	mov	r4, r3
     b50:	e1a03002 	mov	r3, r2
     b54:	e1a02001 	mov	r2, r1
     b58:	e1a01000 	mov	r1, r0
     b5c:	e3a00006 	mov	r0, #6
     b60:	ef000000 	svc	0x00000000
     b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b68:	e12fff1e 	bx	lr

00000b6c <exec>:
     b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b70:	e1a04003 	mov	r4, r3
     b74:	e1a03002 	mov	r3, r2
     b78:	e1a02001 	mov	r2, r1
     b7c:	e1a01000 	mov	r1, r0
     b80:	e3a00007 	mov	r0, #7
     b84:	ef000000 	svc	0x00000000
     b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b8c:	e12fff1e 	bx	lr

00000b90 <open>:
     b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b94:	e1a04003 	mov	r4, r3
     b98:	e1a03002 	mov	r3, r2
     b9c:	e1a02001 	mov	r2, r1
     ba0:	e1a01000 	mov	r1, r0
     ba4:	e3a0000f 	mov	r0, #15
     ba8:	ef000000 	svc	0x00000000
     bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb0:	e12fff1e 	bx	lr

00000bb4 <mknod>:
     bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bb8:	e1a04003 	mov	r4, r3
     bbc:	e1a03002 	mov	r3, r2
     bc0:	e1a02001 	mov	r2, r1
     bc4:	e1a01000 	mov	r1, r0
     bc8:	e3a00011 	mov	r0, #17
     bcc:	ef000000 	svc	0x00000000
     bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd4:	e12fff1e 	bx	lr

00000bd8 <unlink>:
     bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bdc:	e1a04003 	mov	r4, r3
     be0:	e1a03002 	mov	r3, r2
     be4:	e1a02001 	mov	r2, r1
     be8:	e1a01000 	mov	r1, r0
     bec:	e3a00012 	mov	r0, #18
     bf0:	ef000000 	svc	0x00000000
     bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bf8:	e12fff1e 	bx	lr

00000bfc <fstat>:
     bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c00:	e1a04003 	mov	r4, r3
     c04:	e1a03002 	mov	r3, r2
     c08:	e1a02001 	mov	r2, r1
     c0c:	e1a01000 	mov	r1, r0
     c10:	e3a00008 	mov	r0, #8
     c14:	ef000000 	svc	0x00000000
     c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c1c:	e12fff1e 	bx	lr

00000c20 <link>:
     c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c24:	e1a04003 	mov	r4, r3
     c28:	e1a03002 	mov	r3, r2
     c2c:	e1a02001 	mov	r2, r1
     c30:	e1a01000 	mov	r1, r0
     c34:	e3a00013 	mov	r0, #19
     c38:	ef000000 	svc	0x00000000
     c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c40:	e12fff1e 	bx	lr

00000c44 <mkdir>:
     c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c48:	e1a04003 	mov	r4, r3
     c4c:	e1a03002 	mov	r3, r2
     c50:	e1a02001 	mov	r2, r1
     c54:	e1a01000 	mov	r1, r0
     c58:	e3a00014 	mov	r0, #20
     c5c:	ef000000 	svc	0x00000000
     c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c64:	e12fff1e 	bx	lr

00000c68 <chdir>:
     c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c6c:	e1a04003 	mov	r4, r3
     c70:	e1a03002 	mov	r3, r2
     c74:	e1a02001 	mov	r2, r1
     c78:	e1a01000 	mov	r1, r0
     c7c:	e3a00009 	mov	r0, #9
     c80:	ef000000 	svc	0x00000000
     c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c88:	e12fff1e 	bx	lr

00000c8c <dup>:
     c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c90:	e1a04003 	mov	r4, r3
     c94:	e1a03002 	mov	r3, r2
     c98:	e1a02001 	mov	r2, r1
     c9c:	e1a01000 	mov	r1, r0
     ca0:	e3a0000a 	mov	r0, #10
     ca4:	ef000000 	svc	0x00000000
     ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cac:	e12fff1e 	bx	lr

00000cb0 <getpid>:
     cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cb4:	e1a04003 	mov	r4, r3
     cb8:	e1a03002 	mov	r3, r2
     cbc:	e1a02001 	mov	r2, r1
     cc0:	e1a01000 	mov	r1, r0
     cc4:	e3a0000b 	mov	r0, #11
     cc8:	ef000000 	svc	0x00000000
     ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd0:	e12fff1e 	bx	lr

00000cd4 <sbrk>:
     cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cd8:	e1a04003 	mov	r4, r3
     cdc:	e1a03002 	mov	r3, r2
     ce0:	e1a02001 	mov	r2, r1
     ce4:	e1a01000 	mov	r1, r0
     ce8:	e3a0000c 	mov	r0, #12
     cec:	ef000000 	svc	0x00000000
     cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cf4:	e12fff1e 	bx	lr

00000cf8 <sleep>:
     cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cfc:	e1a04003 	mov	r4, r3
     d00:	e1a03002 	mov	r3, r2
     d04:	e1a02001 	mov	r2, r1
     d08:	e1a01000 	mov	r1, r0
     d0c:	e3a0000d 	mov	r0, #13
     d10:	ef000000 	svc	0x00000000
     d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d18:	e12fff1e 	bx	lr

00000d1c <uptime>:
     d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d20:	e1a04003 	mov	r4, r3
     d24:	e1a03002 	mov	r3, r2
     d28:	e1a02001 	mov	r2, r1
     d2c:	e1a01000 	mov	r1, r0
     d30:	e3a0000e 	mov	r0, #14
     d34:	ef000000 	svc	0x00000000
     d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d3c:	e12fff1e 	bx	lr

00000d40 <disproc>:
     d40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d44:	e1a04003 	mov	r4, r3
     d48:	e1a03002 	mov	r3, r2
     d4c:	e1a02001 	mov	r2, r1
     d50:	e1a01000 	mov	r1, r0
     d54:	e3a00016 	mov	r0, #22
     d58:	ef000000 	svc	0x00000000
     d5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d60:	e12fff1e 	bx	lr

00000d64 <srand>:
     d64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d68:	e1a04003 	mov	r4, r3
     d6c:	e1a03002 	mov	r3, r2
     d70:	e1a02001 	mov	r2, r1
     d74:	e1a01000 	mov	r1, r0
     d78:	e3a00017 	mov	r0, #23
     d7c:	ef000000 	svc	0x00000000
     d80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d84:	e12fff1e 	bx	lr

00000d88 <setticket>:
     d88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d8c:	e1a04003 	mov	r4, r3
     d90:	e1a03002 	mov	r3, r2
     d94:	e1a02001 	mov	r2, r1
     d98:	e1a01000 	mov	r1, r0
     d9c:	e3a00018 	mov	r0, #24
     da0:	ef000000 	svc	0x00000000
     da4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     da8:	e12fff1e 	bx	lr

00000dac <getpinfo>:
     dac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db0:	e1a04003 	mov	r4, r3
     db4:	e1a03002 	mov	r3, r2
     db8:	e1a02001 	mov	r2, r1
     dbc:	e1a01000 	mov	r1, r0
     dc0:	e3a00019 	mov	r0, #25
     dc4:	ef000000 	svc	0x00000000
     dc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dcc:	e12fff1e 	bx	lr

00000dd0 <printPages>:
     dd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dd4:	e1a04003 	mov	r4, r3
     dd8:	e1a03002 	mov	r3, r2
     ddc:	e1a02001 	mov	r2, r1
     de0:	e1a01000 	mov	r1, r0
     de4:	e3a0001a 	mov	r0, #26
     de8:	ef000000 	svc	0x00000000
     dec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df0:	e12fff1e 	bx	lr

00000df4 <kpt>:
     df4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     df8:	e1a04003 	mov	r4, r3
     dfc:	e1a03002 	mov	r3, r2
     e00:	e1a02001 	mov	r2, r1
     e04:	e1a01000 	mov	r1, r0
     e08:	e3a0001b 	mov	r0, #27
     e0c:	ef000000 	svc	0x00000000
     e10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e14:	e12fff1e 	bx	lr

00000e18 <thread_create>:
     e18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e1c:	e1a04003 	mov	r4, r3
     e20:	e1a03002 	mov	r3, r2
     e24:	e1a02001 	mov	r2, r1
     e28:	e1a01000 	mov	r1, r0
     e2c:	e3a0001c 	mov	r0, #28
     e30:	ef000000 	svc	0x00000000
     e34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e38:	e12fff1e 	bx	lr

00000e3c <thread_exit>:
     e3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e40:	e1a04003 	mov	r4, r3
     e44:	e1a03002 	mov	r3, r2
     e48:	e1a02001 	mov	r2, r1
     e4c:	e1a01000 	mov	r1, r0
     e50:	e3a0001d 	mov	r0, #29
     e54:	ef000000 	svc	0x00000000
     e58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e5c:	e12fff1e 	bx	lr

00000e60 <thread_join>:
     e60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e64:	e1a04003 	mov	r4, r3
     e68:	e1a03002 	mov	r3, r2
     e6c:	e1a02001 	mov	r2, r1
     e70:	e1a01000 	mov	r1, r0
     e74:	e3a0001e 	mov	r0, #30
     e78:	ef000000 	svc	0x00000000
     e7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e80:	e12fff1e 	bx	lr

00000e84 <waitpid>:
     e84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e88:	e1a04003 	mov	r4, r3
     e8c:	e1a03002 	mov	r3, r2
     e90:	e1a02001 	mov	r2, r1
     e94:	e1a01000 	mov	r1, r0
     e98:	e3a0001f 	mov	r0, #31
     e9c:	ef000000 	svc	0x00000000
     ea0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ea4:	e12fff1e 	bx	lr

00000ea8 <barrier_init>:
     ea8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eac:	e1a04003 	mov	r4, r3
     eb0:	e1a03002 	mov	r3, r2
     eb4:	e1a02001 	mov	r2, r1
     eb8:	e1a01000 	mov	r1, r0
     ebc:	e3a00020 	mov	r0, #32
     ec0:	ef000000 	svc	0x00000000
     ec4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ec8:	e12fff1e 	bx	lr

00000ecc <barrier_check>:
     ecc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed0:	e1a04003 	mov	r4, r3
     ed4:	e1a03002 	mov	r3, r2
     ed8:	e1a02001 	mov	r2, r1
     edc:	e1a01000 	mov	r1, r0
     ee0:	e3a00021 	mov	r0, #33	@ 0x21
     ee4:	ef000000 	svc	0x00000000
     ee8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eec:	e12fff1e 	bx	lr

00000ef0 <sleepChan>:
     ef0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ef4:	e1a04003 	mov	r4, r3
     ef8:	e1a03002 	mov	r3, r2
     efc:	e1a02001 	mov	r2, r1
     f00:	e1a01000 	mov	r1, r0
     f04:	e3a00022 	mov	r0, #34	@ 0x22
     f08:	ef000000 	svc	0x00000000
     f0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f10:	e12fff1e 	bx	lr

00000f14 <getChannel>:
     f14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f18:	e1a04003 	mov	r4, r3
     f1c:	e1a03002 	mov	r3, r2
     f20:	e1a02001 	mov	r2, r1
     f24:	e1a01000 	mov	r1, r0
     f28:	e3a00023 	mov	r0, #35	@ 0x23
     f2c:	ef000000 	svc	0x00000000
     f30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f34:	e12fff1e 	bx	lr

00000f38 <sigChan>:
     f38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f3c:	e1a04003 	mov	r4, r3
     f40:	e1a03002 	mov	r3, r2
     f44:	e1a02001 	mov	r2, r1
     f48:	e1a01000 	mov	r1, r0
     f4c:	e3a00024 	mov	r0, #36	@ 0x24
     f50:	ef000000 	svc	0x00000000
     f54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f58:	e12fff1e 	bx	lr

00000f5c <sigOneChan>:
     f5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f60:	e1a04003 	mov	r4, r3
     f64:	e1a03002 	mov	r3, r2
     f68:	e1a02001 	mov	r2, r1
     f6c:	e1a01000 	mov	r1, r0
     f70:	e3a00025 	mov	r0, #37	@ 0x25
     f74:	ef000000 	svc	0x00000000
     f78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f7c:	e12fff1e 	bx	lr

00000f80 <putc>:
     f80:	e92d4800 	push	{fp, lr}
     f84:	e28db004 	add	fp, sp, #4
     f88:	e24dd008 	sub	sp, sp, #8
     f8c:	e50b0008 	str	r0, [fp, #-8]
     f90:	e1a03001 	mov	r3, r1
     f94:	e54b3009 	strb	r3, [fp, #-9]
     f98:	e24b3009 	sub	r3, fp, #9
     f9c:	e3a02001 	mov	r2, #1
     fa0:	e1a01003 	mov	r1, r3
     fa4:	e51b0008 	ldr	r0, [fp, #-8]
     fa8:	ebfffed4 	bl	b00 <write>
     fac:	e1a00000 	nop			@ (mov r0, r0)
     fb0:	e24bd004 	sub	sp, fp, #4
     fb4:	e8bd8800 	pop	{fp, pc}

00000fb8 <printint>:
     fb8:	e92d4800 	push	{fp, lr}
     fbc:	e28db004 	add	fp, sp, #4
     fc0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     fc4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     fc8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     fcc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     fd0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     fd4:	e3a03000 	mov	r3, #0
     fd8:	e50b300c 	str	r3, [fp, #-12]
     fdc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     fe0:	e3530000 	cmp	r3, #0
     fe4:	0a000008 	beq	100c <printint+0x54>
     fe8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     fec:	e3530000 	cmp	r3, #0
     ff0:	aa000005 	bge	100c <printint+0x54>
     ff4:	e3a03001 	mov	r3, #1
     ff8:	e50b300c 	str	r3, [fp, #-12]
     ffc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1000:	e2633000 	rsb	r3, r3, #0
    1004:	e50b3010 	str	r3, [fp, #-16]
    1008:	ea000001 	b	1014 <printint+0x5c>
    100c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1010:	e50b3010 	str	r3, [fp, #-16]
    1014:	e3a03000 	mov	r3, #0
    1018:	e50b3008 	str	r3, [fp, #-8]
    101c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1020:	e51b3010 	ldr	r3, [fp, #-16]
    1024:	e1a01002 	mov	r1, r2
    1028:	e1a00003 	mov	r0, r3
    102c:	eb0001d5 	bl	1788 <__aeabi_uidivmod>
    1030:	e1a03001 	mov	r3, r1
    1034:	e1a01003 	mov	r1, r3
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e2832001 	add	r2, r3, #1
    1040:	e50b2008 	str	r2, [fp, #-8]
    1044:	e59f20a0 	ldr	r2, [pc, #160]	@ 10ec <printint+0x134>
    1048:	e7d22001 	ldrb	r2, [r2, r1]
    104c:	e2433004 	sub	r3, r3, #4
    1050:	e083300b 	add	r3, r3, fp
    1054:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1058:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    105c:	e1a01003 	mov	r1, r3
    1060:	e51b0010 	ldr	r0, [fp, #-16]
    1064:	eb00018a 	bl	1694 <__udivsi3>
    1068:	e1a03000 	mov	r3, r0
    106c:	e50b3010 	str	r3, [fp, #-16]
    1070:	e51b3010 	ldr	r3, [fp, #-16]
    1074:	e3530000 	cmp	r3, #0
    1078:	1affffe7 	bne	101c <printint+0x64>
    107c:	e51b300c 	ldr	r3, [fp, #-12]
    1080:	e3530000 	cmp	r3, #0
    1084:	0a00000e 	beq	10c4 <printint+0x10c>
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e2832001 	add	r2, r3, #1
    1090:	e50b2008 	str	r2, [fp, #-8]
    1094:	e2433004 	sub	r3, r3, #4
    1098:	e083300b 	add	r3, r3, fp
    109c:	e3a0202d 	mov	r2, #45	@ 0x2d
    10a0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10a4:	ea000006 	b	10c4 <printint+0x10c>
    10a8:	e24b2020 	sub	r2, fp, #32
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e0823003 	add	r3, r2, r3
    10b4:	e5d33000 	ldrb	r3, [r3]
    10b8:	e1a01003 	mov	r1, r3
    10bc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    10c0:	ebffffae 	bl	f80 <putc>
    10c4:	e51b3008 	ldr	r3, [fp, #-8]
    10c8:	e2433001 	sub	r3, r3, #1
    10cc:	e50b3008 	str	r3, [fp, #-8]
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e3530000 	cmp	r3, #0
    10d8:	aafffff2 	bge	10a8 <printint+0xf0>
    10dc:	e1a00000 	nop			@ (mov r0, r0)
    10e0:	e1a00000 	nop			@ (mov r0, r0)
    10e4:	e24bd004 	sub	sp, fp, #4
    10e8:	e8bd8800 	pop	{fp, pc}
    10ec:	000018dc 	.word	0x000018dc

000010f0 <printf>:
    10f0:	e92d000e 	push	{r1, r2, r3}
    10f4:	e92d4800 	push	{fp, lr}
    10f8:	e28db004 	add	fp, sp, #4
    10fc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1100:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1104:	e3a03000 	mov	r3, #0
    1108:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    110c:	e28b3008 	add	r3, fp, #8
    1110:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1114:	e3a03000 	mov	r3, #0
    1118:	e50b3010 	str	r3, [fp, #-16]
    111c:	ea000074 	b	12f4 <printf+0x204>
    1120:	e59b2004 	ldr	r2, [fp, #4]
    1124:	e51b3010 	ldr	r3, [fp, #-16]
    1128:	e0823003 	add	r3, r2, r3
    112c:	e5d33000 	ldrb	r3, [r3]
    1130:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1134:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1138:	e3530000 	cmp	r3, #0
    113c:	1a00000b 	bne	1170 <printf+0x80>
    1140:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1144:	e3530025 	cmp	r3, #37	@ 0x25
    1148:	1a000002 	bne	1158 <printf+0x68>
    114c:	e3a03025 	mov	r3, #37	@ 0x25
    1150:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1154:	ea000063 	b	12e8 <printf+0x1f8>
    1158:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    115c:	e6ef3073 	uxtb	r3, r3
    1160:	e1a01003 	mov	r1, r3
    1164:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1168:	ebffff84 	bl	f80 <putc>
    116c:	ea00005d 	b	12e8 <printf+0x1f8>
    1170:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1174:	e3530025 	cmp	r3, #37	@ 0x25
    1178:	1a00005a 	bne	12e8 <printf+0x1f8>
    117c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1180:	e3530064 	cmp	r3, #100	@ 0x64
    1184:	1a00000a 	bne	11b4 <printf+0xc4>
    1188:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    118c:	e5933000 	ldr	r3, [r3]
    1190:	e1a01003 	mov	r1, r3
    1194:	e3a03001 	mov	r3, #1
    1198:	e3a0200a 	mov	r2, #10
    119c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11a0:	ebffff84 	bl	fb8 <printint>
    11a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11a8:	e2833004 	add	r3, r3, #4
    11ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11b0:	ea00004a 	b	12e0 <printf+0x1f0>
    11b4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b8:	e3530078 	cmp	r3, #120	@ 0x78
    11bc:	0a000002 	beq	11cc <printf+0xdc>
    11c0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11c4:	e3530070 	cmp	r3, #112	@ 0x70
    11c8:	1a00000a 	bne	11f8 <printf+0x108>
    11cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11d0:	e5933000 	ldr	r3, [r3]
    11d4:	e1a01003 	mov	r1, r3
    11d8:	e3a03000 	mov	r3, #0
    11dc:	e3a02010 	mov	r2, #16
    11e0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e4:	ebffff73 	bl	fb8 <printint>
    11e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11ec:	e2833004 	add	r3, r3, #4
    11f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11f4:	ea000039 	b	12e0 <printf+0x1f0>
    11f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11fc:	e3530073 	cmp	r3, #115	@ 0x73
    1200:	1a000018 	bne	1268 <printf+0x178>
    1204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1208:	e5933000 	ldr	r3, [r3]
    120c:	e50b300c 	str	r3, [fp, #-12]
    1210:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1214:	e2833004 	add	r3, r3, #4
    1218:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    121c:	e51b300c 	ldr	r3, [fp, #-12]
    1220:	e3530000 	cmp	r3, #0
    1224:	1a00000a 	bne	1254 <printf+0x164>
    1228:	e59f30f4 	ldr	r3, [pc, #244]	@ 1324 <printf+0x234>
    122c:	e50b300c 	str	r3, [fp, #-12]
    1230:	ea000007 	b	1254 <printf+0x164>
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e5d33000 	ldrb	r3, [r3]
    123c:	e1a01003 	mov	r1, r3
    1240:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1244:	ebffff4d 	bl	f80 <putc>
    1248:	e51b300c 	ldr	r3, [fp, #-12]
    124c:	e2833001 	add	r3, r3, #1
    1250:	e50b300c 	str	r3, [fp, #-12]
    1254:	e51b300c 	ldr	r3, [fp, #-12]
    1258:	e5d33000 	ldrb	r3, [r3]
    125c:	e3530000 	cmp	r3, #0
    1260:	1afffff3 	bne	1234 <printf+0x144>
    1264:	ea00001d 	b	12e0 <printf+0x1f0>
    1268:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    126c:	e3530063 	cmp	r3, #99	@ 0x63
    1270:	1a000009 	bne	129c <printf+0x1ac>
    1274:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1278:	e5933000 	ldr	r3, [r3]
    127c:	e6ef3073 	uxtb	r3, r3
    1280:	e1a01003 	mov	r1, r3
    1284:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1288:	ebffff3c 	bl	f80 <putc>
    128c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1290:	e2833004 	add	r3, r3, #4
    1294:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1298:	ea000010 	b	12e0 <printf+0x1f0>
    129c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a0:	e3530025 	cmp	r3, #37	@ 0x25
    12a4:	1a000005 	bne	12c0 <printf+0x1d0>
    12a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12ac:	e6ef3073 	uxtb	r3, r3
    12b0:	e1a01003 	mov	r1, r3
    12b4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12b8:	ebffff30 	bl	f80 <putc>
    12bc:	ea000007 	b	12e0 <printf+0x1f0>
    12c0:	e3a01025 	mov	r1, #37	@ 0x25
    12c4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c8:	ebffff2c 	bl	f80 <putc>
    12cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12d0:	e6ef3073 	uxtb	r3, r3
    12d4:	e1a01003 	mov	r1, r3
    12d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12dc:	ebffff27 	bl	f80 <putc>
    12e0:	e3a03000 	mov	r3, #0
    12e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    12e8:	e51b3010 	ldr	r3, [fp, #-16]
    12ec:	e2833001 	add	r3, r3, #1
    12f0:	e50b3010 	str	r3, [fp, #-16]
    12f4:	e59b2004 	ldr	r2, [fp, #4]
    12f8:	e51b3010 	ldr	r3, [fp, #-16]
    12fc:	e0823003 	add	r3, r2, r3
    1300:	e5d33000 	ldrb	r3, [r3]
    1304:	e3530000 	cmp	r3, #0
    1308:	1affff84 	bne	1120 <printf+0x30>
    130c:	e1a00000 	nop			@ (mov r0, r0)
    1310:	e1a00000 	nop			@ (mov r0, r0)
    1314:	e24bd004 	sub	sp, fp, #4
    1318:	e8bd4800 	pop	{fp, lr}
    131c:	e28dd00c 	add	sp, sp, #12
    1320:	e12fff1e 	bx	lr
    1324:	000018d4 	.word	0x000018d4

00001328 <free>:
    1328:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    132c:	e28db000 	add	fp, sp, #0
    1330:	e24dd014 	sub	sp, sp, #20
    1334:	e50b0010 	str	r0, [fp, #-16]
    1338:	e51b3010 	ldr	r3, [fp, #-16]
    133c:	e2433008 	sub	r3, r3, #8
    1340:	e50b300c 	str	r3, [fp, #-12]
    1344:	e59f3154 	ldr	r3, [pc, #340]	@ 14a0 <free+0x178>
    1348:	e5933000 	ldr	r3, [r3]
    134c:	e50b3008 	str	r3, [fp, #-8]
    1350:	ea000010 	b	1398 <free+0x70>
    1354:	e51b3008 	ldr	r3, [fp, #-8]
    1358:	e5933000 	ldr	r3, [r3]
    135c:	e51b2008 	ldr	r2, [fp, #-8]
    1360:	e1520003 	cmp	r2, r3
    1364:	3a000008 	bcc	138c <free+0x64>
    1368:	e51b200c 	ldr	r2, [fp, #-12]
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e1520003 	cmp	r2, r3
    1374:	8a000010 	bhi	13bc <free+0x94>
    1378:	e51b3008 	ldr	r3, [fp, #-8]
    137c:	e5933000 	ldr	r3, [r3]
    1380:	e51b200c 	ldr	r2, [fp, #-12]
    1384:	e1520003 	cmp	r2, r3
    1388:	3a00000b 	bcc	13bc <free+0x94>
    138c:	e51b3008 	ldr	r3, [fp, #-8]
    1390:	e5933000 	ldr	r3, [r3]
    1394:	e50b3008 	str	r3, [fp, #-8]
    1398:	e51b200c 	ldr	r2, [fp, #-12]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e1520003 	cmp	r2, r3
    13a4:	9affffea 	bls	1354 <free+0x2c>
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5933000 	ldr	r3, [r3]
    13b0:	e51b200c 	ldr	r2, [fp, #-12]
    13b4:	e1520003 	cmp	r2, r3
    13b8:	2affffe5 	bcs	1354 <free+0x2c>
    13bc:	e51b300c 	ldr	r3, [fp, #-12]
    13c0:	e5933004 	ldr	r3, [r3, #4]
    13c4:	e1a03183 	lsl	r3, r3, #3
    13c8:	e51b200c 	ldr	r2, [fp, #-12]
    13cc:	e0822003 	add	r2, r2, r3
    13d0:	e51b3008 	ldr	r3, [fp, #-8]
    13d4:	e5933000 	ldr	r3, [r3]
    13d8:	e1520003 	cmp	r2, r3
    13dc:	1a00000d 	bne	1418 <free+0xf0>
    13e0:	e51b300c 	ldr	r3, [fp, #-12]
    13e4:	e5932004 	ldr	r2, [r3, #4]
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e5933000 	ldr	r3, [r3]
    13f0:	e5933004 	ldr	r3, [r3, #4]
    13f4:	e0822003 	add	r2, r2, r3
    13f8:	e51b300c 	ldr	r3, [fp, #-12]
    13fc:	e5832004 	str	r2, [r3, #4]
    1400:	e51b3008 	ldr	r3, [fp, #-8]
    1404:	e5933000 	ldr	r3, [r3]
    1408:	e5932000 	ldr	r2, [r3]
    140c:	e51b300c 	ldr	r3, [fp, #-12]
    1410:	e5832000 	str	r2, [r3]
    1414:	ea000003 	b	1428 <free+0x100>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e5932000 	ldr	r2, [r3]
    1420:	e51b300c 	ldr	r3, [fp, #-12]
    1424:	e5832000 	str	r2, [r3]
    1428:	e51b3008 	ldr	r3, [fp, #-8]
    142c:	e5933004 	ldr	r3, [r3, #4]
    1430:	e1a03183 	lsl	r3, r3, #3
    1434:	e51b2008 	ldr	r2, [fp, #-8]
    1438:	e0823003 	add	r3, r2, r3
    143c:	e51b200c 	ldr	r2, [fp, #-12]
    1440:	e1520003 	cmp	r2, r3
    1444:	1a00000b 	bne	1478 <free+0x150>
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5932004 	ldr	r2, [r3, #4]
    1450:	e51b300c 	ldr	r3, [fp, #-12]
    1454:	e5933004 	ldr	r3, [r3, #4]
    1458:	e0822003 	add	r2, r2, r3
    145c:	e51b3008 	ldr	r3, [fp, #-8]
    1460:	e5832004 	str	r2, [r3, #4]
    1464:	e51b300c 	ldr	r3, [fp, #-12]
    1468:	e5932000 	ldr	r2, [r3]
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5832000 	str	r2, [r3]
    1474:	ea000002 	b	1484 <free+0x15c>
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e51b200c 	ldr	r2, [fp, #-12]
    1480:	e5832000 	str	r2, [r3]
    1484:	e59f2014 	ldr	r2, [pc, #20]	@ 14a0 <free+0x178>
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5823000 	str	r3, [r2]
    1490:	e1a00000 	nop			@ (mov r0, r0)
    1494:	e28bd000 	add	sp, fp, #0
    1498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    149c:	e12fff1e 	bx	lr
    14a0:	000018f8 	.word	0x000018f8

000014a4 <morecore>:
    14a4:	e92d4800 	push	{fp, lr}
    14a8:	e28db004 	add	fp, sp, #4
    14ac:	e24dd010 	sub	sp, sp, #16
    14b0:	e50b0010 	str	r0, [fp, #-16]
    14b4:	e51b3010 	ldr	r3, [fp, #-16]
    14b8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    14bc:	2a000001 	bcs	14c8 <morecore+0x24>
    14c0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    14c4:	e50b3010 	str	r3, [fp, #-16]
    14c8:	e51b3010 	ldr	r3, [fp, #-16]
    14cc:	e1a03183 	lsl	r3, r3, #3
    14d0:	e1a00003 	mov	r0, r3
    14d4:	ebfffdfe 	bl	cd4 <sbrk>
    14d8:	e50b0008 	str	r0, [fp, #-8]
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e3730001 	cmn	r3, #1
    14e4:	1a000001 	bne	14f0 <morecore+0x4c>
    14e8:	e3a03000 	mov	r3, #0
    14ec:	ea00000a 	b	151c <morecore+0x78>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e50b300c 	str	r3, [fp, #-12]
    14f8:	e51b300c 	ldr	r3, [fp, #-12]
    14fc:	e51b2010 	ldr	r2, [fp, #-16]
    1500:	e5832004 	str	r2, [r3, #4]
    1504:	e51b300c 	ldr	r3, [fp, #-12]
    1508:	e2833008 	add	r3, r3, #8
    150c:	e1a00003 	mov	r0, r3
    1510:	ebffff84 	bl	1328 <free>
    1514:	e59f300c 	ldr	r3, [pc, #12]	@ 1528 <morecore+0x84>
    1518:	e5933000 	ldr	r3, [r3]
    151c:	e1a00003 	mov	r0, r3
    1520:	e24bd004 	sub	sp, fp, #4
    1524:	e8bd8800 	pop	{fp, pc}
    1528:	000018f8 	.word	0x000018f8

0000152c <malloc>:
    152c:	e92d4800 	push	{fp, lr}
    1530:	e28db004 	add	fp, sp, #4
    1534:	e24dd018 	sub	sp, sp, #24
    1538:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    153c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1540:	e2833007 	add	r3, r3, #7
    1544:	e1a031a3 	lsr	r3, r3, #3
    1548:	e2833001 	add	r3, r3, #1
    154c:	e50b3010 	str	r3, [fp, #-16]
    1550:	e59f3134 	ldr	r3, [pc, #308]	@ 168c <malloc+0x160>
    1554:	e5933000 	ldr	r3, [r3]
    1558:	e50b300c 	str	r3, [fp, #-12]
    155c:	e51b300c 	ldr	r3, [fp, #-12]
    1560:	e3530000 	cmp	r3, #0
    1564:	1a00000b 	bne	1598 <malloc+0x6c>
    1568:	e59f3120 	ldr	r3, [pc, #288]	@ 1690 <malloc+0x164>
    156c:	e50b300c 	str	r3, [fp, #-12]
    1570:	e59f2114 	ldr	r2, [pc, #276]	@ 168c <malloc+0x160>
    1574:	e51b300c 	ldr	r3, [fp, #-12]
    1578:	e5823000 	str	r3, [r2]
    157c:	e59f3108 	ldr	r3, [pc, #264]	@ 168c <malloc+0x160>
    1580:	e5933000 	ldr	r3, [r3]
    1584:	e59f2104 	ldr	r2, [pc, #260]	@ 1690 <malloc+0x164>
    1588:	e5823000 	str	r3, [r2]
    158c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1690 <malloc+0x164>
    1590:	e3a02000 	mov	r2, #0
    1594:	e5832004 	str	r2, [r3, #4]
    1598:	e51b300c 	ldr	r3, [fp, #-12]
    159c:	e5933000 	ldr	r3, [r3]
    15a0:	e50b3008 	str	r3, [fp, #-8]
    15a4:	e51b3008 	ldr	r3, [fp, #-8]
    15a8:	e5933004 	ldr	r3, [r3, #4]
    15ac:	e51b2010 	ldr	r2, [fp, #-16]
    15b0:	e1520003 	cmp	r2, r3
    15b4:	8a00001e 	bhi	1634 <malloc+0x108>
    15b8:	e51b3008 	ldr	r3, [fp, #-8]
    15bc:	e5933004 	ldr	r3, [r3, #4]
    15c0:	e51b2010 	ldr	r2, [fp, #-16]
    15c4:	e1520003 	cmp	r2, r3
    15c8:	1a000004 	bne	15e0 <malloc+0xb4>
    15cc:	e51b3008 	ldr	r3, [fp, #-8]
    15d0:	e5932000 	ldr	r2, [r3]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e5832000 	str	r2, [r3]
    15dc:	ea00000e 	b	161c <malloc+0xf0>
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5932004 	ldr	r2, [r3, #4]
    15e8:	e51b3010 	ldr	r3, [fp, #-16]
    15ec:	e0422003 	sub	r2, r2, r3
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e5832004 	str	r2, [r3, #4]
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e5933004 	ldr	r3, [r3, #4]
    1600:	e1a03183 	lsl	r3, r3, #3
    1604:	e51b2008 	ldr	r2, [fp, #-8]
    1608:	e0823003 	add	r3, r2, r3
    160c:	e50b3008 	str	r3, [fp, #-8]
    1610:	e51b3008 	ldr	r3, [fp, #-8]
    1614:	e51b2010 	ldr	r2, [fp, #-16]
    1618:	e5832004 	str	r2, [r3, #4]
    161c:	e59f2068 	ldr	r2, [pc, #104]	@ 168c <malloc+0x160>
    1620:	e51b300c 	ldr	r3, [fp, #-12]
    1624:	e5823000 	str	r3, [r2]
    1628:	e51b3008 	ldr	r3, [fp, #-8]
    162c:	e2833008 	add	r3, r3, #8
    1630:	ea000012 	b	1680 <malloc+0x154>
    1634:	e59f3050 	ldr	r3, [pc, #80]	@ 168c <malloc+0x160>
    1638:	e5933000 	ldr	r3, [r3]
    163c:	e51b2008 	ldr	r2, [fp, #-8]
    1640:	e1520003 	cmp	r2, r3
    1644:	1a000007 	bne	1668 <malloc+0x13c>
    1648:	e51b0010 	ldr	r0, [fp, #-16]
    164c:	ebffff94 	bl	14a4 <morecore>
    1650:	e50b0008 	str	r0, [fp, #-8]
    1654:	e51b3008 	ldr	r3, [fp, #-8]
    1658:	e3530000 	cmp	r3, #0
    165c:	1a000001 	bne	1668 <malloc+0x13c>
    1660:	e3a03000 	mov	r3, #0
    1664:	ea000005 	b	1680 <malloc+0x154>
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e50b300c 	str	r3, [fp, #-12]
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5933000 	ldr	r3, [r3]
    1678:	e50b3008 	str	r3, [fp, #-8]
    167c:	eaffffc8 	b	15a4 <malloc+0x78>
    1680:	e1a00003 	mov	r0, r3
    1684:	e24bd004 	sub	sp, fp, #4
    1688:	e8bd8800 	pop	{fp, pc}
    168c:	000018f8 	.word	0x000018f8
    1690:	000018f0 	.word	0x000018f0

00001694 <__udivsi3>:
    1694:	e2512001 	subs	r2, r1, #1
    1698:	012fff1e 	bxeq	lr
    169c:	3a000036 	bcc	177c <__udivsi3+0xe8>
    16a0:	e1500001 	cmp	r0, r1
    16a4:	9a000022 	bls	1734 <__udivsi3+0xa0>
    16a8:	e1110002 	tst	r1, r2
    16ac:	0a000023 	beq	1740 <__udivsi3+0xac>
    16b0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    16b4:	01a01181 	lsleq	r1, r1, #3
    16b8:	03a03008 	moveq	r3, #8
    16bc:	13a03001 	movne	r3, #1
    16c0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    16c4:	31510000 	cmpcc	r1, r0
    16c8:	31a01201 	lslcc	r1, r1, #4
    16cc:	31a03203 	lslcc	r3, r3, #4
    16d0:	3afffffa 	bcc	16c0 <__udivsi3+0x2c>
    16d4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    16d8:	31510000 	cmpcc	r1, r0
    16dc:	31a01081 	lslcc	r1, r1, #1
    16e0:	31a03083 	lslcc	r3, r3, #1
    16e4:	3afffffa 	bcc	16d4 <__udivsi3+0x40>
    16e8:	e3a02000 	mov	r2, #0
    16ec:	e1500001 	cmp	r0, r1
    16f0:	20400001 	subcs	r0, r0, r1
    16f4:	21822003 	orrcs	r2, r2, r3
    16f8:	e15000a1 	cmp	r0, r1, lsr #1
    16fc:	204000a1 	subcs	r0, r0, r1, lsr #1
    1700:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1704:	e1500121 	cmp	r0, r1, lsr #2
    1708:	20400121 	subcs	r0, r0, r1, lsr #2
    170c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1710:	e15001a1 	cmp	r0, r1, lsr #3
    1714:	204001a1 	subcs	r0, r0, r1, lsr #3
    1718:	218221a3 	orrcs	r2, r2, r3, lsr #3
    171c:	e3500000 	cmp	r0, #0
    1720:	11b03223 	lsrsne	r3, r3, #4
    1724:	11a01221 	lsrne	r1, r1, #4
    1728:	1affffef 	bne	16ec <__udivsi3+0x58>
    172c:	e1a00002 	mov	r0, r2
    1730:	e12fff1e 	bx	lr
    1734:	03a00001 	moveq	r0, #1
    1738:	13a00000 	movne	r0, #0
    173c:	e12fff1e 	bx	lr
    1740:	e3510801 	cmp	r1, #65536	@ 0x10000
    1744:	21a01821 	lsrcs	r1, r1, #16
    1748:	23a02010 	movcs	r2, #16
    174c:	33a02000 	movcc	r2, #0
    1750:	e3510c01 	cmp	r1, #256	@ 0x100
    1754:	21a01421 	lsrcs	r1, r1, #8
    1758:	22822008 	addcs	r2, r2, #8
    175c:	e3510010 	cmp	r1, #16
    1760:	21a01221 	lsrcs	r1, r1, #4
    1764:	22822004 	addcs	r2, r2, #4
    1768:	e3510004 	cmp	r1, #4
    176c:	82822003 	addhi	r2, r2, #3
    1770:	908220a1 	addls	r2, r2, r1, lsr #1
    1774:	e1a00230 	lsr	r0, r0, r2
    1778:	e12fff1e 	bx	lr
    177c:	e3500000 	cmp	r0, #0
    1780:	13e00000 	mvnne	r0, #0
    1784:	ea000007 	b	17a8 <__aeabi_idiv0>

00001788 <__aeabi_uidivmod>:
    1788:	e3510000 	cmp	r1, #0
    178c:	0afffffa 	beq	177c <__udivsi3+0xe8>
    1790:	e92d4003 	push	{r0, r1, lr}
    1794:	ebffffbe 	bl	1694 <__udivsi3>
    1798:	e8bd4006 	pop	{r1, r2, lr}
    179c:	e0030092 	mul	r3, r2, r0
    17a0:	e0411003 	sub	r1, r1, r3
    17a4:	e12fff1e 	bx	lr

000017a8 <__aeabi_idiv0>:
    17a8:	e12fff1e 	bx	lr
