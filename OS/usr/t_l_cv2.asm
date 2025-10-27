
_t_l_cv2:     file format elf32-littlearm


Disassembly of section .text:

00000000 <toggle1>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e59f007c 	ldr	r0, [pc, #124]	@ 94 <toggle1+0x94>
      14:	eb0001be 	bl	714 <acquireLock>
      18:	e3a03000 	mov	r3, #0
      1c:	e50b3008 	str	r3, [fp, #-8]
      20:	ea000011 	b	6c <toggle1+0x6c>
      24:	e59f1068 	ldr	r1, [pc, #104]	@ 94 <toggle1+0x94>
      28:	e59f0068 	ldr	r0, [pc, #104]	@ 98 <toggle1+0x98>
      2c:	eb0001f6 	bl	80c <condWait>
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e5933000 	ldr	r3, [r3]
      38:	e3530001 	cmp	r3, #1
      3c:	0afffff8 	beq	24 <toggle1+0x24>
      40:	e59f1054 	ldr	r1, [pc, #84]	@ 9c <toggle1+0x9c>
      44:	e3a00001 	mov	r0, #1
      48:	eb00043d 	bl	1144 <printf>
      4c:	e51b3010 	ldr	r3, [fp, #-16]
      50:	e3a02001 	mov	r2, #1
      54:	e5832000 	str	r2, [r3]
      58:	e59f0038 	ldr	r0, [pc, #56]	@ 98 <toggle1+0x98>
      5c:	eb00020b 	bl	890 <broadcast>
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e2833001 	add	r3, r3, #1
      68:	e50b3008 	str	r3, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530009 	cmp	r3, #9
      74:	daffffed 	ble	30 <toggle1+0x30>
      78:	e59f0014 	ldr	r0, [pc, #20]	@ 94 <toggle1+0x94>
      7c:	eb0001bc 	bl	774 <releaseLock>
      80:	eb000382 	bl	e90 <thread_exit>
      84:	e3a03000 	mov	r3, #0
      88:	e1a00003 	mov	r0, r3
      8c:	e24bd004 	sub	sp, fp, #4
      90:	e8bd8800 	pop	{fp, pc}
      94:	00001910 	.word	0x00001910
      98:	00001918 	.word	0x00001918
      9c:	00001800 	.word	0x00001800

000000a0 <toggle2>:
      a0:	e92d4800 	push	{fp, lr}
      a4:	e28db004 	add	fp, sp, #4
      a8:	e24dd010 	sub	sp, sp, #16
      ac:	e50b0010 	str	r0, [fp, #-16]
      b0:	e59f007c 	ldr	r0, [pc, #124]	@ 134 <toggle2+0x94>
      b4:	eb000196 	bl	714 <acquireLock>
      b8:	e3a03000 	mov	r3, #0
      bc:	e50b3008 	str	r3, [fp, #-8]
      c0:	ea000011 	b	10c <toggle2+0x6c>
      c4:	e59f1068 	ldr	r1, [pc, #104]	@ 134 <toggle2+0x94>
      c8:	e59f0068 	ldr	r0, [pc, #104]	@ 138 <toggle2+0x98>
      cc:	eb0001ce 	bl	80c <condWait>
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e5933000 	ldr	r3, [r3]
      d8:	e3530000 	cmp	r3, #0
      dc:	0afffff8 	beq	c4 <toggle2+0x24>
      e0:	e59f1054 	ldr	r1, [pc, #84]	@ 13c <toggle2+0x9c>
      e4:	e3a00001 	mov	r0, #1
      e8:	eb000415 	bl	1144 <printf>
      ec:	e51b3010 	ldr	r3, [fp, #-16]
      f0:	e3a02000 	mov	r2, #0
      f4:	e5832000 	str	r2, [r3]
      f8:	e59f0038 	ldr	r0, [pc, #56]	@ 138 <toggle2+0x98>
      fc:	eb0001e3 	bl	890 <broadcast>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e3530009 	cmp	r3, #9
     114:	daffffed 	ble	d0 <toggle2+0x30>
     118:	e59f0014 	ldr	r0, [pc, #20]	@ 134 <toggle2+0x94>
     11c:	eb000194 	bl	774 <releaseLock>
     120:	eb00035a 	bl	e90 <thread_exit>
     124:	e3a03000 	mov	r3, #0
     128:	e1a00003 	mov	r0, r3
     12c:	e24bd004 	sub	sp, fp, #4
     130:	e8bd8800 	pop	{fp, pc}
     134:	00001910 	.word	0x00001910
     138:	00001918 	.word	0x00001918
     13c:	00001810 	.word	0x00001810

00000140 <main>:
     140:	e92d4800 	push	{fp, lr}
     144:	e28db004 	add	fp, sp, #4
     148:	e24dd010 	sub	sp, sp, #16
     14c:	e59f0054 	ldr	r0, [pc, #84]	@ 1a8 <main+0x68>
     150:	eb000161 	bl	6dc <initiateLock>
     154:	e59f0050 	ldr	r0, [pc, #80]	@ 1ac <main+0x6c>
     158:	eb000198 	bl	7c0 <initiateCondVar>
     15c:	e3a03000 	mov	r3, #0
     160:	e50b3008 	str	r3, [fp, #-8]
     164:	e24b2008 	sub	r2, fp, #8
     168:	e24b300c 	sub	r3, fp, #12
     16c:	e59f103c 	ldr	r1, [pc, #60]	@ 1b0 <main+0x70>
     170:	e1a00003 	mov	r0, r3
     174:	eb00033c 	bl	e6c <thread_create>
     178:	e24b2008 	sub	r2, fp, #8
     17c:	e24b3010 	sub	r3, fp, #16
     180:	e59f102c 	ldr	r1, [pc, #44]	@ 1b4 <main+0x74>
     184:	e1a00003 	mov	r0, r3
     188:	eb000337 	bl	e6c <thread_create>
     18c:	e51b300c 	ldr	r3, [fp, #-12]
     190:	e1a00003 	mov	r0, r3
     194:	eb000346 	bl	eb4 <thread_join>
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e1a00003 	mov	r0, r3
     1a0:	eb000343 	bl	eb4 <thread_join>
     1a4:	eb000246 	bl	ac4 <exit>
     1a8:	00001910 	.word	0x00001910
     1ac:	00001918 	.word	0x00001918
     1b0:	00000000 	.word	0x00000000
     1b4:	000000a0 	.word	0x000000a0

000001b8 <xchg>:
     1b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1bc:	e28db000 	add	fp, sp, #0
     1c0:	e24dd014 	sub	sp, sp, #20
     1c4:	e50b0010 	str	r0, [fp, #-16]
     1c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1cc:	e51b1010 	ldr	r1, [fp, #-16]
     1d0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     1d4:	e1912f9f 	ldrex	r2, [r1]
     1d8:	e1813f90 	strex	r3, r0, [r1]
     1dc:	e50b2008 	str	r2, [fp, #-8]
     1e0:	e50b300c 	str	r3, [fp, #-12]
     1e4:	e51b300c 	ldr	r3, [fp, #-12]
     1e8:	e3530000 	cmp	r3, #0
     1ec:	1afffff6 	bne	1cc <xchg+0x14>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e1a00003 	mov	r0, r3
     1f8:	e28bd000 	add	sp, fp, #0
     1fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     200:	e12fff1e 	bx	lr

00000204 <strcpy>:
     204:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     208:	e28db000 	add	fp, sp, #0
     20c:	e24dd014 	sub	sp, sp, #20
     210:	e50b0010 	str	r0, [fp, #-16]
     214:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     218:	e51b3010 	ldr	r3, [fp, #-16]
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e1a00000 	nop			@ (mov r0, r0)
     224:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     228:	e2823001 	add	r3, r2, #1
     22c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     230:	e51b3010 	ldr	r3, [fp, #-16]
     234:	e2831001 	add	r1, r3, #1
     238:	e50b1010 	str	r1, [fp, #-16]
     23c:	e5d22000 	ldrb	r2, [r2]
     240:	e5c32000 	strb	r2, [r3]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e3530000 	cmp	r3, #0
     24c:	1afffff4 	bne	224 <strcpy+0x20>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e1a00003 	mov	r0, r3
     258:	e28bd000 	add	sp, fp, #0
     25c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     260:	e12fff1e 	bx	lr

00000264 <strcmp>:
     264:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     268:	e28db000 	add	fp, sp, #0
     26c:	e24dd00c 	sub	sp, sp, #12
     270:	e50b0008 	str	r0, [fp, #-8]
     274:	e50b100c 	str	r1, [fp, #-12]
     278:	ea000005 	b	294 <strcmp+0x30>
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e2833001 	add	r3, r3, #1
     284:	e50b3008 	str	r3, [fp, #-8]
     288:	e51b300c 	ldr	r3, [fp, #-12]
     28c:	e2833001 	add	r3, r3, #1
     290:	e50b300c 	str	r3, [fp, #-12]
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e3530000 	cmp	r3, #0
     2a0:	0a000005 	beq	2bc <strcmp+0x58>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e5d32000 	ldrb	r2, [r3]
     2ac:	e51b300c 	ldr	r3, [fp, #-12]
     2b0:	e5d33000 	ldrb	r3, [r3]
     2b4:	e1520003 	cmp	r2, r3
     2b8:	0affffef 	beq	27c <strcmp+0x18>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e5d33000 	ldrb	r3, [r3]
     2c4:	e1a02003 	mov	r2, r3
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e0423003 	sub	r3, r2, r3
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strlen>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd014 	sub	sp, sp, #20
     2f0:	e50b0010 	str	r0, [fp, #-16]
     2f4:	e3a03000 	mov	r3, #0
     2f8:	e50b3008 	str	r3, [fp, #-8]
     2fc:	ea000002 	b	30c <strlen+0x28>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e2833001 	add	r3, r3, #1
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e51b2010 	ldr	r2, [fp, #-16]
     314:	e0823003 	add	r3, r2, r3
     318:	e5d33000 	ldrb	r3, [r3]
     31c:	e3530000 	cmp	r3, #0
     320:	1afffff6 	bne	300 <strlen+0x1c>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e1a00003 	mov	r0, r3
     32c:	e28bd000 	add	sp, fp, #0
     330:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     334:	e12fff1e 	bx	lr

00000338 <memset>:
     338:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     33c:	e28db000 	add	fp, sp, #0
     340:	e24dd024 	sub	sp, sp, #36	@ 0x24
     344:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     348:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     34c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     350:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     354:	e50b3008 	str	r3, [fp, #-8]
     358:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     35c:	e54b300d 	strb	r3, [fp, #-13]
     360:	e55b200d 	ldrb	r2, [fp, #-13]
     364:	e1a03002 	mov	r3, r2
     368:	e1a03403 	lsl	r3, r3, #8
     36c:	e0833002 	add	r3, r3, r2
     370:	e1a03803 	lsl	r3, r3, #16
     374:	e1a02003 	mov	r2, r3
     378:	e55b300d 	ldrb	r3, [fp, #-13]
     37c:	e1a03403 	lsl	r3, r3, #8
     380:	e1822003 	orr	r2, r2, r3
     384:	e55b300d 	ldrb	r3, [fp, #-13]
     388:	e1823003 	orr	r3, r2, r3
     38c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     390:	ea000008 	b	3b8 <memset+0x80>
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
     3c0:	0a000003 	beq	3d4 <memset+0x9c>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e2033003 	and	r3, r3, #3
     3cc:	e3530000 	cmp	r3, #0
     3d0:	1affffef 	bne	394 <memset+0x5c>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e50b300c 	str	r3, [fp, #-12]
     3dc:	ea000008 	b	404 <memset+0xcc>
     3e0:	e51b300c 	ldr	r3, [fp, #-12]
     3e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3e8:	e5832000 	str	r2, [r3]
     3ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f0:	e2433004 	sub	r3, r3, #4
     3f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e51b300c 	ldr	r3, [fp, #-12]
     3fc:	e2833004 	add	r3, r3, #4
     400:	e50b300c 	str	r3, [fp, #-12]
     404:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     408:	e3530003 	cmp	r3, #3
     40c:	8afffff3 	bhi	3e0 <memset+0xa8>
     410:	e51b300c 	ldr	r3, [fp, #-12]
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	ea000008 	b	440 <memset+0x108>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e55b200d 	ldrb	r2, [fp, #-13]
     424:	e5c32000 	strb	r2, [r3]
     428:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     42c:	e2433001 	sub	r3, r3, #1
     430:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e2833001 	add	r3, r3, #1
     43c:	e50b3008 	str	r3, [fp, #-8]
     440:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     444:	e3530000 	cmp	r3, #0
     448:	1afffff3 	bne	41c <memset+0xe4>
     44c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     450:	e1a00003 	mov	r0, r3
     454:	e28bd000 	add	sp, fp, #0
     458:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     45c:	e12fff1e 	bx	lr

00000460 <strchr>:
     460:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     464:	e28db000 	add	fp, sp, #0
     468:	e24dd00c 	sub	sp, sp, #12
     46c:	e50b0008 	str	r0, [fp, #-8]
     470:	e1a03001 	mov	r3, r1
     474:	e54b3009 	strb	r3, [fp, #-9]
     478:	ea000009 	b	4a4 <strchr+0x44>
     47c:	e51b3008 	ldr	r3, [fp, #-8]
     480:	e5d33000 	ldrb	r3, [r3]
     484:	e55b2009 	ldrb	r2, [fp, #-9]
     488:	e1520003 	cmp	r2, r3
     48c:	1a000001 	bne	498 <strchr+0x38>
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	ea000007 	b	4b8 <strchr+0x58>
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e2833001 	add	r3, r3, #1
     4a0:	e50b3008 	str	r3, [fp, #-8]
     4a4:	e51b3008 	ldr	r3, [fp, #-8]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e3530000 	cmp	r3, #0
     4b0:	1afffff1 	bne	47c <strchr+0x1c>
     4b4:	e3a03000 	mov	r3, #0
     4b8:	e1a00003 	mov	r0, r3
     4bc:	e28bd000 	add	sp, fp, #0
     4c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4c4:	e12fff1e 	bx	lr

000004c8 <gets>:
     4c8:	e92d4800 	push	{fp, lr}
     4cc:	e28db004 	add	fp, sp, #4
     4d0:	e24dd018 	sub	sp, sp, #24
     4d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4dc:	e3a03000 	mov	r3, #0
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	ea000016 	b	544 <gets+0x7c>
     4e8:	e24b300d 	sub	r3, fp, #13
     4ec:	e3a02001 	mov	r2, #1
     4f0:	e1a01003 	mov	r1, r3
     4f4:	e3a00000 	mov	r0, #0
     4f8:	eb00018c 	bl	b30 <read>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b300c 	ldr	r3, [fp, #-12]
     504:	e3530000 	cmp	r3, #0
     508:	da000013 	ble	55c <gets+0x94>
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e2832001 	add	r2, r3, #1
     514:	e50b2008 	str	r2, [fp, #-8]
     518:	e1a02003 	mov	r2, r3
     51c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     520:	e0833002 	add	r3, r3, r2
     524:	e55b200d 	ldrb	r2, [fp, #-13]
     528:	e5c32000 	strb	r2, [r3]
     52c:	e55b300d 	ldrb	r3, [fp, #-13]
     530:	e353000a 	cmp	r3, #10
     534:	0a000009 	beq	560 <gets+0x98>
     538:	e55b300d 	ldrb	r3, [fp, #-13]
     53c:	e353000d 	cmp	r3, #13
     540:	0a000006 	beq	560 <gets+0x98>
     544:	e51b3008 	ldr	r3, [fp, #-8]
     548:	e2833001 	add	r3, r3, #1
     54c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     550:	e1520003 	cmp	r2, r3
     554:	caffffe3 	bgt	4e8 <gets+0x20>
     558:	ea000000 	b	560 <gets+0x98>
     55c:	e1a00000 	nop			@ (mov r0, r0)
     560:	e51b3008 	ldr	r3, [fp, #-8]
     564:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     568:	e0823003 	add	r3, r2, r3
     56c:	e3a02000 	mov	r2, #0
     570:	e5c32000 	strb	r2, [r3]
     574:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     578:	e1a00003 	mov	r0, r3
     57c:	e24bd004 	sub	sp, fp, #4
     580:	e8bd8800 	pop	{fp, pc}

00000584 <stat>:
     584:	e92d4800 	push	{fp, lr}
     588:	e28db004 	add	fp, sp, #4
     58c:	e24dd010 	sub	sp, sp, #16
     590:	e50b0010 	str	r0, [fp, #-16]
     594:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     598:	e3a01000 	mov	r1, #0
     59c:	e51b0010 	ldr	r0, [fp, #-16]
     5a0:	eb00018f 	bl	be4 <open>
     5a4:	e50b0008 	str	r0, [fp, #-8]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e3530000 	cmp	r3, #0
     5b0:	aa000001 	bge	5bc <stat+0x38>
     5b4:	e3e03000 	mvn	r3, #0
     5b8:	ea000006 	b	5d8 <stat+0x54>
     5bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5c0:	e51b0008 	ldr	r0, [fp, #-8]
     5c4:	eb0001a1 	bl	c50 <fstat>
     5c8:	e50b000c 	str	r0, [fp, #-12]
     5cc:	e51b0008 	ldr	r0, [fp, #-8]
     5d0:	eb000168 	bl	b78 <close>
     5d4:	e51b300c 	ldr	r3, [fp, #-12]
     5d8:	e1a00003 	mov	r0, r3
     5dc:	e24bd004 	sub	sp, fp, #4
     5e0:	e8bd8800 	pop	{fp, pc}

000005e4 <atoi>:
     5e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e8:	e28db000 	add	fp, sp, #0
     5ec:	e24dd014 	sub	sp, sp, #20
     5f0:	e50b0010 	str	r0, [fp, #-16]
     5f4:	e3a03000 	mov	r3, #0
     5f8:	e50b3008 	str	r3, [fp, #-8]
     5fc:	ea00000c 	b	634 <atoi+0x50>
     600:	e51b2008 	ldr	r2, [fp, #-8]
     604:	e1a03002 	mov	r3, r2
     608:	e1a03103 	lsl	r3, r3, #2
     60c:	e0833002 	add	r3, r3, r2
     610:	e1a03083 	lsl	r3, r3, #1
     614:	e1a01003 	mov	r1, r3
     618:	e51b3010 	ldr	r3, [fp, #-16]
     61c:	e2832001 	add	r2, r3, #1
     620:	e50b2010 	str	r2, [fp, #-16]
     624:	e5d33000 	ldrb	r3, [r3]
     628:	e0813003 	add	r3, r1, r3
     62c:	e2433030 	sub	r3, r3, #48	@ 0x30
     630:	e50b3008 	str	r3, [fp, #-8]
     634:	e51b3010 	ldr	r3, [fp, #-16]
     638:	e5d33000 	ldrb	r3, [r3]
     63c:	e353002f 	cmp	r3, #47	@ 0x2f
     640:	9a000003 	bls	654 <atoi+0x70>
     644:	e51b3010 	ldr	r3, [fp, #-16]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e3530039 	cmp	r3, #57	@ 0x39
     650:	9affffea 	bls	600 <atoi+0x1c>
     654:	e51b3008 	ldr	r3, [fp, #-8]
     658:	e1a00003 	mov	r0, r3
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <memmove>:
     668:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     66c:	e28db000 	add	fp, sp, #0
     670:	e24dd01c 	sub	sp, sp, #28
     674:	e50b0010 	str	r0, [fp, #-16]
     678:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     67c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     680:	e51b3010 	ldr	r3, [fp, #-16]
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     68c:	e50b300c 	str	r3, [fp, #-12]
     690:	ea000007 	b	6b4 <memmove+0x4c>
     694:	e51b200c 	ldr	r2, [fp, #-12]
     698:	e2823001 	add	r3, r2, #1
     69c:	e50b300c 	str	r3, [fp, #-12]
     6a0:	e51b3008 	ldr	r3, [fp, #-8]
     6a4:	e2831001 	add	r1, r3, #1
     6a8:	e50b1008 	str	r1, [fp, #-8]
     6ac:	e5d22000 	ldrb	r2, [r2]
     6b0:	e5c32000 	strb	r2, [r3]
     6b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b8:	e2432001 	sub	r2, r3, #1
     6bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6c0:	e3530000 	cmp	r3, #0
     6c4:	cafffff2 	bgt	694 <memmove+0x2c>
     6c8:	e51b3010 	ldr	r3, [fp, #-16]
     6cc:	e1a00003 	mov	r0, r3
     6d0:	e28bd000 	add	sp, fp, #0
     6d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6d8:	e12fff1e 	bx	lr

000006dc <initiateLock>:
     6dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6e0:	e28db000 	add	fp, sp, #0
     6e4:	e24dd00c 	sub	sp, sp, #12
     6e8:	e50b0008 	str	r0, [fp, #-8]
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e3a02000 	mov	r2, #0
     6f4:	e5832000 	str	r2, [r3]
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e3a02001 	mov	r2, #1
     700:	e5832004 	str	r2, [r3, #4]
     704:	e1a00000 	nop			@ (mov r0, r0)
     708:	e28bd000 	add	sp, fp, #0
     70c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <acquireLock>:
     714:	e92d4800 	push	{fp, lr}
     718:	e28db004 	add	fp, sp, #4
     71c:	e24dd008 	sub	sp, sp, #8
     720:	e50b0008 	str	r0, [fp, #-8]
     724:	e51b3008 	ldr	r3, [fp, #-8]
     728:	e5933000 	ldr	r3, [r3]
     72c:	e3730001 	cmn	r3, #1
     730:	1a000002 	bne	740 <acquireLock+0x2c>
     734:	e59f1034 	ldr	r1, [pc, #52]	@ 770 <acquireLock+0x5c>
     738:	e3a00002 	mov	r0, #2
     73c:	eb000280 	bl	1144 <printf>
     740:	e1a00000 	nop			@ (mov r0, r0)
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e3a01001 	mov	r1, #1
     74c:	e1a00003 	mov	r0, r3
     750:	ebfffe98 	bl	1b8 <xchg>
     754:	e1a03000 	mov	r3, r0
     758:	e3530000 	cmp	r3, #0
     75c:	1afffff8 	bne	744 <acquireLock+0x30>
     760:	e1a00000 	nop			@ (mov r0, r0)
     764:	e1a00000 	nop			@ (mov r0, r0)
     768:	e24bd004 	sub	sp, fp, #4
     76c:	e8bd8800 	pop	{fp, pc}
     770:	00001820 	.word	0x00001820

00000774 <releaseLock>:
     774:	e92d4800 	push	{fp, lr}
     778:	e28db004 	add	fp, sp, #4
     77c:	e24dd008 	sub	sp, sp, #8
     780:	e50b0008 	str	r0, [fp, #-8]
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e5933000 	ldr	r3, [r3]
     78c:	e3530001 	cmp	r3, #1
     790:	0a000002 	beq	7a0 <releaseLock+0x2c>
     794:	e59f1020 	ldr	r1, [pc, #32]	@ 7bc <releaseLock+0x48>
     798:	e3a00002 	mov	r0, #2
     79c:	eb000268 	bl	1144 <printf>
     7a0:	e51b3008 	ldr	r3, [fp, #-8]
     7a4:	e3a01000 	mov	r1, #0
     7a8:	e1a00003 	mov	r0, r3
     7ac:	ebfffe81 	bl	1b8 <xchg>
     7b0:	e1a00000 	nop			@ (mov r0, r0)
     7b4:	e24bd004 	sub	sp, fp, #4
     7b8:	e8bd8800 	pop	{fp, pc}
     7bc:	00001850 	.word	0x00001850

000007c0 <initiateCondVar>:
     7c0:	e92d4800 	push	{fp, lr}
     7c4:	e28db004 	add	fp, sp, #4
     7c8:	e24dd008 	sub	sp, sp, #8
     7cc:	e50b0008 	str	r0, [fp, #-8]
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e5933004 	ldr	r3, [r3, #4]
     7d8:	e3530000 	cmp	r3, #0
     7dc:	1a000007 	bne	800 <initiateCondVar+0x40>
     7e0:	eb0001e0 	bl	f68 <getChannel>
     7e4:	e1a02000 	mov	r2, r0
     7e8:	e51b3008 	ldr	r3, [fp, #-8]
     7ec:	e5832000 	str	r2, [r3]
     7f0:	e51b3008 	ldr	r3, [fp, #-8]
     7f4:	e3a02001 	mov	r2, #1
     7f8:	e5832004 	str	r2, [r3, #4]
     7fc:	ea000000 	b	804 <initiateCondVar+0x44>
     800:	e1a00000 	nop			@ (mov r0, r0)
     804:	e24bd004 	sub	sp, fp, #4
     808:	e8bd8800 	pop	{fp, pc}

0000080c <condWait>:
     80c:	e92d4800 	push	{fp, lr}
     810:	e28db004 	add	fp, sp, #4
     814:	e24dd008 	sub	sp, sp, #8
     818:	e50b0008 	str	r0, [fp, #-8]
     81c:	e50b100c 	str	r1, [fp, #-12]
     820:	e51b3008 	ldr	r3, [fp, #-8]
     824:	e5933004 	ldr	r3, [r3, #4]
     828:	e3530000 	cmp	r3, #0
     82c:	1a000003 	bne	840 <condWait+0x34>
     830:	e59f1050 	ldr	r1, [pc, #80]	@ 888 <condWait+0x7c>
     834:	e3a00002 	mov	r0, #2
     838:	eb000241 	bl	1144 <printf>
     83c:	ea00000f 	b	880 <condWait+0x74>
     840:	e51b300c 	ldr	r3, [fp, #-12]
     844:	e5933004 	ldr	r3, [r3, #4]
     848:	e3530000 	cmp	r3, #0
     84c:	1a000003 	bne	860 <condWait+0x54>
     850:	e59f1034 	ldr	r1, [pc, #52]	@ 88c <condWait+0x80>
     854:	e3a00002 	mov	r0, #2
     858:	eb000239 	bl	1144 <printf>
     85c:	ea000007 	b	880 <condWait+0x74>
     860:	e51b000c 	ldr	r0, [fp, #-12]
     864:	ebffffc2 	bl	774 <releaseLock>
     868:	e51b3008 	ldr	r3, [fp, #-8]
     86c:	e5933000 	ldr	r3, [r3]
     870:	e1a00003 	mov	r0, r3
     874:	eb0001b2 	bl	f44 <sleepChan>
     878:	e51b000c 	ldr	r0, [fp, #-12]
     87c:	ebffffa4 	bl	714 <acquireLock>
     880:	e24bd004 	sub	sp, fp, #4
     884:	e8bd8800 	pop	{fp, pc}
     888:	0000188c 	.word	0x0000188c
     88c:	000018b0 	.word	0x000018b0

00000890 <broadcast>:
     890:	e92d4800 	push	{fp, lr}
     894:	e28db004 	add	fp, sp, #4
     898:	e24dd008 	sub	sp, sp, #8
     89c:	e50b0008 	str	r0, [fp, #-8]
     8a0:	e51b3008 	ldr	r3, [fp, #-8]
     8a4:	e5933004 	ldr	r3, [r3, #4]
     8a8:	e3530000 	cmp	r3, #0
     8ac:	1a000003 	bne	8c0 <broadcast+0x30>
     8b0:	e59f1020 	ldr	r1, [pc, #32]	@ 8d8 <broadcast+0x48>
     8b4:	e3a00002 	mov	r0, #2
     8b8:	eb000221 	bl	1144 <printf>
     8bc:	ea000003 	b	8d0 <broadcast+0x40>
     8c0:	e51b3008 	ldr	r3, [fp, #-8]
     8c4:	e5933000 	ldr	r3, [r3]
     8c8:	e1a00003 	mov	r0, r3
     8cc:	eb0001ae 	bl	f8c <sigChan>
     8d0:	e24bd004 	sub	sp, fp, #4
     8d4:	e8bd8800 	pop	{fp, pc}
     8d8:	0000188c 	.word	0x0000188c

000008dc <signal>:
     8dc:	e92d4800 	push	{fp, lr}
     8e0:	e28db004 	add	fp, sp, #4
     8e4:	e24dd008 	sub	sp, sp, #8
     8e8:	e50b0008 	str	r0, [fp, #-8]
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5933004 	ldr	r3, [r3, #4]
     8f4:	e3530000 	cmp	r3, #0
     8f8:	1a000003 	bne	90c <signal+0x30>
     8fc:	e59f1020 	ldr	r1, [pc, #32]	@ 924 <signal+0x48>
     900:	e3a00002 	mov	r0, #2
     904:	eb00020e 	bl	1144 <printf>
     908:	ea000003 	b	91c <signal+0x40>
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e5933000 	ldr	r3, [r3]
     914:	e1a00003 	mov	r0, r3
     918:	eb0001a4 	bl	fb0 <sigOneChan>
     91c:	e24bd004 	sub	sp, fp, #4
     920:	e8bd8800 	pop	{fp, pc}
     924:	0000188c 	.word	0x0000188c

00000928 <semInit>:
     928:	e92d4800 	push	{fp, lr}
     92c:	e28db004 	add	fp, sp, #4
     930:	e24dd008 	sub	sp, sp, #8
     934:	e50b0008 	str	r0, [fp, #-8]
     938:	e50b100c 	str	r1, [fp, #-12]
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e51b200c 	ldr	r2, [fp, #-12]
     944:	e5832000 	str	r2, [r3]
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e2833004 	add	r3, r3, #4
     950:	e1a00003 	mov	r0, r3
     954:	ebffff60 	bl	6dc <initiateLock>
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e283300c 	add	r3, r3, #12
     960:	e1a00003 	mov	r0, r3
     964:	ebffff95 	bl	7c0 <initiateCondVar>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e3a02001 	mov	r2, #1
     970:	e5832014 	str	r2, [r3, #20]
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e24bd004 	sub	sp, fp, #4
     97c:	e8bd8800 	pop	{fp, pc}

00000980 <semDown>:
     980:	e92d4800 	push	{fp, lr}
     984:	e28db004 	add	fp, sp, #4
     988:	e24dd008 	sub	sp, sp, #8
     98c:	e50b0008 	str	r0, [fp, #-8]
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e5933014 	ldr	r3, [r3, #20]
     998:	e3530000 	cmp	r3, #0
     99c:	1a000003 	bne	9b0 <semDown+0x30>
     9a0:	e59f1074 	ldr	r1, [pc, #116]	@ a1c <semDown+0x9c>
     9a4:	e3a00002 	mov	r0, #2
     9a8:	eb0001e5 	bl	1144 <printf>
     9ac:	ea000018 	b	a14 <semDown+0x94>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2833004 	add	r3, r3, #4
     9b8:	e1a00003 	mov	r0, r3
     9bc:	ebffff54 	bl	714 <acquireLock>
     9c0:	ea000006 	b	9e0 <semDown+0x60>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e283200c 	add	r2, r3, #12
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e2833004 	add	r3, r3, #4
     9d4:	e1a01003 	mov	r1, r3
     9d8:	e1a00002 	mov	r0, r2
     9dc:	ebffff8a 	bl	80c <condWait>
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e5933000 	ldr	r3, [r3]
     9e8:	e3530000 	cmp	r3, #0
     9ec:	0afffff4 	beq	9c4 <semDown+0x44>
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e5933000 	ldr	r3, [r3]
     9f8:	e2432001 	sub	r2, r3, #1
     9fc:	e51b3008 	ldr	r3, [fp, #-8]
     a00:	e5832000 	str	r2, [r3]
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e2833004 	add	r3, r3, #4
     a0c:	e1a00003 	mov	r0, r3
     a10:	ebffff57 	bl	774 <releaseLock>
     a14:	e24bd004 	sub	sp, fp, #4
     a18:	e8bd8800 	pop	{fp, pc}
     a1c:	000018d0 	.word	0x000018d0

00000a20 <semUp>:
     a20:	e92d4800 	push	{fp, lr}
     a24:	e28db004 	add	fp, sp, #4
     a28:	e24dd008 	sub	sp, sp, #8
     a2c:	e50b0008 	str	r0, [fp, #-8]
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e5933014 	ldr	r3, [r3, #20]
     a38:	e3530000 	cmp	r3, #0
     a3c:	1a000003 	bne	a50 <semUp+0x30>
     a40:	e59f1054 	ldr	r1, [pc, #84]	@ a9c <semUp+0x7c>
     a44:	e3a00002 	mov	r0, #2
     a48:	eb0001bd 	bl	1144 <printf>
     a4c:	ea000010 	b	a94 <semUp+0x74>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e2833004 	add	r3, r3, #4
     a58:	e1a00003 	mov	r0, r3
     a5c:	ebffff2c 	bl	714 <acquireLock>
     a60:	e51b3008 	ldr	r3, [fp, #-8]
     a64:	e5933000 	ldr	r3, [r3]
     a68:	e2832001 	add	r2, r3, #1
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e5832000 	str	r2, [r3]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e283300c 	add	r3, r3, #12
     a7c:	e1a00003 	mov	r0, r3
     a80:	ebffff95 	bl	8dc <signal>
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e2833004 	add	r3, r3, #4
     a8c:	e1a00003 	mov	r0, r3
     a90:	ebffff37 	bl	774 <releaseLock>
     a94:	e24bd004 	sub	sp, fp, #4
     a98:	e8bd8800 	pop	{fp, pc}
     a9c:	000018d0 	.word	0x000018d0

00000aa0 <fork>:
     aa0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa4:	e1a04003 	mov	r4, r3
     aa8:	e1a03002 	mov	r3, r2
     aac:	e1a02001 	mov	r2, r1
     ab0:	e1a01000 	mov	r1, r0
     ab4:	e3a00001 	mov	r0, #1
     ab8:	ef000000 	svc	0x00000000
     abc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac0:	e12fff1e 	bx	lr

00000ac4 <exit>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00002 	mov	r0, #2
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <wait>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00003 	mov	r0, #3
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <pipe>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00004 	mov	r0, #4
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <read>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00005 	mov	r0, #5
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <write>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00010 	mov	r0, #16
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <close>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00015 	mov	r0, #21
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <kill>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00006 	mov	r0, #6
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <exec>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00007 	mov	r0, #7
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <open>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a0000f 	mov	r0, #15
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <mknod>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a00011 	mov	r0, #17
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <unlink>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00012 	mov	r0, #18
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <fstat>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00008 	mov	r0, #8
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <link>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00013 	mov	r0, #19
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <mkdir>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00014 	mov	r0, #20
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <chdir>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00009 	mov	r0, #9
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <dup>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a0000a 	mov	r0, #10
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <getpid>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a0000b 	mov	r0, #11
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <sbrk>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a0000c 	mov	r0, #12
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <sleep>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a0000d 	mov	r0, #13
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <uptime>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0000e 	mov	r0, #14
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <disproc>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a00016 	mov	r0, #22
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <srand>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00017 	mov	r0, #23
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <setticket>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a00018 	mov	r0, #24
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <getpinfo>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a00019 	mov	r0, #25
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <printPages>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a0001a 	mov	r0, #26
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <kpt>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a0001b 	mov	r0, #27
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <thread_create>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a0001c 	mov	r0, #28
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <thread_exit>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a0001d 	mov	r0, #29
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <thread_join>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a0001e 	mov	r0, #30
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <waitpid>:
     ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     edc:	e1a04003 	mov	r4, r3
     ee0:	e1a03002 	mov	r3, r2
     ee4:	e1a02001 	mov	r2, r1
     ee8:	e1a01000 	mov	r1, r0
     eec:	e3a0001f 	mov	r0, #31
     ef0:	ef000000 	svc	0x00000000
     ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef8:	e12fff1e 	bx	lr

00000efc <barrier_init>:
     efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f00:	e1a04003 	mov	r4, r3
     f04:	e1a03002 	mov	r3, r2
     f08:	e1a02001 	mov	r2, r1
     f0c:	e1a01000 	mov	r1, r0
     f10:	e3a00020 	mov	r0, #32
     f14:	ef000000 	svc	0x00000000
     f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f1c:	e12fff1e 	bx	lr

00000f20 <barrier_check>:
     f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f24:	e1a04003 	mov	r4, r3
     f28:	e1a03002 	mov	r3, r2
     f2c:	e1a02001 	mov	r2, r1
     f30:	e1a01000 	mov	r1, r0
     f34:	e3a00021 	mov	r0, #33	@ 0x21
     f38:	ef000000 	svc	0x00000000
     f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f40:	e12fff1e 	bx	lr

00000f44 <sleepChan>:
     f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f48:	e1a04003 	mov	r4, r3
     f4c:	e1a03002 	mov	r3, r2
     f50:	e1a02001 	mov	r2, r1
     f54:	e1a01000 	mov	r1, r0
     f58:	e3a00022 	mov	r0, #34	@ 0x22
     f5c:	ef000000 	svc	0x00000000
     f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f64:	e12fff1e 	bx	lr

00000f68 <getChannel>:
     f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f6c:	e1a04003 	mov	r4, r3
     f70:	e1a03002 	mov	r3, r2
     f74:	e1a02001 	mov	r2, r1
     f78:	e1a01000 	mov	r1, r0
     f7c:	e3a00023 	mov	r0, #35	@ 0x23
     f80:	ef000000 	svc	0x00000000
     f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f88:	e12fff1e 	bx	lr

00000f8c <sigChan>:
     f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f90:	e1a04003 	mov	r4, r3
     f94:	e1a03002 	mov	r3, r2
     f98:	e1a02001 	mov	r2, r1
     f9c:	e1a01000 	mov	r1, r0
     fa0:	e3a00024 	mov	r0, #36	@ 0x24
     fa4:	ef000000 	svc	0x00000000
     fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fac:	e12fff1e 	bx	lr

00000fb0 <sigOneChan>:
     fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb4:	e1a04003 	mov	r4, r3
     fb8:	e1a03002 	mov	r3, r2
     fbc:	e1a02001 	mov	r2, r1
     fc0:	e1a01000 	mov	r1, r0
     fc4:	e3a00025 	mov	r0, #37	@ 0x25
     fc8:	ef000000 	svc	0x00000000
     fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd0:	e12fff1e 	bx	lr

00000fd4 <putc>:
     fd4:	e92d4800 	push	{fp, lr}
     fd8:	e28db004 	add	fp, sp, #4
     fdc:	e24dd008 	sub	sp, sp, #8
     fe0:	e50b0008 	str	r0, [fp, #-8]
     fe4:	e1a03001 	mov	r3, r1
     fe8:	e54b3009 	strb	r3, [fp, #-9]
     fec:	e24b3009 	sub	r3, fp, #9
     ff0:	e3a02001 	mov	r2, #1
     ff4:	e1a01003 	mov	r1, r3
     ff8:	e51b0008 	ldr	r0, [fp, #-8]
     ffc:	ebfffed4 	bl	b54 <write>
    1000:	e1a00000 	nop			@ (mov r0, r0)
    1004:	e24bd004 	sub	sp, fp, #4
    1008:	e8bd8800 	pop	{fp, pc}

0000100c <printint>:
    100c:	e92d4800 	push	{fp, lr}
    1010:	e28db004 	add	fp, sp, #4
    1014:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1018:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    101c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1020:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1024:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1028:	e3a03000 	mov	r3, #0
    102c:	e50b300c 	str	r3, [fp, #-12]
    1030:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1034:	e3530000 	cmp	r3, #0
    1038:	0a000008 	beq	1060 <printint+0x54>
    103c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1040:	e3530000 	cmp	r3, #0
    1044:	aa000005 	bge	1060 <printint+0x54>
    1048:	e3a03001 	mov	r3, #1
    104c:	e50b300c 	str	r3, [fp, #-12]
    1050:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1054:	e2633000 	rsb	r3, r3, #0
    1058:	e50b3010 	str	r3, [fp, #-16]
    105c:	ea000001 	b	1068 <printint+0x5c>
    1060:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1064:	e50b3010 	str	r3, [fp, #-16]
    1068:	e3a03000 	mov	r3, #0
    106c:	e50b3008 	str	r3, [fp, #-8]
    1070:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1074:	e51b3010 	ldr	r3, [fp, #-16]
    1078:	e1a01002 	mov	r1, r2
    107c:	e1a00003 	mov	r0, r3
    1080:	eb0001d5 	bl	17dc <__aeabi_uidivmod>
    1084:	e1a03001 	mov	r3, r1
    1088:	e1a01003 	mov	r1, r3
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e2832001 	add	r2, r3, #1
    1094:	e50b2008 	str	r2, [fp, #-8]
    1098:	e59f20a0 	ldr	r2, [pc, #160]	@ 1140 <printint+0x134>
    109c:	e7d22001 	ldrb	r2, [r2, r1]
    10a0:	e2433004 	sub	r3, r3, #4
    10a4:	e083300b 	add	r3, r3, fp
    10a8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10ac:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10b0:	e1a01003 	mov	r1, r3
    10b4:	e51b0010 	ldr	r0, [fp, #-16]
    10b8:	eb00018a 	bl	16e8 <__udivsi3>
    10bc:	e1a03000 	mov	r3, r0
    10c0:	e50b3010 	str	r3, [fp, #-16]
    10c4:	e51b3010 	ldr	r3, [fp, #-16]
    10c8:	e3530000 	cmp	r3, #0
    10cc:	1affffe7 	bne	1070 <printint+0x64>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e3530000 	cmp	r3, #0
    10d8:	0a00000e 	beq	1118 <printint+0x10c>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e2832001 	add	r2, r3, #1
    10e4:	e50b2008 	str	r2, [fp, #-8]
    10e8:	e2433004 	sub	r3, r3, #4
    10ec:	e083300b 	add	r3, r3, fp
    10f0:	e3a0202d 	mov	r2, #45	@ 0x2d
    10f4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10f8:	ea000006 	b	1118 <printint+0x10c>
    10fc:	e24b2020 	sub	r2, fp, #32
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e0823003 	add	r3, r2, r3
    1108:	e5d33000 	ldrb	r3, [r3]
    110c:	e1a01003 	mov	r1, r3
    1110:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1114:	ebffffae 	bl	fd4 <putc>
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e2433001 	sub	r3, r3, #1
    1120:	e50b3008 	str	r3, [fp, #-8]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e3530000 	cmp	r3, #0
    112c:	aafffff2 	bge	10fc <printint+0xf0>
    1130:	e1a00000 	nop			@ (mov r0, r0)
    1134:	e1a00000 	nop			@ (mov r0, r0)
    1138:	e24bd004 	sub	sp, fp, #4
    113c:	e8bd8800 	pop	{fp, pc}
    1140:	000018fc 	.word	0x000018fc

00001144 <printf>:
    1144:	e92d000e 	push	{r1, r2, r3}
    1148:	e92d4800 	push	{fp, lr}
    114c:	e28db004 	add	fp, sp, #4
    1150:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1154:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1158:	e3a03000 	mov	r3, #0
    115c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1160:	e28b3008 	add	r3, fp, #8
    1164:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1168:	e3a03000 	mov	r3, #0
    116c:	e50b3010 	str	r3, [fp, #-16]
    1170:	ea000074 	b	1348 <printf+0x204>
    1174:	e59b2004 	ldr	r2, [fp, #4]
    1178:	e51b3010 	ldr	r3, [fp, #-16]
    117c:	e0823003 	add	r3, r2, r3
    1180:	e5d33000 	ldrb	r3, [r3]
    1184:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1188:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    118c:	e3530000 	cmp	r3, #0
    1190:	1a00000b 	bne	11c4 <printf+0x80>
    1194:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1198:	e3530025 	cmp	r3, #37	@ 0x25
    119c:	1a000002 	bne	11ac <printf+0x68>
    11a0:	e3a03025 	mov	r3, #37	@ 0x25
    11a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11a8:	ea000063 	b	133c <printf+0x1f8>
    11ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11b0:	e6ef3073 	uxtb	r3, r3
    11b4:	e1a01003 	mov	r1, r3
    11b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11bc:	ebffff84 	bl	fd4 <putc>
    11c0:	ea00005d 	b	133c <printf+0x1f8>
    11c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11c8:	e3530025 	cmp	r3, #37	@ 0x25
    11cc:	1a00005a 	bne	133c <printf+0x1f8>
    11d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d4:	e3530064 	cmp	r3, #100	@ 0x64
    11d8:	1a00000a 	bne	1208 <printf+0xc4>
    11dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11e0:	e5933000 	ldr	r3, [r3]
    11e4:	e1a01003 	mov	r1, r3
    11e8:	e3a03001 	mov	r3, #1
    11ec:	e3a0200a 	mov	r2, #10
    11f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11f4:	ebffff84 	bl	100c <printint>
    11f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11fc:	e2833004 	add	r3, r3, #4
    1200:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1204:	ea00004a 	b	1334 <printf+0x1f0>
    1208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    120c:	e3530078 	cmp	r3, #120	@ 0x78
    1210:	0a000002 	beq	1220 <printf+0xdc>
    1214:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1218:	e3530070 	cmp	r3, #112	@ 0x70
    121c:	1a00000a 	bne	124c <printf+0x108>
    1220:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1224:	e5933000 	ldr	r3, [r3]
    1228:	e1a01003 	mov	r1, r3
    122c:	e3a03000 	mov	r3, #0
    1230:	e3a02010 	mov	r2, #16
    1234:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1238:	ebffff73 	bl	100c <printint>
    123c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1240:	e2833004 	add	r3, r3, #4
    1244:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1248:	ea000039 	b	1334 <printf+0x1f0>
    124c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1250:	e3530073 	cmp	r3, #115	@ 0x73
    1254:	1a000018 	bne	12bc <printf+0x178>
    1258:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    125c:	e5933000 	ldr	r3, [r3]
    1260:	e50b300c 	str	r3, [fp, #-12]
    1264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1268:	e2833004 	add	r3, r3, #4
    126c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e3530000 	cmp	r3, #0
    1278:	1a00000a 	bne	12a8 <printf+0x164>
    127c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1378 <printf+0x234>
    1280:	e50b300c 	str	r3, [fp, #-12]
    1284:	ea000007 	b	12a8 <printf+0x164>
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5d33000 	ldrb	r3, [r3]
    1290:	e1a01003 	mov	r1, r3
    1294:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1298:	ebffff4d 	bl	fd4 <putc>
    129c:	e51b300c 	ldr	r3, [fp, #-12]
    12a0:	e2833001 	add	r3, r3, #1
    12a4:	e50b300c 	str	r3, [fp, #-12]
    12a8:	e51b300c 	ldr	r3, [fp, #-12]
    12ac:	e5d33000 	ldrb	r3, [r3]
    12b0:	e3530000 	cmp	r3, #0
    12b4:	1afffff3 	bne	1288 <printf+0x144>
    12b8:	ea00001d 	b	1334 <printf+0x1f0>
    12bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12c0:	e3530063 	cmp	r3, #99	@ 0x63
    12c4:	1a000009 	bne	12f0 <printf+0x1ac>
    12c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e5933000 	ldr	r3, [r3]
    12d0:	e6ef3073 	uxtb	r3, r3
    12d4:	e1a01003 	mov	r1, r3
    12d8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12dc:	ebffff3c 	bl	fd4 <putc>
    12e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e4:	e2833004 	add	r3, r3, #4
    12e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12ec:	ea000010 	b	1334 <printf+0x1f0>
    12f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12f4:	e3530025 	cmp	r3, #37	@ 0x25
    12f8:	1a000005 	bne	1314 <printf+0x1d0>
    12fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1300:	e6ef3073 	uxtb	r3, r3
    1304:	e1a01003 	mov	r1, r3
    1308:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    130c:	ebffff30 	bl	fd4 <putc>
    1310:	ea000007 	b	1334 <printf+0x1f0>
    1314:	e3a01025 	mov	r1, #37	@ 0x25
    1318:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    131c:	ebffff2c 	bl	fd4 <putc>
    1320:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1324:	e6ef3073 	uxtb	r3, r3
    1328:	e1a01003 	mov	r1, r3
    132c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1330:	ebffff27 	bl	fd4 <putc>
    1334:	e3a03000 	mov	r3, #0
    1338:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    133c:	e51b3010 	ldr	r3, [fp, #-16]
    1340:	e2833001 	add	r3, r3, #1
    1344:	e50b3010 	str	r3, [fp, #-16]
    1348:	e59b2004 	ldr	r2, [fp, #4]
    134c:	e51b3010 	ldr	r3, [fp, #-16]
    1350:	e0823003 	add	r3, r2, r3
    1354:	e5d33000 	ldrb	r3, [r3]
    1358:	e3530000 	cmp	r3, #0
    135c:	1affff84 	bne	1174 <printf+0x30>
    1360:	e1a00000 	nop			@ (mov r0, r0)
    1364:	e1a00000 	nop			@ (mov r0, r0)
    1368:	e24bd004 	sub	sp, fp, #4
    136c:	e8bd4800 	pop	{fp, lr}
    1370:	e28dd00c 	add	sp, sp, #12
    1374:	e12fff1e 	bx	lr
    1378:	000018f4 	.word	0x000018f4

0000137c <free>:
    137c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1380:	e28db000 	add	fp, sp, #0
    1384:	e24dd014 	sub	sp, sp, #20
    1388:	e50b0010 	str	r0, [fp, #-16]
    138c:	e51b3010 	ldr	r3, [fp, #-16]
    1390:	e2433008 	sub	r3, r3, #8
    1394:	e50b300c 	str	r3, [fp, #-12]
    1398:	e59f3154 	ldr	r3, [pc, #340]	@ 14f4 <free+0x178>
    139c:	e5933000 	ldr	r3, [r3]
    13a0:	e50b3008 	str	r3, [fp, #-8]
    13a4:	ea000010 	b	13ec <free+0x70>
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e5933000 	ldr	r3, [r3]
    13b0:	e51b2008 	ldr	r2, [fp, #-8]
    13b4:	e1520003 	cmp	r2, r3
    13b8:	3a000008 	bcc	13e0 <free+0x64>
    13bc:	e51b200c 	ldr	r2, [fp, #-12]
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e1520003 	cmp	r2, r3
    13c8:	8a000010 	bhi	1410 <free+0x94>
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e5933000 	ldr	r3, [r3]
    13d4:	e51b200c 	ldr	r2, [fp, #-12]
    13d8:	e1520003 	cmp	r2, r3
    13dc:	3a00000b 	bcc	1410 <free+0x94>
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e5933000 	ldr	r3, [r3]
    13e8:	e50b3008 	str	r3, [fp, #-8]
    13ec:	e51b200c 	ldr	r2, [fp, #-12]
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e1520003 	cmp	r2, r3
    13f8:	9affffea 	bls	13a8 <free+0x2c>
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e51b200c 	ldr	r2, [fp, #-12]
    1408:	e1520003 	cmp	r2, r3
    140c:	2affffe5 	bcs	13a8 <free+0x2c>
    1410:	e51b300c 	ldr	r3, [fp, #-12]
    1414:	e5933004 	ldr	r3, [r3, #4]
    1418:	e1a03183 	lsl	r3, r3, #3
    141c:	e51b200c 	ldr	r2, [fp, #-12]
    1420:	e0822003 	add	r2, r2, r3
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e1520003 	cmp	r2, r3
    1430:	1a00000d 	bne	146c <free+0xf0>
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e5932004 	ldr	r2, [r3, #4]
    143c:	e51b3008 	ldr	r3, [fp, #-8]
    1440:	e5933000 	ldr	r3, [r3]
    1444:	e5933004 	ldr	r3, [r3, #4]
    1448:	e0822003 	add	r2, r2, r3
    144c:	e51b300c 	ldr	r3, [fp, #-12]
    1450:	e5832004 	str	r2, [r3, #4]
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e5933000 	ldr	r3, [r3]
    145c:	e5932000 	ldr	r2, [r3]
    1460:	e51b300c 	ldr	r3, [fp, #-12]
    1464:	e5832000 	str	r2, [r3]
    1468:	ea000003 	b	147c <free+0x100>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5932000 	ldr	r2, [r3]
    1474:	e51b300c 	ldr	r3, [fp, #-12]
    1478:	e5832000 	str	r2, [r3]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e5933004 	ldr	r3, [r3, #4]
    1484:	e1a03183 	lsl	r3, r3, #3
    1488:	e51b2008 	ldr	r2, [fp, #-8]
    148c:	e0823003 	add	r3, r2, r3
    1490:	e51b200c 	ldr	r2, [fp, #-12]
    1494:	e1520003 	cmp	r2, r3
    1498:	1a00000b 	bne	14cc <free+0x150>
    149c:	e51b3008 	ldr	r3, [fp, #-8]
    14a0:	e5932004 	ldr	r2, [r3, #4]
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e0822003 	add	r2, r2, r3
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5832004 	str	r2, [r3, #4]
    14b8:	e51b300c 	ldr	r3, [fp, #-12]
    14bc:	e5932000 	ldr	r2, [r3]
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5832000 	str	r2, [r3]
    14c8:	ea000002 	b	14d8 <free+0x15c>
    14cc:	e51b3008 	ldr	r3, [fp, #-8]
    14d0:	e51b200c 	ldr	r2, [fp, #-12]
    14d4:	e5832000 	str	r2, [r3]
    14d8:	e59f2014 	ldr	r2, [pc, #20]	@ 14f4 <free+0x178>
    14dc:	e51b3008 	ldr	r3, [fp, #-8]
    14e0:	e5823000 	str	r3, [r2]
    14e4:	e1a00000 	nop			@ (mov r0, r0)
    14e8:	e28bd000 	add	sp, fp, #0
    14ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14f0:	e12fff1e 	bx	lr
    14f4:	00001928 	.word	0x00001928

000014f8 <morecore>:
    14f8:	e92d4800 	push	{fp, lr}
    14fc:	e28db004 	add	fp, sp, #4
    1500:	e24dd010 	sub	sp, sp, #16
    1504:	e50b0010 	str	r0, [fp, #-16]
    1508:	e51b3010 	ldr	r3, [fp, #-16]
    150c:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1510:	2a000001 	bcs	151c <morecore+0x24>
    1514:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1518:	e50b3010 	str	r3, [fp, #-16]
    151c:	e51b3010 	ldr	r3, [fp, #-16]
    1520:	e1a03183 	lsl	r3, r3, #3
    1524:	e1a00003 	mov	r0, r3
    1528:	ebfffdfe 	bl	d28 <sbrk>
    152c:	e50b0008 	str	r0, [fp, #-8]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e3730001 	cmn	r3, #1
    1538:	1a000001 	bne	1544 <morecore+0x4c>
    153c:	e3a03000 	mov	r3, #0
    1540:	ea00000a 	b	1570 <morecore+0x78>
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e50b300c 	str	r3, [fp, #-12]
    154c:	e51b300c 	ldr	r3, [fp, #-12]
    1550:	e51b2010 	ldr	r2, [fp, #-16]
    1554:	e5832004 	str	r2, [r3, #4]
    1558:	e51b300c 	ldr	r3, [fp, #-12]
    155c:	e2833008 	add	r3, r3, #8
    1560:	e1a00003 	mov	r0, r3
    1564:	ebffff84 	bl	137c <free>
    1568:	e59f300c 	ldr	r3, [pc, #12]	@ 157c <morecore+0x84>
    156c:	e5933000 	ldr	r3, [r3]
    1570:	e1a00003 	mov	r0, r3
    1574:	e24bd004 	sub	sp, fp, #4
    1578:	e8bd8800 	pop	{fp, pc}
    157c:	00001928 	.word	0x00001928

00001580 <malloc>:
    1580:	e92d4800 	push	{fp, lr}
    1584:	e28db004 	add	fp, sp, #4
    1588:	e24dd018 	sub	sp, sp, #24
    158c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1590:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1594:	e2833007 	add	r3, r3, #7
    1598:	e1a031a3 	lsr	r3, r3, #3
    159c:	e2833001 	add	r3, r3, #1
    15a0:	e50b3010 	str	r3, [fp, #-16]
    15a4:	e59f3134 	ldr	r3, [pc, #308]	@ 16e0 <malloc+0x160>
    15a8:	e5933000 	ldr	r3, [r3]
    15ac:	e50b300c 	str	r3, [fp, #-12]
    15b0:	e51b300c 	ldr	r3, [fp, #-12]
    15b4:	e3530000 	cmp	r3, #0
    15b8:	1a00000b 	bne	15ec <malloc+0x6c>
    15bc:	e59f3120 	ldr	r3, [pc, #288]	@ 16e4 <malloc+0x164>
    15c0:	e50b300c 	str	r3, [fp, #-12]
    15c4:	e59f2114 	ldr	r2, [pc, #276]	@ 16e0 <malloc+0x160>
    15c8:	e51b300c 	ldr	r3, [fp, #-12]
    15cc:	e5823000 	str	r3, [r2]
    15d0:	e59f3108 	ldr	r3, [pc, #264]	@ 16e0 <malloc+0x160>
    15d4:	e5933000 	ldr	r3, [r3]
    15d8:	e59f2104 	ldr	r2, [pc, #260]	@ 16e4 <malloc+0x164>
    15dc:	e5823000 	str	r3, [r2]
    15e0:	e59f30fc 	ldr	r3, [pc, #252]	@ 16e4 <malloc+0x164>
    15e4:	e3a02000 	mov	r2, #0
    15e8:	e5832004 	str	r2, [r3, #4]
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e5933000 	ldr	r3, [r3]
    15f4:	e50b3008 	str	r3, [fp, #-8]
    15f8:	e51b3008 	ldr	r3, [fp, #-8]
    15fc:	e5933004 	ldr	r3, [r3, #4]
    1600:	e51b2010 	ldr	r2, [fp, #-16]
    1604:	e1520003 	cmp	r2, r3
    1608:	8a00001e 	bhi	1688 <malloc+0x108>
    160c:	e51b3008 	ldr	r3, [fp, #-8]
    1610:	e5933004 	ldr	r3, [r3, #4]
    1614:	e51b2010 	ldr	r2, [fp, #-16]
    1618:	e1520003 	cmp	r2, r3
    161c:	1a000004 	bne	1634 <malloc+0xb4>
    1620:	e51b3008 	ldr	r3, [fp, #-8]
    1624:	e5932000 	ldr	r2, [r3]
    1628:	e51b300c 	ldr	r3, [fp, #-12]
    162c:	e5832000 	str	r2, [r3]
    1630:	ea00000e 	b	1670 <malloc+0xf0>
    1634:	e51b3008 	ldr	r3, [fp, #-8]
    1638:	e5932004 	ldr	r2, [r3, #4]
    163c:	e51b3010 	ldr	r3, [fp, #-16]
    1640:	e0422003 	sub	r2, r2, r3
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5832004 	str	r2, [r3, #4]
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e5933004 	ldr	r3, [r3, #4]
    1654:	e1a03183 	lsl	r3, r3, #3
    1658:	e51b2008 	ldr	r2, [fp, #-8]
    165c:	e0823003 	add	r3, r2, r3
    1660:	e50b3008 	str	r3, [fp, #-8]
    1664:	e51b3008 	ldr	r3, [fp, #-8]
    1668:	e51b2010 	ldr	r2, [fp, #-16]
    166c:	e5832004 	str	r2, [r3, #4]
    1670:	e59f2068 	ldr	r2, [pc, #104]	@ 16e0 <malloc+0x160>
    1674:	e51b300c 	ldr	r3, [fp, #-12]
    1678:	e5823000 	str	r3, [r2]
    167c:	e51b3008 	ldr	r3, [fp, #-8]
    1680:	e2833008 	add	r3, r3, #8
    1684:	ea000012 	b	16d4 <malloc+0x154>
    1688:	e59f3050 	ldr	r3, [pc, #80]	@ 16e0 <malloc+0x160>
    168c:	e5933000 	ldr	r3, [r3]
    1690:	e51b2008 	ldr	r2, [fp, #-8]
    1694:	e1520003 	cmp	r2, r3
    1698:	1a000007 	bne	16bc <malloc+0x13c>
    169c:	e51b0010 	ldr	r0, [fp, #-16]
    16a0:	ebffff94 	bl	14f8 <morecore>
    16a4:	e50b0008 	str	r0, [fp, #-8]
    16a8:	e51b3008 	ldr	r3, [fp, #-8]
    16ac:	e3530000 	cmp	r3, #0
    16b0:	1a000001 	bne	16bc <malloc+0x13c>
    16b4:	e3a03000 	mov	r3, #0
    16b8:	ea000005 	b	16d4 <malloc+0x154>
    16bc:	e51b3008 	ldr	r3, [fp, #-8]
    16c0:	e50b300c 	str	r3, [fp, #-12]
    16c4:	e51b3008 	ldr	r3, [fp, #-8]
    16c8:	e5933000 	ldr	r3, [r3]
    16cc:	e50b3008 	str	r3, [fp, #-8]
    16d0:	eaffffc8 	b	15f8 <malloc+0x78>
    16d4:	e1a00003 	mov	r0, r3
    16d8:	e24bd004 	sub	sp, fp, #4
    16dc:	e8bd8800 	pop	{fp, pc}
    16e0:	00001928 	.word	0x00001928
    16e4:	00001920 	.word	0x00001920

000016e8 <__udivsi3>:
    16e8:	e2512001 	subs	r2, r1, #1
    16ec:	012fff1e 	bxeq	lr
    16f0:	3a000036 	bcc	17d0 <__udivsi3+0xe8>
    16f4:	e1500001 	cmp	r0, r1
    16f8:	9a000022 	bls	1788 <__udivsi3+0xa0>
    16fc:	e1110002 	tst	r1, r2
    1700:	0a000023 	beq	1794 <__udivsi3+0xac>
    1704:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1708:	01a01181 	lsleq	r1, r1, #3
    170c:	03a03008 	moveq	r3, #8
    1710:	13a03001 	movne	r3, #1
    1714:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1718:	31510000 	cmpcc	r1, r0
    171c:	31a01201 	lslcc	r1, r1, #4
    1720:	31a03203 	lslcc	r3, r3, #4
    1724:	3afffffa 	bcc	1714 <__udivsi3+0x2c>
    1728:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    172c:	31510000 	cmpcc	r1, r0
    1730:	31a01081 	lslcc	r1, r1, #1
    1734:	31a03083 	lslcc	r3, r3, #1
    1738:	3afffffa 	bcc	1728 <__udivsi3+0x40>
    173c:	e3a02000 	mov	r2, #0
    1740:	e1500001 	cmp	r0, r1
    1744:	20400001 	subcs	r0, r0, r1
    1748:	21822003 	orrcs	r2, r2, r3
    174c:	e15000a1 	cmp	r0, r1, lsr #1
    1750:	204000a1 	subcs	r0, r0, r1, lsr #1
    1754:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1758:	e1500121 	cmp	r0, r1, lsr #2
    175c:	20400121 	subcs	r0, r0, r1, lsr #2
    1760:	21822123 	orrcs	r2, r2, r3, lsr #2
    1764:	e15001a1 	cmp	r0, r1, lsr #3
    1768:	204001a1 	subcs	r0, r0, r1, lsr #3
    176c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1770:	e3500000 	cmp	r0, #0
    1774:	11b03223 	lsrsne	r3, r3, #4
    1778:	11a01221 	lsrne	r1, r1, #4
    177c:	1affffef 	bne	1740 <__udivsi3+0x58>
    1780:	e1a00002 	mov	r0, r2
    1784:	e12fff1e 	bx	lr
    1788:	03a00001 	moveq	r0, #1
    178c:	13a00000 	movne	r0, #0
    1790:	e12fff1e 	bx	lr
    1794:	e3510801 	cmp	r1, #65536	@ 0x10000
    1798:	21a01821 	lsrcs	r1, r1, #16
    179c:	23a02010 	movcs	r2, #16
    17a0:	33a02000 	movcc	r2, #0
    17a4:	e3510c01 	cmp	r1, #256	@ 0x100
    17a8:	21a01421 	lsrcs	r1, r1, #8
    17ac:	22822008 	addcs	r2, r2, #8
    17b0:	e3510010 	cmp	r1, #16
    17b4:	21a01221 	lsrcs	r1, r1, #4
    17b8:	22822004 	addcs	r2, r2, #4
    17bc:	e3510004 	cmp	r1, #4
    17c0:	82822003 	addhi	r2, r2, #3
    17c4:	908220a1 	addls	r2, r2, r1, lsr #1
    17c8:	e1a00230 	lsr	r0, r0, r2
    17cc:	e12fff1e 	bx	lr
    17d0:	e3500000 	cmp	r0, #0
    17d4:	13e00000 	mvnne	r0, #0
    17d8:	ea000007 	b	17fc <__aeabi_idiv0>

000017dc <__aeabi_uidivmod>:
    17dc:	e3510000 	cmp	r1, #0
    17e0:	0afffffa 	beq	17d0 <__udivsi3+0xe8>
    17e4:	e92d4003 	push	{r0, r1, lr}
    17e8:	ebffffbe 	bl	16e8 <__udivsi3>
    17ec:	e8bd4006 	pop	{r1, r2, lr}
    17f0:	e0030092 	mul	r3, r2, r0
    17f4:	e0411003 	sub	r1, r1, r3
    17f8:	e12fff1e 	bx	lr

000017fc <__aeabi_idiv0>:
    17fc:	e12fff1e 	bx	lr
