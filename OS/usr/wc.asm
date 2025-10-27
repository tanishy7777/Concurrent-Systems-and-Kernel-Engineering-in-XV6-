
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000116 	bl	4ec <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb0002b1 	bl	bbc <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb00042c 	bl	11d0 <printf>
     11c:	eb00028b 	bl	b50 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb000422 	bl	11d0 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	000019bc 	.word	0x000019bc
     154:	0000188c 	.word	0x0000188c
     158:	00001894 	.word	0x00001894
     15c:	000018a4 	.word	0x000018a4

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb00026f 	bl	b50 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0002ac 	bl	c70 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb0003f7 	bl	11d0 <printf>
     1f0:	eb000256 	bl	b50 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000279 	bl	c04 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000244 	bl	b50 <exit>
     23c:	000018b4 	.word	0x000018b4
     240:	000018b8 	.word	0x000018b8

00000244 <xchg>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b1010 	ldr	r1, [fp, #-16]
     25c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     260:	e1912f9f 	ldrex	r2, [r1]
     264:	e1813f90 	strex	r3, r0, [r1]
     268:	e50b2008 	str	r2, [fp, #-8]
     26c:	e50b300c 	str	r3, [fp, #-12]
     270:	e51b300c 	ldr	r3, [fp, #-12]
     274:	e3530000 	cmp	r3, #0
     278:	1afffff6 	bne	258 <xchg+0x14>
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e1a00003 	mov	r0, r3
     284:	e28bd000 	add	sp, fp, #0
     288:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     28c:	e12fff1e 	bx	lr

00000290 <strcpy>:
     290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     294:	e28db000 	add	fp, sp, #0
     298:	e24dd014 	sub	sp, sp, #20
     29c:	e50b0010 	str	r0, [fp, #-16]
     2a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     2a4:	e51b3010 	ldr	r3, [fp, #-16]
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e1a00000 	nop			@ (mov r0, r0)
     2b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2b4:	e2823001 	add	r3, r2, #1
     2b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2bc:	e51b3010 	ldr	r3, [fp, #-16]
     2c0:	e2831001 	add	r1, r3, #1
     2c4:	e50b1010 	str	r1, [fp, #-16]
     2c8:	e5d22000 	ldrb	r2, [r2]
     2cc:	e5c32000 	strb	r2, [r3]
     2d0:	e5d33000 	ldrb	r3, [r3]
     2d4:	e3530000 	cmp	r3, #0
     2d8:	1afffff4 	bne	2b0 <strcpy+0x20>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e1a00003 	mov	r0, r3
     2e4:	e28bd000 	add	sp, fp, #0
     2e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ec:	e12fff1e 	bx	lr

000002f0 <strcmp>:
     2f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f4:	e28db000 	add	fp, sp, #0
     2f8:	e24dd00c 	sub	sp, sp, #12
     2fc:	e50b0008 	str	r0, [fp, #-8]
     300:	e50b100c 	str	r1, [fp, #-12]
     304:	ea000005 	b	320 <strcmp+0x30>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e2833001 	add	r3, r3, #1
     310:	e50b3008 	str	r3, [fp, #-8]
     314:	e51b300c 	ldr	r3, [fp, #-12]
     318:	e2833001 	add	r3, r3, #1
     31c:	e50b300c 	str	r3, [fp, #-12]
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e5d33000 	ldrb	r3, [r3]
     328:	e3530000 	cmp	r3, #0
     32c:	0a000005 	beq	348 <strcmp+0x58>
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e5d32000 	ldrb	r2, [r3]
     338:	e51b300c 	ldr	r3, [fp, #-12]
     33c:	e5d33000 	ldrb	r3, [r3]
     340:	e1520003 	cmp	r2, r3
     344:	0affffef 	beq	308 <strcmp+0x18>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e5d33000 	ldrb	r3, [r3]
     350:	e1a02003 	mov	r2, r3
     354:	e51b300c 	ldr	r3, [fp, #-12]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e0423003 	sub	r3, r2, r3
     360:	e1a00003 	mov	r0, r3
     364:	e28bd000 	add	sp, fp, #0
     368:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     36c:	e12fff1e 	bx	lr

00000370 <strlen>:
     370:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     374:	e28db000 	add	fp, sp, #0
     378:	e24dd014 	sub	sp, sp, #20
     37c:	e50b0010 	str	r0, [fp, #-16]
     380:	e3a03000 	mov	r3, #0
     384:	e50b3008 	str	r3, [fp, #-8]
     388:	ea000002 	b	398 <strlen+0x28>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e51b2010 	ldr	r2, [fp, #-16]
     3a0:	e0823003 	add	r3, r2, r3
     3a4:	e5d33000 	ldrb	r3, [r3]
     3a8:	e3530000 	cmp	r3, #0
     3ac:	1afffff6 	bne	38c <strlen+0x1c>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e1a00003 	mov	r0, r3
     3b8:	e28bd000 	add	sp, fp, #0
     3bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c0:	e12fff1e 	bx	lr

000003c4 <memset>:
     3c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3c8:	e28db000 	add	fp, sp, #0
     3cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     3d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     3dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3e8:	e54b300d 	strb	r3, [fp, #-13]
     3ec:	e55b200d 	ldrb	r2, [fp, #-13]
     3f0:	e1a03002 	mov	r3, r2
     3f4:	e1a03403 	lsl	r3, r3, #8
     3f8:	e0833002 	add	r3, r3, r2
     3fc:	e1a03803 	lsl	r3, r3, #16
     400:	e1a02003 	mov	r2, r3
     404:	e55b300d 	ldrb	r3, [fp, #-13]
     408:	e1a03403 	lsl	r3, r3, #8
     40c:	e1822003 	orr	r2, r2, r3
     410:	e55b300d 	ldrb	r3, [fp, #-13]
     414:	e1823003 	orr	r3, r2, r3
     418:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     41c:	ea000008 	b	444 <memset+0x80>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e55b200d 	ldrb	r2, [fp, #-13]
     428:	e5c32000 	strb	r2, [r3]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e2433001 	sub	r3, r3, #1
     434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e50b3008 	str	r3, [fp, #-8]
     444:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     448:	e3530000 	cmp	r3, #0
     44c:	0a000003 	beq	460 <memset+0x9c>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e2033003 	and	r3, r3, #3
     458:	e3530000 	cmp	r3, #0
     45c:	1affffef 	bne	420 <memset+0x5c>
     460:	e51b3008 	ldr	r3, [fp, #-8]
     464:	e50b300c 	str	r3, [fp, #-12]
     468:	ea000008 	b	490 <memset+0xcc>
     46c:	e51b300c 	ldr	r3, [fp, #-12]
     470:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     474:	e5832000 	str	r2, [r3]
     478:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     47c:	e2433004 	sub	r3, r3, #4
     480:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e2833004 	add	r3, r3, #4
     48c:	e50b300c 	str	r3, [fp, #-12]
     490:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     494:	e3530003 	cmp	r3, #3
     498:	8afffff3 	bhi	46c <memset+0xa8>
     49c:	e51b300c 	ldr	r3, [fp, #-12]
     4a0:	e50b3008 	str	r3, [fp, #-8]
     4a4:	ea000008 	b	4cc <memset+0x108>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e55b200d 	ldrb	r2, [fp, #-13]
     4b0:	e5c32000 	strb	r2, [r3]
     4b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4b8:	e2433001 	sub	r3, r3, #1
     4bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2833001 	add	r3, r3, #1
     4c8:	e50b3008 	str	r3, [fp, #-8]
     4cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4d0:	e3530000 	cmp	r3, #0
     4d4:	1afffff3 	bne	4a8 <memset+0xe4>
     4d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <strchr>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd00c 	sub	sp, sp, #12
     4f8:	e50b0008 	str	r0, [fp, #-8]
     4fc:	e1a03001 	mov	r3, r1
     500:	e54b3009 	strb	r3, [fp, #-9]
     504:	ea000009 	b	530 <strchr+0x44>
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e5d33000 	ldrb	r3, [r3]
     510:	e55b2009 	ldrb	r2, [fp, #-9]
     514:	e1520003 	cmp	r2, r3
     518:	1a000001 	bne	524 <strchr+0x38>
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	ea000007 	b	544 <strchr+0x58>
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2833001 	add	r3, r3, #1
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	e51b3008 	ldr	r3, [fp, #-8]
     534:	e5d33000 	ldrb	r3, [r3]
     538:	e3530000 	cmp	r3, #0
     53c:	1afffff1 	bne	508 <strchr+0x1c>
     540:	e3a03000 	mov	r3, #0
     544:	e1a00003 	mov	r0, r3
     548:	e28bd000 	add	sp, fp, #0
     54c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     550:	e12fff1e 	bx	lr

00000554 <gets>:
     554:	e92d4800 	push	{fp, lr}
     558:	e28db004 	add	fp, sp, #4
     55c:	e24dd018 	sub	sp, sp, #24
     560:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     564:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     568:	e3a03000 	mov	r3, #0
     56c:	e50b3008 	str	r3, [fp, #-8]
     570:	ea000016 	b	5d0 <gets+0x7c>
     574:	e24b300d 	sub	r3, fp, #13
     578:	e3a02001 	mov	r2, #1
     57c:	e1a01003 	mov	r1, r3
     580:	e3a00000 	mov	r0, #0
     584:	eb00018c 	bl	bbc <read>
     588:	e50b000c 	str	r0, [fp, #-12]
     58c:	e51b300c 	ldr	r3, [fp, #-12]
     590:	e3530000 	cmp	r3, #0
     594:	da000013 	ble	5e8 <gets+0x94>
     598:	e51b3008 	ldr	r3, [fp, #-8]
     59c:	e2832001 	add	r2, r3, #1
     5a0:	e50b2008 	str	r2, [fp, #-8]
     5a4:	e1a02003 	mov	r2, r3
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e0833002 	add	r3, r3, r2
     5b0:	e55b200d 	ldrb	r2, [fp, #-13]
     5b4:	e5c32000 	strb	r2, [r3]
     5b8:	e55b300d 	ldrb	r3, [fp, #-13]
     5bc:	e353000a 	cmp	r3, #10
     5c0:	0a000009 	beq	5ec <gets+0x98>
     5c4:	e55b300d 	ldrb	r3, [fp, #-13]
     5c8:	e353000d 	cmp	r3, #13
     5cc:	0a000006 	beq	5ec <gets+0x98>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     5dc:	e1520003 	cmp	r2, r3
     5e0:	caffffe3 	bgt	574 <gets+0x20>
     5e4:	ea000000 	b	5ec <gets+0x98>
     5e8:	e1a00000 	nop			@ (mov r0, r0)
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5f4:	e0823003 	add	r3, r2, r3
     5f8:	e3a02000 	mov	r2, #0
     5fc:	e5c32000 	strb	r2, [r3]
     600:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     604:	e1a00003 	mov	r0, r3
     608:	e24bd004 	sub	sp, fp, #4
     60c:	e8bd8800 	pop	{fp, pc}

00000610 <stat>:
     610:	e92d4800 	push	{fp, lr}
     614:	e28db004 	add	fp, sp, #4
     618:	e24dd010 	sub	sp, sp, #16
     61c:	e50b0010 	str	r0, [fp, #-16]
     620:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     624:	e3a01000 	mov	r1, #0
     628:	e51b0010 	ldr	r0, [fp, #-16]
     62c:	eb00018f 	bl	c70 <open>
     630:	e50b0008 	str	r0, [fp, #-8]
     634:	e51b3008 	ldr	r3, [fp, #-8]
     638:	e3530000 	cmp	r3, #0
     63c:	aa000001 	bge	648 <stat+0x38>
     640:	e3e03000 	mvn	r3, #0
     644:	ea000006 	b	664 <stat+0x54>
     648:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     64c:	e51b0008 	ldr	r0, [fp, #-8]
     650:	eb0001a1 	bl	cdc <fstat>
     654:	e50b000c 	str	r0, [fp, #-12]
     658:	e51b0008 	ldr	r0, [fp, #-8]
     65c:	eb000168 	bl	c04 <close>
     660:	e51b300c 	ldr	r3, [fp, #-12]
     664:	e1a00003 	mov	r0, r3
     668:	e24bd004 	sub	sp, fp, #4
     66c:	e8bd8800 	pop	{fp, pc}

00000670 <atoi>:
     670:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     674:	e28db000 	add	fp, sp, #0
     678:	e24dd014 	sub	sp, sp, #20
     67c:	e50b0010 	str	r0, [fp, #-16]
     680:	e3a03000 	mov	r3, #0
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	ea00000c 	b	6c0 <atoi+0x50>
     68c:	e51b2008 	ldr	r2, [fp, #-8]
     690:	e1a03002 	mov	r3, r2
     694:	e1a03103 	lsl	r3, r3, #2
     698:	e0833002 	add	r3, r3, r2
     69c:	e1a03083 	lsl	r3, r3, #1
     6a0:	e1a01003 	mov	r1, r3
     6a4:	e51b3010 	ldr	r3, [fp, #-16]
     6a8:	e2832001 	add	r2, r3, #1
     6ac:	e50b2010 	str	r2, [fp, #-16]
     6b0:	e5d33000 	ldrb	r3, [r3]
     6b4:	e0813003 	add	r3, r1, r3
     6b8:	e2433030 	sub	r3, r3, #48	@ 0x30
     6bc:	e50b3008 	str	r3, [fp, #-8]
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e5d33000 	ldrb	r3, [r3]
     6c8:	e353002f 	cmp	r3, #47	@ 0x2f
     6cc:	9a000003 	bls	6e0 <atoi+0x70>
     6d0:	e51b3010 	ldr	r3, [fp, #-16]
     6d4:	e5d33000 	ldrb	r3, [r3]
     6d8:	e3530039 	cmp	r3, #57	@ 0x39
     6dc:	9affffea 	bls	68c <atoi+0x1c>
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e1a00003 	mov	r0, r3
     6e8:	e28bd000 	add	sp, fp, #0
     6ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <memmove>:
     6f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6f8:	e28db000 	add	fp, sp, #0
     6fc:	e24dd01c 	sub	sp, sp, #28
     700:	e50b0010 	str	r0, [fp, #-16]
     704:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     708:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     70c:	e51b3010 	ldr	r3, [fp, #-16]
     710:	e50b3008 	str	r3, [fp, #-8]
     714:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     718:	e50b300c 	str	r3, [fp, #-12]
     71c:	ea000007 	b	740 <memmove+0x4c>
     720:	e51b200c 	ldr	r2, [fp, #-12]
     724:	e2823001 	add	r3, r2, #1
     728:	e50b300c 	str	r3, [fp, #-12]
     72c:	e51b3008 	ldr	r3, [fp, #-8]
     730:	e2831001 	add	r1, r3, #1
     734:	e50b1008 	str	r1, [fp, #-8]
     738:	e5d22000 	ldrb	r2, [r2]
     73c:	e5c32000 	strb	r2, [r3]
     740:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     744:	e2432001 	sub	r2, r3, #1
     748:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     74c:	e3530000 	cmp	r3, #0
     750:	cafffff2 	bgt	720 <memmove+0x2c>
     754:	e51b3010 	ldr	r3, [fp, #-16]
     758:	e1a00003 	mov	r0, r3
     75c:	e28bd000 	add	sp, fp, #0
     760:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <initiateLock>:
     768:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     76c:	e28db000 	add	fp, sp, #0
     770:	e24dd00c 	sub	sp, sp, #12
     774:	e50b0008 	str	r0, [fp, #-8]
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e3a02000 	mov	r2, #0
     780:	e5832000 	str	r2, [r3]
     784:	e51b3008 	ldr	r3, [fp, #-8]
     788:	e3a02001 	mov	r2, #1
     78c:	e5832004 	str	r2, [r3, #4]
     790:	e1a00000 	nop			@ (mov r0, r0)
     794:	e28bd000 	add	sp, fp, #0
     798:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <acquireLock>:
     7a0:	e92d4800 	push	{fp, lr}
     7a4:	e28db004 	add	fp, sp, #4
     7a8:	e24dd008 	sub	sp, sp, #8
     7ac:	e50b0008 	str	r0, [fp, #-8]
     7b0:	e51b3008 	ldr	r3, [fp, #-8]
     7b4:	e5933000 	ldr	r3, [r3]
     7b8:	e3730001 	cmn	r3, #1
     7bc:	1a000002 	bne	7cc <acquireLock+0x2c>
     7c0:	e59f1034 	ldr	r1, [pc, #52]	@ 7fc <acquireLock+0x5c>
     7c4:	e3a00002 	mov	r0, #2
     7c8:	eb000280 	bl	11d0 <printf>
     7cc:	e1a00000 	nop			@ (mov r0, r0)
     7d0:	e51b3008 	ldr	r3, [fp, #-8]
     7d4:	e3a01001 	mov	r1, #1
     7d8:	e1a00003 	mov	r0, r3
     7dc:	ebfffe98 	bl	244 <xchg>
     7e0:	e1a03000 	mov	r3, r0
     7e4:	e3530000 	cmp	r3, #0
     7e8:	1afffff8 	bne	7d0 <acquireLock+0x30>
     7ec:	e1a00000 	nop			@ (mov r0, r0)
     7f0:	e1a00000 	nop			@ (mov r0, r0)
     7f4:	e24bd004 	sub	sp, fp, #4
     7f8:	e8bd8800 	pop	{fp, pc}
     7fc:	000018cc 	.word	0x000018cc

00000800 <releaseLock>:
     800:	e92d4800 	push	{fp, lr}
     804:	e28db004 	add	fp, sp, #4
     808:	e24dd008 	sub	sp, sp, #8
     80c:	e50b0008 	str	r0, [fp, #-8]
     810:	e51b3008 	ldr	r3, [fp, #-8]
     814:	e5933000 	ldr	r3, [r3]
     818:	e3530001 	cmp	r3, #1
     81c:	0a000002 	beq	82c <releaseLock+0x2c>
     820:	e59f1020 	ldr	r1, [pc, #32]	@ 848 <releaseLock+0x48>
     824:	e3a00002 	mov	r0, #2
     828:	eb000268 	bl	11d0 <printf>
     82c:	e51b3008 	ldr	r3, [fp, #-8]
     830:	e3a01000 	mov	r1, #0
     834:	e1a00003 	mov	r0, r3
     838:	ebfffe81 	bl	244 <xchg>
     83c:	e1a00000 	nop			@ (mov r0, r0)
     840:	e24bd004 	sub	sp, fp, #4
     844:	e8bd8800 	pop	{fp, pc}
     848:	000018fc 	.word	0x000018fc

0000084c <initiateCondVar>:
     84c:	e92d4800 	push	{fp, lr}
     850:	e28db004 	add	fp, sp, #4
     854:	e24dd008 	sub	sp, sp, #8
     858:	e50b0008 	str	r0, [fp, #-8]
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e5933004 	ldr	r3, [r3, #4]
     864:	e3530000 	cmp	r3, #0
     868:	1a000007 	bne	88c <initiateCondVar+0x40>
     86c:	eb0001e0 	bl	ff4 <getChannel>
     870:	e1a02000 	mov	r2, r0
     874:	e51b3008 	ldr	r3, [fp, #-8]
     878:	e5832000 	str	r2, [r3]
     87c:	e51b3008 	ldr	r3, [fp, #-8]
     880:	e3a02001 	mov	r2, #1
     884:	e5832004 	str	r2, [r3, #4]
     888:	ea000000 	b	890 <initiateCondVar+0x44>
     88c:	e1a00000 	nop			@ (mov r0, r0)
     890:	e24bd004 	sub	sp, fp, #4
     894:	e8bd8800 	pop	{fp, pc}

00000898 <condWait>:
     898:	e92d4800 	push	{fp, lr}
     89c:	e28db004 	add	fp, sp, #4
     8a0:	e24dd008 	sub	sp, sp, #8
     8a4:	e50b0008 	str	r0, [fp, #-8]
     8a8:	e50b100c 	str	r1, [fp, #-12]
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e5933004 	ldr	r3, [r3, #4]
     8b4:	e3530000 	cmp	r3, #0
     8b8:	1a000003 	bne	8cc <condWait+0x34>
     8bc:	e59f1050 	ldr	r1, [pc, #80]	@ 914 <condWait+0x7c>
     8c0:	e3a00002 	mov	r0, #2
     8c4:	eb000241 	bl	11d0 <printf>
     8c8:	ea00000f 	b	90c <condWait+0x74>
     8cc:	e51b300c 	ldr	r3, [fp, #-12]
     8d0:	e5933004 	ldr	r3, [r3, #4]
     8d4:	e3530000 	cmp	r3, #0
     8d8:	1a000003 	bne	8ec <condWait+0x54>
     8dc:	e59f1034 	ldr	r1, [pc, #52]	@ 918 <condWait+0x80>
     8e0:	e3a00002 	mov	r0, #2
     8e4:	eb000239 	bl	11d0 <printf>
     8e8:	ea000007 	b	90c <condWait+0x74>
     8ec:	e51b000c 	ldr	r0, [fp, #-12]
     8f0:	ebffffc2 	bl	800 <releaseLock>
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e5933000 	ldr	r3, [r3]
     8fc:	e1a00003 	mov	r0, r3
     900:	eb0001b2 	bl	fd0 <sleepChan>
     904:	e51b000c 	ldr	r0, [fp, #-12]
     908:	ebffffa4 	bl	7a0 <acquireLock>
     90c:	e24bd004 	sub	sp, fp, #4
     910:	e8bd8800 	pop	{fp, pc}
     914:	00001938 	.word	0x00001938
     918:	0000195c 	.word	0x0000195c

0000091c <broadcast>:
     91c:	e92d4800 	push	{fp, lr}
     920:	e28db004 	add	fp, sp, #4
     924:	e24dd008 	sub	sp, sp, #8
     928:	e50b0008 	str	r0, [fp, #-8]
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e5933004 	ldr	r3, [r3, #4]
     934:	e3530000 	cmp	r3, #0
     938:	1a000003 	bne	94c <broadcast+0x30>
     93c:	e59f1020 	ldr	r1, [pc, #32]	@ 964 <broadcast+0x48>
     940:	e3a00002 	mov	r0, #2
     944:	eb000221 	bl	11d0 <printf>
     948:	ea000003 	b	95c <broadcast+0x40>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5933000 	ldr	r3, [r3]
     954:	e1a00003 	mov	r0, r3
     958:	eb0001ae 	bl	1018 <sigChan>
     95c:	e24bd004 	sub	sp, fp, #4
     960:	e8bd8800 	pop	{fp, pc}
     964:	00001938 	.word	0x00001938

00000968 <signal>:
     968:	e92d4800 	push	{fp, lr}
     96c:	e28db004 	add	fp, sp, #4
     970:	e24dd008 	sub	sp, sp, #8
     974:	e50b0008 	str	r0, [fp, #-8]
     978:	e51b3008 	ldr	r3, [fp, #-8]
     97c:	e5933004 	ldr	r3, [r3, #4]
     980:	e3530000 	cmp	r3, #0
     984:	1a000003 	bne	998 <signal+0x30>
     988:	e59f1020 	ldr	r1, [pc, #32]	@ 9b0 <signal+0x48>
     98c:	e3a00002 	mov	r0, #2
     990:	eb00020e 	bl	11d0 <printf>
     994:	ea000003 	b	9a8 <signal+0x40>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e5933000 	ldr	r3, [r3]
     9a0:	e1a00003 	mov	r0, r3
     9a4:	eb0001a4 	bl	103c <sigOneChan>
     9a8:	e24bd004 	sub	sp, fp, #4
     9ac:	e8bd8800 	pop	{fp, pc}
     9b0:	00001938 	.word	0x00001938

000009b4 <semInit>:
     9b4:	e92d4800 	push	{fp, lr}
     9b8:	e28db004 	add	fp, sp, #4
     9bc:	e24dd008 	sub	sp, sp, #8
     9c0:	e50b0008 	str	r0, [fp, #-8]
     9c4:	e50b100c 	str	r1, [fp, #-12]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e51b200c 	ldr	r2, [fp, #-12]
     9d0:	e5832000 	str	r2, [r3]
     9d4:	e51b3008 	ldr	r3, [fp, #-8]
     9d8:	e2833004 	add	r3, r3, #4
     9dc:	e1a00003 	mov	r0, r3
     9e0:	ebffff60 	bl	768 <initiateLock>
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e283300c 	add	r3, r3, #12
     9ec:	e1a00003 	mov	r0, r3
     9f0:	ebffff95 	bl	84c <initiateCondVar>
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e3a02001 	mov	r2, #1
     9fc:	e5832014 	str	r2, [r3, #20]
     a00:	e1a00000 	nop			@ (mov r0, r0)
     a04:	e24bd004 	sub	sp, fp, #4
     a08:	e8bd8800 	pop	{fp, pc}

00000a0c <semDown>:
     a0c:	e92d4800 	push	{fp, lr}
     a10:	e28db004 	add	fp, sp, #4
     a14:	e24dd008 	sub	sp, sp, #8
     a18:	e50b0008 	str	r0, [fp, #-8]
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e5933014 	ldr	r3, [r3, #20]
     a24:	e3530000 	cmp	r3, #0
     a28:	1a000003 	bne	a3c <semDown+0x30>
     a2c:	e59f1074 	ldr	r1, [pc, #116]	@ aa8 <semDown+0x9c>
     a30:	e3a00002 	mov	r0, #2
     a34:	eb0001e5 	bl	11d0 <printf>
     a38:	ea000018 	b	aa0 <semDown+0x94>
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e2833004 	add	r3, r3, #4
     a44:	e1a00003 	mov	r0, r3
     a48:	ebffff54 	bl	7a0 <acquireLock>
     a4c:	ea000006 	b	a6c <semDown+0x60>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e283200c 	add	r2, r3, #12
     a58:	e51b3008 	ldr	r3, [fp, #-8]
     a5c:	e2833004 	add	r3, r3, #4
     a60:	e1a01003 	mov	r1, r3
     a64:	e1a00002 	mov	r0, r2
     a68:	ebffff8a 	bl	898 <condWait>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e5933000 	ldr	r3, [r3]
     a74:	e3530000 	cmp	r3, #0
     a78:	0afffff4 	beq	a50 <semDown+0x44>
     a7c:	e51b3008 	ldr	r3, [fp, #-8]
     a80:	e5933000 	ldr	r3, [r3]
     a84:	e2432001 	sub	r2, r3, #1
     a88:	e51b3008 	ldr	r3, [fp, #-8]
     a8c:	e5832000 	str	r2, [r3]
     a90:	e51b3008 	ldr	r3, [fp, #-8]
     a94:	e2833004 	add	r3, r3, #4
     a98:	e1a00003 	mov	r0, r3
     a9c:	ebffff57 	bl	800 <releaseLock>
     aa0:	e24bd004 	sub	sp, fp, #4
     aa4:	e8bd8800 	pop	{fp, pc}
     aa8:	0000197c 	.word	0x0000197c

00000aac <semUp>:
     aac:	e92d4800 	push	{fp, lr}
     ab0:	e28db004 	add	fp, sp, #4
     ab4:	e24dd008 	sub	sp, sp, #8
     ab8:	e50b0008 	str	r0, [fp, #-8]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e5933014 	ldr	r3, [r3, #20]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	1a000003 	bne	adc <semUp+0x30>
     acc:	e59f1054 	ldr	r1, [pc, #84]	@ b28 <semUp+0x7c>
     ad0:	e3a00002 	mov	r0, #2
     ad4:	eb0001bd 	bl	11d0 <printf>
     ad8:	ea000010 	b	b20 <semUp+0x74>
     adc:	e51b3008 	ldr	r3, [fp, #-8]
     ae0:	e2833004 	add	r3, r3, #4
     ae4:	e1a00003 	mov	r0, r3
     ae8:	ebffff2c 	bl	7a0 <acquireLock>
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e5933000 	ldr	r3, [r3]
     af4:	e2832001 	add	r2, r3, #1
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e5832000 	str	r2, [r3]
     b00:	e51b3008 	ldr	r3, [fp, #-8]
     b04:	e283300c 	add	r3, r3, #12
     b08:	e1a00003 	mov	r0, r3
     b0c:	ebffff95 	bl	968 <signal>
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e2833004 	add	r3, r3, #4
     b18:	e1a00003 	mov	r0, r3
     b1c:	ebffff37 	bl	800 <releaseLock>
     b20:	e24bd004 	sub	sp, fp, #4
     b24:	e8bd8800 	pop	{fp, pc}
     b28:	0000197c 	.word	0x0000197c

00000b2c <fork>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00001 	mov	r0, #1
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <exit>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00002 	mov	r0, #2
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <wait>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a00003 	mov	r0, #3
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <pipe>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a00004 	mov	r0, #4
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <read>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a00005 	mov	r0, #5
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <write>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a00010 	mov	r0, #16
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <close>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a00015 	mov	r0, #21
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <kill>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00006 	mov	r0, #6
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <exec>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00007 	mov	r0, #7
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <open>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a0000f 	mov	r0, #15
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <mknod>:
     c94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c98:	e1a04003 	mov	r4, r3
     c9c:	e1a03002 	mov	r3, r2
     ca0:	e1a02001 	mov	r2, r1
     ca4:	e1a01000 	mov	r1, r0
     ca8:	e3a00011 	mov	r0, #17
     cac:	ef000000 	svc	0x00000000
     cb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cb4:	e12fff1e 	bx	lr

00000cb8 <unlink>:
     cb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cbc:	e1a04003 	mov	r4, r3
     cc0:	e1a03002 	mov	r3, r2
     cc4:	e1a02001 	mov	r2, r1
     cc8:	e1a01000 	mov	r1, r0
     ccc:	e3a00012 	mov	r0, #18
     cd0:	ef000000 	svc	0x00000000
     cd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cd8:	e12fff1e 	bx	lr

00000cdc <fstat>:
     cdc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ce0:	e1a04003 	mov	r4, r3
     ce4:	e1a03002 	mov	r3, r2
     ce8:	e1a02001 	mov	r2, r1
     cec:	e1a01000 	mov	r1, r0
     cf0:	e3a00008 	mov	r0, #8
     cf4:	ef000000 	svc	0x00000000
     cf8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cfc:	e12fff1e 	bx	lr

00000d00 <link>:
     d00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d04:	e1a04003 	mov	r4, r3
     d08:	e1a03002 	mov	r3, r2
     d0c:	e1a02001 	mov	r2, r1
     d10:	e1a01000 	mov	r1, r0
     d14:	e3a00013 	mov	r0, #19
     d18:	ef000000 	svc	0x00000000
     d1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d20:	e12fff1e 	bx	lr

00000d24 <mkdir>:
     d24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d28:	e1a04003 	mov	r4, r3
     d2c:	e1a03002 	mov	r3, r2
     d30:	e1a02001 	mov	r2, r1
     d34:	e1a01000 	mov	r1, r0
     d38:	e3a00014 	mov	r0, #20
     d3c:	ef000000 	svc	0x00000000
     d40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d44:	e12fff1e 	bx	lr

00000d48 <chdir>:
     d48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d4c:	e1a04003 	mov	r4, r3
     d50:	e1a03002 	mov	r3, r2
     d54:	e1a02001 	mov	r2, r1
     d58:	e1a01000 	mov	r1, r0
     d5c:	e3a00009 	mov	r0, #9
     d60:	ef000000 	svc	0x00000000
     d64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d68:	e12fff1e 	bx	lr

00000d6c <dup>:
     d6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d70:	e1a04003 	mov	r4, r3
     d74:	e1a03002 	mov	r3, r2
     d78:	e1a02001 	mov	r2, r1
     d7c:	e1a01000 	mov	r1, r0
     d80:	e3a0000a 	mov	r0, #10
     d84:	ef000000 	svc	0x00000000
     d88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d8c:	e12fff1e 	bx	lr

00000d90 <getpid>:
     d90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     d94:	e1a04003 	mov	r4, r3
     d98:	e1a03002 	mov	r3, r2
     d9c:	e1a02001 	mov	r2, r1
     da0:	e1a01000 	mov	r1, r0
     da4:	e3a0000b 	mov	r0, #11
     da8:	ef000000 	svc	0x00000000
     dac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     db0:	e12fff1e 	bx	lr

00000db4 <sbrk>:
     db4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     db8:	e1a04003 	mov	r4, r3
     dbc:	e1a03002 	mov	r3, r2
     dc0:	e1a02001 	mov	r2, r1
     dc4:	e1a01000 	mov	r1, r0
     dc8:	e3a0000c 	mov	r0, #12
     dcc:	ef000000 	svc	0x00000000
     dd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     dd4:	e12fff1e 	bx	lr

00000dd8 <sleep>:
     dd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ddc:	e1a04003 	mov	r4, r3
     de0:	e1a03002 	mov	r3, r2
     de4:	e1a02001 	mov	r2, r1
     de8:	e1a01000 	mov	r1, r0
     dec:	e3a0000d 	mov	r0, #13
     df0:	ef000000 	svc	0x00000000
     df4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     df8:	e12fff1e 	bx	lr

00000dfc <uptime>:
     dfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e00:	e1a04003 	mov	r4, r3
     e04:	e1a03002 	mov	r3, r2
     e08:	e1a02001 	mov	r2, r1
     e0c:	e1a01000 	mov	r1, r0
     e10:	e3a0000e 	mov	r0, #14
     e14:	ef000000 	svc	0x00000000
     e18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e1c:	e12fff1e 	bx	lr

00000e20 <disproc>:
     e20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e24:	e1a04003 	mov	r4, r3
     e28:	e1a03002 	mov	r3, r2
     e2c:	e1a02001 	mov	r2, r1
     e30:	e1a01000 	mov	r1, r0
     e34:	e3a00016 	mov	r0, #22
     e38:	ef000000 	svc	0x00000000
     e3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e40:	e12fff1e 	bx	lr

00000e44 <srand>:
     e44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e48:	e1a04003 	mov	r4, r3
     e4c:	e1a03002 	mov	r3, r2
     e50:	e1a02001 	mov	r2, r1
     e54:	e1a01000 	mov	r1, r0
     e58:	e3a00017 	mov	r0, #23
     e5c:	ef000000 	svc	0x00000000
     e60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e64:	e12fff1e 	bx	lr

00000e68 <setticket>:
     e68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e6c:	e1a04003 	mov	r4, r3
     e70:	e1a03002 	mov	r3, r2
     e74:	e1a02001 	mov	r2, r1
     e78:	e1a01000 	mov	r1, r0
     e7c:	e3a00018 	mov	r0, #24
     e80:	ef000000 	svc	0x00000000
     e84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     e88:	e12fff1e 	bx	lr

00000e8c <getpinfo>:
     e8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     e90:	e1a04003 	mov	r4, r3
     e94:	e1a03002 	mov	r3, r2
     e98:	e1a02001 	mov	r2, r1
     e9c:	e1a01000 	mov	r1, r0
     ea0:	e3a00019 	mov	r0, #25
     ea4:	ef000000 	svc	0x00000000
     ea8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     eac:	e12fff1e 	bx	lr

00000eb0 <printPages>:
     eb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     eb4:	e1a04003 	mov	r4, r3
     eb8:	e1a03002 	mov	r3, r2
     ebc:	e1a02001 	mov	r2, r1
     ec0:	e1a01000 	mov	r1, r0
     ec4:	e3a0001a 	mov	r0, #26
     ec8:	ef000000 	svc	0x00000000
     ecc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ed0:	e12fff1e 	bx	lr

00000ed4 <kpt>:
     ed4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ed8:	e1a04003 	mov	r4, r3
     edc:	e1a03002 	mov	r3, r2
     ee0:	e1a02001 	mov	r2, r1
     ee4:	e1a01000 	mov	r1, r0
     ee8:	e3a0001b 	mov	r0, #27
     eec:	ef000000 	svc	0x00000000
     ef0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ef4:	e12fff1e 	bx	lr

00000ef8 <thread_create>:
     ef8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     efc:	e1a04003 	mov	r4, r3
     f00:	e1a03002 	mov	r3, r2
     f04:	e1a02001 	mov	r2, r1
     f08:	e1a01000 	mov	r1, r0
     f0c:	e3a0001c 	mov	r0, #28
     f10:	ef000000 	svc	0x00000000
     f14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f18:	e12fff1e 	bx	lr

00000f1c <thread_exit>:
     f1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f20:	e1a04003 	mov	r4, r3
     f24:	e1a03002 	mov	r3, r2
     f28:	e1a02001 	mov	r2, r1
     f2c:	e1a01000 	mov	r1, r0
     f30:	e3a0001d 	mov	r0, #29
     f34:	ef000000 	svc	0x00000000
     f38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f3c:	e12fff1e 	bx	lr

00000f40 <thread_join>:
     f40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f44:	e1a04003 	mov	r4, r3
     f48:	e1a03002 	mov	r3, r2
     f4c:	e1a02001 	mov	r2, r1
     f50:	e1a01000 	mov	r1, r0
     f54:	e3a0001e 	mov	r0, #30
     f58:	ef000000 	svc	0x00000000
     f5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f60:	e12fff1e 	bx	lr

00000f64 <waitpid>:
     f64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f68:	e1a04003 	mov	r4, r3
     f6c:	e1a03002 	mov	r3, r2
     f70:	e1a02001 	mov	r2, r1
     f74:	e1a01000 	mov	r1, r0
     f78:	e3a0001f 	mov	r0, #31
     f7c:	ef000000 	svc	0x00000000
     f80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     f84:	e12fff1e 	bx	lr

00000f88 <barrier_init>:
     f88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     f8c:	e1a04003 	mov	r4, r3
     f90:	e1a03002 	mov	r3, r2
     f94:	e1a02001 	mov	r2, r1
     f98:	e1a01000 	mov	r1, r0
     f9c:	e3a00020 	mov	r0, #32
     fa0:	ef000000 	svc	0x00000000
     fa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fa8:	e12fff1e 	bx	lr

00000fac <barrier_check>:
     fac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fb0:	e1a04003 	mov	r4, r3
     fb4:	e1a03002 	mov	r3, r2
     fb8:	e1a02001 	mov	r2, r1
     fbc:	e1a01000 	mov	r1, r0
     fc0:	e3a00021 	mov	r0, #33	@ 0x21
     fc4:	ef000000 	svc	0x00000000
     fc8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     fcc:	e12fff1e 	bx	lr

00000fd0 <sleepChan>:
     fd0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     fd4:	e1a04003 	mov	r4, r3
     fd8:	e1a03002 	mov	r3, r2
     fdc:	e1a02001 	mov	r2, r1
     fe0:	e1a01000 	mov	r1, r0
     fe4:	e3a00022 	mov	r0, #34	@ 0x22
     fe8:	ef000000 	svc	0x00000000
     fec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ff0:	e12fff1e 	bx	lr

00000ff4 <getChannel>:
     ff4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ff8:	e1a04003 	mov	r4, r3
     ffc:	e1a03002 	mov	r3, r2
    1000:	e1a02001 	mov	r2, r1
    1004:	e1a01000 	mov	r1, r0
    1008:	e3a00023 	mov	r0, #35	@ 0x23
    100c:	ef000000 	svc	0x00000000
    1010:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1014:	e12fff1e 	bx	lr

00001018 <sigChan>:
    1018:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    101c:	e1a04003 	mov	r4, r3
    1020:	e1a03002 	mov	r3, r2
    1024:	e1a02001 	mov	r2, r1
    1028:	e1a01000 	mov	r1, r0
    102c:	e3a00024 	mov	r0, #36	@ 0x24
    1030:	ef000000 	svc	0x00000000
    1034:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1038:	e12fff1e 	bx	lr

0000103c <sigOneChan>:
    103c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1040:	e1a04003 	mov	r4, r3
    1044:	e1a03002 	mov	r3, r2
    1048:	e1a02001 	mov	r2, r1
    104c:	e1a01000 	mov	r1, r0
    1050:	e3a00025 	mov	r0, #37	@ 0x25
    1054:	ef000000 	svc	0x00000000
    1058:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    105c:	e12fff1e 	bx	lr

00001060 <putc>:
    1060:	e92d4800 	push	{fp, lr}
    1064:	e28db004 	add	fp, sp, #4
    1068:	e24dd008 	sub	sp, sp, #8
    106c:	e50b0008 	str	r0, [fp, #-8]
    1070:	e1a03001 	mov	r3, r1
    1074:	e54b3009 	strb	r3, [fp, #-9]
    1078:	e24b3009 	sub	r3, fp, #9
    107c:	e3a02001 	mov	r2, #1
    1080:	e1a01003 	mov	r1, r3
    1084:	e51b0008 	ldr	r0, [fp, #-8]
    1088:	ebfffed4 	bl	be0 <write>
    108c:	e1a00000 	nop			@ (mov r0, r0)
    1090:	e24bd004 	sub	sp, fp, #4
    1094:	e8bd8800 	pop	{fp, pc}

00001098 <printint>:
    1098:	e92d4800 	push	{fp, lr}
    109c:	e28db004 	add	fp, sp, #4
    10a0:	e24dd030 	sub	sp, sp, #48	@ 0x30
    10a4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    10a8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    10ac:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    10b0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    10b4:	e3a03000 	mov	r3, #0
    10b8:	e50b300c 	str	r3, [fp, #-12]
    10bc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    10c0:	e3530000 	cmp	r3, #0
    10c4:	0a000008 	beq	10ec <printint+0x54>
    10c8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10cc:	e3530000 	cmp	r3, #0
    10d0:	aa000005 	bge	10ec <printint+0x54>
    10d4:	e3a03001 	mov	r3, #1
    10d8:	e50b300c 	str	r3, [fp, #-12]
    10dc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10e0:	e2633000 	rsb	r3, r3, #0
    10e4:	e50b3010 	str	r3, [fp, #-16]
    10e8:	ea000001 	b	10f4 <printint+0x5c>
    10ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    10f0:	e50b3010 	str	r3, [fp, #-16]
    10f4:	e3a03000 	mov	r3, #0
    10f8:	e50b3008 	str	r3, [fp, #-8]
    10fc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1100:	e51b3010 	ldr	r3, [fp, #-16]
    1104:	e1a01002 	mov	r1, r2
    1108:	e1a00003 	mov	r0, r3
    110c:	eb0001d5 	bl	1868 <__aeabi_uidivmod>
    1110:	e1a03001 	mov	r3, r1
    1114:	e1a01003 	mov	r1, r3
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e2832001 	add	r2, r3, #1
    1120:	e50b2008 	str	r2, [fp, #-8]
    1124:	e59f20a0 	ldr	r2, [pc, #160]	@ 11cc <printint+0x134>
    1128:	e7d22001 	ldrb	r2, [r2, r1]
    112c:	e2433004 	sub	r3, r3, #4
    1130:	e083300b 	add	r3, r3, fp
    1134:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1138:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    113c:	e1a01003 	mov	r1, r3
    1140:	e51b0010 	ldr	r0, [fp, #-16]
    1144:	eb00018a 	bl	1774 <__udivsi3>
    1148:	e1a03000 	mov	r3, r0
    114c:	e50b3010 	str	r3, [fp, #-16]
    1150:	e51b3010 	ldr	r3, [fp, #-16]
    1154:	e3530000 	cmp	r3, #0
    1158:	1affffe7 	bne	10fc <printint+0x64>
    115c:	e51b300c 	ldr	r3, [fp, #-12]
    1160:	e3530000 	cmp	r3, #0
    1164:	0a00000e 	beq	11a4 <printint+0x10c>
    1168:	e51b3008 	ldr	r3, [fp, #-8]
    116c:	e2832001 	add	r2, r3, #1
    1170:	e50b2008 	str	r2, [fp, #-8]
    1174:	e2433004 	sub	r3, r3, #4
    1178:	e083300b 	add	r3, r3, fp
    117c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1180:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1184:	ea000006 	b	11a4 <printint+0x10c>
    1188:	e24b2020 	sub	r2, fp, #32
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e0823003 	add	r3, r2, r3
    1194:	e5d33000 	ldrb	r3, [r3]
    1198:	e1a01003 	mov	r1, r3
    119c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    11a0:	ebffffae 	bl	1060 <putc>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e2433001 	sub	r3, r3, #1
    11ac:	e50b3008 	str	r3, [fp, #-8]
    11b0:	e51b3008 	ldr	r3, [fp, #-8]
    11b4:	e3530000 	cmp	r3, #0
    11b8:	aafffff2 	bge	1188 <printint+0xf0>
    11bc:	e1a00000 	nop			@ (mov r0, r0)
    11c0:	e1a00000 	nop			@ (mov r0, r0)
    11c4:	e24bd004 	sub	sp, fp, #4
    11c8:	e8bd8800 	pop	{fp, pc}
    11cc:	000019a8 	.word	0x000019a8

000011d0 <printf>:
    11d0:	e92d000e 	push	{r1, r2, r3}
    11d4:	e92d4800 	push	{fp, lr}
    11d8:	e28db004 	add	fp, sp, #4
    11dc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11e0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    11e4:	e3a03000 	mov	r3, #0
    11e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11ec:	e28b3008 	add	r3, fp, #8
    11f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    11f4:	e3a03000 	mov	r3, #0
    11f8:	e50b3010 	str	r3, [fp, #-16]
    11fc:	ea000074 	b	13d4 <printf+0x204>
    1200:	e59b2004 	ldr	r2, [fp, #4]
    1204:	e51b3010 	ldr	r3, [fp, #-16]
    1208:	e0823003 	add	r3, r2, r3
    120c:	e5d33000 	ldrb	r3, [r3]
    1210:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1214:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1218:	e3530000 	cmp	r3, #0
    121c:	1a00000b 	bne	1250 <printf+0x80>
    1220:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1224:	e3530025 	cmp	r3, #37	@ 0x25
    1228:	1a000002 	bne	1238 <printf+0x68>
    122c:	e3a03025 	mov	r3, #37	@ 0x25
    1230:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1234:	ea000063 	b	13c8 <printf+0x1f8>
    1238:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    123c:	e6ef3073 	uxtb	r3, r3
    1240:	e1a01003 	mov	r1, r3
    1244:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1248:	ebffff84 	bl	1060 <putc>
    124c:	ea00005d 	b	13c8 <printf+0x1f8>
    1250:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1254:	e3530025 	cmp	r3, #37	@ 0x25
    1258:	1a00005a 	bne	13c8 <printf+0x1f8>
    125c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1260:	e3530064 	cmp	r3, #100	@ 0x64
    1264:	1a00000a 	bne	1294 <printf+0xc4>
    1268:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    126c:	e5933000 	ldr	r3, [r3]
    1270:	e1a01003 	mov	r1, r3
    1274:	e3a03001 	mov	r3, #1
    1278:	e3a0200a 	mov	r2, #10
    127c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1280:	ebffff84 	bl	1098 <printint>
    1284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1288:	e2833004 	add	r3, r3, #4
    128c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1290:	ea00004a 	b	13c0 <printf+0x1f0>
    1294:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1298:	e3530078 	cmp	r3, #120	@ 0x78
    129c:	0a000002 	beq	12ac <printf+0xdc>
    12a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12a4:	e3530070 	cmp	r3, #112	@ 0x70
    12a8:	1a00000a 	bne	12d8 <printf+0x108>
    12ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e1a01003 	mov	r1, r3
    12b8:	e3a03000 	mov	r3, #0
    12bc:	e3a02010 	mov	r2, #16
    12c0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    12c4:	ebffff73 	bl	1098 <printint>
    12c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e2833004 	add	r3, r3, #4
    12d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12d4:	ea000039 	b	13c0 <printf+0x1f0>
    12d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    12dc:	e3530073 	cmp	r3, #115	@ 0x73
    12e0:	1a000018 	bne	1348 <printf+0x178>
    12e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12e8:	e5933000 	ldr	r3, [r3]
    12ec:	e50b300c 	str	r3, [fp, #-12]
    12f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12f4:	e2833004 	add	r3, r3, #4
    12f8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    12fc:	e51b300c 	ldr	r3, [fp, #-12]
    1300:	e3530000 	cmp	r3, #0
    1304:	1a00000a 	bne	1334 <printf+0x164>
    1308:	e59f30f4 	ldr	r3, [pc, #244]	@ 1404 <printf+0x234>
    130c:	e50b300c 	str	r3, [fp, #-12]
    1310:	ea000007 	b	1334 <printf+0x164>
    1314:	e51b300c 	ldr	r3, [fp, #-12]
    1318:	e5d33000 	ldrb	r3, [r3]
    131c:	e1a01003 	mov	r1, r3
    1320:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1324:	ebffff4d 	bl	1060 <putc>
    1328:	e51b300c 	ldr	r3, [fp, #-12]
    132c:	e2833001 	add	r3, r3, #1
    1330:	e50b300c 	str	r3, [fp, #-12]
    1334:	e51b300c 	ldr	r3, [fp, #-12]
    1338:	e5d33000 	ldrb	r3, [r3]
    133c:	e3530000 	cmp	r3, #0
    1340:	1afffff3 	bne	1314 <printf+0x144>
    1344:	ea00001d 	b	13c0 <printf+0x1f0>
    1348:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    134c:	e3530063 	cmp	r3, #99	@ 0x63
    1350:	1a000009 	bne	137c <printf+0x1ac>
    1354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1358:	e5933000 	ldr	r3, [r3]
    135c:	e6ef3073 	uxtb	r3, r3
    1360:	e1a01003 	mov	r1, r3
    1364:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1368:	ebffff3c 	bl	1060 <putc>
    136c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1370:	e2833004 	add	r3, r3, #4
    1374:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1378:	ea000010 	b	13c0 <printf+0x1f0>
    137c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1380:	e3530025 	cmp	r3, #37	@ 0x25
    1384:	1a000005 	bne	13a0 <printf+0x1d0>
    1388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    138c:	e6ef3073 	uxtb	r3, r3
    1390:	e1a01003 	mov	r1, r3
    1394:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1398:	ebffff30 	bl	1060 <putc>
    139c:	ea000007 	b	13c0 <printf+0x1f0>
    13a0:	e3a01025 	mov	r1, #37	@ 0x25
    13a4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13a8:	ebffff2c 	bl	1060 <putc>
    13ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    13b0:	e6ef3073 	uxtb	r3, r3
    13b4:	e1a01003 	mov	r1, r3
    13b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    13bc:	ebffff27 	bl	1060 <putc>
    13c0:	e3a03000 	mov	r3, #0
    13c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    13c8:	e51b3010 	ldr	r3, [fp, #-16]
    13cc:	e2833001 	add	r3, r3, #1
    13d0:	e50b3010 	str	r3, [fp, #-16]
    13d4:	e59b2004 	ldr	r2, [fp, #4]
    13d8:	e51b3010 	ldr	r3, [fp, #-16]
    13dc:	e0823003 	add	r3, r2, r3
    13e0:	e5d33000 	ldrb	r3, [r3]
    13e4:	e3530000 	cmp	r3, #0
    13e8:	1affff84 	bne	1200 <printf+0x30>
    13ec:	e1a00000 	nop			@ (mov r0, r0)
    13f0:	e1a00000 	nop			@ (mov r0, r0)
    13f4:	e24bd004 	sub	sp, fp, #4
    13f8:	e8bd4800 	pop	{fp, lr}
    13fc:	e28dd00c 	add	sp, sp, #12
    1400:	e12fff1e 	bx	lr
    1404:	000019a0 	.word	0x000019a0

00001408 <free>:
    1408:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    140c:	e28db000 	add	fp, sp, #0
    1410:	e24dd014 	sub	sp, sp, #20
    1414:	e50b0010 	str	r0, [fp, #-16]
    1418:	e51b3010 	ldr	r3, [fp, #-16]
    141c:	e2433008 	sub	r3, r3, #8
    1420:	e50b300c 	str	r3, [fp, #-12]
    1424:	e59f3154 	ldr	r3, [pc, #340]	@ 1580 <free+0x178>
    1428:	e5933000 	ldr	r3, [r3]
    142c:	e50b3008 	str	r3, [fp, #-8]
    1430:	ea000010 	b	1478 <free+0x70>
    1434:	e51b3008 	ldr	r3, [fp, #-8]
    1438:	e5933000 	ldr	r3, [r3]
    143c:	e51b2008 	ldr	r2, [fp, #-8]
    1440:	e1520003 	cmp	r2, r3
    1444:	3a000008 	bcc	146c <free+0x64>
    1448:	e51b200c 	ldr	r2, [fp, #-12]
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e1520003 	cmp	r2, r3
    1454:	8a000010 	bhi	149c <free+0x94>
    1458:	e51b3008 	ldr	r3, [fp, #-8]
    145c:	e5933000 	ldr	r3, [r3]
    1460:	e51b200c 	ldr	r2, [fp, #-12]
    1464:	e1520003 	cmp	r2, r3
    1468:	3a00000b 	bcc	149c <free+0x94>
    146c:	e51b3008 	ldr	r3, [fp, #-8]
    1470:	e5933000 	ldr	r3, [r3]
    1474:	e50b3008 	str	r3, [fp, #-8]
    1478:	e51b200c 	ldr	r2, [fp, #-12]
    147c:	e51b3008 	ldr	r3, [fp, #-8]
    1480:	e1520003 	cmp	r2, r3
    1484:	9affffea 	bls	1434 <free+0x2c>
    1488:	e51b3008 	ldr	r3, [fp, #-8]
    148c:	e5933000 	ldr	r3, [r3]
    1490:	e51b200c 	ldr	r2, [fp, #-12]
    1494:	e1520003 	cmp	r2, r3
    1498:	2affffe5 	bcs	1434 <free+0x2c>
    149c:	e51b300c 	ldr	r3, [fp, #-12]
    14a0:	e5933004 	ldr	r3, [r3, #4]
    14a4:	e1a03183 	lsl	r3, r3, #3
    14a8:	e51b200c 	ldr	r2, [fp, #-12]
    14ac:	e0822003 	add	r2, r2, r3
    14b0:	e51b3008 	ldr	r3, [fp, #-8]
    14b4:	e5933000 	ldr	r3, [r3]
    14b8:	e1520003 	cmp	r2, r3
    14bc:	1a00000d 	bne	14f8 <free+0xf0>
    14c0:	e51b300c 	ldr	r3, [fp, #-12]
    14c4:	e5932004 	ldr	r2, [r3, #4]
    14c8:	e51b3008 	ldr	r3, [fp, #-8]
    14cc:	e5933000 	ldr	r3, [r3]
    14d0:	e5933004 	ldr	r3, [r3, #4]
    14d4:	e0822003 	add	r2, r2, r3
    14d8:	e51b300c 	ldr	r3, [fp, #-12]
    14dc:	e5832004 	str	r2, [r3, #4]
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e5933000 	ldr	r3, [r3]
    14e8:	e5932000 	ldr	r2, [r3]
    14ec:	e51b300c 	ldr	r3, [fp, #-12]
    14f0:	e5832000 	str	r2, [r3]
    14f4:	ea000003 	b	1508 <free+0x100>
    14f8:	e51b3008 	ldr	r3, [fp, #-8]
    14fc:	e5932000 	ldr	r2, [r3]
    1500:	e51b300c 	ldr	r3, [fp, #-12]
    1504:	e5832000 	str	r2, [r3]
    1508:	e51b3008 	ldr	r3, [fp, #-8]
    150c:	e5933004 	ldr	r3, [r3, #4]
    1510:	e1a03183 	lsl	r3, r3, #3
    1514:	e51b2008 	ldr	r2, [fp, #-8]
    1518:	e0823003 	add	r3, r2, r3
    151c:	e51b200c 	ldr	r2, [fp, #-12]
    1520:	e1520003 	cmp	r2, r3
    1524:	1a00000b 	bne	1558 <free+0x150>
    1528:	e51b3008 	ldr	r3, [fp, #-8]
    152c:	e5932004 	ldr	r2, [r3, #4]
    1530:	e51b300c 	ldr	r3, [fp, #-12]
    1534:	e5933004 	ldr	r3, [r3, #4]
    1538:	e0822003 	add	r2, r2, r3
    153c:	e51b3008 	ldr	r3, [fp, #-8]
    1540:	e5832004 	str	r2, [r3, #4]
    1544:	e51b300c 	ldr	r3, [fp, #-12]
    1548:	e5932000 	ldr	r2, [r3]
    154c:	e51b3008 	ldr	r3, [fp, #-8]
    1550:	e5832000 	str	r2, [r3]
    1554:	ea000002 	b	1564 <free+0x15c>
    1558:	e51b3008 	ldr	r3, [fp, #-8]
    155c:	e51b200c 	ldr	r2, [fp, #-12]
    1560:	e5832000 	str	r2, [r3]
    1564:	e59f2014 	ldr	r2, [pc, #20]	@ 1580 <free+0x178>
    1568:	e51b3008 	ldr	r3, [fp, #-8]
    156c:	e5823000 	str	r3, [r2]
    1570:	e1a00000 	nop			@ (mov r0, r0)
    1574:	e28bd000 	add	sp, fp, #0
    1578:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    157c:	e12fff1e 	bx	lr
    1580:	00001bc4 	.word	0x00001bc4

00001584 <morecore>:
    1584:	e92d4800 	push	{fp, lr}
    1588:	e28db004 	add	fp, sp, #4
    158c:	e24dd010 	sub	sp, sp, #16
    1590:	e50b0010 	str	r0, [fp, #-16]
    1594:	e51b3010 	ldr	r3, [fp, #-16]
    1598:	e3530a01 	cmp	r3, #4096	@ 0x1000
    159c:	2a000001 	bcs	15a8 <morecore+0x24>
    15a0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    15a4:	e50b3010 	str	r3, [fp, #-16]
    15a8:	e51b3010 	ldr	r3, [fp, #-16]
    15ac:	e1a03183 	lsl	r3, r3, #3
    15b0:	e1a00003 	mov	r0, r3
    15b4:	ebfffdfe 	bl	db4 <sbrk>
    15b8:	e50b0008 	str	r0, [fp, #-8]
    15bc:	e51b3008 	ldr	r3, [fp, #-8]
    15c0:	e3730001 	cmn	r3, #1
    15c4:	1a000001 	bne	15d0 <morecore+0x4c>
    15c8:	e3a03000 	mov	r3, #0
    15cc:	ea00000a 	b	15fc <morecore+0x78>
    15d0:	e51b3008 	ldr	r3, [fp, #-8]
    15d4:	e50b300c 	str	r3, [fp, #-12]
    15d8:	e51b300c 	ldr	r3, [fp, #-12]
    15dc:	e51b2010 	ldr	r2, [fp, #-16]
    15e0:	e5832004 	str	r2, [r3, #4]
    15e4:	e51b300c 	ldr	r3, [fp, #-12]
    15e8:	e2833008 	add	r3, r3, #8
    15ec:	e1a00003 	mov	r0, r3
    15f0:	ebffff84 	bl	1408 <free>
    15f4:	e59f300c 	ldr	r3, [pc, #12]	@ 1608 <morecore+0x84>
    15f8:	e5933000 	ldr	r3, [r3]
    15fc:	e1a00003 	mov	r0, r3
    1600:	e24bd004 	sub	sp, fp, #4
    1604:	e8bd8800 	pop	{fp, pc}
    1608:	00001bc4 	.word	0x00001bc4

0000160c <malloc>:
    160c:	e92d4800 	push	{fp, lr}
    1610:	e28db004 	add	fp, sp, #4
    1614:	e24dd018 	sub	sp, sp, #24
    1618:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    161c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1620:	e2833007 	add	r3, r3, #7
    1624:	e1a031a3 	lsr	r3, r3, #3
    1628:	e2833001 	add	r3, r3, #1
    162c:	e50b3010 	str	r3, [fp, #-16]
    1630:	e59f3134 	ldr	r3, [pc, #308]	@ 176c <malloc+0x160>
    1634:	e5933000 	ldr	r3, [r3]
    1638:	e50b300c 	str	r3, [fp, #-12]
    163c:	e51b300c 	ldr	r3, [fp, #-12]
    1640:	e3530000 	cmp	r3, #0
    1644:	1a00000b 	bne	1678 <malloc+0x6c>
    1648:	e59f3120 	ldr	r3, [pc, #288]	@ 1770 <malloc+0x164>
    164c:	e50b300c 	str	r3, [fp, #-12]
    1650:	e59f2114 	ldr	r2, [pc, #276]	@ 176c <malloc+0x160>
    1654:	e51b300c 	ldr	r3, [fp, #-12]
    1658:	e5823000 	str	r3, [r2]
    165c:	e59f3108 	ldr	r3, [pc, #264]	@ 176c <malloc+0x160>
    1660:	e5933000 	ldr	r3, [r3]
    1664:	e59f2104 	ldr	r2, [pc, #260]	@ 1770 <malloc+0x164>
    1668:	e5823000 	str	r3, [r2]
    166c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1770 <malloc+0x164>
    1670:	e3a02000 	mov	r2, #0
    1674:	e5832004 	str	r2, [r3, #4]
    1678:	e51b300c 	ldr	r3, [fp, #-12]
    167c:	e5933000 	ldr	r3, [r3]
    1680:	e50b3008 	str	r3, [fp, #-8]
    1684:	e51b3008 	ldr	r3, [fp, #-8]
    1688:	e5933004 	ldr	r3, [r3, #4]
    168c:	e51b2010 	ldr	r2, [fp, #-16]
    1690:	e1520003 	cmp	r2, r3
    1694:	8a00001e 	bhi	1714 <malloc+0x108>
    1698:	e51b3008 	ldr	r3, [fp, #-8]
    169c:	e5933004 	ldr	r3, [r3, #4]
    16a0:	e51b2010 	ldr	r2, [fp, #-16]
    16a4:	e1520003 	cmp	r2, r3
    16a8:	1a000004 	bne	16c0 <malloc+0xb4>
    16ac:	e51b3008 	ldr	r3, [fp, #-8]
    16b0:	e5932000 	ldr	r2, [r3]
    16b4:	e51b300c 	ldr	r3, [fp, #-12]
    16b8:	e5832000 	str	r2, [r3]
    16bc:	ea00000e 	b	16fc <malloc+0xf0>
    16c0:	e51b3008 	ldr	r3, [fp, #-8]
    16c4:	e5932004 	ldr	r2, [r3, #4]
    16c8:	e51b3010 	ldr	r3, [fp, #-16]
    16cc:	e0422003 	sub	r2, r2, r3
    16d0:	e51b3008 	ldr	r3, [fp, #-8]
    16d4:	e5832004 	str	r2, [r3, #4]
    16d8:	e51b3008 	ldr	r3, [fp, #-8]
    16dc:	e5933004 	ldr	r3, [r3, #4]
    16e0:	e1a03183 	lsl	r3, r3, #3
    16e4:	e51b2008 	ldr	r2, [fp, #-8]
    16e8:	e0823003 	add	r3, r2, r3
    16ec:	e50b3008 	str	r3, [fp, #-8]
    16f0:	e51b3008 	ldr	r3, [fp, #-8]
    16f4:	e51b2010 	ldr	r2, [fp, #-16]
    16f8:	e5832004 	str	r2, [r3, #4]
    16fc:	e59f2068 	ldr	r2, [pc, #104]	@ 176c <malloc+0x160>
    1700:	e51b300c 	ldr	r3, [fp, #-12]
    1704:	e5823000 	str	r3, [r2]
    1708:	e51b3008 	ldr	r3, [fp, #-8]
    170c:	e2833008 	add	r3, r3, #8
    1710:	ea000012 	b	1760 <malloc+0x154>
    1714:	e59f3050 	ldr	r3, [pc, #80]	@ 176c <malloc+0x160>
    1718:	e5933000 	ldr	r3, [r3]
    171c:	e51b2008 	ldr	r2, [fp, #-8]
    1720:	e1520003 	cmp	r2, r3
    1724:	1a000007 	bne	1748 <malloc+0x13c>
    1728:	e51b0010 	ldr	r0, [fp, #-16]
    172c:	ebffff94 	bl	1584 <morecore>
    1730:	e50b0008 	str	r0, [fp, #-8]
    1734:	e51b3008 	ldr	r3, [fp, #-8]
    1738:	e3530000 	cmp	r3, #0
    173c:	1a000001 	bne	1748 <malloc+0x13c>
    1740:	e3a03000 	mov	r3, #0
    1744:	ea000005 	b	1760 <malloc+0x154>
    1748:	e51b3008 	ldr	r3, [fp, #-8]
    174c:	e50b300c 	str	r3, [fp, #-12]
    1750:	e51b3008 	ldr	r3, [fp, #-8]
    1754:	e5933000 	ldr	r3, [r3]
    1758:	e50b3008 	str	r3, [fp, #-8]
    175c:	eaffffc8 	b	1684 <malloc+0x78>
    1760:	e1a00003 	mov	r0, r3
    1764:	e24bd004 	sub	sp, fp, #4
    1768:	e8bd8800 	pop	{fp, pc}
    176c:	00001bc4 	.word	0x00001bc4
    1770:	00001bbc 	.word	0x00001bbc

00001774 <__udivsi3>:
    1774:	e2512001 	subs	r2, r1, #1
    1778:	012fff1e 	bxeq	lr
    177c:	3a000036 	bcc	185c <__udivsi3+0xe8>
    1780:	e1500001 	cmp	r0, r1
    1784:	9a000022 	bls	1814 <__udivsi3+0xa0>
    1788:	e1110002 	tst	r1, r2
    178c:	0a000023 	beq	1820 <__udivsi3+0xac>
    1790:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1794:	01a01181 	lsleq	r1, r1, #3
    1798:	03a03008 	moveq	r3, #8
    179c:	13a03001 	movne	r3, #1
    17a0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    17a4:	31510000 	cmpcc	r1, r0
    17a8:	31a01201 	lslcc	r1, r1, #4
    17ac:	31a03203 	lslcc	r3, r3, #4
    17b0:	3afffffa 	bcc	17a0 <__udivsi3+0x2c>
    17b4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    17b8:	31510000 	cmpcc	r1, r0
    17bc:	31a01081 	lslcc	r1, r1, #1
    17c0:	31a03083 	lslcc	r3, r3, #1
    17c4:	3afffffa 	bcc	17b4 <__udivsi3+0x40>
    17c8:	e3a02000 	mov	r2, #0
    17cc:	e1500001 	cmp	r0, r1
    17d0:	20400001 	subcs	r0, r0, r1
    17d4:	21822003 	orrcs	r2, r2, r3
    17d8:	e15000a1 	cmp	r0, r1, lsr #1
    17dc:	204000a1 	subcs	r0, r0, r1, lsr #1
    17e0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    17e4:	e1500121 	cmp	r0, r1, lsr #2
    17e8:	20400121 	subcs	r0, r0, r1, lsr #2
    17ec:	21822123 	orrcs	r2, r2, r3, lsr #2
    17f0:	e15001a1 	cmp	r0, r1, lsr #3
    17f4:	204001a1 	subcs	r0, r0, r1, lsr #3
    17f8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    17fc:	e3500000 	cmp	r0, #0
    1800:	11b03223 	lsrsne	r3, r3, #4
    1804:	11a01221 	lsrne	r1, r1, #4
    1808:	1affffef 	bne	17cc <__udivsi3+0x58>
    180c:	e1a00002 	mov	r0, r2
    1810:	e12fff1e 	bx	lr
    1814:	03a00001 	moveq	r0, #1
    1818:	13a00000 	movne	r0, #0
    181c:	e12fff1e 	bx	lr
    1820:	e3510801 	cmp	r1, #65536	@ 0x10000
    1824:	21a01821 	lsrcs	r1, r1, #16
    1828:	23a02010 	movcs	r2, #16
    182c:	33a02000 	movcc	r2, #0
    1830:	e3510c01 	cmp	r1, #256	@ 0x100
    1834:	21a01421 	lsrcs	r1, r1, #8
    1838:	22822008 	addcs	r2, r2, #8
    183c:	e3510010 	cmp	r1, #16
    1840:	21a01221 	lsrcs	r1, r1, #4
    1844:	22822004 	addcs	r2, r2, #4
    1848:	e3510004 	cmp	r1, #4
    184c:	82822003 	addhi	r2, r2, #3
    1850:	908220a1 	addls	r2, r2, r1, lsr #1
    1854:	e1a00230 	lsr	r0, r0, r2
    1858:	e12fff1e 	bx	lr
    185c:	e3500000 	cmp	r0, #0
    1860:	13e00000 	mvnne	r0, #0
    1864:	ea000007 	b	1888 <__aeabi_idiv0>

00001868 <__aeabi_uidivmod>:
    1868:	e3510000 	cmp	r1, #0
    186c:	0afffffa 	beq	185c <__udivsi3+0xe8>
    1870:	e92d4003 	push	{r0, r1, lr}
    1874:	ebffffbe 	bl	1774 <__udivsi3>
    1878:	e8bd4006 	pop	{r1, r2, lr}
    187c:	e0030092 	mul	r3, r2, r0
    1880:	e0411003 	sub	r1, r1, r3
    1884:	e12fff1e 	bx	lr

00001888 <__aeabi_idiv0>:
    1888:	e12fff1e 	bx	lr
