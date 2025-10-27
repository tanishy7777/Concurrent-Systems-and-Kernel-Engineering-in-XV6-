
usys.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fork>:
   0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
   4:	e1a04003 	mov	r4, r3
   8:	e1a03002 	mov	r3, r2
   c:	e1a02001 	mov	r2, r1
  10:	e1a01000 	mov	r1, r0
  14:	e3a00001 	mov	r0, #1
  18:	ef000000 	svc	0x00000000
  1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  20:	e12fff1e 	bx	lr

00000024 <exit>:
  24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
  28:	e1a04003 	mov	r4, r3
  2c:	e1a03002 	mov	r3, r2
  30:	e1a02001 	mov	r2, r1
  34:	e1a01000 	mov	r1, r0
  38:	e3a00002 	mov	r0, #2
  3c:	ef000000 	svc	0x00000000
  40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  44:	e12fff1e 	bx	lr

00000048 <wait>:
  48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
  4c:	e1a04003 	mov	r4, r3
  50:	e1a03002 	mov	r3, r2
  54:	e1a02001 	mov	r2, r1
  58:	e1a01000 	mov	r1, r0
  5c:	e3a00003 	mov	r0, #3
  60:	ef000000 	svc	0x00000000
  64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  68:	e12fff1e 	bx	lr

0000006c <pipe>:
  6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
  70:	e1a04003 	mov	r4, r3
  74:	e1a03002 	mov	r3, r2
  78:	e1a02001 	mov	r2, r1
  7c:	e1a01000 	mov	r1, r0
  80:	e3a00004 	mov	r0, #4
  84:	ef000000 	svc	0x00000000
  88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  8c:	e12fff1e 	bx	lr

00000090 <read>:
  90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
  94:	e1a04003 	mov	r4, r3
  98:	e1a03002 	mov	r3, r2
  9c:	e1a02001 	mov	r2, r1
  a0:	e1a01000 	mov	r1, r0
  a4:	e3a00005 	mov	r0, #5
  a8:	ef000000 	svc	0x00000000
  ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  b0:	e12fff1e 	bx	lr

000000b4 <write>:
  b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
  b8:	e1a04003 	mov	r4, r3
  bc:	e1a03002 	mov	r3, r2
  c0:	e1a02001 	mov	r2, r1
  c4:	e1a01000 	mov	r1, r0
  c8:	e3a00010 	mov	r0, #16
  cc:	ef000000 	svc	0x00000000
  d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  d4:	e12fff1e 	bx	lr

000000d8 <close>:
  d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
  dc:	e1a04003 	mov	r4, r3
  e0:	e1a03002 	mov	r3, r2
  e4:	e1a02001 	mov	r2, r1
  e8:	e1a01000 	mov	r1, r0
  ec:	e3a00015 	mov	r0, #21
  f0:	ef000000 	svc	0x00000000
  f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
  f8:	e12fff1e 	bx	lr

000000fc <kill>:
  fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 100:	e1a04003 	mov	r4, r3
 104:	e1a03002 	mov	r3, r2
 108:	e1a02001 	mov	r2, r1
 10c:	e1a01000 	mov	r1, r0
 110:	e3a00006 	mov	r0, #6
 114:	ef000000 	svc	0x00000000
 118:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 11c:	e12fff1e 	bx	lr

00000120 <exec>:
 120:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 124:	e1a04003 	mov	r4, r3
 128:	e1a03002 	mov	r3, r2
 12c:	e1a02001 	mov	r2, r1
 130:	e1a01000 	mov	r1, r0
 134:	e3a00007 	mov	r0, #7
 138:	ef000000 	svc	0x00000000
 13c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 140:	e12fff1e 	bx	lr

00000144 <open>:
 144:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 148:	e1a04003 	mov	r4, r3
 14c:	e1a03002 	mov	r3, r2
 150:	e1a02001 	mov	r2, r1
 154:	e1a01000 	mov	r1, r0
 158:	e3a0000f 	mov	r0, #15
 15c:	ef000000 	svc	0x00000000
 160:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 164:	e12fff1e 	bx	lr

00000168 <mknod>:
 168:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 16c:	e1a04003 	mov	r4, r3
 170:	e1a03002 	mov	r3, r2
 174:	e1a02001 	mov	r2, r1
 178:	e1a01000 	mov	r1, r0
 17c:	e3a00011 	mov	r0, #17
 180:	ef000000 	svc	0x00000000
 184:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 188:	e12fff1e 	bx	lr

0000018c <unlink>:
 18c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 190:	e1a04003 	mov	r4, r3
 194:	e1a03002 	mov	r3, r2
 198:	e1a02001 	mov	r2, r1
 19c:	e1a01000 	mov	r1, r0
 1a0:	e3a00012 	mov	r0, #18
 1a4:	ef000000 	svc	0x00000000
 1a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 1ac:	e12fff1e 	bx	lr

000001b0 <fstat>:
 1b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 1b4:	e1a04003 	mov	r4, r3
 1b8:	e1a03002 	mov	r3, r2
 1bc:	e1a02001 	mov	r2, r1
 1c0:	e1a01000 	mov	r1, r0
 1c4:	e3a00008 	mov	r0, #8
 1c8:	ef000000 	svc	0x00000000
 1cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 1d0:	e12fff1e 	bx	lr

000001d4 <link>:
 1d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 1d8:	e1a04003 	mov	r4, r3
 1dc:	e1a03002 	mov	r3, r2
 1e0:	e1a02001 	mov	r2, r1
 1e4:	e1a01000 	mov	r1, r0
 1e8:	e3a00013 	mov	r0, #19
 1ec:	ef000000 	svc	0x00000000
 1f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 1f4:	e12fff1e 	bx	lr

000001f8 <mkdir>:
 1f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 1fc:	e1a04003 	mov	r4, r3
 200:	e1a03002 	mov	r3, r2
 204:	e1a02001 	mov	r2, r1
 208:	e1a01000 	mov	r1, r0
 20c:	e3a00014 	mov	r0, #20
 210:	ef000000 	svc	0x00000000
 214:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 218:	e12fff1e 	bx	lr

0000021c <chdir>:
 21c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 220:	e1a04003 	mov	r4, r3
 224:	e1a03002 	mov	r3, r2
 228:	e1a02001 	mov	r2, r1
 22c:	e1a01000 	mov	r1, r0
 230:	e3a00009 	mov	r0, #9
 234:	ef000000 	svc	0x00000000
 238:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 23c:	e12fff1e 	bx	lr

00000240 <dup>:
 240:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 244:	e1a04003 	mov	r4, r3
 248:	e1a03002 	mov	r3, r2
 24c:	e1a02001 	mov	r2, r1
 250:	e1a01000 	mov	r1, r0
 254:	e3a0000a 	mov	r0, #10
 258:	ef000000 	svc	0x00000000
 25c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 260:	e12fff1e 	bx	lr

00000264 <getpid>:
 264:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 268:	e1a04003 	mov	r4, r3
 26c:	e1a03002 	mov	r3, r2
 270:	e1a02001 	mov	r2, r1
 274:	e1a01000 	mov	r1, r0
 278:	e3a0000b 	mov	r0, #11
 27c:	ef000000 	svc	0x00000000
 280:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 284:	e12fff1e 	bx	lr

00000288 <sbrk>:
 288:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 28c:	e1a04003 	mov	r4, r3
 290:	e1a03002 	mov	r3, r2
 294:	e1a02001 	mov	r2, r1
 298:	e1a01000 	mov	r1, r0
 29c:	e3a0000c 	mov	r0, #12
 2a0:	ef000000 	svc	0x00000000
 2a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 2a8:	e12fff1e 	bx	lr

000002ac <sleep>:
 2ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 2b0:	e1a04003 	mov	r4, r3
 2b4:	e1a03002 	mov	r3, r2
 2b8:	e1a02001 	mov	r2, r1
 2bc:	e1a01000 	mov	r1, r0
 2c0:	e3a0000d 	mov	r0, #13
 2c4:	ef000000 	svc	0x00000000
 2c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 2cc:	e12fff1e 	bx	lr

000002d0 <uptime>:
 2d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 2d4:	e1a04003 	mov	r4, r3
 2d8:	e1a03002 	mov	r3, r2
 2dc:	e1a02001 	mov	r2, r1
 2e0:	e1a01000 	mov	r1, r0
 2e4:	e3a0000e 	mov	r0, #14
 2e8:	ef000000 	svc	0x00000000
 2ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 2f0:	e12fff1e 	bx	lr

000002f4 <disproc>:
 2f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 2f8:	e1a04003 	mov	r4, r3
 2fc:	e1a03002 	mov	r3, r2
 300:	e1a02001 	mov	r2, r1
 304:	e1a01000 	mov	r1, r0
 308:	e3a00016 	mov	r0, #22
 30c:	ef000000 	svc	0x00000000
 310:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 314:	e12fff1e 	bx	lr

00000318 <srand>:
 318:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 31c:	e1a04003 	mov	r4, r3
 320:	e1a03002 	mov	r3, r2
 324:	e1a02001 	mov	r2, r1
 328:	e1a01000 	mov	r1, r0
 32c:	e3a00017 	mov	r0, #23
 330:	ef000000 	svc	0x00000000
 334:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 338:	e12fff1e 	bx	lr

0000033c <setticket>:
 33c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 340:	e1a04003 	mov	r4, r3
 344:	e1a03002 	mov	r3, r2
 348:	e1a02001 	mov	r2, r1
 34c:	e1a01000 	mov	r1, r0
 350:	e3a00018 	mov	r0, #24
 354:	ef000000 	svc	0x00000000
 358:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 35c:	e12fff1e 	bx	lr

00000360 <getpinfo>:
 360:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 364:	e1a04003 	mov	r4, r3
 368:	e1a03002 	mov	r3, r2
 36c:	e1a02001 	mov	r2, r1
 370:	e1a01000 	mov	r1, r0
 374:	e3a00019 	mov	r0, #25
 378:	ef000000 	svc	0x00000000
 37c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 380:	e12fff1e 	bx	lr

00000384 <printPages>:
 384:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 388:	e1a04003 	mov	r4, r3
 38c:	e1a03002 	mov	r3, r2
 390:	e1a02001 	mov	r2, r1
 394:	e1a01000 	mov	r1, r0
 398:	e3a0001a 	mov	r0, #26
 39c:	ef000000 	svc	0x00000000
 3a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 3a4:	e12fff1e 	bx	lr

000003a8 <kpt>:
 3a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 3ac:	e1a04003 	mov	r4, r3
 3b0:	e1a03002 	mov	r3, r2
 3b4:	e1a02001 	mov	r2, r1
 3b8:	e1a01000 	mov	r1, r0
 3bc:	e3a0001b 	mov	r0, #27
 3c0:	ef000000 	svc	0x00000000
 3c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 3c8:	e12fff1e 	bx	lr

000003cc <thread_create>:
 3cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 3d0:	e1a04003 	mov	r4, r3
 3d4:	e1a03002 	mov	r3, r2
 3d8:	e1a02001 	mov	r2, r1
 3dc:	e1a01000 	mov	r1, r0
 3e0:	e3a0001c 	mov	r0, #28
 3e4:	ef000000 	svc	0x00000000
 3e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 3ec:	e12fff1e 	bx	lr

000003f0 <thread_exit>:
 3f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 3f4:	e1a04003 	mov	r4, r3
 3f8:	e1a03002 	mov	r3, r2
 3fc:	e1a02001 	mov	r2, r1
 400:	e1a01000 	mov	r1, r0
 404:	e3a0001d 	mov	r0, #29
 408:	ef000000 	svc	0x00000000
 40c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 410:	e12fff1e 	bx	lr

00000414 <thread_join>:
 414:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 418:	e1a04003 	mov	r4, r3
 41c:	e1a03002 	mov	r3, r2
 420:	e1a02001 	mov	r2, r1
 424:	e1a01000 	mov	r1, r0
 428:	e3a0001e 	mov	r0, #30
 42c:	ef000000 	svc	0x00000000
 430:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 434:	e12fff1e 	bx	lr

00000438 <waitpid>:
 438:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 43c:	e1a04003 	mov	r4, r3
 440:	e1a03002 	mov	r3, r2
 444:	e1a02001 	mov	r2, r1
 448:	e1a01000 	mov	r1, r0
 44c:	e3a0001f 	mov	r0, #31
 450:	ef000000 	svc	0x00000000
 454:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 458:	e12fff1e 	bx	lr

0000045c <barrier_init>:
 45c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 460:	e1a04003 	mov	r4, r3
 464:	e1a03002 	mov	r3, r2
 468:	e1a02001 	mov	r2, r1
 46c:	e1a01000 	mov	r1, r0
 470:	e3a00020 	mov	r0, #32
 474:	ef000000 	svc	0x00000000
 478:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 47c:	e12fff1e 	bx	lr

00000480 <barrier_check>:
 480:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 484:	e1a04003 	mov	r4, r3
 488:	e1a03002 	mov	r3, r2
 48c:	e1a02001 	mov	r2, r1
 490:	e1a01000 	mov	r1, r0
 494:	e3a00021 	mov	r0, #33	@ 0x21
 498:	ef000000 	svc	0x00000000
 49c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 4a0:	e12fff1e 	bx	lr

000004a4 <sleepChan>:
 4a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 4a8:	e1a04003 	mov	r4, r3
 4ac:	e1a03002 	mov	r3, r2
 4b0:	e1a02001 	mov	r2, r1
 4b4:	e1a01000 	mov	r1, r0
 4b8:	e3a00022 	mov	r0, #34	@ 0x22
 4bc:	ef000000 	svc	0x00000000
 4c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 4c4:	e12fff1e 	bx	lr

000004c8 <getChannel>:
 4c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 4cc:	e1a04003 	mov	r4, r3
 4d0:	e1a03002 	mov	r3, r2
 4d4:	e1a02001 	mov	r2, r1
 4d8:	e1a01000 	mov	r1, r0
 4dc:	e3a00023 	mov	r0, #35	@ 0x23
 4e0:	ef000000 	svc	0x00000000
 4e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 4e8:	e12fff1e 	bx	lr

000004ec <sigChan>:
 4ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 4f0:	e1a04003 	mov	r4, r3
 4f4:	e1a03002 	mov	r3, r2
 4f8:	e1a02001 	mov	r2, r1
 4fc:	e1a01000 	mov	r1, r0
 500:	e3a00024 	mov	r0, #36	@ 0x24
 504:	ef000000 	svc	0x00000000
 508:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 50c:	e12fff1e 	bx	lr

00000510 <sigOneChan>:
 510:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
 514:	e1a04003 	mov	r4, r3
 518:	e1a03002 	mov	r3, r2
 51c:	e1a02001 	mov	r2, r1
 520:	e1a01000 	mov	r1, r0
 524:	e3a00025 	mov	r0, #37	@ 0x25
 528:	ef000000 	svc	0x00000000
 52c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
 530:	e12fff1e 	bx	lr
