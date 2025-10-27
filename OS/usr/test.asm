
_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <ugetpid>:
       0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
       4:	e28db000 	add	fp, sp, #0
       8:	e24dd00c 	sub	sp, sp, #12
       c:	e59f3018 	ldr	r3, [pc, #24]	@ 2c <ugetpid+0x2c>
      10:	e50b3008 	str	r3, [fp, #-8]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e5933000 	ldr	r3, [r3]
      1c:	e1a00003 	mov	r0, r3
      20:	e28bd000 	add	sp, fp, #0
      24:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      28:	e12fff1e 	bx	lr
      2c:	0ffff000 	.word	0x0ffff000

00000030 <main>:
      30:	e92d4800 	push	{fp, lr}
      34:	e28db004 	add	fp, sp, #4
      38:	e24dd008 	sub	sp, sp, #8
      3c:	e50b0008 	str	r0, [fp, #-8]
      40:	e50b100c 	str	r1, [fp, #-12]
      44:	eb000017 	bl	a8 <print_pt>
      48:	eb000023 	bl	dc <ugetpid_test>
      4c:	eb000055 	bl	1a8 <print_kpt>
      50:	e59f1008 	ldr	r1, [pc, #8]	@ 60 <main+0x30>
      54:	e3a00001 	mov	r0, #1
      58:	eb000442 	bl	1168 <printf>
      5c:	eb0002a1 	bl	ae8 <exit>
      60:	00001824 	.word	0x00001824

00000064 <err>:
      64:	e92d4810 	push	{r4, fp, lr}
      68:	e28db008 	add	fp, sp, #8
      6c:	e24dd014 	sub	sp, sp, #20
      70:	e50b0010 	str	r0, [fp, #-16]
      74:	e59f3024 	ldr	r3, [pc, #36]	@ a0 <err+0x3c>
      78:	e5934000 	ldr	r4, [r3]
      7c:	eb000329 	bl	d28 <getpid>
      80:	e1a03000 	mov	r3, r0
      84:	e58d3000 	str	r3, [sp]
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e1a02004 	mov	r2, r4
      90:	e59f100c 	ldr	r1, [pc, #12]	@ a4 <err+0x40>
      94:	e3a00001 	mov	r0, #1
      98:	eb000432 	bl	1168 <printf>
      9c:	eb000291 	bl	ae8 <exit>
      a0:	000019e4 	.word	0x000019e4
      a4:	00001848 	.word	0x00001848

000000a8 <print_pt>:
      a8:	e92d4800 	push	{fp, lr}
      ac:	e28db004 	add	fp, sp, #4
      b0:	e59f101c 	ldr	r1, [pc, #28]	@ d4 <print_pt+0x2c>
      b4:	e3a00001 	mov	r0, #1
      b8:	eb00042a 	bl	1168 <printf>
      bc:	eb000361 	bl	e48 <printPages>
      c0:	e59f1010 	ldr	r1, [pc, #16]	@ d8 <print_pt+0x30>
      c4:	e3a00001 	mov	r0, #1
      c8:	eb000426 	bl	1168 <printf>
      cc:	e1a00000 	nop			@ (mov r0, r0)
      d0:	e8bd8800 	pop	{fp, pc}
      d4:	00001868 	.word	0x00001868
      d8:	0000187c 	.word	0x0000187c

000000dc <ugetpid_test>:
      dc:	e92d4810 	push	{r4, fp, lr}
      e0:	e28db008 	add	fp, sp, #8
      e4:	e24dd00c 	sub	sp, sp, #12
      e8:	e59f10a0 	ldr	r1, [pc, #160]	@ 190 <ugetpid_test+0xb4>
      ec:	e3a00001 	mov	r0, #1
      f0:	eb00041c 	bl	1168 <printf>
      f4:	e59f3098 	ldr	r3, [pc, #152]	@ 194 <ugetpid_test+0xb8>
      f8:	e59f2098 	ldr	r2, [pc, #152]	@ 198 <ugetpid_test+0xbc>
      fc:	e5832000 	str	r2, [r3]
     100:	e3a03000 	mov	r3, #0
     104:	e50b3010 	str	r3, [fp, #-16]
     108:	ea000017 	b	16c <ugetpid_test+0x90>
     10c:	eb00026c 	bl	ac4 <fork>
     110:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     114:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     118:	e3530000 	cmp	r3, #0
     11c:	aa000002 	bge	12c <ugetpid_test+0x50>
     120:	e59f0074 	ldr	r0, [pc, #116]	@ 19c <ugetpid_test+0xc0>
     124:	ebffffce 	bl	64 <err>
     128:	ea000012 	b	178 <ugetpid_test+0x9c>
     12c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     130:	e3530000 	cmp	r3, #0
     134:	1a000008 	bne	15c <ugetpid_test+0x80>
     138:	eb0002fa 	bl	d28 <getpid>
     13c:	e1a04000 	mov	r4, r0
     140:	ebffffae 	bl	0 <ugetpid>
     144:	e1a03000 	mov	r3, r0
     148:	e1540003 	cmp	r4, r3
     14c:	0a000001 	beq	158 <ugetpid_test+0x7c>
     150:	e59f0048 	ldr	r0, [pc, #72]	@ 1a0 <ugetpid_test+0xc4>
     154:	ebffffc2 	bl	64 <err>
     158:	eb000262 	bl	ae8 <exit>
     15c:	eb00026a 	bl	b0c <wait>
     160:	e51b3010 	ldr	r3, [fp, #-16]
     164:	e2833001 	add	r3, r3, #1
     168:	e50b3010 	str	r3, [fp, #-16]
     16c:	e51b3010 	ldr	r3, [fp, #-16]
     170:	e353003f 	cmp	r3, #63	@ 0x3f
     174:	daffffe4 	ble	10c <ugetpid_test+0x30>
     178:	e59f1024 	ldr	r1, [pc, #36]	@ 1a4 <ugetpid_test+0xc8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb0003f8 	bl	1168 <printf>
     184:	e1a00000 	nop			@ (mov r0, r0)
     188:	e24bd008 	sub	sp, fp, #8
     18c:	e8bd8810 	pop	{r4, fp, pc}
     190:	0000188c 	.word	0x0000188c
     194:	000019e4 	.word	0x000019e4
     198:	000018a4 	.word	0x000018a4
     19c:	000018b4 	.word	0x000018b4
     1a0:	000018c0 	.word	0x000018c0
     1a4:	000018d0 	.word	0x000018d0

000001a8 <print_kpt>:
     1a8:	e92d4800 	push	{fp, lr}
     1ac:	e28db004 	add	fp, sp, #4
     1b0:	e59f101c 	ldr	r1, [pc, #28]	@ 1d4 <print_kpt+0x2c>
     1b4:	e3a00001 	mov	r0, #1
     1b8:	eb0003ea 	bl	1168 <printf>
     1bc:	eb00032a 	bl	e6c <kpt>
     1c0:	e59f1010 	ldr	r1, [pc, #16]	@ 1d8 <print_kpt+0x30>
     1c4:	e3a00001 	mov	r0, #1
     1c8:	eb0003e6 	bl	1168 <printf>
     1cc:	e1a00000 	nop			@ (mov r0, r0)
     1d0:	e8bd8800 	pop	{fp, pc}
     1d4:	000018e4 	.word	0x000018e4
     1d8:	000018f8 	.word	0x000018f8

000001dc <xchg>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd014 	sub	sp, sp, #20
     1e8:	e50b0010 	str	r0, [fp, #-16]
     1ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1f0:	e51b1010 	ldr	r1, [fp, #-16]
     1f4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     1f8:	e1912f9f 	ldrex	r2, [r1]
     1fc:	e1813f90 	strex	r3, r0, [r1]
     200:	e50b2008 	str	r2, [fp, #-8]
     204:	e50b300c 	str	r3, [fp, #-12]
     208:	e51b300c 	ldr	r3, [fp, #-12]
     20c:	e3530000 	cmp	r3, #0
     210:	1afffff6 	bne	1f0 <xchg+0x14>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e1a00003 	mov	r0, r3
     21c:	e28bd000 	add	sp, fp, #0
     220:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     224:	e12fff1e 	bx	lr

00000228 <strcpy>:
     228:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     22c:	e28db000 	add	fp, sp, #0
     230:	e24dd014 	sub	sp, sp, #20
     234:	e50b0010 	str	r0, [fp, #-16]
     238:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     23c:	e51b3010 	ldr	r3, [fp, #-16]
     240:	e50b3008 	str	r3, [fp, #-8]
     244:	e1a00000 	nop			@ (mov r0, r0)
     248:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     24c:	e2823001 	add	r3, r2, #1
     250:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     254:	e51b3010 	ldr	r3, [fp, #-16]
     258:	e2831001 	add	r1, r3, #1
     25c:	e50b1010 	str	r1, [fp, #-16]
     260:	e5d22000 	ldrb	r2, [r2]
     264:	e5c32000 	strb	r2, [r3]
     268:	e5d33000 	ldrb	r3, [r3]
     26c:	e3530000 	cmp	r3, #0
     270:	1afffff4 	bne	248 <strcpy+0x20>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e1a00003 	mov	r0, r3
     27c:	e28bd000 	add	sp, fp, #0
     280:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     284:	e12fff1e 	bx	lr

00000288 <strcmp>:
     288:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     28c:	e28db000 	add	fp, sp, #0
     290:	e24dd00c 	sub	sp, sp, #12
     294:	e50b0008 	str	r0, [fp, #-8]
     298:	e50b100c 	str	r1, [fp, #-12]
     29c:	ea000005 	b	2b8 <strcmp+0x30>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b300c 	ldr	r3, [fp, #-12]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e50b300c 	str	r3, [fp, #-12]
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e5d33000 	ldrb	r3, [r3]
     2c0:	e3530000 	cmp	r3, #0
     2c4:	0a000005 	beq	2e0 <strcmp+0x58>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e5d32000 	ldrb	r2, [r3]
     2d0:	e51b300c 	ldr	r3, [fp, #-12]
     2d4:	e5d33000 	ldrb	r3, [r3]
     2d8:	e1520003 	cmp	r2, r3
     2dc:	0affffef 	beq	2a0 <strcmp+0x18>
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e5d33000 	ldrb	r3, [r3]
     2e8:	e1a02003 	mov	r2, r3
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e0423003 	sub	r3, r2, r3
     2f8:	e1a00003 	mov	r0, r3
     2fc:	e28bd000 	add	sp, fp, #0
     300:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     304:	e12fff1e 	bx	lr

00000308 <strlen>:
     308:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     30c:	e28db000 	add	fp, sp, #0
     310:	e24dd014 	sub	sp, sp, #20
     314:	e50b0010 	str	r0, [fp, #-16]
     318:	e3a03000 	mov	r3, #0
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	ea000002 	b	330 <strlen+0x28>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e51b2010 	ldr	r2, [fp, #-16]
     338:	e0823003 	add	r3, r2, r3
     33c:	e5d33000 	ldrb	r3, [r3]
     340:	e3530000 	cmp	r3, #0
     344:	1afffff6 	bne	324 <strlen+0x1c>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e1a00003 	mov	r0, r3
     350:	e28bd000 	add	sp, fp, #0
     354:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     358:	e12fff1e 	bx	lr

0000035c <memset>:
     35c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     360:	e28db000 	add	fp, sp, #0
     364:	e24dd024 	sub	sp, sp, #36	@ 0x24
     368:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     36c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     370:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     374:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     378:	e50b3008 	str	r3, [fp, #-8]
     37c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     380:	e54b300d 	strb	r3, [fp, #-13]
     384:	e55b200d 	ldrb	r2, [fp, #-13]
     388:	e1a03002 	mov	r3, r2
     38c:	e1a03403 	lsl	r3, r3, #8
     390:	e0833002 	add	r3, r3, r2
     394:	e1a03803 	lsl	r3, r3, #16
     398:	e1a02003 	mov	r2, r3
     39c:	e55b300d 	ldrb	r3, [fp, #-13]
     3a0:	e1a03403 	lsl	r3, r3, #8
     3a4:	e1822003 	orr	r2, r2, r3
     3a8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ac:	e1823003 	orr	r3, r2, r3
     3b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3b4:	ea000008 	b	3dc <memset+0x80>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e55b200d 	ldrb	r2, [fp, #-13]
     3c0:	e5c32000 	strb	r2, [r3]
     3c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3c8:	e2433001 	sub	r3, r3, #1
     3cc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2833001 	add	r3, r3, #1
     3d8:	e50b3008 	str	r3, [fp, #-8]
     3dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e0:	e3530000 	cmp	r3, #0
     3e4:	0a000003 	beq	3f8 <memset+0x9c>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e2033003 	and	r3, r3, #3
     3f0:	e3530000 	cmp	r3, #0
     3f4:	1affffef 	bne	3b8 <memset+0x5c>
     3f8:	e51b3008 	ldr	r3, [fp, #-8]
     3fc:	e50b300c 	str	r3, [fp, #-12]
     400:	ea000008 	b	428 <memset+0xcc>
     404:	e51b300c 	ldr	r3, [fp, #-12]
     408:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     40c:	e5832000 	str	r2, [r3]
     410:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     414:	e2433004 	sub	r3, r3, #4
     418:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     41c:	e51b300c 	ldr	r3, [fp, #-12]
     420:	e2833004 	add	r3, r3, #4
     424:	e50b300c 	str	r3, [fp, #-12]
     428:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     42c:	e3530003 	cmp	r3, #3
     430:	8afffff3 	bhi	404 <memset+0xa8>
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e50b3008 	str	r3, [fp, #-8]
     43c:	ea000008 	b	464 <memset+0x108>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e55b200d 	ldrb	r2, [fp, #-13]
     448:	e5c32000 	strb	r2, [r3]
     44c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     450:	e2433001 	sub	r3, r3, #1
     454:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e2833001 	add	r3, r3, #1
     460:	e50b3008 	str	r3, [fp, #-8]
     464:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     468:	e3530000 	cmp	r3, #0
     46c:	1afffff3 	bne	440 <memset+0xe4>
     470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     474:	e1a00003 	mov	r0, r3
     478:	e28bd000 	add	sp, fp, #0
     47c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <strchr>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd00c 	sub	sp, sp, #12
     490:	e50b0008 	str	r0, [fp, #-8]
     494:	e1a03001 	mov	r3, r1
     498:	e54b3009 	strb	r3, [fp, #-9]
     49c:	ea000009 	b	4c8 <strchr+0x44>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e5d33000 	ldrb	r3, [r3]
     4a8:	e55b2009 	ldrb	r2, [fp, #-9]
     4ac:	e1520003 	cmp	r2, r3
     4b0:	1a000001 	bne	4bc <strchr+0x38>
     4b4:	e51b3008 	ldr	r3, [fp, #-8]
     4b8:	ea000007 	b	4dc <strchr+0x58>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e50b3008 	str	r3, [fp, #-8]
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530000 	cmp	r3, #0
     4d4:	1afffff1 	bne	4a0 <strchr+0x1c>
     4d8:	e3a03000 	mov	r3, #0
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <gets>:
     4ec:	e92d4800 	push	{fp, lr}
     4f0:	e28db004 	add	fp, sp, #4
     4f4:	e24dd018 	sub	sp, sp, #24
     4f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     500:	e3a03000 	mov	r3, #0
     504:	e50b3008 	str	r3, [fp, #-8]
     508:	ea000016 	b	568 <gets+0x7c>
     50c:	e24b300d 	sub	r3, fp, #13
     510:	e3a02001 	mov	r2, #1
     514:	e1a01003 	mov	r1, r3
     518:	e3a00000 	mov	r0, #0
     51c:	eb00018c 	bl	b54 <read>
     520:	e50b000c 	str	r0, [fp, #-12]
     524:	e51b300c 	ldr	r3, [fp, #-12]
     528:	e3530000 	cmp	r3, #0
     52c:	da000013 	ble	580 <gets+0x94>
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e2832001 	add	r2, r3, #1
     538:	e50b2008 	str	r2, [fp, #-8]
     53c:	e1a02003 	mov	r2, r3
     540:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     544:	e0833002 	add	r3, r3, r2
     548:	e55b200d 	ldrb	r2, [fp, #-13]
     54c:	e5c32000 	strb	r2, [r3]
     550:	e55b300d 	ldrb	r3, [fp, #-13]
     554:	e353000a 	cmp	r3, #10
     558:	0a000009 	beq	584 <gets+0x98>
     55c:	e55b300d 	ldrb	r3, [fp, #-13]
     560:	e353000d 	cmp	r3, #13
     564:	0a000006 	beq	584 <gets+0x98>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e2833001 	add	r3, r3, #1
     570:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     574:	e1520003 	cmp	r2, r3
     578:	caffffe3 	bgt	50c <gets+0x20>
     57c:	ea000000 	b	584 <gets+0x98>
     580:	e1a00000 	nop			@ (mov r0, r0)
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     58c:	e0823003 	add	r3, r2, r3
     590:	e3a02000 	mov	r2, #0
     594:	e5c32000 	strb	r2, [r3]
     598:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     59c:	e1a00003 	mov	r0, r3
     5a0:	e24bd004 	sub	sp, fp, #4
     5a4:	e8bd8800 	pop	{fp, pc}

000005a8 <stat>:
     5a8:	e92d4800 	push	{fp, lr}
     5ac:	e28db004 	add	fp, sp, #4
     5b0:	e24dd010 	sub	sp, sp, #16
     5b4:	e50b0010 	str	r0, [fp, #-16]
     5b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5bc:	e3a01000 	mov	r1, #0
     5c0:	e51b0010 	ldr	r0, [fp, #-16]
     5c4:	eb00018f 	bl	c08 <open>
     5c8:	e50b0008 	str	r0, [fp, #-8]
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e3530000 	cmp	r3, #0
     5d4:	aa000001 	bge	5e0 <stat+0x38>
     5d8:	e3e03000 	mvn	r3, #0
     5dc:	ea000006 	b	5fc <stat+0x54>
     5e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     5e4:	e51b0008 	ldr	r0, [fp, #-8]
     5e8:	eb0001a1 	bl	c74 <fstat>
     5ec:	e50b000c 	str	r0, [fp, #-12]
     5f0:	e51b0008 	ldr	r0, [fp, #-8]
     5f4:	eb000168 	bl	b9c <close>
     5f8:	e51b300c 	ldr	r3, [fp, #-12]
     5fc:	e1a00003 	mov	r0, r3
     600:	e24bd004 	sub	sp, fp, #4
     604:	e8bd8800 	pop	{fp, pc}

00000608 <atoi>:
     608:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     60c:	e28db000 	add	fp, sp, #0
     610:	e24dd014 	sub	sp, sp, #20
     614:	e50b0010 	str	r0, [fp, #-16]
     618:	e3a03000 	mov	r3, #0
     61c:	e50b3008 	str	r3, [fp, #-8]
     620:	ea00000c 	b	658 <atoi+0x50>
     624:	e51b2008 	ldr	r2, [fp, #-8]
     628:	e1a03002 	mov	r3, r2
     62c:	e1a03103 	lsl	r3, r3, #2
     630:	e0833002 	add	r3, r3, r2
     634:	e1a03083 	lsl	r3, r3, #1
     638:	e1a01003 	mov	r1, r3
     63c:	e51b3010 	ldr	r3, [fp, #-16]
     640:	e2832001 	add	r2, r3, #1
     644:	e50b2010 	str	r2, [fp, #-16]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e0813003 	add	r3, r1, r3
     650:	e2433030 	sub	r3, r3, #48	@ 0x30
     654:	e50b3008 	str	r3, [fp, #-8]
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e5d33000 	ldrb	r3, [r3]
     660:	e353002f 	cmp	r3, #47	@ 0x2f
     664:	9a000003 	bls	678 <atoi+0x70>
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e5d33000 	ldrb	r3, [r3]
     670:	e3530039 	cmp	r3, #57	@ 0x39
     674:	9affffea 	bls	624 <atoi+0x1c>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e1a00003 	mov	r0, r3
     680:	e28bd000 	add	sp, fp, #0
     684:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <memmove>:
     68c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     690:	e28db000 	add	fp, sp, #0
     694:	e24dd01c 	sub	sp, sp, #28
     698:	e50b0010 	str	r0, [fp, #-16]
     69c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6a0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6a4:	e51b3010 	ldr	r3, [fp, #-16]
     6a8:	e50b3008 	str	r3, [fp, #-8]
     6ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6b0:	e50b300c 	str	r3, [fp, #-12]
     6b4:	ea000007 	b	6d8 <memmove+0x4c>
     6b8:	e51b200c 	ldr	r2, [fp, #-12]
     6bc:	e2823001 	add	r3, r2, #1
     6c0:	e50b300c 	str	r3, [fp, #-12]
     6c4:	e51b3008 	ldr	r3, [fp, #-8]
     6c8:	e2831001 	add	r1, r3, #1
     6cc:	e50b1008 	str	r1, [fp, #-8]
     6d0:	e5d22000 	ldrb	r2, [r2]
     6d4:	e5c32000 	strb	r2, [r3]
     6d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6dc:	e2432001 	sub	r2, r3, #1
     6e0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6e4:	e3530000 	cmp	r3, #0
     6e8:	cafffff2 	bgt	6b8 <memmove+0x2c>
     6ec:	e51b3010 	ldr	r3, [fp, #-16]
     6f0:	e1a00003 	mov	r0, r3
     6f4:	e28bd000 	add	sp, fp, #0
     6f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6fc:	e12fff1e 	bx	lr

00000700 <initiateLock>:
     700:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     704:	e28db000 	add	fp, sp, #0
     708:	e24dd00c 	sub	sp, sp, #12
     70c:	e50b0008 	str	r0, [fp, #-8]
     710:	e51b3008 	ldr	r3, [fp, #-8]
     714:	e3a02000 	mov	r2, #0
     718:	e5832000 	str	r2, [r3]
     71c:	e51b3008 	ldr	r3, [fp, #-8]
     720:	e3a02001 	mov	r2, #1
     724:	e5832004 	str	r2, [r3, #4]
     728:	e1a00000 	nop			@ (mov r0, r0)
     72c:	e28bd000 	add	sp, fp, #0
     730:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <acquireLock>:
     738:	e92d4800 	push	{fp, lr}
     73c:	e28db004 	add	fp, sp, #4
     740:	e24dd008 	sub	sp, sp, #8
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e5933000 	ldr	r3, [r3]
     750:	e3730001 	cmn	r3, #1
     754:	1a000002 	bne	764 <acquireLock+0x2c>
     758:	e59f1034 	ldr	r1, [pc, #52]	@ 794 <acquireLock+0x5c>
     75c:	e3a00002 	mov	r0, #2
     760:	eb000280 	bl	1168 <printf>
     764:	e1a00000 	nop			@ (mov r0, r0)
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e3a01001 	mov	r1, #1
     770:	e1a00003 	mov	r0, r3
     774:	ebfffe98 	bl	1dc <xchg>
     778:	e1a03000 	mov	r3, r0
     77c:	e3530000 	cmp	r3, #0
     780:	1afffff8 	bne	768 <acquireLock+0x30>
     784:	e1a00000 	nop			@ (mov r0, r0)
     788:	e1a00000 	nop			@ (mov r0, r0)
     78c:	e24bd004 	sub	sp, fp, #4
     790:	e8bd8800 	pop	{fp, pc}
     794:	00001908 	.word	0x00001908

00000798 <releaseLock>:
     798:	e92d4800 	push	{fp, lr}
     79c:	e28db004 	add	fp, sp, #4
     7a0:	e24dd008 	sub	sp, sp, #8
     7a4:	e50b0008 	str	r0, [fp, #-8]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5933000 	ldr	r3, [r3]
     7b0:	e3530001 	cmp	r3, #1
     7b4:	0a000002 	beq	7c4 <releaseLock+0x2c>
     7b8:	e59f1020 	ldr	r1, [pc, #32]	@ 7e0 <releaseLock+0x48>
     7bc:	e3a00002 	mov	r0, #2
     7c0:	eb000268 	bl	1168 <printf>
     7c4:	e51b3008 	ldr	r3, [fp, #-8]
     7c8:	e3a01000 	mov	r1, #0
     7cc:	e1a00003 	mov	r0, r3
     7d0:	ebfffe81 	bl	1dc <xchg>
     7d4:	e1a00000 	nop			@ (mov r0, r0)
     7d8:	e24bd004 	sub	sp, fp, #4
     7dc:	e8bd8800 	pop	{fp, pc}
     7e0:	00001938 	.word	0x00001938

000007e4 <initiateCondVar>:
     7e4:	e92d4800 	push	{fp, lr}
     7e8:	e28db004 	add	fp, sp, #4
     7ec:	e24dd008 	sub	sp, sp, #8
     7f0:	e50b0008 	str	r0, [fp, #-8]
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e5933004 	ldr	r3, [r3, #4]
     7fc:	e3530000 	cmp	r3, #0
     800:	1a000007 	bne	824 <initiateCondVar+0x40>
     804:	eb0001e0 	bl	f8c <getChannel>
     808:	e1a02000 	mov	r2, r0
     80c:	e51b3008 	ldr	r3, [fp, #-8]
     810:	e5832000 	str	r2, [r3]
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e3a02001 	mov	r2, #1
     81c:	e5832004 	str	r2, [r3, #4]
     820:	ea000000 	b	828 <initiateCondVar+0x44>
     824:	e1a00000 	nop			@ (mov r0, r0)
     828:	e24bd004 	sub	sp, fp, #4
     82c:	e8bd8800 	pop	{fp, pc}

00000830 <condWait>:
     830:	e92d4800 	push	{fp, lr}
     834:	e28db004 	add	fp, sp, #4
     838:	e24dd008 	sub	sp, sp, #8
     83c:	e50b0008 	str	r0, [fp, #-8]
     840:	e50b100c 	str	r1, [fp, #-12]
     844:	e51b3008 	ldr	r3, [fp, #-8]
     848:	e5933004 	ldr	r3, [r3, #4]
     84c:	e3530000 	cmp	r3, #0
     850:	1a000003 	bne	864 <condWait+0x34>
     854:	e59f1050 	ldr	r1, [pc, #80]	@ 8ac <condWait+0x7c>
     858:	e3a00002 	mov	r0, #2
     85c:	eb000241 	bl	1168 <printf>
     860:	ea00000f 	b	8a4 <condWait+0x74>
     864:	e51b300c 	ldr	r3, [fp, #-12]
     868:	e5933004 	ldr	r3, [r3, #4]
     86c:	e3530000 	cmp	r3, #0
     870:	1a000003 	bne	884 <condWait+0x54>
     874:	e59f1034 	ldr	r1, [pc, #52]	@ 8b0 <condWait+0x80>
     878:	e3a00002 	mov	r0, #2
     87c:	eb000239 	bl	1168 <printf>
     880:	ea000007 	b	8a4 <condWait+0x74>
     884:	e51b000c 	ldr	r0, [fp, #-12]
     888:	ebffffc2 	bl	798 <releaseLock>
     88c:	e51b3008 	ldr	r3, [fp, #-8]
     890:	e5933000 	ldr	r3, [r3]
     894:	e1a00003 	mov	r0, r3
     898:	eb0001b2 	bl	f68 <sleepChan>
     89c:	e51b000c 	ldr	r0, [fp, #-12]
     8a0:	ebffffa4 	bl	738 <acquireLock>
     8a4:	e24bd004 	sub	sp, fp, #4
     8a8:	e8bd8800 	pop	{fp, pc}
     8ac:	00001974 	.word	0x00001974
     8b0:	00001998 	.word	0x00001998

000008b4 <broadcast>:
     8b4:	e92d4800 	push	{fp, lr}
     8b8:	e28db004 	add	fp, sp, #4
     8bc:	e24dd008 	sub	sp, sp, #8
     8c0:	e50b0008 	str	r0, [fp, #-8]
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e5933004 	ldr	r3, [r3, #4]
     8cc:	e3530000 	cmp	r3, #0
     8d0:	1a000003 	bne	8e4 <broadcast+0x30>
     8d4:	e59f1020 	ldr	r1, [pc, #32]	@ 8fc <broadcast+0x48>
     8d8:	e3a00002 	mov	r0, #2
     8dc:	eb000221 	bl	1168 <printf>
     8e0:	ea000003 	b	8f4 <broadcast+0x40>
     8e4:	e51b3008 	ldr	r3, [fp, #-8]
     8e8:	e5933000 	ldr	r3, [r3]
     8ec:	e1a00003 	mov	r0, r3
     8f0:	eb0001ae 	bl	fb0 <sigChan>
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}
     8fc:	00001974 	.word	0x00001974

00000900 <signal>:
     900:	e92d4800 	push	{fp, lr}
     904:	e28db004 	add	fp, sp, #4
     908:	e24dd008 	sub	sp, sp, #8
     90c:	e50b0008 	str	r0, [fp, #-8]
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5933004 	ldr	r3, [r3, #4]
     918:	e3530000 	cmp	r3, #0
     91c:	1a000003 	bne	930 <signal+0x30>
     920:	e59f1020 	ldr	r1, [pc, #32]	@ 948 <signal+0x48>
     924:	e3a00002 	mov	r0, #2
     928:	eb00020e 	bl	1168 <printf>
     92c:	ea000003 	b	940 <signal+0x40>
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e5933000 	ldr	r3, [r3]
     938:	e1a00003 	mov	r0, r3
     93c:	eb0001a4 	bl	fd4 <sigOneChan>
     940:	e24bd004 	sub	sp, fp, #4
     944:	e8bd8800 	pop	{fp, pc}
     948:	00001974 	.word	0x00001974

0000094c <semInit>:
     94c:	e92d4800 	push	{fp, lr}
     950:	e28db004 	add	fp, sp, #4
     954:	e24dd008 	sub	sp, sp, #8
     958:	e50b0008 	str	r0, [fp, #-8]
     95c:	e50b100c 	str	r1, [fp, #-12]
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e51b200c 	ldr	r2, [fp, #-12]
     968:	e5832000 	str	r2, [r3]
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e2833004 	add	r3, r3, #4
     974:	e1a00003 	mov	r0, r3
     978:	ebffff60 	bl	700 <initiateLock>
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e283300c 	add	r3, r3, #12
     984:	e1a00003 	mov	r0, r3
     988:	ebffff95 	bl	7e4 <initiateCondVar>
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e3a02001 	mov	r2, #1
     994:	e5832014 	str	r2, [r3, #20]
     998:	e1a00000 	nop			@ (mov r0, r0)
     99c:	e24bd004 	sub	sp, fp, #4
     9a0:	e8bd8800 	pop	{fp, pc}

000009a4 <semDown>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd008 	sub	sp, sp, #8
     9b0:	e50b0008 	str	r0, [fp, #-8]
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e5933014 	ldr	r3, [r3, #20]
     9bc:	e3530000 	cmp	r3, #0
     9c0:	1a000003 	bne	9d4 <semDown+0x30>
     9c4:	e59f1074 	ldr	r1, [pc, #116]	@ a40 <semDown+0x9c>
     9c8:	e3a00002 	mov	r0, #2
     9cc:	eb0001e5 	bl	1168 <printf>
     9d0:	ea000018 	b	a38 <semDown+0x94>
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e2833004 	add	r3, r3, #4
     9dc:	e1a00003 	mov	r0, r3
     9e0:	ebffff54 	bl	738 <acquireLock>
     9e4:	ea000006 	b	a04 <semDown+0x60>
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e283200c 	add	r2, r3, #12
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e2833004 	add	r3, r3, #4
     9f8:	e1a01003 	mov	r1, r3
     9fc:	e1a00002 	mov	r0, r2
     a00:	ebffff8a 	bl	830 <condWait>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e5933000 	ldr	r3, [r3]
     a0c:	e3530000 	cmp	r3, #0
     a10:	0afffff4 	beq	9e8 <semDown+0x44>
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e5933000 	ldr	r3, [r3]
     a1c:	e2432001 	sub	r2, r3, #1
     a20:	e51b3008 	ldr	r3, [fp, #-8]
     a24:	e5832000 	str	r2, [r3]
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e2833004 	add	r3, r3, #4
     a30:	e1a00003 	mov	r0, r3
     a34:	ebffff57 	bl	798 <releaseLock>
     a38:	e24bd004 	sub	sp, fp, #4
     a3c:	e8bd8800 	pop	{fp, pc}
     a40:	000019b8 	.word	0x000019b8

00000a44 <semUp>:
     a44:	e92d4800 	push	{fp, lr}
     a48:	e28db004 	add	fp, sp, #4
     a4c:	e24dd008 	sub	sp, sp, #8
     a50:	e50b0008 	str	r0, [fp, #-8]
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e5933014 	ldr	r3, [r3, #20]
     a5c:	e3530000 	cmp	r3, #0
     a60:	1a000003 	bne	a74 <semUp+0x30>
     a64:	e59f1054 	ldr	r1, [pc, #84]	@ ac0 <semUp+0x7c>
     a68:	e3a00002 	mov	r0, #2
     a6c:	eb0001bd 	bl	1168 <printf>
     a70:	ea000010 	b	ab8 <semUp+0x74>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2833004 	add	r3, r3, #4
     a7c:	e1a00003 	mov	r0, r3
     a80:	ebffff2c 	bl	738 <acquireLock>
     a84:	e51b3008 	ldr	r3, [fp, #-8]
     a88:	e5933000 	ldr	r3, [r3]
     a8c:	e2832001 	add	r2, r3, #1
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e5832000 	str	r2, [r3]
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e283300c 	add	r3, r3, #12
     aa0:	e1a00003 	mov	r0, r3
     aa4:	ebffff95 	bl	900 <signal>
     aa8:	e51b3008 	ldr	r3, [fp, #-8]
     aac:	e2833004 	add	r3, r3, #4
     ab0:	e1a00003 	mov	r0, r3
     ab4:	ebffff37 	bl	798 <releaseLock>
     ab8:	e24bd004 	sub	sp, fp, #4
     abc:	e8bd8800 	pop	{fp, pc}
     ac0:	000019b8 	.word	0x000019b8

00000ac4 <fork>:
     ac4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac8:	e1a04003 	mov	r4, r3
     acc:	e1a03002 	mov	r3, r2
     ad0:	e1a02001 	mov	r2, r1
     ad4:	e1a01000 	mov	r1, r0
     ad8:	e3a00001 	mov	r0, #1
     adc:	ef000000 	svc	0x00000000
     ae0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae4:	e12fff1e 	bx	lr

00000ae8 <exit>:
     ae8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aec:	e1a04003 	mov	r4, r3
     af0:	e1a03002 	mov	r3, r2
     af4:	e1a02001 	mov	r2, r1
     af8:	e1a01000 	mov	r1, r0
     afc:	e3a00002 	mov	r0, #2
     b00:	ef000000 	svc	0x00000000
     b04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b08:	e12fff1e 	bx	lr

00000b0c <wait>:
     b0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b10:	e1a04003 	mov	r4, r3
     b14:	e1a03002 	mov	r3, r2
     b18:	e1a02001 	mov	r2, r1
     b1c:	e1a01000 	mov	r1, r0
     b20:	e3a00003 	mov	r0, #3
     b24:	ef000000 	svc	0x00000000
     b28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b2c:	e12fff1e 	bx	lr

00000b30 <pipe>:
     b30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b34:	e1a04003 	mov	r4, r3
     b38:	e1a03002 	mov	r3, r2
     b3c:	e1a02001 	mov	r2, r1
     b40:	e1a01000 	mov	r1, r0
     b44:	e3a00004 	mov	r0, #4
     b48:	ef000000 	svc	0x00000000
     b4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b50:	e12fff1e 	bx	lr

00000b54 <read>:
     b54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b58:	e1a04003 	mov	r4, r3
     b5c:	e1a03002 	mov	r3, r2
     b60:	e1a02001 	mov	r2, r1
     b64:	e1a01000 	mov	r1, r0
     b68:	e3a00005 	mov	r0, #5
     b6c:	ef000000 	svc	0x00000000
     b70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b74:	e12fff1e 	bx	lr

00000b78 <write>:
     b78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b7c:	e1a04003 	mov	r4, r3
     b80:	e1a03002 	mov	r3, r2
     b84:	e1a02001 	mov	r2, r1
     b88:	e1a01000 	mov	r1, r0
     b8c:	e3a00010 	mov	r0, #16
     b90:	ef000000 	svc	0x00000000
     b94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b98:	e12fff1e 	bx	lr

00000b9c <close>:
     b9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba0:	e1a04003 	mov	r4, r3
     ba4:	e1a03002 	mov	r3, r2
     ba8:	e1a02001 	mov	r2, r1
     bac:	e1a01000 	mov	r1, r0
     bb0:	e3a00015 	mov	r0, #21
     bb4:	ef000000 	svc	0x00000000
     bb8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bbc:	e12fff1e 	bx	lr

00000bc0 <kill>:
     bc0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc4:	e1a04003 	mov	r4, r3
     bc8:	e1a03002 	mov	r3, r2
     bcc:	e1a02001 	mov	r2, r1
     bd0:	e1a01000 	mov	r1, r0
     bd4:	e3a00006 	mov	r0, #6
     bd8:	ef000000 	svc	0x00000000
     bdc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be0:	e12fff1e 	bx	lr

00000be4 <exec>:
     be4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be8:	e1a04003 	mov	r4, r3
     bec:	e1a03002 	mov	r3, r2
     bf0:	e1a02001 	mov	r2, r1
     bf4:	e1a01000 	mov	r1, r0
     bf8:	e3a00007 	mov	r0, #7
     bfc:	ef000000 	svc	0x00000000
     c00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c04:	e12fff1e 	bx	lr

00000c08 <open>:
     c08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c0c:	e1a04003 	mov	r4, r3
     c10:	e1a03002 	mov	r3, r2
     c14:	e1a02001 	mov	r2, r1
     c18:	e1a01000 	mov	r1, r0
     c1c:	e3a0000f 	mov	r0, #15
     c20:	ef000000 	svc	0x00000000
     c24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c28:	e12fff1e 	bx	lr

00000c2c <mknod>:
     c2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c30:	e1a04003 	mov	r4, r3
     c34:	e1a03002 	mov	r3, r2
     c38:	e1a02001 	mov	r2, r1
     c3c:	e1a01000 	mov	r1, r0
     c40:	e3a00011 	mov	r0, #17
     c44:	ef000000 	svc	0x00000000
     c48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c4c:	e12fff1e 	bx	lr

00000c50 <unlink>:
     c50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c54:	e1a04003 	mov	r4, r3
     c58:	e1a03002 	mov	r3, r2
     c5c:	e1a02001 	mov	r2, r1
     c60:	e1a01000 	mov	r1, r0
     c64:	e3a00012 	mov	r0, #18
     c68:	ef000000 	svc	0x00000000
     c6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c70:	e12fff1e 	bx	lr

00000c74 <fstat>:
     c74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c78:	e1a04003 	mov	r4, r3
     c7c:	e1a03002 	mov	r3, r2
     c80:	e1a02001 	mov	r2, r1
     c84:	e1a01000 	mov	r1, r0
     c88:	e3a00008 	mov	r0, #8
     c8c:	ef000000 	svc	0x00000000
     c90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c94:	e12fff1e 	bx	lr

00000c98 <link>:
     c98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c9c:	e1a04003 	mov	r4, r3
     ca0:	e1a03002 	mov	r3, r2
     ca4:	e1a02001 	mov	r2, r1
     ca8:	e1a01000 	mov	r1, r0
     cac:	e3a00013 	mov	r0, #19
     cb0:	ef000000 	svc	0x00000000
     cb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb8:	e12fff1e 	bx	lr

00000cbc <mkdir>:
     cbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc0:	e1a04003 	mov	r4, r3
     cc4:	e1a03002 	mov	r3, r2
     cc8:	e1a02001 	mov	r2, r1
     ccc:	e1a01000 	mov	r1, r0
     cd0:	e3a00014 	mov	r0, #20
     cd4:	ef000000 	svc	0x00000000
     cd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cdc:	e12fff1e 	bx	lr

00000ce0 <chdir>:
     ce0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce4:	e1a04003 	mov	r4, r3
     ce8:	e1a03002 	mov	r3, r2
     cec:	e1a02001 	mov	r2, r1
     cf0:	e1a01000 	mov	r1, r0
     cf4:	e3a00009 	mov	r0, #9
     cf8:	ef000000 	svc	0x00000000
     cfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d00:	e12fff1e 	bx	lr

00000d04 <dup>:
     d04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d08:	e1a04003 	mov	r4, r3
     d0c:	e1a03002 	mov	r3, r2
     d10:	e1a02001 	mov	r2, r1
     d14:	e1a01000 	mov	r1, r0
     d18:	e3a0000a 	mov	r0, #10
     d1c:	ef000000 	svc	0x00000000
     d20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d24:	e12fff1e 	bx	lr

00000d28 <getpid>:
     d28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d2c:	e1a04003 	mov	r4, r3
     d30:	e1a03002 	mov	r3, r2
     d34:	e1a02001 	mov	r2, r1
     d38:	e1a01000 	mov	r1, r0
     d3c:	e3a0000b 	mov	r0, #11
     d40:	ef000000 	svc	0x00000000
     d44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d48:	e12fff1e 	bx	lr

00000d4c <sbrk>:
     d4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d50:	e1a04003 	mov	r4, r3
     d54:	e1a03002 	mov	r3, r2
     d58:	e1a02001 	mov	r2, r1
     d5c:	e1a01000 	mov	r1, r0
     d60:	e3a0000c 	mov	r0, #12
     d64:	ef000000 	svc	0x00000000
     d68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d6c:	e12fff1e 	bx	lr

00000d70 <sleep>:
     d70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d74:	e1a04003 	mov	r4, r3
     d78:	e1a03002 	mov	r3, r2
     d7c:	e1a02001 	mov	r2, r1
     d80:	e1a01000 	mov	r1, r0
     d84:	e3a0000d 	mov	r0, #13
     d88:	ef000000 	svc	0x00000000
     d8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d90:	e12fff1e 	bx	lr

00000d94 <uptime>:
     d94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d98:	e1a04003 	mov	r4, r3
     d9c:	e1a03002 	mov	r3, r2
     da0:	e1a02001 	mov	r2, r1
     da4:	e1a01000 	mov	r1, r0
     da8:	e3a0000e 	mov	r0, #14
     dac:	ef000000 	svc	0x00000000
     db0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db4:	e12fff1e 	bx	lr

00000db8 <disproc>:
     db8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     dbc:	e1a04003 	mov	r4, r3
     dc0:	e1a03002 	mov	r3, r2
     dc4:	e1a02001 	mov	r2, r1
     dc8:	e1a01000 	mov	r1, r0
     dcc:	e3a00016 	mov	r0, #22
     dd0:	ef000000 	svc	0x00000000
     dd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd8:	e12fff1e 	bx	lr

00000ddc <srand>:
     ddc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     de0:	e1a04003 	mov	r4, r3
     de4:	e1a03002 	mov	r3, r2
     de8:	e1a02001 	mov	r2, r1
     dec:	e1a01000 	mov	r1, r0
     df0:	e3a00017 	mov	r0, #23
     df4:	ef000000 	svc	0x00000000
     df8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dfc:	e12fff1e 	bx	lr

00000e00 <setticket>:
     e00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e04:	e1a04003 	mov	r4, r3
     e08:	e1a03002 	mov	r3, r2
     e0c:	e1a02001 	mov	r2, r1
     e10:	e1a01000 	mov	r1, r0
     e14:	e3a00018 	mov	r0, #24
     e18:	ef000000 	svc	0x00000000
     e1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e20:	e12fff1e 	bx	lr

00000e24 <getpinfo>:
     e24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e28:	e1a04003 	mov	r4, r3
     e2c:	e1a03002 	mov	r3, r2
     e30:	e1a02001 	mov	r2, r1
     e34:	e1a01000 	mov	r1, r0
     e38:	e3a00019 	mov	r0, #25
     e3c:	ef000000 	svc	0x00000000
     e40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e44:	e12fff1e 	bx	lr

00000e48 <printPages>:
     e48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e4c:	e1a04003 	mov	r4, r3
     e50:	e1a03002 	mov	r3, r2
     e54:	e1a02001 	mov	r2, r1
     e58:	e1a01000 	mov	r1, r0
     e5c:	e3a0001a 	mov	r0, #26
     e60:	ef000000 	svc	0x00000000
     e64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e68:	e12fff1e 	bx	lr

00000e6c <kpt>:
     e6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e70:	e1a04003 	mov	r4, r3
     e74:	e1a03002 	mov	r3, r2
     e78:	e1a02001 	mov	r2, r1
     e7c:	e1a01000 	mov	r1, r0
     e80:	e3a0001b 	mov	r0, #27
     e84:	ef000000 	svc	0x00000000
     e88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e8c:	e12fff1e 	bx	lr

00000e90 <thread_create>:
     e90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e94:	e1a04003 	mov	r4, r3
     e98:	e1a03002 	mov	r3, r2
     e9c:	e1a02001 	mov	r2, r1
     ea0:	e1a01000 	mov	r1, r0
     ea4:	e3a0001c 	mov	r0, #28
     ea8:	ef000000 	svc	0x00000000
     eac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eb0:	e12fff1e 	bx	lr

00000eb4 <thread_exit>:
     eb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb8:	e1a04003 	mov	r4, r3
     ebc:	e1a03002 	mov	r3, r2
     ec0:	e1a02001 	mov	r2, r1
     ec4:	e1a01000 	mov	r1, r0
     ec8:	e3a0001d 	mov	r0, #29
     ecc:	ef000000 	svc	0x00000000
     ed0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed4:	e12fff1e 	bx	lr

00000ed8 <thread_join>:
     ed8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     edc:	e1a04003 	mov	r4, r3
     ee0:	e1a03002 	mov	r3, r2
     ee4:	e1a02001 	mov	r2, r1
     ee8:	e1a01000 	mov	r1, r0
     eec:	e3a0001e 	mov	r0, #30
     ef0:	ef000000 	svc	0x00000000
     ef4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef8:	e12fff1e 	bx	lr

00000efc <waitpid>:
     efc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f00:	e1a04003 	mov	r4, r3
     f04:	e1a03002 	mov	r3, r2
     f08:	e1a02001 	mov	r2, r1
     f0c:	e1a01000 	mov	r1, r0
     f10:	e3a0001f 	mov	r0, #31
     f14:	ef000000 	svc	0x00000000
     f18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f1c:	e12fff1e 	bx	lr

00000f20 <barrier_init>:
     f20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f24:	e1a04003 	mov	r4, r3
     f28:	e1a03002 	mov	r3, r2
     f2c:	e1a02001 	mov	r2, r1
     f30:	e1a01000 	mov	r1, r0
     f34:	e3a00020 	mov	r0, #32
     f38:	ef000000 	svc	0x00000000
     f3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f40:	e12fff1e 	bx	lr

00000f44 <barrier_check>:
     f44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f48:	e1a04003 	mov	r4, r3
     f4c:	e1a03002 	mov	r3, r2
     f50:	e1a02001 	mov	r2, r1
     f54:	e1a01000 	mov	r1, r0
     f58:	e3a00021 	mov	r0, #33	@ 0x21
     f5c:	ef000000 	svc	0x00000000
     f60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f64:	e12fff1e 	bx	lr

00000f68 <sleepChan>:
     f68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f6c:	e1a04003 	mov	r4, r3
     f70:	e1a03002 	mov	r3, r2
     f74:	e1a02001 	mov	r2, r1
     f78:	e1a01000 	mov	r1, r0
     f7c:	e3a00022 	mov	r0, #34	@ 0x22
     f80:	ef000000 	svc	0x00000000
     f84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f88:	e12fff1e 	bx	lr

00000f8c <getChannel>:
     f8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f90:	e1a04003 	mov	r4, r3
     f94:	e1a03002 	mov	r3, r2
     f98:	e1a02001 	mov	r2, r1
     f9c:	e1a01000 	mov	r1, r0
     fa0:	e3a00023 	mov	r0, #35	@ 0x23
     fa4:	ef000000 	svc	0x00000000
     fa8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fac:	e12fff1e 	bx	lr

00000fb0 <sigChan>:
     fb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb4:	e1a04003 	mov	r4, r3
     fb8:	e1a03002 	mov	r3, r2
     fbc:	e1a02001 	mov	r2, r1
     fc0:	e1a01000 	mov	r1, r0
     fc4:	e3a00024 	mov	r0, #36	@ 0x24
     fc8:	ef000000 	svc	0x00000000
     fcc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fd0:	e12fff1e 	bx	lr

00000fd4 <sigOneChan>:
     fd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd8:	e1a04003 	mov	r4, r3
     fdc:	e1a03002 	mov	r3, r2
     fe0:	e1a02001 	mov	r2, r1
     fe4:	e1a01000 	mov	r1, r0
     fe8:	e3a00025 	mov	r0, #37	@ 0x25
     fec:	ef000000 	svc	0x00000000
     ff0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff4:	e12fff1e 	bx	lr

00000ff8 <putc>:
     ff8:	e92d4800 	push	{fp, lr}
     ffc:	e28db004 	add	fp, sp, #4
    1000:	e24dd008 	sub	sp, sp, #8
    1004:	e50b0008 	str	r0, [fp, #-8]
    1008:	e1a03001 	mov	r3, r1
    100c:	e54b3009 	strb	r3, [fp, #-9]
    1010:	e24b3009 	sub	r3, fp, #9
    1014:	e3a02001 	mov	r2, #1
    1018:	e1a01003 	mov	r1, r3
    101c:	e51b0008 	ldr	r0, [fp, #-8]
    1020:	ebfffed4 	bl	b78 <write>
    1024:	e1a00000 	nop			@ (mov r0, r0)
    1028:	e24bd004 	sub	sp, fp, #4
    102c:	e8bd8800 	pop	{fp, pc}

00001030 <printint>:
    1030:	e92d4800 	push	{fp, lr}
    1034:	e28db004 	add	fp, sp, #4
    1038:	e24dd030 	sub	sp, sp, #48	@ 0x30
    103c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1040:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1044:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1048:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    104c:	e3a03000 	mov	r3, #0
    1050:	e50b300c 	str	r3, [fp, #-12]
    1054:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1058:	e3530000 	cmp	r3, #0
    105c:	0a000008 	beq	1084 <printint+0x54>
    1060:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1064:	e3530000 	cmp	r3, #0
    1068:	aa000005 	bge	1084 <printint+0x54>
    106c:	e3a03001 	mov	r3, #1
    1070:	e50b300c 	str	r3, [fp, #-12]
    1074:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1078:	e2633000 	rsb	r3, r3, #0
    107c:	e50b3010 	str	r3, [fp, #-16]
    1080:	ea000001 	b	108c <printint+0x5c>
    1084:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1088:	e50b3010 	str	r3, [fp, #-16]
    108c:	e3a03000 	mov	r3, #0
    1090:	e50b3008 	str	r3, [fp, #-8]
    1094:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1098:	e51b3010 	ldr	r3, [fp, #-16]
    109c:	e1a01002 	mov	r1, r2
    10a0:	e1a00003 	mov	r0, r3
    10a4:	eb0001d5 	bl	1800 <__aeabi_uidivmod>
    10a8:	e1a03001 	mov	r3, r1
    10ac:	e1a01003 	mov	r1, r3
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e2832001 	add	r2, r3, #1
    10b8:	e50b2008 	str	r2, [fp, #-8]
    10bc:	e59f20a0 	ldr	r2, [pc, #160]	@ 1164 <printint+0x134>
    10c0:	e7d22001 	ldrb	r2, [r2, r1]
    10c4:	e2433004 	sub	r3, r3, #4
    10c8:	e083300b 	add	r3, r3, fp
    10cc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    10d0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    10d4:	e1a01003 	mov	r1, r3
    10d8:	e51b0010 	ldr	r0, [fp, #-16]
    10dc:	eb00018a 	bl	170c <__udivsi3>
    10e0:	e1a03000 	mov	r3, r0
    10e4:	e50b3010 	str	r3, [fp, #-16]
    10e8:	e51b3010 	ldr	r3, [fp, #-16]
    10ec:	e3530000 	cmp	r3, #0
    10f0:	1affffe7 	bne	1094 <printint+0x64>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e3530000 	cmp	r3, #0
    10fc:	0a00000e 	beq	113c <printint+0x10c>
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e2832001 	add	r2, r3, #1
    1108:	e50b2008 	str	r2, [fp, #-8]
    110c:	e2433004 	sub	r3, r3, #4
    1110:	e083300b 	add	r3, r3, fp
    1114:	e3a0202d 	mov	r2, #45	@ 0x2d
    1118:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    111c:	ea000006 	b	113c <printint+0x10c>
    1120:	e24b2020 	sub	r2, fp, #32
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e0823003 	add	r3, r2, r3
    112c:	e5d33000 	ldrb	r3, [r3]
    1130:	e1a01003 	mov	r1, r3
    1134:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1138:	ebffffae 	bl	ff8 <putc>
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e2433001 	sub	r3, r3, #1
    1144:	e50b3008 	str	r3, [fp, #-8]
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e3530000 	cmp	r3, #0
    1150:	aafffff2 	bge	1120 <printint+0xf0>
    1154:	e1a00000 	nop			@ (mov r0, r0)
    1158:	e1a00000 	nop			@ (mov r0, r0)
    115c:	e24bd004 	sub	sp, fp, #4
    1160:	e8bd8800 	pop	{fp, pc}
    1164:	000019e8 	.word	0x000019e8

00001168 <printf>:
    1168:	e92d000e 	push	{r1, r2, r3}
    116c:	e92d4800 	push	{fp, lr}
    1170:	e28db004 	add	fp, sp, #4
    1174:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1178:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    117c:	e3a03000 	mov	r3, #0
    1180:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1184:	e28b3008 	add	r3, fp, #8
    1188:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    118c:	e3a03000 	mov	r3, #0
    1190:	e50b3010 	str	r3, [fp, #-16]
    1194:	ea000074 	b	136c <printf+0x204>
    1198:	e59b2004 	ldr	r2, [fp, #4]
    119c:	e51b3010 	ldr	r3, [fp, #-16]
    11a0:	e0823003 	add	r3, r2, r3
    11a4:	e5d33000 	ldrb	r3, [r3]
    11a8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    11ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11b0:	e3530000 	cmp	r3, #0
    11b4:	1a00000b 	bne	11e8 <printf+0x80>
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e3530025 	cmp	r3, #37	@ 0x25
    11c0:	1a000002 	bne	11d0 <printf+0x68>
    11c4:	e3a03025 	mov	r3, #37	@ 0x25
    11c8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11cc:	ea000063 	b	1360 <printf+0x1f8>
    11d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11d4:	e6ef3073 	uxtb	r3, r3
    11d8:	e1a01003 	mov	r1, r3
    11dc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    11e0:	ebffff84 	bl	ff8 <putc>
    11e4:	ea00005d 	b	1360 <printf+0x1f8>
    11e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    11ec:	e3530025 	cmp	r3, #37	@ 0x25
    11f0:	1a00005a 	bne	1360 <printf+0x1f8>
    11f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11f8:	e3530064 	cmp	r3, #100	@ 0x64
    11fc:	1a00000a 	bne	122c <printf+0xc4>
    1200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1204:	e5933000 	ldr	r3, [r3]
    1208:	e1a01003 	mov	r1, r3
    120c:	e3a03001 	mov	r3, #1
    1210:	e3a0200a 	mov	r2, #10
    1214:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1218:	ebffff84 	bl	1030 <printint>
    121c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1220:	e2833004 	add	r3, r3, #4
    1224:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1228:	ea00004a 	b	1358 <printf+0x1f0>
    122c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1230:	e3530078 	cmp	r3, #120	@ 0x78
    1234:	0a000002 	beq	1244 <printf+0xdc>
    1238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    123c:	e3530070 	cmp	r3, #112	@ 0x70
    1240:	1a00000a 	bne	1270 <printf+0x108>
    1244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1248:	e5933000 	ldr	r3, [r3]
    124c:	e1a01003 	mov	r1, r3
    1250:	e3a03000 	mov	r3, #0
    1254:	e3a02010 	mov	r2, #16
    1258:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    125c:	ebffff73 	bl	1030 <printint>
    1260:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1264:	e2833004 	add	r3, r3, #4
    1268:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    126c:	ea000039 	b	1358 <printf+0x1f0>
    1270:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1274:	e3530073 	cmp	r3, #115	@ 0x73
    1278:	1a000018 	bne	12e0 <printf+0x178>
    127c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1280:	e5933000 	ldr	r3, [r3]
    1284:	e50b300c 	str	r3, [fp, #-12]
    1288:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    128c:	e2833004 	add	r3, r3, #4
    1290:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e3530000 	cmp	r3, #0
    129c:	1a00000a 	bne	12cc <printf+0x164>
    12a0:	e59f30f4 	ldr	r3, [pc, #244]	@ 139c <printf+0x234>
    12a4:	e50b300c 	str	r3, [fp, #-12]
    12a8:	ea000007 	b	12cc <printf+0x164>
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5d33000 	ldrb	r3, [r3]
    12b4:	e1a01003 	mov	r1, r3
    12b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12bc:	ebffff4d 	bl	ff8 <putc>
    12c0:	e51b300c 	ldr	r3, [fp, #-12]
    12c4:	e2833001 	add	r3, r3, #1
    12c8:	e50b300c 	str	r3, [fp, #-12]
    12cc:	e51b300c 	ldr	r3, [fp, #-12]
    12d0:	e5d33000 	ldrb	r3, [r3]
    12d4:	e3530000 	cmp	r3, #0
    12d8:	1afffff3 	bne	12ac <printf+0x144>
    12dc:	ea00001d 	b	1358 <printf+0x1f0>
    12e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12e4:	e3530063 	cmp	r3, #99	@ 0x63
    12e8:	1a000009 	bne	1314 <printf+0x1ac>
    12ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f0:	e5933000 	ldr	r3, [r3]
    12f4:	e6ef3073 	uxtb	r3, r3
    12f8:	e1a01003 	mov	r1, r3
    12fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1300:	ebffff3c 	bl	ff8 <putc>
    1304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1308:	e2833004 	add	r3, r3, #4
    130c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1310:	ea000010 	b	1358 <printf+0x1f0>
    1314:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1318:	e3530025 	cmp	r3, #37	@ 0x25
    131c:	1a000005 	bne	1338 <printf+0x1d0>
    1320:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1324:	e6ef3073 	uxtb	r3, r3
    1328:	e1a01003 	mov	r1, r3
    132c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1330:	ebffff30 	bl	ff8 <putc>
    1334:	ea000007 	b	1358 <printf+0x1f0>
    1338:	e3a01025 	mov	r1, #37	@ 0x25
    133c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1340:	ebffff2c 	bl	ff8 <putc>
    1344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1348:	e6ef3073 	uxtb	r3, r3
    134c:	e1a01003 	mov	r1, r3
    1350:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1354:	ebffff27 	bl	ff8 <putc>
    1358:	e3a03000 	mov	r3, #0
    135c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1360:	e51b3010 	ldr	r3, [fp, #-16]
    1364:	e2833001 	add	r3, r3, #1
    1368:	e50b3010 	str	r3, [fp, #-16]
    136c:	e59b2004 	ldr	r2, [fp, #4]
    1370:	e51b3010 	ldr	r3, [fp, #-16]
    1374:	e0823003 	add	r3, r2, r3
    1378:	e5d33000 	ldrb	r3, [r3]
    137c:	e3530000 	cmp	r3, #0
    1380:	1affff84 	bne	1198 <printf+0x30>
    1384:	e1a00000 	nop			@ (mov r0, r0)
    1388:	e1a00000 	nop			@ (mov r0, r0)
    138c:	e24bd004 	sub	sp, fp, #4
    1390:	e8bd4800 	pop	{fp, lr}
    1394:	e28dd00c 	add	sp, sp, #12
    1398:	e12fff1e 	bx	lr
    139c:	000019dc 	.word	0x000019dc

000013a0 <free>:
    13a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13a4:	e28db000 	add	fp, sp, #0
    13a8:	e24dd014 	sub	sp, sp, #20
    13ac:	e50b0010 	str	r0, [fp, #-16]
    13b0:	e51b3010 	ldr	r3, [fp, #-16]
    13b4:	e2433008 	sub	r3, r3, #8
    13b8:	e50b300c 	str	r3, [fp, #-12]
    13bc:	e59f3154 	ldr	r3, [pc, #340]	@ 1518 <free+0x178>
    13c0:	e5933000 	ldr	r3, [r3]
    13c4:	e50b3008 	str	r3, [fp, #-8]
    13c8:	ea000010 	b	1410 <free+0x70>
    13cc:	e51b3008 	ldr	r3, [fp, #-8]
    13d0:	e5933000 	ldr	r3, [r3]
    13d4:	e51b2008 	ldr	r2, [fp, #-8]
    13d8:	e1520003 	cmp	r2, r3
    13dc:	3a000008 	bcc	1404 <free+0x64>
    13e0:	e51b200c 	ldr	r2, [fp, #-12]
    13e4:	e51b3008 	ldr	r3, [fp, #-8]
    13e8:	e1520003 	cmp	r2, r3
    13ec:	8a000010 	bhi	1434 <free+0x94>
    13f0:	e51b3008 	ldr	r3, [fp, #-8]
    13f4:	e5933000 	ldr	r3, [r3]
    13f8:	e51b200c 	ldr	r2, [fp, #-12]
    13fc:	e1520003 	cmp	r2, r3
    1400:	3a00000b 	bcc	1434 <free+0x94>
    1404:	e51b3008 	ldr	r3, [fp, #-8]
    1408:	e5933000 	ldr	r3, [r3]
    140c:	e50b3008 	str	r3, [fp, #-8]
    1410:	e51b200c 	ldr	r2, [fp, #-12]
    1414:	e51b3008 	ldr	r3, [fp, #-8]
    1418:	e1520003 	cmp	r2, r3
    141c:	9affffea 	bls	13cc <free+0x2c>
    1420:	e51b3008 	ldr	r3, [fp, #-8]
    1424:	e5933000 	ldr	r3, [r3]
    1428:	e51b200c 	ldr	r2, [fp, #-12]
    142c:	e1520003 	cmp	r2, r3
    1430:	2affffe5 	bcs	13cc <free+0x2c>
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e5933004 	ldr	r3, [r3, #4]
    143c:	e1a03183 	lsl	r3, r3, #3
    1440:	e51b200c 	ldr	r2, [fp, #-12]
    1444:	e0822003 	add	r2, r2, r3
    1448:	e51b3008 	ldr	r3, [fp, #-8]
    144c:	e5933000 	ldr	r3, [r3]
    1450:	e1520003 	cmp	r2, r3
    1454:	1a00000d 	bne	1490 <free+0xf0>
    1458:	e51b300c 	ldr	r3, [fp, #-12]
    145c:	e5932004 	ldr	r2, [r3, #4]
    1460:	e51b3008 	ldr	r3, [fp, #-8]
    1464:	e5933000 	ldr	r3, [r3]
    1468:	e5933004 	ldr	r3, [r3, #4]
    146c:	e0822003 	add	r2, r2, r3
    1470:	e51b300c 	ldr	r3, [fp, #-12]
    1474:	e5832004 	str	r2, [r3, #4]
    1478:	e51b3008 	ldr	r3, [fp, #-8]
    147c:	e5933000 	ldr	r3, [r3]
    1480:	e5932000 	ldr	r2, [r3]
    1484:	e51b300c 	ldr	r3, [fp, #-12]
    1488:	e5832000 	str	r2, [r3]
    148c:	ea000003 	b	14a0 <free+0x100>
    1490:	e51b3008 	ldr	r3, [fp, #-8]
    1494:	e5932000 	ldr	r2, [r3]
    1498:	e51b300c 	ldr	r3, [fp, #-12]
    149c:	e5832000 	str	r2, [r3]
    14a0:	e51b3008 	ldr	r3, [fp, #-8]
    14a4:	e5933004 	ldr	r3, [r3, #4]
    14a8:	e1a03183 	lsl	r3, r3, #3
    14ac:	e51b2008 	ldr	r2, [fp, #-8]
    14b0:	e0823003 	add	r3, r2, r3
    14b4:	e51b200c 	ldr	r2, [fp, #-12]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	1a00000b 	bne	14f0 <free+0x150>
    14c0:	e51b3008 	ldr	r3, [fp, #-8]
    14c4:	e5932004 	ldr	r2, [r3, #4]
    14c8:	e51b300c 	ldr	r3, [fp, #-12]
    14cc:	e5933004 	ldr	r3, [r3, #4]
    14d0:	e0822003 	add	r2, r2, r3
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e5832004 	str	r2, [r3, #4]
    14dc:	e51b300c 	ldr	r3, [fp, #-12]
    14e0:	e5932000 	ldr	r2, [r3]
    14e4:	e51b3008 	ldr	r3, [fp, #-8]
    14e8:	e5832000 	str	r2, [r3]
    14ec:	ea000002 	b	14fc <free+0x15c>
    14f0:	e51b3008 	ldr	r3, [fp, #-8]
    14f4:	e51b200c 	ldr	r2, [fp, #-12]
    14f8:	e5832000 	str	r2, [r3]
    14fc:	e59f2014 	ldr	r2, [pc, #20]	@ 1518 <free+0x178>
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e5823000 	str	r3, [r2]
    1508:	e1a00000 	nop			@ (mov r0, r0)
    150c:	e28bd000 	add	sp, fp, #0
    1510:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1514:	e12fff1e 	bx	lr
    1518:	00001a04 	.word	0x00001a04

0000151c <morecore>:
    151c:	e92d4800 	push	{fp, lr}
    1520:	e28db004 	add	fp, sp, #4
    1524:	e24dd010 	sub	sp, sp, #16
    1528:	e50b0010 	str	r0, [fp, #-16]
    152c:	e51b3010 	ldr	r3, [fp, #-16]
    1530:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1534:	2a000001 	bcs	1540 <morecore+0x24>
    1538:	e3a03a01 	mov	r3, #4096	@ 0x1000
    153c:	e50b3010 	str	r3, [fp, #-16]
    1540:	e51b3010 	ldr	r3, [fp, #-16]
    1544:	e1a03183 	lsl	r3, r3, #3
    1548:	e1a00003 	mov	r0, r3
    154c:	ebfffdfe 	bl	d4c <sbrk>
    1550:	e50b0008 	str	r0, [fp, #-8]
    1554:	e51b3008 	ldr	r3, [fp, #-8]
    1558:	e3730001 	cmn	r3, #1
    155c:	1a000001 	bne	1568 <morecore+0x4c>
    1560:	e3a03000 	mov	r3, #0
    1564:	ea00000a 	b	1594 <morecore+0x78>
    1568:	e51b3008 	ldr	r3, [fp, #-8]
    156c:	e50b300c 	str	r3, [fp, #-12]
    1570:	e51b300c 	ldr	r3, [fp, #-12]
    1574:	e51b2010 	ldr	r2, [fp, #-16]
    1578:	e5832004 	str	r2, [r3, #4]
    157c:	e51b300c 	ldr	r3, [fp, #-12]
    1580:	e2833008 	add	r3, r3, #8
    1584:	e1a00003 	mov	r0, r3
    1588:	ebffff84 	bl	13a0 <free>
    158c:	e59f300c 	ldr	r3, [pc, #12]	@ 15a0 <morecore+0x84>
    1590:	e5933000 	ldr	r3, [r3]
    1594:	e1a00003 	mov	r0, r3
    1598:	e24bd004 	sub	sp, fp, #4
    159c:	e8bd8800 	pop	{fp, pc}
    15a0:	00001a04 	.word	0x00001a04

000015a4 <malloc>:
    15a4:	e92d4800 	push	{fp, lr}
    15a8:	e28db004 	add	fp, sp, #4
    15ac:	e24dd018 	sub	sp, sp, #24
    15b0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    15b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    15b8:	e2833007 	add	r3, r3, #7
    15bc:	e1a031a3 	lsr	r3, r3, #3
    15c0:	e2833001 	add	r3, r3, #1
    15c4:	e50b3010 	str	r3, [fp, #-16]
    15c8:	e59f3134 	ldr	r3, [pc, #308]	@ 1704 <malloc+0x160>
    15cc:	e5933000 	ldr	r3, [r3]
    15d0:	e50b300c 	str	r3, [fp, #-12]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e3530000 	cmp	r3, #0
    15dc:	1a00000b 	bne	1610 <malloc+0x6c>
    15e0:	e59f3120 	ldr	r3, [pc, #288]	@ 1708 <malloc+0x164>
    15e4:	e50b300c 	str	r3, [fp, #-12]
    15e8:	e59f2114 	ldr	r2, [pc, #276]	@ 1704 <malloc+0x160>
    15ec:	e51b300c 	ldr	r3, [fp, #-12]
    15f0:	e5823000 	str	r3, [r2]
    15f4:	e59f3108 	ldr	r3, [pc, #264]	@ 1704 <malloc+0x160>
    15f8:	e5933000 	ldr	r3, [r3]
    15fc:	e59f2104 	ldr	r2, [pc, #260]	@ 1708 <malloc+0x164>
    1600:	e5823000 	str	r3, [r2]
    1604:	e59f30fc 	ldr	r3, [pc, #252]	@ 1708 <malloc+0x164>
    1608:	e3a02000 	mov	r2, #0
    160c:	e5832004 	str	r2, [r3, #4]
    1610:	e51b300c 	ldr	r3, [fp, #-12]
    1614:	e5933000 	ldr	r3, [r3]
    1618:	e50b3008 	str	r3, [fp, #-8]
    161c:	e51b3008 	ldr	r3, [fp, #-8]
    1620:	e5933004 	ldr	r3, [r3, #4]
    1624:	e51b2010 	ldr	r2, [fp, #-16]
    1628:	e1520003 	cmp	r2, r3
    162c:	8a00001e 	bhi	16ac <malloc+0x108>
    1630:	e51b3008 	ldr	r3, [fp, #-8]
    1634:	e5933004 	ldr	r3, [r3, #4]
    1638:	e51b2010 	ldr	r2, [fp, #-16]
    163c:	e1520003 	cmp	r2, r3
    1640:	1a000004 	bne	1658 <malloc+0xb4>
    1644:	e51b3008 	ldr	r3, [fp, #-8]
    1648:	e5932000 	ldr	r2, [r3]
    164c:	e51b300c 	ldr	r3, [fp, #-12]
    1650:	e5832000 	str	r2, [r3]
    1654:	ea00000e 	b	1694 <malloc+0xf0>
    1658:	e51b3008 	ldr	r3, [fp, #-8]
    165c:	e5932004 	ldr	r2, [r3, #4]
    1660:	e51b3010 	ldr	r3, [fp, #-16]
    1664:	e0422003 	sub	r2, r2, r3
    1668:	e51b3008 	ldr	r3, [fp, #-8]
    166c:	e5832004 	str	r2, [r3, #4]
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e5933004 	ldr	r3, [r3, #4]
    1678:	e1a03183 	lsl	r3, r3, #3
    167c:	e51b2008 	ldr	r2, [fp, #-8]
    1680:	e0823003 	add	r3, r2, r3
    1684:	e50b3008 	str	r3, [fp, #-8]
    1688:	e51b3008 	ldr	r3, [fp, #-8]
    168c:	e51b2010 	ldr	r2, [fp, #-16]
    1690:	e5832004 	str	r2, [r3, #4]
    1694:	e59f2068 	ldr	r2, [pc, #104]	@ 1704 <malloc+0x160>
    1698:	e51b300c 	ldr	r3, [fp, #-12]
    169c:	e5823000 	str	r3, [r2]
    16a0:	e51b3008 	ldr	r3, [fp, #-8]
    16a4:	e2833008 	add	r3, r3, #8
    16a8:	ea000012 	b	16f8 <malloc+0x154>
    16ac:	e59f3050 	ldr	r3, [pc, #80]	@ 1704 <malloc+0x160>
    16b0:	e5933000 	ldr	r3, [r3]
    16b4:	e51b2008 	ldr	r2, [fp, #-8]
    16b8:	e1520003 	cmp	r2, r3
    16bc:	1a000007 	bne	16e0 <malloc+0x13c>
    16c0:	e51b0010 	ldr	r0, [fp, #-16]
    16c4:	ebffff94 	bl	151c <morecore>
    16c8:	e50b0008 	str	r0, [fp, #-8]
    16cc:	e51b3008 	ldr	r3, [fp, #-8]
    16d0:	e3530000 	cmp	r3, #0
    16d4:	1a000001 	bne	16e0 <malloc+0x13c>
    16d8:	e3a03000 	mov	r3, #0
    16dc:	ea000005 	b	16f8 <malloc+0x154>
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e50b300c 	str	r3, [fp, #-12]
    16e8:	e51b3008 	ldr	r3, [fp, #-8]
    16ec:	e5933000 	ldr	r3, [r3]
    16f0:	e50b3008 	str	r3, [fp, #-8]
    16f4:	eaffffc8 	b	161c <malloc+0x78>
    16f8:	e1a00003 	mov	r0, r3
    16fc:	e24bd004 	sub	sp, fp, #4
    1700:	e8bd8800 	pop	{fp, pc}
    1704:	00001a04 	.word	0x00001a04
    1708:	000019fc 	.word	0x000019fc

0000170c <__udivsi3>:
    170c:	e2512001 	subs	r2, r1, #1
    1710:	012fff1e 	bxeq	lr
    1714:	3a000036 	bcc	17f4 <__udivsi3+0xe8>
    1718:	e1500001 	cmp	r0, r1
    171c:	9a000022 	bls	17ac <__udivsi3+0xa0>
    1720:	e1110002 	tst	r1, r2
    1724:	0a000023 	beq	17b8 <__udivsi3+0xac>
    1728:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    172c:	01a01181 	lsleq	r1, r1, #3
    1730:	03a03008 	moveq	r3, #8
    1734:	13a03001 	movne	r3, #1
    1738:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    173c:	31510000 	cmpcc	r1, r0
    1740:	31a01201 	lslcc	r1, r1, #4
    1744:	31a03203 	lslcc	r3, r3, #4
    1748:	3afffffa 	bcc	1738 <__udivsi3+0x2c>
    174c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1750:	31510000 	cmpcc	r1, r0
    1754:	31a01081 	lslcc	r1, r1, #1
    1758:	31a03083 	lslcc	r3, r3, #1
    175c:	3afffffa 	bcc	174c <__udivsi3+0x40>
    1760:	e3a02000 	mov	r2, #0
    1764:	e1500001 	cmp	r0, r1
    1768:	20400001 	subcs	r0, r0, r1
    176c:	21822003 	orrcs	r2, r2, r3
    1770:	e15000a1 	cmp	r0, r1, lsr #1
    1774:	204000a1 	subcs	r0, r0, r1, lsr #1
    1778:	218220a3 	orrcs	r2, r2, r3, lsr #1
    177c:	e1500121 	cmp	r0, r1, lsr #2
    1780:	20400121 	subcs	r0, r0, r1, lsr #2
    1784:	21822123 	orrcs	r2, r2, r3, lsr #2
    1788:	e15001a1 	cmp	r0, r1, lsr #3
    178c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1790:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1794:	e3500000 	cmp	r0, #0
    1798:	11b03223 	lsrsne	r3, r3, #4
    179c:	11a01221 	lsrne	r1, r1, #4
    17a0:	1affffef 	bne	1764 <__udivsi3+0x58>
    17a4:	e1a00002 	mov	r0, r2
    17a8:	e12fff1e 	bx	lr
    17ac:	03a00001 	moveq	r0, #1
    17b0:	13a00000 	movne	r0, #0
    17b4:	e12fff1e 	bx	lr
    17b8:	e3510801 	cmp	r1, #65536	@ 0x10000
    17bc:	21a01821 	lsrcs	r1, r1, #16
    17c0:	23a02010 	movcs	r2, #16
    17c4:	33a02000 	movcc	r2, #0
    17c8:	e3510c01 	cmp	r1, #256	@ 0x100
    17cc:	21a01421 	lsrcs	r1, r1, #8
    17d0:	22822008 	addcs	r2, r2, #8
    17d4:	e3510010 	cmp	r1, #16
    17d8:	21a01221 	lsrcs	r1, r1, #4
    17dc:	22822004 	addcs	r2, r2, #4
    17e0:	e3510004 	cmp	r1, #4
    17e4:	82822003 	addhi	r2, r2, #3
    17e8:	908220a1 	addls	r2, r2, r1, lsr #1
    17ec:	e1a00230 	lsr	r0, r0, r2
    17f0:	e12fff1e 	bx	lr
    17f4:	e3500000 	cmp	r0, #0
    17f8:	13e00000 	mvnne	r0, #0
    17fc:	ea000007 	b	1820 <__aeabi_idiv0>

00001800 <__aeabi_uidivmod>:
    1800:	e3510000 	cmp	r1, #0
    1804:	0afffffa 	beq	17f4 <__udivsi3+0xe8>
    1808:	e92d4003 	push	{r0, r1, lr}
    180c:	ebffffbe 	bl	170c <__udivsi3>
    1810:	e8bd4006 	pop	{r1, r2, lr}
    1814:	e0030092 	mul	r3, r2, r0
    1818:	e0411003 	sub	r1, r1, r3
    181c:	e12fff1e 	bx	lr

00001820 <__aeabi_idiv0>:
    1820:	e12fff1e 	bx	lr
