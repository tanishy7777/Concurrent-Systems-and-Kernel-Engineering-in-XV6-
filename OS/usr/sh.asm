
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <getcompletions>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd040 	sub	sp, sp, #64	@ 0x40
       c:	e50b0040 	str	r0, [fp, #-64]	@ 0xffffffc0
      10:	e50b1044 	str	r1, [fp, #-68]	@ 0xffffffbc
      14:	e51b0040 	ldr	r0, [fp, #-64]	@ 0xffffffc0
      18:	eb000612 	bl	1868 <strlen>
      1c:	e1a03000 	mov	r3, r0
      20:	e50b300c 	str	r3, [fp, #-12]
      24:	e59f325c 	ldr	r3, [pc, #604]	@ 288 <getcompletions+0x288>
      28:	e50b3010 	str	r3, [fp, #-16]
      2c:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
      30:	e3a02000 	mov	r2, #0
      34:	e58323c0 	str	r2, [r3, #960]	@ 0x3c0
      38:	e3a01000 	mov	r1, #0
      3c:	e51b0010 	ldr	r0, [fp, #-16]
      40:	eb000848 	bl	2168 <open>
      44:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      4c:	e3530000 	cmp	r3, #0
      50:	aa000001 	bge	5c <getcompletions+0x5c>
      54:	e3e03000 	mvn	r3, #0
      58:	ea000087 	b	27c <getcompletions+0x27c>
      5c:	e24b3038 	sub	r3, fp, #56	@ 0x38
      60:	e1a01003 	mov	r1, r3
      64:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      68:	eb000859 	bl	21d4 <fstat>
      6c:	e1a03000 	mov	r3, r0
      70:	e3530000 	cmp	r3, #0
      74:	aa000070 	bge	23c <getcompletions+0x23c>
      78:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
      7c:	eb00081e 	bl	20fc <close>
      80:	e3e03000 	mvn	r3, #0
      84:	ea00007c 	b	27c <getcompletions+0x27c>
      88:	e15b32b4 	ldrh	r3, [fp, #-36]	@ 0xffffffdc
      8c:	e3530000 	cmp	r3, #0
      90:	0a000068 	beq	238 <getcompletions+0x238>
      94:	e55b3022 	ldrb	r3, [fp, #-34]	@ 0xffffffde
      98:	e353002e 	cmp	r3, #46	@ 0x2e
      9c:	0a000065 	beq	238 <getcompletions+0x238>
      a0:	e15b33f8 	ldrsh	r3, [fp, #-56]	@ 0xffffffc8
      a4:	e3530002 	cmp	r3, #2
      a8:	0a000062 	beq	238 <getcompletions+0x238>
      ac:	e3a03000 	mov	r3, #0
      b0:	e50b3008 	str	r3, [fp, #-8]
      b4:	ea00000c 	b	ec <getcompletions+0xec>
      b8:	e24b2022 	sub	r2, fp, #34	@ 0x22
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e0823003 	add	r3, r2, r3
      c4:	e5d32000 	ldrb	r2, [r3]
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e51b1040 	ldr	r1, [fp, #-64]	@ 0xffffffc0
      d0:	e0813003 	add	r3, r1, r3
      d4:	e5d33000 	ldrb	r3, [r3]
      d8:	e1520003 	cmp	r2, r3
      dc:	1a00000a 	bne	10c <getcompletions+0x10c>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b2008 	ldr	r2, [fp, #-8]
      f0:	e51b300c 	ldr	r3, [fp, #-12]
      f4:	e1520003 	cmp	r2, r3
      f8:	aa000004 	bge	110 <getcompletions+0x110>
      fc:	e51b3008 	ldr	r3, [fp, #-8]
     100:	e353000d 	cmp	r3, #13
     104:	daffffeb 	ble	b8 <getcompletions+0xb8>
     108:	ea000000 	b	110 <getcompletions+0x110>
     10c:	e1a00000 	nop			@ (mov r0, r0)
     110:	e51b2008 	ldr	r2, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e1520003 	cmp	r2, r3
     11c:	1a000046 	bne	23c <getcompletions+0x23c>
     120:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     124:	e59323c0 	ldr	r2, [r3, #960]	@ 0x3c0
     128:	e1a03002 	mov	r3, r2
     12c:	e1a03203 	lsl	r3, r3, #4
     130:	e0433002 	sub	r3, r3, r2
     134:	e51b2044 	ldr	r2, [fp, #-68]	@ 0xffffffbc
     138:	e0820003 	add	r0, r2, r3
     13c:	e24b3024 	sub	r3, fp, #36	@ 0x24
     140:	e2833002 	add	r3, r3, #2
     144:	e3a0200e 	mov	r2, #14
     148:	e1a01003 	mov	r1, r3
     14c:	eb0006a6 	bl	1bec <memmove>
     150:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     154:	e59323c0 	ldr	r2, [r3, #960]	@ 0x3c0
     158:	e51b1044 	ldr	r1, [fp, #-68]	@ 0xffffffbc
     15c:	e1a03002 	mov	r3, r2
     160:	e1a03203 	lsl	r3, r3, #4
     164:	e0433002 	sub	r3, r3, r2
     168:	e0813003 	add	r3, r1, r3
     16c:	e283300e 	add	r3, r3, #14
     170:	e3a02000 	mov	r2, #0
     174:	e5c32000 	strb	r2, [r3]
     178:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     17c:	e59323c0 	ldr	r2, [r3, #960]	@ 0x3c0
     180:	e1a03002 	mov	r3, r2
     184:	e1a03203 	lsl	r3, r3, #4
     188:	e0433002 	sub	r3, r3, r2
     18c:	e51b2044 	ldr	r2, [fp, #-68]	@ 0xffffffbc
     190:	e0823003 	add	r3, r2, r3
     194:	e1a00003 	mov	r0, r3
     198:	eb0005b2 	bl	1868 <strlen>
     19c:	e1a03000 	mov	r3, r0
     1a0:	e2433001 	sub	r3, r3, #1
     1a4:	e50b3008 	str	r3, [fp, #-8]
     1a8:	ea00000d 	b	1e4 <getcompletions+0x1e4>
     1ac:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     1b0:	e59323c0 	ldr	r2, [r3, #960]	@ 0x3c0
     1b4:	e51b1044 	ldr	r1, [fp, #-68]	@ 0xffffffbc
     1b8:	e1a03002 	mov	r3, r2
     1bc:	e1a03203 	lsl	r3, r3, #4
     1c0:	e0433002 	sub	r3, r3, r2
     1c4:	e0812003 	add	r2, r1, r3
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e0823003 	add	r3, r2, r3
     1d0:	e3a02000 	mov	r2, #0
     1d4:	e5c32000 	strb	r2, [r3]
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e2433001 	sub	r3, r3, #1
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e3530000 	cmp	r3, #0
     1ec:	ba00000b 	blt	220 <getcompletions+0x220>
     1f0:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     1f4:	e59323c0 	ldr	r2, [r3, #960]	@ 0x3c0
     1f8:	e51b1044 	ldr	r1, [fp, #-68]	@ 0xffffffbc
     1fc:	e1a03002 	mov	r3, r2
     200:	e1a03203 	lsl	r3, r3, #4
     204:	e0433002 	sub	r3, r3, r2
     208:	e0812003 	add	r2, r1, r3
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e0823003 	add	r3, r2, r3
     214:	e5d33000 	ldrb	r3, [r3]
     218:	e3530020 	cmp	r3, #32
     21c:	0affffe2 	beq	1ac <getcompletions+0x1ac>
     220:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     224:	e59333c0 	ldr	r3, [r3, #960]	@ 0x3c0
     228:	e2832001 	add	r2, r3, #1
     22c:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     230:	e58323c0 	str	r2, [r3, #960]	@ 0x3c0
     234:	ea000000 	b	23c <getcompletions+0x23c>
     238:	e1a00000 	nop			@ (mov r0, r0)
     23c:	e24b3024 	sub	r3, fp, #36	@ 0x24
     240:	e3a02010 	mov	r2, #16
     244:	e1a01003 	mov	r1, r3
     248:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     24c:	eb000798 	bl	20b4 <read>
     250:	e1a03000 	mov	r3, r0
     254:	e3530010 	cmp	r3, #16
     258:	1a000003 	bne	26c <getcompletions+0x26c>
     25c:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     260:	e59333c0 	ldr	r3, [r3, #960]	@ 0x3c0
     264:	e353003f 	cmp	r3, #63	@ 0x3f
     268:	daffff86 	ble	88 <getcompletions+0x88>
     26c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     270:	eb0007a1 	bl	20fc <close>
     274:	e51b3044 	ldr	r3, [fp, #-68]	@ 0xffffffbc
     278:	e59333c0 	ldr	r3, [r3, #960]	@ 0x3c0
     27c:	e1a00003 	mov	r0, r3
     280:	e24bd004 	sub	sp, fp, #4
     284:	e8bd8800 	pop	{fp, pc}
     288:	00002d84 	.word	0x00002d84

0000028c <handle_completion>:
     28c:	e92d4800 	push	{fp, lr}
     290:	e28db004 	add	fp, sp, #4
     294:	e24ddb01 	sub	sp, sp, #1024	@ 0x400
     298:	e24dd008 	sub	sp, sp, #8
     29c:	e50b0400 	str	r0, [fp, #-1024]	@ 0xfffffc00
     2a0:	e50b1404 	str	r1, [fp, #-1028]	@ 0xfffffbfc
     2a4:	e50b2408 	str	r2, [fp, #-1032]	@ 0xfffffbf8
     2a8:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     2ac:	e5933000 	ldr	r3, [r3]
     2b0:	e50b3008 	str	r3, [fp, #-8]
     2b4:	ea000002 	b	2c4 <handle_completion+0x38>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2433001 	sub	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e3530000 	cmp	r3, #0
     2cc:	da000006 	ble	2ec <handle_completion+0x60>
     2d0:	e51b3008 	ldr	r3, [fp, #-8]
     2d4:	e2433001 	sub	r3, r3, #1
     2d8:	e51b2400 	ldr	r2, [fp, #-1024]	@ 0xfffffc00
     2dc:	e0823003 	add	r3, r2, r3
     2e0:	e5d33000 	ldrb	r3, [r3]
     2e4:	e3530020 	cmp	r3, #32
     2e8:	1afffff2 	bne	2b8 <handle_completion+0x2c>
     2ec:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     2f0:	e5932000 	ldr	r2, [r3]
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e0423003 	sub	r3, r2, r3
     2fc:	e50b300c 	str	r3, [fp, #-12]
     300:	e51b300c 	ldr	r3, [fp, #-12]
     304:	e353000e 	cmp	r3, #14
     308:	da000001 	ble	314 <handle_completion+0x88>
     30c:	e3a0300e 	mov	r3, #14
     310:	e50b300c 	str	r3, [fp, #-12]
     314:	e24b3fff 	sub	r3, fp, #1020	@ 0x3fc
     318:	e3a0200f 	mov	r2, #15
     31c:	e3a01000 	mov	r1, #0
     320:	e1a00003 	mov	r0, r3
     324:	eb000564 	bl	18bc <memset>
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e51b2400 	ldr	r2, [fp, #-1024]	@ 0xfffffc00
     330:	e0821003 	add	r1, r2, r3
     334:	e24b3fff 	sub	r3, fp, #1020	@ 0x3fc
     338:	e51b200c 	ldr	r2, [fp, #-12]
     33c:	e1a00003 	mov	r0, r3
     340:	eb000629 	bl	1bec <memmove>
     344:	e24b2ffb 	sub	r2, fp, #1004	@ 0x3ec
     348:	e24b3fff 	sub	r3, fp, #1020	@ 0x3fc
     34c:	e1a01002 	mov	r1, r2
     350:	e1a00003 	mov	r0, r3
     354:	ebffff29 	bl	0 <getcompletions>
     358:	e1a03000 	mov	r3, r0
     35c:	e3530000 	cmp	r3, #0
     360:	ca000001 	bgt	36c <handle_completion+0xe0>
     364:	e3a03000 	mov	r3, #0
     368:	ea000081 	b	574 <handle_completion+0x2e8>
     36c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     370:	e3530000 	cmp	r3, #0
     374:	1a000001 	bne	380 <handle_completion+0xf4>
     378:	e3a03000 	mov	r3, #0
     37c:	ea00007c 	b	574 <handle_completion+0x2e8>
     380:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     384:	e3530001 	cmp	r3, #1
     388:	1a00003c 	bne	480 <handle_completion+0x1f4>
     38c:	e24b3ffb 	sub	r3, fp, #1004	@ 0x3ec
     390:	e1a00003 	mov	r0, r3
     394:	eb000533 	bl	1868 <strlen>
     398:	e1a03000 	mov	r3, r0
     39c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     3a0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3a4:	e51b300c 	ldr	r3, [fp, #-12]
     3a8:	e0423003 	sub	r3, r2, r3
     3ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3b0:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     3b4:	e5932000 	ldr	r2, [r3]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e0822003 	add	r2, r2, r3
     3c0:	e51b3408 	ldr	r3, [fp, #-1032]	@ 0xfffffbf8
     3c4:	e2433001 	sub	r3, r3, #1
     3c8:	e1520003 	cmp	r2, r3
     3cc:	aa000067 	bge	570 <handle_completion+0x2e4>
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3010 	str	r3, [fp, #-16]
     3d8:	ea000015 	b	434 <handle_completion+0x1a8>
     3dc:	e51b200c 	ldr	r2, [fp, #-12]
     3e0:	e51b3010 	ldr	r3, [fp, #-16]
     3e4:	e0823003 	add	r3, r2, r3
     3e8:	e2433004 	sub	r3, r3, #4
     3ec:	e083300b 	add	r3, r3, fp
     3f0:	e55333e8 	ldrb	r3, [r3, #-1000]	@ 0xfffffc18
     3f4:	e54b3021 	strb	r3, [fp, #-33]	@ 0xffffffdf
     3f8:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     3fc:	e5933000 	ldr	r3, [r3]
     400:	e1a02003 	mov	r2, r3
     404:	e51b3400 	ldr	r3, [fp, #-1024]	@ 0xfffffc00
     408:	e0833002 	add	r3, r3, r2
     40c:	e55b2021 	ldrb	r2, [fp, #-33]	@ 0xffffffdf
     410:	e5c32000 	strb	r2, [r3]
     414:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     418:	e5933000 	ldr	r3, [r3]
     41c:	e2832001 	add	r2, r3, #1
     420:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     424:	e5832000 	str	r2, [r3]
     428:	e51b3010 	ldr	r3, [fp, #-16]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b3010 	str	r3, [fp, #-16]
     434:	e51b2010 	ldr	r2, [fp, #-16]
     438:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     43c:	e1520003 	cmp	r2, r3
     440:	baffffe5 	blt	3dc <handle_completion+0x150>
     444:	e51b3404 	ldr	r3, [fp, #-1028]	@ 0xfffffbfc
     448:	e5933000 	ldr	r3, [r3]
     44c:	e1a02003 	mov	r2, r3
     450:	e51b3400 	ldr	r3, [fp, #-1024]	@ 0xfffffc00
     454:	e0833002 	add	r3, r3, r2
     458:	e3a02000 	mov	r2, #0
     45c:	e5c32000 	strb	r2, [r3]
     460:	e51b2400 	ldr	r2, [fp, #-1024]	@ 0xfffffc00
     464:	e59f1114 	ldr	r1, [pc, #276]	@ 580 <handle_completion+0x2f4>
     468:	e3a00002 	mov	r0, #2
     46c:	eb000895 	bl	26c8 <printf>
     470:	e59f110c 	ldr	r1, [pc, #268]	@ 584 <handle_completion+0x2f8>
     474:	e3a00002 	mov	r0, #2
     478:	eb000892 	bl	26c8 <printf>
     47c:	ea00003b 	b	570 <handle_completion+0x2e4>
     480:	e59f1100 	ldr	r1, [pc, #256]	@ 588 <handle_completion+0x2fc>
     484:	e3a00002 	mov	r0, #2
     488:	eb00088e 	bl	26c8 <printf>
     48c:	e3a03000 	mov	r3, #0
     490:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     494:	ea000014 	b	4ec <handle_completion+0x260>
     498:	e24b1ffb 	sub	r1, fp, #1004	@ 0x3ec
     49c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4a0:	e1a03002 	mov	r3, r2
     4a4:	e1a03203 	lsl	r3, r3, #4
     4a8:	e0433002 	sub	r3, r3, r2
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e1a02003 	mov	r2, r3
     4b4:	e59f10d0 	ldr	r1, [pc, #208]	@ 58c <handle_completion+0x300>
     4b8:	e3a00002 	mov	r0, #2
     4bc:	eb000881 	bl	26c8 <printf>
     4c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4c4:	e2833001 	add	r3, r3, #1
     4c8:	e2033003 	and	r3, r3, #3
     4cc:	e3530000 	cmp	r3, #0
     4d0:	1a000002 	bne	4e0 <handle_completion+0x254>
     4d4:	e59f10ac 	ldr	r1, [pc, #172]	@ 588 <handle_completion+0x2fc>
     4d8:	e3a00002 	mov	r0, #2
     4dc:	eb000879 	bl	26c8 <printf>
     4e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4e4:	e2833001 	add	r3, r3, #1
     4e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     4ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     4f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4f4:	e1520003 	cmp	r2, r3
     4f8:	baffffe6 	blt	498 <handle_completion+0x20c>
     4fc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     500:	e2033003 	and	r3, r3, #3
     504:	e3530000 	cmp	r3, #0
     508:	0a000002 	beq	518 <handle_completion+0x28c>
     50c:	e59f1074 	ldr	r1, [pc, #116]	@ 588 <handle_completion+0x2fc>
     510:	e3a00002 	mov	r0, #2
     514:	eb00086b 	bl	26c8 <printf>
     518:	e59f1070 	ldr	r1, [pc, #112]	@ 590 <handle_completion+0x304>
     51c:	e3a00002 	mov	r0, #2
     520:	eb000868 	bl	26c8 <printf>
     524:	e3a03000 	mov	r3, #0
     528:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     52c:	ea000009 	b	558 <handle_completion+0x2cc>
     530:	e51b2400 	ldr	r2, [fp, #-1024]	@ 0xfffffc00
     534:	e59f1044 	ldr	r1, [pc, #68]	@ 580 <handle_completion+0x2f4>
     538:	e3a00002 	mov	r0, #2
     53c:	eb000861 	bl	26c8 <printf>
     540:	e59f103c 	ldr	r1, [pc, #60]	@ 584 <handle_completion+0x2f8>
     544:	e3a00002 	mov	r0, #2
     548:	eb00085e 	bl	26c8 <printf>
     54c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     550:	e2833001 	add	r3, r3, #1
     554:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     558:	e51b0400 	ldr	r0, [fp, #-1024]	@ 0xfffffc00
     55c:	eb0004c1 	bl	1868 <strlen>
     560:	e1a02000 	mov	r2, r0
     564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     568:	e1520003 	cmp	r2, r3
     56c:	8affffef 	bhi	530 <handle_completion+0x2a4>
     570:	e3a03001 	mov	r3, #1
     574:	e1a00003 	mov	r0, r3
     578:	e24bd004 	sub	sp, fp, #4
     57c:	e8bd8800 	pop	{fp, pc}
     580:	00002d88 	.word	0x00002d88
     584:	00002d90 	.word	0x00002d90
     588:	00002d94 	.word	0x00002d94
     58c:	00002d98 	.word	0x00002d98
     590:	00002da0 	.word	0x00002da0

00000594 <getcmd>:
     594:	e92d4800 	push	{fp, lr}
     598:	e28db004 	add	fp, sp, #4
     59c:	e24dd018 	sub	sp, sp, #24
     5a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5a8:	e3a03000 	mov	r3, #0
     5ac:	e50b300c 	str	r3, [fp, #-12]
     5b0:	e59f11e0 	ldr	r1, [pc, #480]	@ 798 <getcmd+0x204>
     5b4:	e3a00002 	mov	r0, #2
     5b8:	eb000842 	bl	26c8 <printf>
     5bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5c0:	e1a02003 	mov	r2, r3
     5c4:	e3a01000 	mov	r1, #0
     5c8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     5cc:	eb0004ba 	bl	18bc <memset>
     5d0:	e24b300d 	sub	r3, fp, #13
     5d4:	e3a02001 	mov	r2, #1
     5d8:	e1a01003 	mov	r1, r3
     5dc:	e3a00000 	mov	r0, #0
     5e0:	eb0006b3 	bl	20b4 <read>
     5e4:	e1a03000 	mov	r3, r0
     5e8:	e3530001 	cmp	r3, #1
     5ec:	0a000001 	beq	5f8 <getcmd+0x64>
     5f0:	e3e03000 	mvn	r3, #0
     5f4:	ea000064 	b	78c <getcmd+0x1f8>
     5f8:	e55b300d 	ldrb	r3, [fp, #-13]
     5fc:	e3530009 	cmp	r3, #9
     600:	1a000005 	bne	61c <getcmd+0x88>
     604:	e24b300c 	sub	r3, fp, #12
     608:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     60c:	e1a01003 	mov	r1, r3
     610:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     614:	ebffff1c 	bl	28c <handle_completion>
     618:	ea00005a 	b	788 <getcmd+0x1f4>
     61c:	e55b300d 	ldrb	r3, [fp, #-13]
     620:	e353000a 	cmp	r3, #10
     624:	0a000002 	beq	634 <getcmd+0xa0>
     628:	e55b300d 	ldrb	r3, [fp, #-13]
     62c:	e353000d 	cmp	r3, #13
     630:	1a000010 	bne	678 <getcmd+0xe4>
     634:	e51b300c 	ldr	r3, [fp, #-12]
     638:	e1a02003 	mov	r2, r3
     63c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     640:	e0833002 	add	r3, r3, r2
     644:	e3a0200a 	mov	r2, #10
     648:	e5c32000 	strb	r2, [r3]
     64c:	e51b300c 	ldr	r3, [fp, #-12]
     650:	e2833001 	add	r3, r3, #1
     654:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     658:	e0823003 	add	r3, r2, r3
     65c:	e3a02000 	mov	r2, #0
     660:	e5c32000 	strb	r2, [r3]
     664:	e59f1130 	ldr	r1, [pc, #304]	@ 79c <getcmd+0x208>
     668:	e3a00002 	mov	r0, #2
     66c:	eb000815 	bl	26c8 <printf>
     670:	e3a03000 	mov	r3, #0
     674:	ea000044 	b	78c <getcmd+0x1f8>
     678:	e55b300d 	ldrb	r3, [fp, #-13]
     67c:	e3530008 	cmp	r3, #8
     680:	0a000002 	beq	690 <getcmd+0xfc>
     684:	e55b300d 	ldrb	r3, [fp, #-13]
     688:	e353007f 	cmp	r3, #127	@ 0x7f
     68c:	1a000024 	bne	724 <getcmd+0x190>
     690:	e51b300c 	ldr	r3, [fp, #-12]
     694:	e3530000 	cmp	r3, #0
     698:	da000039 	ble	784 <getcmd+0x1f0>
     69c:	e51b300c 	ldr	r3, [fp, #-12]
     6a0:	e2433001 	sub	r3, r3, #1
     6a4:	e50b300c 	str	r3, [fp, #-12]
     6a8:	e51b300c 	ldr	r3, [fp, #-12]
     6ac:	e1a02003 	mov	r2, r3
     6b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b4:	e0833002 	add	r3, r3, r2
     6b8:	e3a02000 	mov	r2, #0
     6bc:	e5c32000 	strb	r2, [r3]
     6c0:	e59f10d8 	ldr	r1, [pc, #216]	@ 7a0 <getcmd+0x20c>
     6c4:	e3a00002 	mov	r0, #2
     6c8:	eb0007fe 	bl	26c8 <printf>
     6cc:	e3a03000 	mov	r3, #0
     6d0:	e50b3008 	str	r3, [fp, #-8]
     6d4:	ea00000a 	b	704 <getcmd+0x170>
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     6e0:	e0823003 	add	r3, r2, r3
     6e4:	e5d33000 	ldrb	r3, [r3]
     6e8:	e1a02003 	mov	r2, r3
     6ec:	e59f10b0 	ldr	r1, [pc, #176]	@ 7a4 <getcmd+0x210>
     6f0:	e3a00002 	mov	r0, #2
     6f4:	eb0007f3 	bl	26c8 <printf>
     6f8:	e51b3008 	ldr	r3, [fp, #-8]
     6fc:	e2833001 	add	r3, r3, #1
     700:	e50b3008 	str	r3, [fp, #-8]
     704:	e51b300c 	ldr	r3, [fp, #-12]
     708:	e51b2008 	ldr	r2, [fp, #-8]
     70c:	e1520003 	cmp	r2, r3
     710:	bafffff0 	blt	6d8 <getcmd+0x144>
     714:	e59f108c 	ldr	r1, [pc, #140]	@ 7a8 <getcmd+0x214>
     718:	e3a00002 	mov	r0, #2
     71c:	eb0007e9 	bl	26c8 <printf>
     720:	ea000017 	b	784 <getcmd+0x1f0>
     724:	e55b300d 	ldrb	r3, [fp, #-13]
     728:	e353001f 	cmp	r3, #31
     72c:	9affffa7 	bls	5d0 <getcmd+0x3c>
     730:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     734:	e2432002 	sub	r2, r3, #2
     738:	e51b300c 	ldr	r3, [fp, #-12]
     73c:	e1520003 	cmp	r2, r3
     740:	daffffa2 	ble	5d0 <getcmd+0x3c>
     744:	e51b300c 	ldr	r3, [fp, #-12]
     748:	e1a02003 	mov	r2, r3
     74c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     750:	e0833002 	add	r3, r3, r2
     754:	e55b200d 	ldrb	r2, [fp, #-13]
     758:	e5c32000 	strb	r2, [r3]
     75c:	e51b300c 	ldr	r3, [fp, #-12]
     760:	e2833001 	add	r3, r3, #1
     764:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     768:	e0823003 	add	r3, r2, r3
     76c:	e3a02000 	mov	r2, #0
     770:	e5c32000 	strb	r2, [r3]
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e2833001 	add	r3, r3, #1
     77c:	e50b300c 	str	r3, [fp, #-12]
     780:	eaffff92 	b	5d0 <getcmd+0x3c>
     784:	e1a00000 	nop			@ (mov r0, r0)
     788:	eaffff90 	b	5d0 <getcmd+0x3c>
     78c:	e1a00003 	mov	r0, r3
     790:	e24bd004 	sub	sp, fp, #4
     794:	e8bd8800 	pop	{fp, pc}
     798:	00002da0 	.word	0x00002da0
     79c:	00002d94 	.word	0x00002d94
     7a0:	00002da4 	.word	0x00002da4
     7a4:	00002da8 	.word	0x00002da8
     7a8:	00002dac 	.word	0x00002dac

000007ac <runcmd>:
     7ac:	e92d4800 	push	{fp, lr}
     7b0:	e28db004 	add	fp, sp, #4
     7b4:	e24dd028 	sub	sp, sp, #40	@ 0x28
     7b8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     7bc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     7c0:	e3530000 	cmp	r3, #0
     7c4:	1a000000 	bne	7cc <runcmd+0x20>
     7c8:	eb00061e 	bl	2048 <exit>
     7cc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     7d0:	e5933000 	ldr	r3, [r3]
     7d4:	e2432001 	sub	r2, r3, #1
     7d8:	e59f3224 	ldr	r3, [pc, #548]	@ a04 <runcmd+0x258>
     7dc:	e3520004 	cmp	r2, #4
     7e0:	8a000001 	bhi	7ec <runcmd+0x40>
     7e4:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     7e8:	e1a00000 	nop			@ (mov r0, r0)
     7ec:	e59f0214 	ldr	r0, [pc, #532]	@ a08 <runcmd+0x25c>
     7f0:	eb0000d0 	bl	b38 <panic>
     7f4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     7f8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     7fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     800:	e5933004 	ldr	r3, [r3, #4]
     804:	e3530000 	cmp	r3, #0
     808:	1a000000 	bne	810 <runcmd+0x64>
     80c:	eb00060d 	bl	2048 <exit>
     810:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     814:	e5932004 	ldr	r2, [r3, #4]
     818:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     81c:	e2833004 	add	r3, r3, #4
     820:	e1a01003 	mov	r1, r3
     824:	e1a00002 	mov	r0, r2
     828:	eb000645 	bl	2144 <exec>
     82c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     830:	e5933004 	ldr	r3, [r3, #4]
     834:	e1a02003 	mov	r2, r3
     838:	e59f11cc 	ldr	r1, [pc, #460]	@ a0c <runcmd+0x260>
     83c:	e3a00002 	mov	r0, #2
     840:	eb0007a0 	bl	26c8 <printf>
     844:	ea00006d 	b	a00 <runcmd+0x254>
     848:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     84c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     850:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     854:	e5933014 	ldr	r3, [r3, #20]
     858:	e1a00003 	mov	r0, r3
     85c:	eb000626 	bl	20fc <close>
     860:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     864:	e5932008 	ldr	r2, [r3, #8]
     868:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     86c:	e5933010 	ldr	r3, [r3, #16]
     870:	e1a01003 	mov	r1, r3
     874:	e1a00002 	mov	r0, r2
     878:	eb00063a 	bl	2168 <open>
     87c:	e1a03000 	mov	r3, r0
     880:	e3530000 	cmp	r3, #0
     884:	aa000006 	bge	8a4 <runcmd+0xf8>
     888:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     88c:	e5933008 	ldr	r3, [r3, #8]
     890:	e1a02003 	mov	r2, r3
     894:	e59f1174 	ldr	r1, [pc, #372]	@ a10 <runcmd+0x264>
     898:	e3a00002 	mov	r0, #2
     89c:	eb000789 	bl	26c8 <printf>
     8a0:	eb0005e8 	bl	2048 <exit>
     8a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8a8:	e5933004 	ldr	r3, [r3, #4]
     8ac:	e1a00003 	mov	r0, r3
     8b0:	ebffffbd 	bl	7ac <runcmd>
     8b4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     8b8:	e50b300c 	str	r3, [fp, #-12]
     8bc:	eb0000a7 	bl	b60 <fork1>
     8c0:	e1a03000 	mov	r3, r0
     8c4:	e3530000 	cmp	r3, #0
     8c8:	1a000003 	bne	8dc <runcmd+0x130>
     8cc:	e51b300c 	ldr	r3, [fp, #-12]
     8d0:	e5933004 	ldr	r3, [r3, #4]
     8d4:	e1a00003 	mov	r0, r3
     8d8:	ebffffb3 	bl	7ac <runcmd>
     8dc:	eb0005e2 	bl	206c <wait>
     8e0:	e51b300c 	ldr	r3, [fp, #-12]
     8e4:	e5933008 	ldr	r3, [r3, #8]
     8e8:	e1a00003 	mov	r0, r3
     8ec:	ebffffae 	bl	7ac <runcmd>
     8f0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     8f4:	e50b3010 	str	r3, [fp, #-16]
     8f8:	e24b3020 	sub	r3, fp, #32
     8fc:	e1a00003 	mov	r0, r3
     900:	eb0005e2 	bl	2090 <pipe>
     904:	e1a03000 	mov	r3, r0
     908:	e3530000 	cmp	r3, #0
     90c:	aa000001 	bge	918 <runcmd+0x16c>
     910:	e59f00fc 	ldr	r0, [pc, #252]	@ a14 <runcmd+0x268>
     914:	eb000087 	bl	b38 <panic>
     918:	eb000090 	bl	b60 <fork1>
     91c:	e1a03000 	mov	r3, r0
     920:	e3530000 	cmp	r3, #0
     924:	1a00000e 	bne	964 <runcmd+0x1b8>
     928:	e3a00001 	mov	r0, #1
     92c:	eb0005f2 	bl	20fc <close>
     930:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     934:	e1a00003 	mov	r0, r3
     938:	eb000649 	bl	2264 <dup>
     93c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     940:	e1a00003 	mov	r0, r3
     944:	eb0005ec 	bl	20fc <close>
     948:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     94c:	e1a00003 	mov	r0, r3
     950:	eb0005e9 	bl	20fc <close>
     954:	e51b3010 	ldr	r3, [fp, #-16]
     958:	e5933004 	ldr	r3, [r3, #4]
     95c:	e1a00003 	mov	r0, r3
     960:	ebffff91 	bl	7ac <runcmd>
     964:	eb00007d 	bl	b60 <fork1>
     968:	e1a03000 	mov	r3, r0
     96c:	e3530000 	cmp	r3, #0
     970:	1a00000e 	bne	9b0 <runcmd+0x204>
     974:	e3a00000 	mov	r0, #0
     978:	eb0005df 	bl	20fc <close>
     97c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     980:	e1a00003 	mov	r0, r3
     984:	eb000636 	bl	2264 <dup>
     988:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     98c:	e1a00003 	mov	r0, r3
     990:	eb0005d9 	bl	20fc <close>
     994:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     998:	e1a00003 	mov	r0, r3
     99c:	eb0005d6 	bl	20fc <close>
     9a0:	e51b3010 	ldr	r3, [fp, #-16]
     9a4:	e5933008 	ldr	r3, [r3, #8]
     9a8:	e1a00003 	mov	r0, r3
     9ac:	ebffff7e 	bl	7ac <runcmd>
     9b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     9b4:	e1a00003 	mov	r0, r3
     9b8:	eb0005cf 	bl	20fc <close>
     9bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9c0:	e1a00003 	mov	r0, r3
     9c4:	eb0005cc 	bl	20fc <close>
     9c8:	eb0005a7 	bl	206c <wait>
     9cc:	eb0005a6 	bl	206c <wait>
     9d0:	ea00000a 	b	a00 <runcmd+0x254>
     9d4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     9d8:	e50b3008 	str	r3, [fp, #-8]
     9dc:	eb00005f 	bl	b60 <fork1>
     9e0:	e1a03000 	mov	r3, r0
     9e4:	e3530000 	cmp	r3, #0
     9e8:	1a000003 	bne	9fc <runcmd+0x250>
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e5933004 	ldr	r3, [r3, #4]
     9f4:	e1a00003 	mov	r0, r3
     9f8:	ebffff6b 	bl	7ac <runcmd>
     9fc:	e1a00000 	nop			@ (mov r0, r0)
     a00:	eb000590 	bl	2048 <exit>
     a04:	00002de0 	.word	0x00002de0
     a08:	00002db0 	.word	0x00002db0
     a0c:	00002db8 	.word	0x00002db8
     a10:	00002dc8 	.word	0x00002dc8
     a14:	00002dd8 	.word	0x00002dd8

00000a18 <main>:
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd008 	sub	sp, sp, #8
     a24:	ea000005 	b	a40 <main+0x28>
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e3530002 	cmp	r3, #2
     a30:	da000002 	ble	a40 <main+0x28>
     a34:	e51b0008 	ldr	r0, [fp, #-8]
     a38:	eb0005af 	bl	20fc <close>
     a3c:	ea000006 	b	a5c <main+0x44>
     a40:	e3a01002 	mov	r1, #2
     a44:	e59f00dc 	ldr	r0, [pc, #220]	@ b28 <main+0x110>
     a48:	eb0005c6 	bl	2168 <open>
     a4c:	e50b0008 	str	r0, [fp, #-8]
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e3530000 	cmp	r3, #0
     a58:	aafffff2 	bge	a28 <main+0x10>
     a5c:	ea00002a 	b	b0c <main+0xf4>
     a60:	e59f30c4 	ldr	r3, [pc, #196]	@ b2c <main+0x114>
     a64:	e5d33000 	ldrb	r3, [r3]
     a68:	e3530063 	cmp	r3, #99	@ 0x63
     a6c:	1a00001a 	bne	adc <main+0xc4>
     a70:	e59f30b4 	ldr	r3, [pc, #180]	@ b2c <main+0x114>
     a74:	e5d33001 	ldrb	r3, [r3, #1]
     a78:	e3530064 	cmp	r3, #100	@ 0x64
     a7c:	1a000016 	bne	adc <main+0xc4>
     a80:	e59f30a4 	ldr	r3, [pc, #164]	@ b2c <main+0x114>
     a84:	e5d33002 	ldrb	r3, [r3, #2]
     a88:	e3530020 	cmp	r3, #32
     a8c:	1a000012 	bne	adc <main+0xc4>
     a90:	e59f0094 	ldr	r0, [pc, #148]	@ b2c <main+0x114>
     a94:	eb000373 	bl	1868 <strlen>
     a98:	e1a03000 	mov	r3, r0
     a9c:	e2433001 	sub	r3, r3, #1
     aa0:	e59f2084 	ldr	r2, [pc, #132]	@ b2c <main+0x114>
     aa4:	e3a01000 	mov	r1, #0
     aa8:	e7c21003 	strb	r1, [r2, r3]
     aac:	e59f307c 	ldr	r3, [pc, #124]	@ b30 <main+0x118>
     ab0:	e1a00003 	mov	r0, r3
     ab4:	eb0005e1 	bl	2240 <chdir>
     ab8:	e1a03000 	mov	r3, r0
     abc:	e3530000 	cmp	r3, #0
     ac0:	aa000010 	bge	b08 <main+0xf0>
     ac4:	e59f3064 	ldr	r3, [pc, #100]	@ b30 <main+0x118>
     ac8:	e1a02003 	mov	r2, r3
     acc:	e59f1060 	ldr	r1, [pc, #96]	@ b34 <main+0x11c>
     ad0:	e3a00002 	mov	r0, #2
     ad4:	eb0006fb 	bl	26c8 <printf>
     ad8:	ea00000a 	b	b08 <main+0xf0>
     adc:	eb00001f 	bl	b60 <fork1>
     ae0:	e1a03000 	mov	r3, r0
     ae4:	e3530000 	cmp	r3, #0
     ae8:	1a000004 	bne	b00 <main+0xe8>
     aec:	e59f0038 	ldr	r0, [pc, #56]	@ b2c <main+0x114>
     af0:	eb00015c 	bl	1068 <parsecmd>
     af4:	e1a03000 	mov	r3, r0
     af8:	e1a00003 	mov	r0, r3
     afc:	ebffff2a 	bl	7ac <runcmd>
     b00:	eb000559 	bl	206c <wait>
     b04:	ea000000 	b	b0c <main+0xf4>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	e3a01064 	mov	r1, #100	@ 0x64
     b10:	e59f0014 	ldr	r0, [pc, #20]	@ b2c <main+0x114>
     b14:	ebfffe9e 	bl	594 <getcmd>
     b18:	e1a03000 	mov	r3, r0
     b1c:	e3530000 	cmp	r3, #0
     b20:	aaffffce 	bge	a60 <main+0x48>
     b24:	eb000547 	bl	2048 <exit>
     b28:	00002df4 	.word	0x00002df4
     b2c:	00003018 	.word	0x00003018
     b30:	0000301b 	.word	0x0000301b
     b34:	00002dfc 	.word	0x00002dfc

00000b38 <panic>:
     b38:	e92d4800 	push	{fp, lr}
     b3c:	e28db004 	add	fp, sp, #4
     b40:	e24dd008 	sub	sp, sp, #8
     b44:	e50b0008 	str	r0, [fp, #-8]
     b48:	e51b2008 	ldr	r2, [fp, #-8]
     b4c:	e59f1008 	ldr	r1, [pc, #8]	@ b5c <panic+0x24>
     b50:	e3a00002 	mov	r0, #2
     b54:	eb0006db 	bl	26c8 <printf>
     b58:	eb00053a 	bl	2048 <exit>
     b5c:	00002e0c 	.word	0x00002e0c

00000b60 <fork1>:
     b60:	e92d4800 	push	{fp, lr}
     b64:	e28db004 	add	fp, sp, #4
     b68:	e24dd008 	sub	sp, sp, #8
     b6c:	eb00052c 	bl	2024 <fork>
     b70:	e50b0008 	str	r0, [fp, #-8]
     b74:	e51b3008 	ldr	r3, [fp, #-8]
     b78:	e3730001 	cmn	r3, #1
     b7c:	1a000001 	bne	b88 <fork1+0x28>
     b80:	e59f0010 	ldr	r0, [pc, #16]	@ b98 <fork1+0x38>
     b84:	ebffffeb 	bl	b38 <panic>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e1a00003 	mov	r0, r3
     b90:	e24bd004 	sub	sp, fp, #4
     b94:	e8bd8800 	pop	{fp, pc}
     b98:	00002e10 	.word	0x00002e10

00000b9c <execcmd>:
     b9c:	e92d4800 	push	{fp, lr}
     ba0:	e28db004 	add	fp, sp, #4
     ba4:	e24dd008 	sub	sp, sp, #8
     ba8:	e3a00054 	mov	r0, #84	@ 0x54
     bac:	eb0007d4 	bl	2b04 <malloc>
     bb0:	e50b0008 	str	r0, [fp, #-8]
     bb4:	e3a02054 	mov	r2, #84	@ 0x54
     bb8:	e3a01000 	mov	r1, #0
     bbc:	e51b0008 	ldr	r0, [fp, #-8]
     bc0:	eb00033d 	bl	18bc <memset>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e3a02001 	mov	r2, #1
     bcc:	e5832000 	str	r2, [r3]
     bd0:	e51b3008 	ldr	r3, [fp, #-8]
     bd4:	e1a00003 	mov	r0, r3
     bd8:	e24bd004 	sub	sp, fp, #4
     bdc:	e8bd8800 	pop	{fp, pc}

00000be0 <redircmd>:
     be0:	e92d4800 	push	{fp, lr}
     be4:	e28db004 	add	fp, sp, #4
     be8:	e24dd018 	sub	sp, sp, #24
     bec:	e50b0010 	str	r0, [fp, #-16]
     bf0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     bf4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     bf8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bfc:	e3a00018 	mov	r0, #24
     c00:	eb0007bf 	bl	2b04 <malloc>
     c04:	e50b0008 	str	r0, [fp, #-8]
     c08:	e3a02018 	mov	r2, #24
     c0c:	e3a01000 	mov	r1, #0
     c10:	e51b0008 	ldr	r0, [fp, #-8]
     c14:	eb000328 	bl	18bc <memset>
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e3a02002 	mov	r2, #2
     c20:	e5832000 	str	r2, [r3]
     c24:	e51b3008 	ldr	r3, [fp, #-8]
     c28:	e51b2010 	ldr	r2, [fp, #-16]
     c2c:	e5832004 	str	r2, [r3, #4]
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     c38:	e5832008 	str	r2, [r3, #8]
     c3c:	e51b3008 	ldr	r3, [fp, #-8]
     c40:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     c44:	e583200c 	str	r2, [r3, #12]
     c48:	e51b3008 	ldr	r3, [fp, #-8]
     c4c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     c50:	e5832010 	str	r2, [r3, #16]
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e59b2004 	ldr	r2, [fp, #4]
     c5c:	e5832014 	str	r2, [r3, #20]
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e1a00003 	mov	r0, r3
     c68:	e24bd004 	sub	sp, fp, #4
     c6c:	e8bd8800 	pop	{fp, pc}

00000c70 <pipecmd>:
     c70:	e92d4800 	push	{fp, lr}
     c74:	e28db004 	add	fp, sp, #4
     c78:	e24dd010 	sub	sp, sp, #16
     c7c:	e50b0010 	str	r0, [fp, #-16]
     c80:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c84:	e3a0000c 	mov	r0, #12
     c88:	eb00079d 	bl	2b04 <malloc>
     c8c:	e50b0008 	str	r0, [fp, #-8]
     c90:	e3a0200c 	mov	r2, #12
     c94:	e3a01000 	mov	r1, #0
     c98:	e51b0008 	ldr	r0, [fp, #-8]
     c9c:	eb000306 	bl	18bc <memset>
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e3a02003 	mov	r2, #3
     ca8:	e5832000 	str	r2, [r3]
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e51b2010 	ldr	r2, [fp, #-16]
     cb4:	e5832004 	str	r2, [r3, #4]
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     cc0:	e5832008 	str	r2, [r3, #8]
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e1a00003 	mov	r0, r3
     ccc:	e24bd004 	sub	sp, fp, #4
     cd0:	e8bd8800 	pop	{fp, pc}

00000cd4 <listcmd>:
     cd4:	e92d4800 	push	{fp, lr}
     cd8:	e28db004 	add	fp, sp, #4
     cdc:	e24dd010 	sub	sp, sp, #16
     ce0:	e50b0010 	str	r0, [fp, #-16]
     ce4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     ce8:	e3a0000c 	mov	r0, #12
     cec:	eb000784 	bl	2b04 <malloc>
     cf0:	e50b0008 	str	r0, [fp, #-8]
     cf4:	e3a0200c 	mov	r2, #12
     cf8:	e3a01000 	mov	r1, #0
     cfc:	e51b0008 	ldr	r0, [fp, #-8]
     d00:	eb0002ed 	bl	18bc <memset>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e3a02004 	mov	r2, #4
     d0c:	e5832000 	str	r2, [r3]
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e51b2010 	ldr	r2, [fp, #-16]
     d18:	e5832004 	str	r2, [r3, #4]
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     d24:	e5832008 	str	r2, [r3, #8]
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e1a00003 	mov	r0, r3
     d30:	e24bd004 	sub	sp, fp, #4
     d34:	e8bd8800 	pop	{fp, pc}

00000d38 <backcmd>:
     d38:	e92d4800 	push	{fp, lr}
     d3c:	e28db004 	add	fp, sp, #4
     d40:	e24dd010 	sub	sp, sp, #16
     d44:	e50b0010 	str	r0, [fp, #-16]
     d48:	e3a00008 	mov	r0, #8
     d4c:	eb00076c 	bl	2b04 <malloc>
     d50:	e50b0008 	str	r0, [fp, #-8]
     d54:	e3a02008 	mov	r2, #8
     d58:	e3a01000 	mov	r1, #0
     d5c:	e51b0008 	ldr	r0, [fp, #-8]
     d60:	eb0002d5 	bl	18bc <memset>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e3a02005 	mov	r2, #5
     d6c:	e5832000 	str	r2, [r3]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e51b2010 	ldr	r2, [fp, #-16]
     d78:	e5832004 	str	r2, [r3, #4]
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e1a00003 	mov	r0, r3
     d84:	e24bd004 	sub	sp, fp, #4
     d88:	e8bd8800 	pop	{fp, pc}

00000d8c <gettoken>:
     d8c:	e92d4800 	push	{fp, lr}
     d90:	e28db004 	add	fp, sp, #4
     d94:	e24dd018 	sub	sp, sp, #24
     d98:	e50b0010 	str	r0, [fp, #-16]
     d9c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     da0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     da4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     da8:	e51b3010 	ldr	r3, [fp, #-16]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e50b3008 	str	r3, [fp, #-8]
     db4:	ea000002 	b	dc4 <gettoken+0x38>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e2833001 	add	r3, r3, #1
     dc0:	e50b3008 	str	r3, [fp, #-8]
     dc4:	e51b2008 	ldr	r2, [fp, #-8]
     dc8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     dcc:	e1520003 	cmp	r2, r3
     dd0:	2a000007 	bcs	df4 <gettoken+0x68>
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5d33000 	ldrb	r3, [r3]
     ddc:	e1a01003 	mov	r1, r3
     de0:	e59f01b8 	ldr	r0, [pc, #440]	@ fa0 <gettoken+0x214>
     de4:	eb0002fe 	bl	19e4 <strchr>
     de8:	e1a03000 	mov	r3, r0
     dec:	e3530000 	cmp	r3, #0
     df0:	1afffff0 	bne	db8 <gettoken+0x2c>
     df4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df8:	e3530000 	cmp	r3, #0
     dfc:	0a000002 	beq	e0c <gettoken+0x80>
     e00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e04:	e51b2008 	ldr	r2, [fp, #-8]
     e08:	e5832000 	str	r2, [r3]
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5d33000 	ldrb	r3, [r3]
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5d33000 	ldrb	r3, [r3]
     e20:	e353007c 	cmp	r3, #124	@ 0x7c
     e24:	0a00000f 	beq	e68 <gettoken+0xdc>
     e28:	e353007c 	cmp	r3, #124	@ 0x7c
     e2c:	ca00001e 	bgt	eac <gettoken+0x120>
     e30:	e3530000 	cmp	r3, #0
     e34:	0a000037 	beq	f18 <gettoken+0x18c>
     e38:	e3530000 	cmp	r3, #0
     e3c:	ba00001a 	blt	eac <gettoken+0x120>
     e40:	e353003e 	cmp	r3, #62	@ 0x3e
     e44:	ca000018 	bgt	eac <gettoken+0x120>
     e48:	e3530026 	cmp	r3, #38	@ 0x26
     e4c:	ba000016 	blt	eac <gettoken+0x120>
     e50:	e2432026 	sub	r2, r3, #38	@ 0x26
     e54:	e59f3148 	ldr	r3, [pc, #328]	@ fa4 <gettoken+0x218>
     e58:	e3520018 	cmp	r2, #24
     e5c:	8a000012 	bhi	eac <gettoken+0x120>
     e60:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     e64:	e1a00000 	nop			@ (mov r0, r0)
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e2833001 	add	r3, r3, #1
     e70:	e50b3008 	str	r3, [fp, #-8]
     e74:	ea00002c 	b	f2c <gettoken+0x1a0>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e2833001 	add	r3, r3, #1
     e80:	e50b3008 	str	r3, [fp, #-8]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5d33000 	ldrb	r3, [r3]
     e8c:	e353003e 	cmp	r3, #62	@ 0x3e
     e90:	1a000022 	bne	f20 <gettoken+0x194>
     e94:	e3a0302b 	mov	r3, #43	@ 0x2b
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e2833001 	add	r3, r3, #1
     ea4:	e50b3008 	str	r3, [fp, #-8]
     ea8:	ea00001c 	b	f20 <gettoken+0x194>
     eac:	e3a03061 	mov	r3, #97	@ 0x61
     eb0:	e50b300c 	str	r3, [fp, #-12]
     eb4:	ea000002 	b	ec4 <gettoken+0x138>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e2833001 	add	r3, r3, #1
     ec0:	e50b3008 	str	r3, [fp, #-8]
     ec4:	e51b2008 	ldr	r2, [fp, #-8]
     ec8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ecc:	e1520003 	cmp	r2, r3
     ed0:	2a000014 	bcs	f28 <gettoken+0x19c>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5d33000 	ldrb	r3, [r3]
     edc:	e1a01003 	mov	r1, r3
     ee0:	e59f00b8 	ldr	r0, [pc, #184]	@ fa0 <gettoken+0x214>
     ee4:	eb0002be 	bl	19e4 <strchr>
     ee8:	e1a03000 	mov	r3, r0
     eec:	e3530000 	cmp	r3, #0
     ef0:	1a00000c 	bne	f28 <gettoken+0x19c>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5d33000 	ldrb	r3, [r3]
     efc:	e1a01003 	mov	r1, r3
     f00:	e59f00a0 	ldr	r0, [pc, #160]	@ fa8 <gettoken+0x21c>
     f04:	eb0002b6 	bl	19e4 <strchr>
     f08:	e1a03000 	mov	r3, r0
     f0c:	e3530000 	cmp	r3, #0
     f10:	0affffe8 	beq	eb8 <gettoken+0x12c>
     f14:	ea000003 	b	f28 <gettoken+0x19c>
     f18:	e1a00000 	nop			@ (mov r0, r0)
     f1c:	ea000002 	b	f2c <gettoken+0x1a0>
     f20:	e1a00000 	nop			@ (mov r0, r0)
     f24:	ea000000 	b	f2c <gettoken+0x1a0>
     f28:	e1a00000 	nop			@ (mov r0, r0)
     f2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f30:	e3530000 	cmp	r3, #0
     f34:	0a000006 	beq	f54 <gettoken+0x1c8>
     f38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f3c:	e51b2008 	ldr	r2, [fp, #-8]
     f40:	e5832000 	str	r2, [r3]
     f44:	ea000002 	b	f54 <gettoken+0x1c8>
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e2833001 	add	r3, r3, #1
     f50:	e50b3008 	str	r3, [fp, #-8]
     f54:	e51b2008 	ldr	r2, [fp, #-8]
     f58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f5c:	e1520003 	cmp	r2, r3
     f60:	2a000007 	bcs	f84 <gettoken+0x1f8>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5d33000 	ldrb	r3, [r3]
     f6c:	e1a01003 	mov	r1, r3
     f70:	e59f0028 	ldr	r0, [pc, #40]	@ fa0 <gettoken+0x214>
     f74:	eb00029a 	bl	19e4 <strchr>
     f78:	e1a03000 	mov	r3, r0
     f7c:	e3530000 	cmp	r3, #0
     f80:	1afffff0 	bne	f48 <gettoken+0x1bc>
     f84:	e51b3010 	ldr	r3, [fp, #-16]
     f88:	e51b2008 	ldr	r2, [fp, #-8]
     f8c:	e5832000 	str	r2, [r3]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e1a00003 	mov	r0, r3
     f98:	e24bd004 	sub	sp, fp, #4
     f9c:	e8bd8800 	pop	{fp, pc}
     fa0:	00002ff4 	.word	0x00002ff4
     fa4:	00002e18 	.word	0x00002e18
     fa8:	00002ffc 	.word	0x00002ffc

00000fac <peek>:
     fac:	e92d4800 	push	{fp, lr}
     fb0:	e28db004 	add	fp, sp, #4
     fb4:	e24dd018 	sub	sp, sp, #24
     fb8:	e50b0010 	str	r0, [fp, #-16]
     fbc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     fc0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     fc4:	e51b3010 	ldr	r3, [fp, #-16]
     fc8:	e5933000 	ldr	r3, [r3]
     fcc:	e50b3008 	str	r3, [fp, #-8]
     fd0:	ea000002 	b	fe0 <peek+0x34>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e2833001 	add	r3, r3, #1
     fdc:	e50b3008 	str	r3, [fp, #-8]
     fe0:	e51b2008 	ldr	r2, [fp, #-8]
     fe4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fe8:	e1520003 	cmp	r2, r3
     fec:	2a000007 	bcs	1010 <peek+0x64>
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5d33000 	ldrb	r3, [r3]
     ff8:	e1a01003 	mov	r1, r3
     ffc:	e59f0060 	ldr	r0, [pc, #96]	@ 1064 <peek+0xb8>
    1000:	eb000277 	bl	19e4 <strchr>
    1004:	e1a03000 	mov	r3, r0
    1008:	e3530000 	cmp	r3, #0
    100c:	1afffff0 	bne	fd4 <peek+0x28>
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e51b2008 	ldr	r2, [fp, #-8]
    1018:	e5832000 	str	r2, [r3]
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e5d33000 	ldrb	r3, [r3]
    1024:	e3530000 	cmp	r3, #0
    1028:	0a000009 	beq	1054 <peek+0xa8>
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5d33000 	ldrb	r3, [r3]
    1034:	e1a01003 	mov	r1, r3
    1038:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    103c:	eb000268 	bl	19e4 <strchr>
    1040:	e1a03000 	mov	r3, r0
    1044:	e3530000 	cmp	r3, #0
    1048:	0a000001 	beq	1054 <peek+0xa8>
    104c:	e3a03001 	mov	r3, #1
    1050:	ea000000 	b	1058 <peek+0xac>
    1054:	e3a03000 	mov	r3, #0
    1058:	e1a00003 	mov	r0, r3
    105c:	e24bd004 	sub	sp, fp, #4
    1060:	e8bd8800 	pop	{fp, pc}
    1064:	00002ff4 	.word	0x00002ff4

00001068 <parsecmd>:
    1068:	e92d4810 	push	{r4, fp, lr}
    106c:	e28db008 	add	fp, sp, #8
    1070:	e24dd014 	sub	sp, sp, #20
    1074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1078:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
    107c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1080:	e1a00003 	mov	r0, r3
    1084:	eb0001f7 	bl	1868 <strlen>
    1088:	e1a03000 	mov	r3, r0
    108c:	e0843003 	add	r3, r4, r3
    1090:	e50b3010 	str	r3, [fp, #-16]
    1094:	e24b3018 	sub	r3, fp, #24
    1098:	e51b1010 	ldr	r1, [fp, #-16]
    109c:	e1a00003 	mov	r0, r3
    10a0:	eb000019 	bl	110c <parseline>
    10a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    10a8:	e24b3018 	sub	r3, fp, #24
    10ac:	e59f204c 	ldr	r2, [pc, #76]	@ 1100 <parsecmd+0x98>
    10b0:	e51b1010 	ldr	r1, [fp, #-16]
    10b4:	e1a00003 	mov	r0, r3
    10b8:	ebffffbb 	bl	fac <peek>
    10bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10c0:	e51b2010 	ldr	r2, [fp, #-16]
    10c4:	e1520003 	cmp	r2, r3
    10c8:	0a000006 	beq	10e8 <parsecmd+0x80>
    10cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    10d0:	e1a02003 	mov	r2, r3
    10d4:	e59f1028 	ldr	r1, [pc, #40]	@ 1104 <parsecmd+0x9c>
    10d8:	e3a00002 	mov	r0, #2
    10dc:	eb000579 	bl	26c8 <printf>
    10e0:	e59f0020 	ldr	r0, [pc, #32]	@ 1108 <parsecmd+0xa0>
    10e4:	ebfffe93 	bl	b38 <panic>
    10e8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    10ec:	eb00013c 	bl	15e4 <nulterminate>
    10f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10f4:	e1a00003 	mov	r0, r3
    10f8:	e24bd008 	sub	sp, fp, #8
    10fc:	e8bd8810 	pop	{r4, fp, pc}
    1100:	00002d90 	.word	0x00002d90
    1104:	00002e7c 	.word	0x00002e7c
    1108:	00002e8c 	.word	0x00002e8c

0000110c <parseline>:
    110c:	e92d4800 	push	{fp, lr}
    1110:	e28db004 	add	fp, sp, #4
    1114:	e24dd010 	sub	sp, sp, #16
    1118:	e50b0010 	str	r0, [fp, #-16]
    111c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1120:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1124:	e51b0010 	ldr	r0, [fp, #-16]
    1128:	eb00002a 	bl	11d8 <parsepipe>
    112c:	e50b0008 	str	r0, [fp, #-8]
    1130:	ea000007 	b	1154 <parseline+0x48>
    1134:	e3a03000 	mov	r3, #0
    1138:	e3a02000 	mov	r2, #0
    113c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1140:	e51b0010 	ldr	r0, [fp, #-16]
    1144:	ebffff10 	bl	d8c <gettoken>
    1148:	e51b0008 	ldr	r0, [fp, #-8]
    114c:	ebfffef9 	bl	d38 <backcmd>
    1150:	e50b0008 	str	r0, [fp, #-8]
    1154:	e59f2074 	ldr	r2, [pc, #116]	@ 11d0 <parseline+0xc4>
    1158:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    115c:	e51b0010 	ldr	r0, [fp, #-16]
    1160:	ebffff91 	bl	fac <peek>
    1164:	e1a03000 	mov	r3, r0
    1168:	e3530000 	cmp	r3, #0
    116c:	1afffff0 	bne	1134 <parseline+0x28>
    1170:	e59f205c 	ldr	r2, [pc, #92]	@ 11d4 <parseline+0xc8>
    1174:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1178:	e51b0010 	ldr	r0, [fp, #-16]
    117c:	ebffff8a 	bl	fac <peek>
    1180:	e1a03000 	mov	r3, r0
    1184:	e3530000 	cmp	r3, #0
    1188:	0a00000c 	beq	11c0 <parseline+0xb4>
    118c:	e3a03000 	mov	r3, #0
    1190:	e3a02000 	mov	r2, #0
    1194:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1198:	e51b0010 	ldr	r0, [fp, #-16]
    119c:	ebfffefa 	bl	d8c <gettoken>
    11a0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    11a4:	e51b0010 	ldr	r0, [fp, #-16]
    11a8:	ebffffd7 	bl	110c <parseline>
    11ac:	e1a03000 	mov	r3, r0
    11b0:	e1a01003 	mov	r1, r3
    11b4:	e51b0008 	ldr	r0, [fp, #-8]
    11b8:	ebfffec5 	bl	cd4 <listcmd>
    11bc:	e50b0008 	str	r0, [fp, #-8]
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e1a00003 	mov	r0, r3
    11c8:	e24bd004 	sub	sp, fp, #4
    11cc:	e8bd8800 	pop	{fp, pc}
    11d0:	00002e94 	.word	0x00002e94
    11d4:	00002e98 	.word	0x00002e98

000011d8 <parsepipe>:
    11d8:	e92d4800 	push	{fp, lr}
    11dc:	e28db004 	add	fp, sp, #4
    11e0:	e24dd010 	sub	sp, sp, #16
    11e4:	e50b0010 	str	r0, [fp, #-16]
    11e8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    11ec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    11f0:	e51b0010 	ldr	r0, [fp, #-16]
    11f4:	eb000097 	bl	1458 <parseexec>
    11f8:	e50b0008 	str	r0, [fp, #-8]
    11fc:	e59f2058 	ldr	r2, [pc, #88]	@ 125c <parsepipe+0x84>
    1200:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1204:	e51b0010 	ldr	r0, [fp, #-16]
    1208:	ebffff67 	bl	fac <peek>
    120c:	e1a03000 	mov	r3, r0
    1210:	e3530000 	cmp	r3, #0
    1214:	0a00000c 	beq	124c <parsepipe+0x74>
    1218:	e3a03000 	mov	r3, #0
    121c:	e3a02000 	mov	r2, #0
    1220:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1224:	e51b0010 	ldr	r0, [fp, #-16]
    1228:	ebfffed7 	bl	d8c <gettoken>
    122c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1230:	e51b0010 	ldr	r0, [fp, #-16]
    1234:	ebffffe7 	bl	11d8 <parsepipe>
    1238:	e1a03000 	mov	r3, r0
    123c:	e1a01003 	mov	r1, r3
    1240:	e51b0008 	ldr	r0, [fp, #-8]
    1244:	ebfffe89 	bl	c70 <pipecmd>
    1248:	e50b0008 	str	r0, [fp, #-8]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e1a00003 	mov	r0, r3
    1254:	e24bd004 	sub	sp, fp, #4
    1258:	e8bd8800 	pop	{fp, pc}
    125c:	00002e9c 	.word	0x00002e9c

00001260 <parseredirs>:
    1260:	e92d4800 	push	{fp, lr}
    1264:	e28db004 	add	fp, sp, #4
    1268:	e24dd028 	sub	sp, sp, #40	@ 0x28
    126c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1270:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1274:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    1278:	ea000036 	b	1358 <parseredirs+0xf8>
    127c:	e3a03000 	mov	r3, #0
    1280:	e3a02000 	mov	r2, #0
    1284:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1288:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    128c:	ebfffebe 	bl	d8c <gettoken>
    1290:	e50b0008 	str	r0, [fp, #-8]
    1294:	e24b3010 	sub	r3, fp, #16
    1298:	e24b200c 	sub	r2, fp, #12
    129c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    12a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    12a4:	ebfffeb8 	bl	d8c <gettoken>
    12a8:	e1a03000 	mov	r3, r0
    12ac:	e3530061 	cmp	r3, #97	@ 0x61
    12b0:	0a000001 	beq	12bc <parseredirs+0x5c>
    12b4:	e59f00c8 	ldr	r0, [pc, #200]	@ 1384 <parseredirs+0x124>
    12b8:	ebfffe1e 	bl	b38 <panic>
    12bc:	e51b3008 	ldr	r3, [fp, #-8]
    12c0:	e353003e 	cmp	r3, #62	@ 0x3e
    12c4:	0a000011 	beq	1310 <parseredirs+0xb0>
    12c8:	e51b3008 	ldr	r3, [fp, #-8]
    12cc:	e353003e 	cmp	r3, #62	@ 0x3e
    12d0:	ca000020 	bgt	1358 <parseredirs+0xf8>
    12d4:	e51b3008 	ldr	r3, [fp, #-8]
    12d8:	e353002b 	cmp	r3, #43	@ 0x2b
    12dc:	0a000014 	beq	1334 <parseredirs+0xd4>
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e353003c 	cmp	r3, #60	@ 0x3c
    12e8:	1a00001a 	bne	1358 <parseredirs+0xf8>
    12ec:	e51b100c 	ldr	r1, [fp, #-12]
    12f0:	e51b2010 	ldr	r2, [fp, #-16]
    12f4:	e3a03000 	mov	r3, #0
    12f8:	e58d3000 	str	r3, [sp]
    12fc:	e3a03000 	mov	r3, #0
    1300:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1304:	ebfffe35 	bl	be0 <redircmd>
    1308:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    130c:	ea000011 	b	1358 <parseredirs+0xf8>
    1310:	e51b100c 	ldr	r1, [fp, #-12]
    1314:	e51b2010 	ldr	r2, [fp, #-16]
    1318:	e3a03001 	mov	r3, #1
    131c:	e58d3000 	str	r3, [sp]
    1320:	e59f3060 	ldr	r3, [pc, #96]	@ 1388 <parseredirs+0x128>
    1324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1328:	ebfffe2c 	bl	be0 <redircmd>
    132c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1330:	ea000008 	b	1358 <parseredirs+0xf8>
    1334:	e51b100c 	ldr	r1, [fp, #-12]
    1338:	e51b2010 	ldr	r2, [fp, #-16]
    133c:	e3a03001 	mov	r3, #1
    1340:	e58d3000 	str	r3, [sp]
    1344:	e59f303c 	ldr	r3, [pc, #60]	@ 1388 <parseredirs+0x128>
    1348:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    134c:	ebfffe23 	bl	be0 <redircmd>
    1350:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1354:	e1a00000 	nop			@ (mov r0, r0)
    1358:	e59f202c 	ldr	r2, [pc, #44]	@ 138c <parseredirs+0x12c>
    135c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1360:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    1364:	ebffff10 	bl	fac <peek>
    1368:	e1a03000 	mov	r3, r0
    136c:	e3530000 	cmp	r3, #0
    1370:	1affffc1 	bne	127c <parseredirs+0x1c>
    1374:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1378:	e1a00003 	mov	r0, r3
    137c:	e24bd004 	sub	sp, fp, #4
    1380:	e8bd8800 	pop	{fp, pc}
    1384:	00002ea0 	.word	0x00002ea0
    1388:	00000201 	.word	0x00000201
    138c:	00002ec0 	.word	0x00002ec0

00001390 <parseblock>:
    1390:	e92d4800 	push	{fp, lr}
    1394:	e28db004 	add	fp, sp, #4
    1398:	e24dd010 	sub	sp, sp, #16
    139c:	e50b0010 	str	r0, [fp, #-16]
    13a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    13a4:	e59f209c 	ldr	r2, [pc, #156]	@ 1448 <parseblock+0xb8>
    13a8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    13ac:	e51b0010 	ldr	r0, [fp, #-16]
    13b0:	ebfffefd 	bl	fac <peek>
    13b4:	e1a03000 	mov	r3, r0
    13b8:	e3530000 	cmp	r3, #0
    13bc:	1a000001 	bne	13c8 <parseblock+0x38>
    13c0:	e59f0084 	ldr	r0, [pc, #132]	@ 144c <parseblock+0xbc>
    13c4:	ebfffddb 	bl	b38 <panic>
    13c8:	e3a03000 	mov	r3, #0
    13cc:	e3a02000 	mov	r2, #0
    13d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    13d4:	e51b0010 	ldr	r0, [fp, #-16]
    13d8:	ebfffe6b 	bl	d8c <gettoken>
    13dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    13e0:	e51b0010 	ldr	r0, [fp, #-16]
    13e4:	ebffff48 	bl	110c <parseline>
    13e8:	e50b0008 	str	r0, [fp, #-8]
    13ec:	e59f205c 	ldr	r2, [pc, #92]	@ 1450 <parseblock+0xc0>
    13f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    13f4:	e51b0010 	ldr	r0, [fp, #-16]
    13f8:	ebfffeeb 	bl	fac <peek>
    13fc:	e1a03000 	mov	r3, r0
    1400:	e3530000 	cmp	r3, #0
    1404:	1a000001 	bne	1410 <parseblock+0x80>
    1408:	e59f0044 	ldr	r0, [pc, #68]	@ 1454 <parseblock+0xc4>
    140c:	ebfffdc9 	bl	b38 <panic>
    1410:	e3a03000 	mov	r3, #0
    1414:	e3a02000 	mov	r2, #0
    1418:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    141c:	e51b0010 	ldr	r0, [fp, #-16]
    1420:	ebfffe59 	bl	d8c <gettoken>
    1424:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1428:	e51b1010 	ldr	r1, [fp, #-16]
    142c:	e51b0008 	ldr	r0, [fp, #-8]
    1430:	ebffff8a 	bl	1260 <parseredirs>
    1434:	e50b0008 	str	r0, [fp, #-8]
    1438:	e51b3008 	ldr	r3, [fp, #-8]
    143c:	e1a00003 	mov	r0, r3
    1440:	e24bd004 	sub	sp, fp, #4
    1444:	e8bd8800 	pop	{fp, pc}
    1448:	00002ec4 	.word	0x00002ec4
    144c:	00002ec8 	.word	0x00002ec8
    1450:	00002ed4 	.word	0x00002ed4
    1454:	00002ed8 	.word	0x00002ed8

00001458 <parseexec>:
    1458:	e92d4800 	push	{fp, lr}
    145c:	e28db004 	add	fp, sp, #4
    1460:	e24dd020 	sub	sp, sp, #32
    1464:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1468:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
    146c:	e59f2160 	ldr	r2, [pc, #352]	@ 15d4 <parseexec+0x17c>
    1470:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    1474:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    1478:	ebfffecb 	bl	fac <peek>
    147c:	e1a03000 	mov	r3, r0
    1480:	e3530000 	cmp	r3, #0
    1484:	0a000004 	beq	149c <parseexec+0x44>
    1488:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    148c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    1490:	ebffffbe 	bl	1390 <parseblock>
    1494:	e1a03000 	mov	r3, r0
    1498:	ea00004a 	b	15c8 <parseexec+0x170>
    149c:	ebfffdbe 	bl	b9c <execcmd>
    14a0:	e50b000c 	str	r0, [fp, #-12]
    14a4:	e51b300c 	ldr	r3, [fp, #-12]
    14a8:	e50b3010 	str	r3, [fp, #-16]
    14ac:	e3a03000 	mov	r3, #0
    14b0:	e50b3008 	str	r3, [fp, #-8]
    14b4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
    14b8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    14bc:	e51b000c 	ldr	r0, [fp, #-12]
    14c0:	ebffff66 	bl	1260 <parseredirs>
    14c4:	e50b000c 	str	r0, [fp, #-12]
    14c8:	ea000027 	b	156c <parseexec+0x114>
    14cc:	e24b301c 	sub	r3, fp, #28
    14d0:	e24b2018 	sub	r2, fp, #24
    14d4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    14d8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    14dc:	ebfffe2a 	bl	d8c <gettoken>
    14e0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    14e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14e8:	e3530000 	cmp	r3, #0
    14ec:	0a000026 	beq	158c <parseexec+0x134>
    14f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14f4:	e3530061 	cmp	r3, #97	@ 0x61
    14f8:	0a000001 	beq	1504 <parseexec+0xac>
    14fc:	e59f00d4 	ldr	r0, [pc, #212]	@ 15d8 <parseexec+0x180>
    1500:	ebfffd8c 	bl	b38 <panic>
    1504:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1508:	e51b1010 	ldr	r1, [fp, #-16]
    150c:	e51b3008 	ldr	r3, [fp, #-8]
    1510:	e1a03103 	lsl	r3, r3, #2
    1514:	e0813003 	add	r3, r1, r3
    1518:	e5832004 	str	r2, [r3, #4]
    151c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1520:	e51b1010 	ldr	r1, [fp, #-16]
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e283300a 	add	r3, r3, #10
    152c:	e1a03103 	lsl	r3, r3, #2
    1530:	e0813003 	add	r3, r1, r3
    1534:	e5832004 	str	r2, [r3, #4]
    1538:	e51b3008 	ldr	r3, [fp, #-8]
    153c:	e2833001 	add	r3, r3, #1
    1540:	e50b3008 	str	r3, [fp, #-8]
    1544:	e51b3008 	ldr	r3, [fp, #-8]
    1548:	e3530009 	cmp	r3, #9
    154c:	da000001 	ble	1558 <parseexec+0x100>
    1550:	e59f0084 	ldr	r0, [pc, #132]	@ 15dc <parseexec+0x184>
    1554:	ebfffd77 	bl	b38 <panic>
    1558:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
    155c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1560:	e51b000c 	ldr	r0, [fp, #-12]
    1564:	ebffff3d 	bl	1260 <parseredirs>
    1568:	e50b000c 	str	r0, [fp, #-12]
    156c:	e59f206c 	ldr	r2, [pc, #108]	@ 15e0 <parseexec+0x188>
    1570:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    1574:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    1578:	ebfffe8b 	bl	fac <peek>
    157c:	e1a03000 	mov	r3, r0
    1580:	e3530000 	cmp	r3, #0
    1584:	0affffd0 	beq	14cc <parseexec+0x74>
    1588:	ea000000 	b	1590 <parseexec+0x138>
    158c:	e1a00000 	nop			@ (mov r0, r0)
    1590:	e51b2010 	ldr	r2, [fp, #-16]
    1594:	e51b3008 	ldr	r3, [fp, #-8]
    1598:	e1a03103 	lsl	r3, r3, #2
    159c:	e0823003 	add	r3, r2, r3
    15a0:	e3a02000 	mov	r2, #0
    15a4:	e5832004 	str	r2, [r3, #4]
    15a8:	e51b2010 	ldr	r2, [fp, #-16]
    15ac:	e51b3008 	ldr	r3, [fp, #-8]
    15b0:	e283300a 	add	r3, r3, #10
    15b4:	e1a03103 	lsl	r3, r3, #2
    15b8:	e0823003 	add	r3, r2, r3
    15bc:	e3a02000 	mov	r2, #0
    15c0:	e5832004 	str	r2, [r3, #4]
    15c4:	e51b300c 	ldr	r3, [fp, #-12]
    15c8:	e1a00003 	mov	r0, r3
    15cc:	e24bd004 	sub	sp, fp, #4
    15d0:	e8bd8800 	pop	{fp, pc}
    15d4:	00002ec4 	.word	0x00002ec4
    15d8:	00002e8c 	.word	0x00002e8c
    15dc:	00002eec 	.word	0x00002eec
    15e0:	00002efc 	.word	0x00002efc

000015e4 <nulterminate>:
    15e4:	e92d4800 	push	{fp, lr}
    15e8:	e28db004 	add	fp, sp, #4
    15ec:	e24dd020 	sub	sp, sp, #32
    15f0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    15f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    15f8:	e3530000 	cmp	r3, #0
    15fc:	1a000001 	bne	1608 <nulterminate+0x24>
    1600:	e3a03000 	mov	r3, #0
    1604:	ea000048 	b	172c <nulterminate+0x148>
    1608:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    160c:	e5933000 	ldr	r3, [r3]
    1610:	e2432001 	sub	r2, r3, #1
    1614:	e59f311c 	ldr	r3, [pc, #284]	@ 1738 <nulterminate+0x154>
    1618:	e3520004 	cmp	r2, #4
    161c:	8a000041 	bhi	1728 <nulterminate+0x144>
    1620:	e793f102 	ldr	pc, [r3, r2, lsl #2]
    1624:	e1a00000 	nop			@ (mov r0, r0)
    1628:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    162c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1630:	e3a03000 	mov	r3, #0
    1634:	e50b3008 	str	r3, [fp, #-8]
    1638:	ea00000a 	b	1668 <nulterminate+0x84>
    163c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e283300a 	add	r3, r3, #10
    1648:	e1a03103 	lsl	r3, r3, #2
    164c:	e0823003 	add	r3, r2, r3
    1650:	e5933004 	ldr	r3, [r3, #4]
    1654:	e3a02000 	mov	r2, #0
    1658:	e5c32000 	strb	r2, [r3]
    165c:	e51b3008 	ldr	r3, [fp, #-8]
    1660:	e2833001 	add	r3, r3, #1
    1664:	e50b3008 	str	r3, [fp, #-8]
    1668:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    166c:	e51b3008 	ldr	r3, [fp, #-8]
    1670:	e1a03103 	lsl	r3, r3, #2
    1674:	e0823003 	add	r3, r2, r3
    1678:	e5933004 	ldr	r3, [r3, #4]
    167c:	e3530000 	cmp	r3, #0
    1680:	1affffed 	bne	163c <nulterminate+0x58>
    1684:	ea000027 	b	1728 <nulterminate+0x144>
    1688:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    168c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1690:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1694:	e5933004 	ldr	r3, [r3, #4]
    1698:	e1a00003 	mov	r0, r3
    169c:	ebffffd0 	bl	15e4 <nulterminate>
    16a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16a4:	e593300c 	ldr	r3, [r3, #12]
    16a8:	e3a02000 	mov	r2, #0
    16ac:	e5c32000 	strb	r2, [r3]
    16b0:	ea00001c 	b	1728 <nulterminate+0x144>
    16b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    16b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    16bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    16c0:	e5933004 	ldr	r3, [r3, #4]
    16c4:	e1a00003 	mov	r0, r3
    16c8:	ebffffc5 	bl	15e4 <nulterminate>
    16cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    16d0:	e5933008 	ldr	r3, [r3, #8]
    16d4:	e1a00003 	mov	r0, r3
    16d8:	ebffffc1 	bl	15e4 <nulterminate>
    16dc:	ea000011 	b	1728 <nulterminate+0x144>
    16e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    16e4:	e50b3010 	str	r3, [fp, #-16]
    16e8:	e51b3010 	ldr	r3, [fp, #-16]
    16ec:	e5933004 	ldr	r3, [r3, #4]
    16f0:	e1a00003 	mov	r0, r3
    16f4:	ebffffba 	bl	15e4 <nulterminate>
    16f8:	e51b3010 	ldr	r3, [fp, #-16]
    16fc:	e5933008 	ldr	r3, [r3, #8]
    1700:	e1a00003 	mov	r0, r3
    1704:	ebffffb6 	bl	15e4 <nulterminate>
    1708:	ea000006 	b	1728 <nulterminate+0x144>
    170c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1710:	e50b300c 	str	r3, [fp, #-12]
    1714:	e51b300c 	ldr	r3, [fp, #-12]
    1718:	e5933004 	ldr	r3, [r3, #4]
    171c:	e1a00003 	mov	r0, r3
    1720:	ebffffaf 	bl	15e4 <nulterminate>
    1724:	e1a00000 	nop			@ (mov r0, r0)
    1728:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    172c:	e1a00003 	mov	r0, r3
    1730:	e24bd004 	sub	sp, fp, #4
    1734:	e8bd8800 	pop	{fp, pc}
    1738:	00002f04 	.word	0x00002f04

0000173c <xchg>:
    173c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1740:	e28db000 	add	fp, sp, #0
    1744:	e24dd014 	sub	sp, sp, #20
    1748:	e50b0010 	str	r0, [fp, #-16]
    174c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1750:	e51b1010 	ldr	r1, [fp, #-16]
    1754:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    1758:	e1912f9f 	ldrex	r2, [r1]
    175c:	e1813f90 	strex	r3, r0, [r1]
    1760:	e50b2008 	str	r2, [fp, #-8]
    1764:	e50b300c 	str	r3, [fp, #-12]
    1768:	e51b300c 	ldr	r3, [fp, #-12]
    176c:	e3530000 	cmp	r3, #0
    1770:	1afffff6 	bne	1750 <xchg+0x14>
    1774:	e51b3008 	ldr	r3, [fp, #-8]
    1778:	e1a00003 	mov	r0, r3
    177c:	e28bd000 	add	sp, fp, #0
    1780:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1784:	e12fff1e 	bx	lr

00001788 <strcpy>:
    1788:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    178c:	e28db000 	add	fp, sp, #0
    1790:	e24dd014 	sub	sp, sp, #20
    1794:	e50b0010 	str	r0, [fp, #-16]
    1798:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    179c:	e51b3010 	ldr	r3, [fp, #-16]
    17a0:	e50b3008 	str	r3, [fp, #-8]
    17a4:	e1a00000 	nop			@ (mov r0, r0)
    17a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    17ac:	e2823001 	add	r3, r2, #1
    17b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    17b4:	e51b3010 	ldr	r3, [fp, #-16]
    17b8:	e2831001 	add	r1, r3, #1
    17bc:	e50b1010 	str	r1, [fp, #-16]
    17c0:	e5d22000 	ldrb	r2, [r2]
    17c4:	e5c32000 	strb	r2, [r3]
    17c8:	e5d33000 	ldrb	r3, [r3]
    17cc:	e3530000 	cmp	r3, #0
    17d0:	1afffff4 	bne	17a8 <strcpy+0x20>
    17d4:	e51b3008 	ldr	r3, [fp, #-8]
    17d8:	e1a00003 	mov	r0, r3
    17dc:	e28bd000 	add	sp, fp, #0
    17e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    17e4:	e12fff1e 	bx	lr

000017e8 <strcmp>:
    17e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    17ec:	e28db000 	add	fp, sp, #0
    17f0:	e24dd00c 	sub	sp, sp, #12
    17f4:	e50b0008 	str	r0, [fp, #-8]
    17f8:	e50b100c 	str	r1, [fp, #-12]
    17fc:	ea000005 	b	1818 <strcmp+0x30>
    1800:	e51b3008 	ldr	r3, [fp, #-8]
    1804:	e2833001 	add	r3, r3, #1
    1808:	e50b3008 	str	r3, [fp, #-8]
    180c:	e51b300c 	ldr	r3, [fp, #-12]
    1810:	e2833001 	add	r3, r3, #1
    1814:	e50b300c 	str	r3, [fp, #-12]
    1818:	e51b3008 	ldr	r3, [fp, #-8]
    181c:	e5d33000 	ldrb	r3, [r3]
    1820:	e3530000 	cmp	r3, #0
    1824:	0a000005 	beq	1840 <strcmp+0x58>
    1828:	e51b3008 	ldr	r3, [fp, #-8]
    182c:	e5d32000 	ldrb	r2, [r3]
    1830:	e51b300c 	ldr	r3, [fp, #-12]
    1834:	e5d33000 	ldrb	r3, [r3]
    1838:	e1520003 	cmp	r2, r3
    183c:	0affffef 	beq	1800 <strcmp+0x18>
    1840:	e51b3008 	ldr	r3, [fp, #-8]
    1844:	e5d33000 	ldrb	r3, [r3]
    1848:	e1a02003 	mov	r2, r3
    184c:	e51b300c 	ldr	r3, [fp, #-12]
    1850:	e5d33000 	ldrb	r3, [r3]
    1854:	e0423003 	sub	r3, r2, r3
    1858:	e1a00003 	mov	r0, r3
    185c:	e28bd000 	add	sp, fp, #0
    1860:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1864:	e12fff1e 	bx	lr

00001868 <strlen>:
    1868:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    186c:	e28db000 	add	fp, sp, #0
    1870:	e24dd014 	sub	sp, sp, #20
    1874:	e50b0010 	str	r0, [fp, #-16]
    1878:	e3a03000 	mov	r3, #0
    187c:	e50b3008 	str	r3, [fp, #-8]
    1880:	ea000002 	b	1890 <strlen+0x28>
    1884:	e51b3008 	ldr	r3, [fp, #-8]
    1888:	e2833001 	add	r3, r3, #1
    188c:	e50b3008 	str	r3, [fp, #-8]
    1890:	e51b3008 	ldr	r3, [fp, #-8]
    1894:	e51b2010 	ldr	r2, [fp, #-16]
    1898:	e0823003 	add	r3, r2, r3
    189c:	e5d33000 	ldrb	r3, [r3]
    18a0:	e3530000 	cmp	r3, #0
    18a4:	1afffff6 	bne	1884 <strlen+0x1c>
    18a8:	e51b3008 	ldr	r3, [fp, #-8]
    18ac:	e1a00003 	mov	r0, r3
    18b0:	e28bd000 	add	sp, fp, #0
    18b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    18b8:	e12fff1e 	bx	lr

000018bc <memset>:
    18bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    18c0:	e28db000 	add	fp, sp, #0
    18c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    18c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    18cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    18d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    18d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    18d8:	e50b3008 	str	r3, [fp, #-8]
    18dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    18e0:	e54b300d 	strb	r3, [fp, #-13]
    18e4:	e55b200d 	ldrb	r2, [fp, #-13]
    18e8:	e1a03002 	mov	r3, r2
    18ec:	e1a03403 	lsl	r3, r3, #8
    18f0:	e0833002 	add	r3, r3, r2
    18f4:	e1a03803 	lsl	r3, r3, #16
    18f8:	e1a02003 	mov	r2, r3
    18fc:	e55b300d 	ldrb	r3, [fp, #-13]
    1900:	e1a03403 	lsl	r3, r3, #8
    1904:	e1822003 	orr	r2, r2, r3
    1908:	e55b300d 	ldrb	r3, [fp, #-13]
    190c:	e1823003 	orr	r3, r2, r3
    1910:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1914:	ea000008 	b	193c <memset+0x80>
    1918:	e51b3008 	ldr	r3, [fp, #-8]
    191c:	e55b200d 	ldrb	r2, [fp, #-13]
    1920:	e5c32000 	strb	r2, [r3]
    1924:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1928:	e2433001 	sub	r3, r3, #1
    192c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1930:	e51b3008 	ldr	r3, [fp, #-8]
    1934:	e2833001 	add	r3, r3, #1
    1938:	e50b3008 	str	r3, [fp, #-8]
    193c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1940:	e3530000 	cmp	r3, #0
    1944:	0a000003 	beq	1958 <memset+0x9c>
    1948:	e51b3008 	ldr	r3, [fp, #-8]
    194c:	e2033003 	and	r3, r3, #3
    1950:	e3530000 	cmp	r3, #0
    1954:	1affffef 	bne	1918 <memset+0x5c>
    1958:	e51b3008 	ldr	r3, [fp, #-8]
    195c:	e50b300c 	str	r3, [fp, #-12]
    1960:	ea000008 	b	1988 <memset+0xcc>
    1964:	e51b300c 	ldr	r3, [fp, #-12]
    1968:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    196c:	e5832000 	str	r2, [r3]
    1970:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1974:	e2433004 	sub	r3, r3, #4
    1978:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    197c:	e51b300c 	ldr	r3, [fp, #-12]
    1980:	e2833004 	add	r3, r3, #4
    1984:	e50b300c 	str	r3, [fp, #-12]
    1988:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    198c:	e3530003 	cmp	r3, #3
    1990:	8afffff3 	bhi	1964 <memset+0xa8>
    1994:	e51b300c 	ldr	r3, [fp, #-12]
    1998:	e50b3008 	str	r3, [fp, #-8]
    199c:	ea000008 	b	19c4 <memset+0x108>
    19a0:	e51b3008 	ldr	r3, [fp, #-8]
    19a4:	e55b200d 	ldrb	r2, [fp, #-13]
    19a8:	e5c32000 	strb	r2, [r3]
    19ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    19b0:	e2433001 	sub	r3, r3, #1
    19b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    19b8:	e51b3008 	ldr	r3, [fp, #-8]
    19bc:	e2833001 	add	r3, r3, #1
    19c0:	e50b3008 	str	r3, [fp, #-8]
    19c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    19c8:	e3530000 	cmp	r3, #0
    19cc:	1afffff3 	bne	19a0 <memset+0xe4>
    19d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    19d4:	e1a00003 	mov	r0, r3
    19d8:	e28bd000 	add	sp, fp, #0
    19dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    19e0:	e12fff1e 	bx	lr

000019e4 <strchr>:
    19e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    19e8:	e28db000 	add	fp, sp, #0
    19ec:	e24dd00c 	sub	sp, sp, #12
    19f0:	e50b0008 	str	r0, [fp, #-8]
    19f4:	e1a03001 	mov	r3, r1
    19f8:	e54b3009 	strb	r3, [fp, #-9]
    19fc:	ea000009 	b	1a28 <strchr+0x44>
    1a00:	e51b3008 	ldr	r3, [fp, #-8]
    1a04:	e5d33000 	ldrb	r3, [r3]
    1a08:	e55b2009 	ldrb	r2, [fp, #-9]
    1a0c:	e1520003 	cmp	r2, r3
    1a10:	1a000001 	bne	1a1c <strchr+0x38>
    1a14:	e51b3008 	ldr	r3, [fp, #-8]
    1a18:	ea000007 	b	1a3c <strchr+0x58>
    1a1c:	e51b3008 	ldr	r3, [fp, #-8]
    1a20:	e2833001 	add	r3, r3, #1
    1a24:	e50b3008 	str	r3, [fp, #-8]
    1a28:	e51b3008 	ldr	r3, [fp, #-8]
    1a2c:	e5d33000 	ldrb	r3, [r3]
    1a30:	e3530000 	cmp	r3, #0
    1a34:	1afffff1 	bne	1a00 <strchr+0x1c>
    1a38:	e3a03000 	mov	r3, #0
    1a3c:	e1a00003 	mov	r0, r3
    1a40:	e28bd000 	add	sp, fp, #0
    1a44:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1a48:	e12fff1e 	bx	lr

00001a4c <gets>:
    1a4c:	e92d4800 	push	{fp, lr}
    1a50:	e28db004 	add	fp, sp, #4
    1a54:	e24dd018 	sub	sp, sp, #24
    1a58:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1a5c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1a60:	e3a03000 	mov	r3, #0
    1a64:	e50b3008 	str	r3, [fp, #-8]
    1a68:	ea000016 	b	1ac8 <gets+0x7c>
    1a6c:	e24b300d 	sub	r3, fp, #13
    1a70:	e3a02001 	mov	r2, #1
    1a74:	e1a01003 	mov	r1, r3
    1a78:	e3a00000 	mov	r0, #0
    1a7c:	eb00018c 	bl	20b4 <read>
    1a80:	e50b000c 	str	r0, [fp, #-12]
    1a84:	e51b300c 	ldr	r3, [fp, #-12]
    1a88:	e3530000 	cmp	r3, #0
    1a8c:	da000013 	ble	1ae0 <gets+0x94>
    1a90:	e51b3008 	ldr	r3, [fp, #-8]
    1a94:	e2832001 	add	r2, r3, #1
    1a98:	e50b2008 	str	r2, [fp, #-8]
    1a9c:	e1a02003 	mov	r2, r3
    1aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1aa4:	e0833002 	add	r3, r3, r2
    1aa8:	e55b200d 	ldrb	r2, [fp, #-13]
    1aac:	e5c32000 	strb	r2, [r3]
    1ab0:	e55b300d 	ldrb	r3, [fp, #-13]
    1ab4:	e353000a 	cmp	r3, #10
    1ab8:	0a000009 	beq	1ae4 <gets+0x98>
    1abc:	e55b300d 	ldrb	r3, [fp, #-13]
    1ac0:	e353000d 	cmp	r3, #13
    1ac4:	0a000006 	beq	1ae4 <gets+0x98>
    1ac8:	e51b3008 	ldr	r3, [fp, #-8]
    1acc:	e2833001 	add	r3, r3, #1
    1ad0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1ad4:	e1520003 	cmp	r2, r3
    1ad8:	caffffe3 	bgt	1a6c <gets+0x20>
    1adc:	ea000000 	b	1ae4 <gets+0x98>
    1ae0:	e1a00000 	nop			@ (mov r0, r0)
    1ae4:	e51b3008 	ldr	r3, [fp, #-8]
    1ae8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1aec:	e0823003 	add	r3, r2, r3
    1af0:	e3a02000 	mov	r2, #0
    1af4:	e5c32000 	strb	r2, [r3]
    1af8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1afc:	e1a00003 	mov	r0, r3
    1b00:	e24bd004 	sub	sp, fp, #4
    1b04:	e8bd8800 	pop	{fp, pc}

00001b08 <stat>:
    1b08:	e92d4800 	push	{fp, lr}
    1b0c:	e28db004 	add	fp, sp, #4
    1b10:	e24dd010 	sub	sp, sp, #16
    1b14:	e50b0010 	str	r0, [fp, #-16]
    1b18:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1b1c:	e3a01000 	mov	r1, #0
    1b20:	e51b0010 	ldr	r0, [fp, #-16]
    1b24:	eb00018f 	bl	2168 <open>
    1b28:	e50b0008 	str	r0, [fp, #-8]
    1b2c:	e51b3008 	ldr	r3, [fp, #-8]
    1b30:	e3530000 	cmp	r3, #0
    1b34:	aa000001 	bge	1b40 <stat+0x38>
    1b38:	e3e03000 	mvn	r3, #0
    1b3c:	ea000006 	b	1b5c <stat+0x54>
    1b40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1b44:	e51b0008 	ldr	r0, [fp, #-8]
    1b48:	eb0001a1 	bl	21d4 <fstat>
    1b4c:	e50b000c 	str	r0, [fp, #-12]
    1b50:	e51b0008 	ldr	r0, [fp, #-8]
    1b54:	eb000168 	bl	20fc <close>
    1b58:	e51b300c 	ldr	r3, [fp, #-12]
    1b5c:	e1a00003 	mov	r0, r3
    1b60:	e24bd004 	sub	sp, fp, #4
    1b64:	e8bd8800 	pop	{fp, pc}

00001b68 <atoi>:
    1b68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1b6c:	e28db000 	add	fp, sp, #0
    1b70:	e24dd014 	sub	sp, sp, #20
    1b74:	e50b0010 	str	r0, [fp, #-16]
    1b78:	e3a03000 	mov	r3, #0
    1b7c:	e50b3008 	str	r3, [fp, #-8]
    1b80:	ea00000c 	b	1bb8 <atoi+0x50>
    1b84:	e51b2008 	ldr	r2, [fp, #-8]
    1b88:	e1a03002 	mov	r3, r2
    1b8c:	e1a03103 	lsl	r3, r3, #2
    1b90:	e0833002 	add	r3, r3, r2
    1b94:	e1a03083 	lsl	r3, r3, #1
    1b98:	e1a01003 	mov	r1, r3
    1b9c:	e51b3010 	ldr	r3, [fp, #-16]
    1ba0:	e2832001 	add	r2, r3, #1
    1ba4:	e50b2010 	str	r2, [fp, #-16]
    1ba8:	e5d33000 	ldrb	r3, [r3]
    1bac:	e0813003 	add	r3, r1, r3
    1bb0:	e2433030 	sub	r3, r3, #48	@ 0x30
    1bb4:	e50b3008 	str	r3, [fp, #-8]
    1bb8:	e51b3010 	ldr	r3, [fp, #-16]
    1bbc:	e5d33000 	ldrb	r3, [r3]
    1bc0:	e353002f 	cmp	r3, #47	@ 0x2f
    1bc4:	9a000003 	bls	1bd8 <atoi+0x70>
    1bc8:	e51b3010 	ldr	r3, [fp, #-16]
    1bcc:	e5d33000 	ldrb	r3, [r3]
    1bd0:	e3530039 	cmp	r3, #57	@ 0x39
    1bd4:	9affffea 	bls	1b84 <atoi+0x1c>
    1bd8:	e51b3008 	ldr	r3, [fp, #-8]
    1bdc:	e1a00003 	mov	r0, r3
    1be0:	e28bd000 	add	sp, fp, #0
    1be4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1be8:	e12fff1e 	bx	lr

00001bec <memmove>:
    1bec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1bf0:	e28db000 	add	fp, sp, #0
    1bf4:	e24dd01c 	sub	sp, sp, #28
    1bf8:	e50b0010 	str	r0, [fp, #-16]
    1bfc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1c00:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1c04:	e51b3010 	ldr	r3, [fp, #-16]
    1c08:	e50b3008 	str	r3, [fp, #-8]
    1c0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1c10:	e50b300c 	str	r3, [fp, #-12]
    1c14:	ea000007 	b	1c38 <memmove+0x4c>
    1c18:	e51b200c 	ldr	r2, [fp, #-12]
    1c1c:	e2823001 	add	r3, r2, #1
    1c20:	e50b300c 	str	r3, [fp, #-12]
    1c24:	e51b3008 	ldr	r3, [fp, #-8]
    1c28:	e2831001 	add	r1, r3, #1
    1c2c:	e50b1008 	str	r1, [fp, #-8]
    1c30:	e5d22000 	ldrb	r2, [r2]
    1c34:	e5c32000 	strb	r2, [r3]
    1c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1c3c:	e2432001 	sub	r2, r3, #1
    1c40:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1c44:	e3530000 	cmp	r3, #0
    1c48:	cafffff2 	bgt	1c18 <memmove+0x2c>
    1c4c:	e51b3010 	ldr	r3, [fp, #-16]
    1c50:	e1a00003 	mov	r0, r3
    1c54:	e28bd000 	add	sp, fp, #0
    1c58:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1c5c:	e12fff1e 	bx	lr

00001c60 <initiateLock>:
    1c60:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1c64:	e28db000 	add	fp, sp, #0
    1c68:	e24dd00c 	sub	sp, sp, #12
    1c6c:	e50b0008 	str	r0, [fp, #-8]
    1c70:	e51b3008 	ldr	r3, [fp, #-8]
    1c74:	e3a02000 	mov	r2, #0
    1c78:	e5832000 	str	r2, [r3]
    1c7c:	e51b3008 	ldr	r3, [fp, #-8]
    1c80:	e3a02001 	mov	r2, #1
    1c84:	e5832004 	str	r2, [r3, #4]
    1c88:	e1a00000 	nop			@ (mov r0, r0)
    1c8c:	e28bd000 	add	sp, fp, #0
    1c90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1c94:	e12fff1e 	bx	lr

00001c98 <acquireLock>:
    1c98:	e92d4800 	push	{fp, lr}
    1c9c:	e28db004 	add	fp, sp, #4
    1ca0:	e24dd008 	sub	sp, sp, #8
    1ca4:	e50b0008 	str	r0, [fp, #-8]
    1ca8:	e51b3008 	ldr	r3, [fp, #-8]
    1cac:	e5933000 	ldr	r3, [r3]
    1cb0:	e3730001 	cmn	r3, #1
    1cb4:	1a000002 	bne	1cc4 <acquireLock+0x2c>
    1cb8:	e59f1034 	ldr	r1, [pc, #52]	@ 1cf4 <acquireLock+0x5c>
    1cbc:	e3a00002 	mov	r0, #2
    1cc0:	eb000280 	bl	26c8 <printf>
    1cc4:	e1a00000 	nop			@ (mov r0, r0)
    1cc8:	e51b3008 	ldr	r3, [fp, #-8]
    1ccc:	e3a01001 	mov	r1, #1
    1cd0:	e1a00003 	mov	r0, r3
    1cd4:	ebfffe98 	bl	173c <xchg>
    1cd8:	e1a03000 	mov	r3, r0
    1cdc:	e3530000 	cmp	r3, #0
    1ce0:	1afffff8 	bne	1cc8 <acquireLock+0x30>
    1ce4:	e1a00000 	nop			@ (mov r0, r0)
    1ce8:	e1a00000 	nop			@ (mov r0, r0)
    1cec:	e24bd004 	sub	sp, fp, #4
    1cf0:	e8bd8800 	pop	{fp, pc}
    1cf4:	00002f18 	.word	0x00002f18

00001cf8 <releaseLock>:
    1cf8:	e92d4800 	push	{fp, lr}
    1cfc:	e28db004 	add	fp, sp, #4
    1d00:	e24dd008 	sub	sp, sp, #8
    1d04:	e50b0008 	str	r0, [fp, #-8]
    1d08:	e51b3008 	ldr	r3, [fp, #-8]
    1d0c:	e5933000 	ldr	r3, [r3]
    1d10:	e3530001 	cmp	r3, #1
    1d14:	0a000002 	beq	1d24 <releaseLock+0x2c>
    1d18:	e59f1020 	ldr	r1, [pc, #32]	@ 1d40 <releaseLock+0x48>
    1d1c:	e3a00002 	mov	r0, #2
    1d20:	eb000268 	bl	26c8 <printf>
    1d24:	e51b3008 	ldr	r3, [fp, #-8]
    1d28:	e3a01000 	mov	r1, #0
    1d2c:	e1a00003 	mov	r0, r3
    1d30:	ebfffe81 	bl	173c <xchg>
    1d34:	e1a00000 	nop			@ (mov r0, r0)
    1d38:	e24bd004 	sub	sp, fp, #4
    1d3c:	e8bd8800 	pop	{fp, pc}
    1d40:	00002f48 	.word	0x00002f48

00001d44 <initiateCondVar>:
    1d44:	e92d4800 	push	{fp, lr}
    1d48:	e28db004 	add	fp, sp, #4
    1d4c:	e24dd008 	sub	sp, sp, #8
    1d50:	e50b0008 	str	r0, [fp, #-8]
    1d54:	e51b3008 	ldr	r3, [fp, #-8]
    1d58:	e5933004 	ldr	r3, [r3, #4]
    1d5c:	e3530000 	cmp	r3, #0
    1d60:	1a000007 	bne	1d84 <initiateCondVar+0x40>
    1d64:	eb0001e0 	bl	24ec <getChannel>
    1d68:	e1a02000 	mov	r2, r0
    1d6c:	e51b3008 	ldr	r3, [fp, #-8]
    1d70:	e5832000 	str	r2, [r3]
    1d74:	e51b3008 	ldr	r3, [fp, #-8]
    1d78:	e3a02001 	mov	r2, #1
    1d7c:	e5832004 	str	r2, [r3, #4]
    1d80:	ea000000 	b	1d88 <initiateCondVar+0x44>
    1d84:	e1a00000 	nop			@ (mov r0, r0)
    1d88:	e24bd004 	sub	sp, fp, #4
    1d8c:	e8bd8800 	pop	{fp, pc}

00001d90 <condWait>:
    1d90:	e92d4800 	push	{fp, lr}
    1d94:	e28db004 	add	fp, sp, #4
    1d98:	e24dd008 	sub	sp, sp, #8
    1d9c:	e50b0008 	str	r0, [fp, #-8]
    1da0:	e50b100c 	str	r1, [fp, #-12]
    1da4:	e51b3008 	ldr	r3, [fp, #-8]
    1da8:	e5933004 	ldr	r3, [r3, #4]
    1dac:	e3530000 	cmp	r3, #0
    1db0:	1a000003 	bne	1dc4 <condWait+0x34>
    1db4:	e59f1050 	ldr	r1, [pc, #80]	@ 1e0c <condWait+0x7c>
    1db8:	e3a00002 	mov	r0, #2
    1dbc:	eb000241 	bl	26c8 <printf>
    1dc0:	ea00000f 	b	1e04 <condWait+0x74>
    1dc4:	e51b300c 	ldr	r3, [fp, #-12]
    1dc8:	e5933004 	ldr	r3, [r3, #4]
    1dcc:	e3530000 	cmp	r3, #0
    1dd0:	1a000003 	bne	1de4 <condWait+0x54>
    1dd4:	e59f1034 	ldr	r1, [pc, #52]	@ 1e10 <condWait+0x80>
    1dd8:	e3a00002 	mov	r0, #2
    1ddc:	eb000239 	bl	26c8 <printf>
    1de0:	ea000007 	b	1e04 <condWait+0x74>
    1de4:	e51b000c 	ldr	r0, [fp, #-12]
    1de8:	ebffffc2 	bl	1cf8 <releaseLock>
    1dec:	e51b3008 	ldr	r3, [fp, #-8]
    1df0:	e5933000 	ldr	r3, [r3]
    1df4:	e1a00003 	mov	r0, r3
    1df8:	eb0001b2 	bl	24c8 <sleepChan>
    1dfc:	e51b000c 	ldr	r0, [fp, #-12]
    1e00:	ebffffa4 	bl	1c98 <acquireLock>
    1e04:	e24bd004 	sub	sp, fp, #4
    1e08:	e8bd8800 	pop	{fp, pc}
    1e0c:	00002f84 	.word	0x00002f84
    1e10:	00002fa8 	.word	0x00002fa8

00001e14 <broadcast>:
    1e14:	e92d4800 	push	{fp, lr}
    1e18:	e28db004 	add	fp, sp, #4
    1e1c:	e24dd008 	sub	sp, sp, #8
    1e20:	e50b0008 	str	r0, [fp, #-8]
    1e24:	e51b3008 	ldr	r3, [fp, #-8]
    1e28:	e5933004 	ldr	r3, [r3, #4]
    1e2c:	e3530000 	cmp	r3, #0
    1e30:	1a000003 	bne	1e44 <broadcast+0x30>
    1e34:	e59f1020 	ldr	r1, [pc, #32]	@ 1e5c <broadcast+0x48>
    1e38:	e3a00002 	mov	r0, #2
    1e3c:	eb000221 	bl	26c8 <printf>
    1e40:	ea000003 	b	1e54 <broadcast+0x40>
    1e44:	e51b3008 	ldr	r3, [fp, #-8]
    1e48:	e5933000 	ldr	r3, [r3]
    1e4c:	e1a00003 	mov	r0, r3
    1e50:	eb0001ae 	bl	2510 <sigChan>
    1e54:	e24bd004 	sub	sp, fp, #4
    1e58:	e8bd8800 	pop	{fp, pc}
    1e5c:	00002f84 	.word	0x00002f84

00001e60 <signal>:
    1e60:	e92d4800 	push	{fp, lr}
    1e64:	e28db004 	add	fp, sp, #4
    1e68:	e24dd008 	sub	sp, sp, #8
    1e6c:	e50b0008 	str	r0, [fp, #-8]
    1e70:	e51b3008 	ldr	r3, [fp, #-8]
    1e74:	e5933004 	ldr	r3, [r3, #4]
    1e78:	e3530000 	cmp	r3, #0
    1e7c:	1a000003 	bne	1e90 <signal+0x30>
    1e80:	e59f1020 	ldr	r1, [pc, #32]	@ 1ea8 <signal+0x48>
    1e84:	e3a00002 	mov	r0, #2
    1e88:	eb00020e 	bl	26c8 <printf>
    1e8c:	ea000003 	b	1ea0 <signal+0x40>
    1e90:	e51b3008 	ldr	r3, [fp, #-8]
    1e94:	e5933000 	ldr	r3, [r3]
    1e98:	e1a00003 	mov	r0, r3
    1e9c:	eb0001a4 	bl	2534 <sigOneChan>
    1ea0:	e24bd004 	sub	sp, fp, #4
    1ea4:	e8bd8800 	pop	{fp, pc}
    1ea8:	00002f84 	.word	0x00002f84

00001eac <semInit>:
    1eac:	e92d4800 	push	{fp, lr}
    1eb0:	e28db004 	add	fp, sp, #4
    1eb4:	e24dd008 	sub	sp, sp, #8
    1eb8:	e50b0008 	str	r0, [fp, #-8]
    1ebc:	e50b100c 	str	r1, [fp, #-12]
    1ec0:	e51b3008 	ldr	r3, [fp, #-8]
    1ec4:	e51b200c 	ldr	r2, [fp, #-12]
    1ec8:	e5832000 	str	r2, [r3]
    1ecc:	e51b3008 	ldr	r3, [fp, #-8]
    1ed0:	e2833004 	add	r3, r3, #4
    1ed4:	e1a00003 	mov	r0, r3
    1ed8:	ebffff60 	bl	1c60 <initiateLock>
    1edc:	e51b3008 	ldr	r3, [fp, #-8]
    1ee0:	e283300c 	add	r3, r3, #12
    1ee4:	e1a00003 	mov	r0, r3
    1ee8:	ebffff95 	bl	1d44 <initiateCondVar>
    1eec:	e51b3008 	ldr	r3, [fp, #-8]
    1ef0:	e3a02001 	mov	r2, #1
    1ef4:	e5832014 	str	r2, [r3, #20]
    1ef8:	e1a00000 	nop			@ (mov r0, r0)
    1efc:	e24bd004 	sub	sp, fp, #4
    1f00:	e8bd8800 	pop	{fp, pc}

00001f04 <semDown>:
    1f04:	e92d4800 	push	{fp, lr}
    1f08:	e28db004 	add	fp, sp, #4
    1f0c:	e24dd008 	sub	sp, sp, #8
    1f10:	e50b0008 	str	r0, [fp, #-8]
    1f14:	e51b3008 	ldr	r3, [fp, #-8]
    1f18:	e5933014 	ldr	r3, [r3, #20]
    1f1c:	e3530000 	cmp	r3, #0
    1f20:	1a000003 	bne	1f34 <semDown+0x30>
    1f24:	e59f1074 	ldr	r1, [pc, #116]	@ 1fa0 <semDown+0x9c>
    1f28:	e3a00002 	mov	r0, #2
    1f2c:	eb0001e5 	bl	26c8 <printf>
    1f30:	ea000018 	b	1f98 <semDown+0x94>
    1f34:	e51b3008 	ldr	r3, [fp, #-8]
    1f38:	e2833004 	add	r3, r3, #4
    1f3c:	e1a00003 	mov	r0, r3
    1f40:	ebffff54 	bl	1c98 <acquireLock>
    1f44:	ea000006 	b	1f64 <semDown+0x60>
    1f48:	e51b3008 	ldr	r3, [fp, #-8]
    1f4c:	e283200c 	add	r2, r3, #12
    1f50:	e51b3008 	ldr	r3, [fp, #-8]
    1f54:	e2833004 	add	r3, r3, #4
    1f58:	e1a01003 	mov	r1, r3
    1f5c:	e1a00002 	mov	r0, r2
    1f60:	ebffff8a 	bl	1d90 <condWait>
    1f64:	e51b3008 	ldr	r3, [fp, #-8]
    1f68:	e5933000 	ldr	r3, [r3]
    1f6c:	e3530000 	cmp	r3, #0
    1f70:	0afffff4 	beq	1f48 <semDown+0x44>
    1f74:	e51b3008 	ldr	r3, [fp, #-8]
    1f78:	e5933000 	ldr	r3, [r3]
    1f7c:	e2432001 	sub	r2, r3, #1
    1f80:	e51b3008 	ldr	r3, [fp, #-8]
    1f84:	e5832000 	str	r2, [r3]
    1f88:	e51b3008 	ldr	r3, [fp, #-8]
    1f8c:	e2833004 	add	r3, r3, #4
    1f90:	e1a00003 	mov	r0, r3
    1f94:	ebffff57 	bl	1cf8 <releaseLock>
    1f98:	e24bd004 	sub	sp, fp, #4
    1f9c:	e8bd8800 	pop	{fp, pc}
    1fa0:	00002fc8 	.word	0x00002fc8

00001fa4 <semUp>:
    1fa4:	e92d4800 	push	{fp, lr}
    1fa8:	e28db004 	add	fp, sp, #4
    1fac:	e24dd008 	sub	sp, sp, #8
    1fb0:	e50b0008 	str	r0, [fp, #-8]
    1fb4:	e51b3008 	ldr	r3, [fp, #-8]
    1fb8:	e5933014 	ldr	r3, [r3, #20]
    1fbc:	e3530000 	cmp	r3, #0
    1fc0:	1a000003 	bne	1fd4 <semUp+0x30>
    1fc4:	e59f1054 	ldr	r1, [pc, #84]	@ 2020 <semUp+0x7c>
    1fc8:	e3a00002 	mov	r0, #2
    1fcc:	eb0001bd 	bl	26c8 <printf>
    1fd0:	ea000010 	b	2018 <semUp+0x74>
    1fd4:	e51b3008 	ldr	r3, [fp, #-8]
    1fd8:	e2833004 	add	r3, r3, #4
    1fdc:	e1a00003 	mov	r0, r3
    1fe0:	ebffff2c 	bl	1c98 <acquireLock>
    1fe4:	e51b3008 	ldr	r3, [fp, #-8]
    1fe8:	e5933000 	ldr	r3, [r3]
    1fec:	e2832001 	add	r2, r3, #1
    1ff0:	e51b3008 	ldr	r3, [fp, #-8]
    1ff4:	e5832000 	str	r2, [r3]
    1ff8:	e51b3008 	ldr	r3, [fp, #-8]
    1ffc:	e283300c 	add	r3, r3, #12
    2000:	e1a00003 	mov	r0, r3
    2004:	ebffff95 	bl	1e60 <signal>
    2008:	e51b3008 	ldr	r3, [fp, #-8]
    200c:	e2833004 	add	r3, r3, #4
    2010:	e1a00003 	mov	r0, r3
    2014:	ebffff37 	bl	1cf8 <releaseLock>
    2018:	e24bd004 	sub	sp, fp, #4
    201c:	e8bd8800 	pop	{fp, pc}
    2020:	00002fc8 	.word	0x00002fc8

00002024 <fork>:
    2024:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2028:	e1a04003 	mov	r4, r3
    202c:	e1a03002 	mov	r3, r2
    2030:	e1a02001 	mov	r2, r1
    2034:	e1a01000 	mov	r1, r0
    2038:	e3a00001 	mov	r0, #1
    203c:	ef000000 	svc	0x00000000
    2040:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2044:	e12fff1e 	bx	lr

00002048 <exit>:
    2048:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    204c:	e1a04003 	mov	r4, r3
    2050:	e1a03002 	mov	r3, r2
    2054:	e1a02001 	mov	r2, r1
    2058:	e1a01000 	mov	r1, r0
    205c:	e3a00002 	mov	r0, #2
    2060:	ef000000 	svc	0x00000000
    2064:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2068:	e12fff1e 	bx	lr

0000206c <wait>:
    206c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2070:	e1a04003 	mov	r4, r3
    2074:	e1a03002 	mov	r3, r2
    2078:	e1a02001 	mov	r2, r1
    207c:	e1a01000 	mov	r1, r0
    2080:	e3a00003 	mov	r0, #3
    2084:	ef000000 	svc	0x00000000
    2088:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    208c:	e12fff1e 	bx	lr

00002090 <pipe>:
    2090:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2094:	e1a04003 	mov	r4, r3
    2098:	e1a03002 	mov	r3, r2
    209c:	e1a02001 	mov	r2, r1
    20a0:	e1a01000 	mov	r1, r0
    20a4:	e3a00004 	mov	r0, #4
    20a8:	ef000000 	svc	0x00000000
    20ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20b0:	e12fff1e 	bx	lr

000020b4 <read>:
    20b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20b8:	e1a04003 	mov	r4, r3
    20bc:	e1a03002 	mov	r3, r2
    20c0:	e1a02001 	mov	r2, r1
    20c4:	e1a01000 	mov	r1, r0
    20c8:	e3a00005 	mov	r0, #5
    20cc:	ef000000 	svc	0x00000000
    20d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20d4:	e12fff1e 	bx	lr

000020d8 <write>:
    20d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    20dc:	e1a04003 	mov	r4, r3
    20e0:	e1a03002 	mov	r3, r2
    20e4:	e1a02001 	mov	r2, r1
    20e8:	e1a01000 	mov	r1, r0
    20ec:	e3a00010 	mov	r0, #16
    20f0:	ef000000 	svc	0x00000000
    20f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    20f8:	e12fff1e 	bx	lr

000020fc <close>:
    20fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2100:	e1a04003 	mov	r4, r3
    2104:	e1a03002 	mov	r3, r2
    2108:	e1a02001 	mov	r2, r1
    210c:	e1a01000 	mov	r1, r0
    2110:	e3a00015 	mov	r0, #21
    2114:	ef000000 	svc	0x00000000
    2118:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    211c:	e12fff1e 	bx	lr

00002120 <kill>:
    2120:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2124:	e1a04003 	mov	r4, r3
    2128:	e1a03002 	mov	r3, r2
    212c:	e1a02001 	mov	r2, r1
    2130:	e1a01000 	mov	r1, r0
    2134:	e3a00006 	mov	r0, #6
    2138:	ef000000 	svc	0x00000000
    213c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2140:	e12fff1e 	bx	lr

00002144 <exec>:
    2144:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2148:	e1a04003 	mov	r4, r3
    214c:	e1a03002 	mov	r3, r2
    2150:	e1a02001 	mov	r2, r1
    2154:	e1a01000 	mov	r1, r0
    2158:	e3a00007 	mov	r0, #7
    215c:	ef000000 	svc	0x00000000
    2160:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2164:	e12fff1e 	bx	lr

00002168 <open>:
    2168:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    216c:	e1a04003 	mov	r4, r3
    2170:	e1a03002 	mov	r3, r2
    2174:	e1a02001 	mov	r2, r1
    2178:	e1a01000 	mov	r1, r0
    217c:	e3a0000f 	mov	r0, #15
    2180:	ef000000 	svc	0x00000000
    2184:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2188:	e12fff1e 	bx	lr

0000218c <mknod>:
    218c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2190:	e1a04003 	mov	r4, r3
    2194:	e1a03002 	mov	r3, r2
    2198:	e1a02001 	mov	r2, r1
    219c:	e1a01000 	mov	r1, r0
    21a0:	e3a00011 	mov	r0, #17
    21a4:	ef000000 	svc	0x00000000
    21a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21ac:	e12fff1e 	bx	lr

000021b0 <unlink>:
    21b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21b4:	e1a04003 	mov	r4, r3
    21b8:	e1a03002 	mov	r3, r2
    21bc:	e1a02001 	mov	r2, r1
    21c0:	e1a01000 	mov	r1, r0
    21c4:	e3a00012 	mov	r0, #18
    21c8:	ef000000 	svc	0x00000000
    21cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21d0:	e12fff1e 	bx	lr

000021d4 <fstat>:
    21d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21d8:	e1a04003 	mov	r4, r3
    21dc:	e1a03002 	mov	r3, r2
    21e0:	e1a02001 	mov	r2, r1
    21e4:	e1a01000 	mov	r1, r0
    21e8:	e3a00008 	mov	r0, #8
    21ec:	ef000000 	svc	0x00000000
    21f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    21f4:	e12fff1e 	bx	lr

000021f8 <link>:
    21f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    21fc:	e1a04003 	mov	r4, r3
    2200:	e1a03002 	mov	r3, r2
    2204:	e1a02001 	mov	r2, r1
    2208:	e1a01000 	mov	r1, r0
    220c:	e3a00013 	mov	r0, #19
    2210:	ef000000 	svc	0x00000000
    2214:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2218:	e12fff1e 	bx	lr

0000221c <mkdir>:
    221c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2220:	e1a04003 	mov	r4, r3
    2224:	e1a03002 	mov	r3, r2
    2228:	e1a02001 	mov	r2, r1
    222c:	e1a01000 	mov	r1, r0
    2230:	e3a00014 	mov	r0, #20
    2234:	ef000000 	svc	0x00000000
    2238:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    223c:	e12fff1e 	bx	lr

00002240 <chdir>:
    2240:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2244:	e1a04003 	mov	r4, r3
    2248:	e1a03002 	mov	r3, r2
    224c:	e1a02001 	mov	r2, r1
    2250:	e1a01000 	mov	r1, r0
    2254:	e3a00009 	mov	r0, #9
    2258:	ef000000 	svc	0x00000000
    225c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2260:	e12fff1e 	bx	lr

00002264 <dup>:
    2264:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2268:	e1a04003 	mov	r4, r3
    226c:	e1a03002 	mov	r3, r2
    2270:	e1a02001 	mov	r2, r1
    2274:	e1a01000 	mov	r1, r0
    2278:	e3a0000a 	mov	r0, #10
    227c:	ef000000 	svc	0x00000000
    2280:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2284:	e12fff1e 	bx	lr

00002288 <getpid>:
    2288:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    228c:	e1a04003 	mov	r4, r3
    2290:	e1a03002 	mov	r3, r2
    2294:	e1a02001 	mov	r2, r1
    2298:	e1a01000 	mov	r1, r0
    229c:	e3a0000b 	mov	r0, #11
    22a0:	ef000000 	svc	0x00000000
    22a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22a8:	e12fff1e 	bx	lr

000022ac <sbrk>:
    22ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22b0:	e1a04003 	mov	r4, r3
    22b4:	e1a03002 	mov	r3, r2
    22b8:	e1a02001 	mov	r2, r1
    22bc:	e1a01000 	mov	r1, r0
    22c0:	e3a0000c 	mov	r0, #12
    22c4:	ef000000 	svc	0x00000000
    22c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22cc:	e12fff1e 	bx	lr

000022d0 <sleep>:
    22d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22d4:	e1a04003 	mov	r4, r3
    22d8:	e1a03002 	mov	r3, r2
    22dc:	e1a02001 	mov	r2, r1
    22e0:	e1a01000 	mov	r1, r0
    22e4:	e3a0000d 	mov	r0, #13
    22e8:	ef000000 	svc	0x00000000
    22ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    22f0:	e12fff1e 	bx	lr

000022f4 <uptime>:
    22f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    22f8:	e1a04003 	mov	r4, r3
    22fc:	e1a03002 	mov	r3, r2
    2300:	e1a02001 	mov	r2, r1
    2304:	e1a01000 	mov	r1, r0
    2308:	e3a0000e 	mov	r0, #14
    230c:	ef000000 	svc	0x00000000
    2310:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2314:	e12fff1e 	bx	lr

00002318 <disproc>:
    2318:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    231c:	e1a04003 	mov	r4, r3
    2320:	e1a03002 	mov	r3, r2
    2324:	e1a02001 	mov	r2, r1
    2328:	e1a01000 	mov	r1, r0
    232c:	e3a00016 	mov	r0, #22
    2330:	ef000000 	svc	0x00000000
    2334:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2338:	e12fff1e 	bx	lr

0000233c <srand>:
    233c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2340:	e1a04003 	mov	r4, r3
    2344:	e1a03002 	mov	r3, r2
    2348:	e1a02001 	mov	r2, r1
    234c:	e1a01000 	mov	r1, r0
    2350:	e3a00017 	mov	r0, #23
    2354:	ef000000 	svc	0x00000000
    2358:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    235c:	e12fff1e 	bx	lr

00002360 <setticket>:
    2360:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2364:	e1a04003 	mov	r4, r3
    2368:	e1a03002 	mov	r3, r2
    236c:	e1a02001 	mov	r2, r1
    2370:	e1a01000 	mov	r1, r0
    2374:	e3a00018 	mov	r0, #24
    2378:	ef000000 	svc	0x00000000
    237c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2380:	e12fff1e 	bx	lr

00002384 <getpinfo>:
    2384:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2388:	e1a04003 	mov	r4, r3
    238c:	e1a03002 	mov	r3, r2
    2390:	e1a02001 	mov	r2, r1
    2394:	e1a01000 	mov	r1, r0
    2398:	e3a00019 	mov	r0, #25
    239c:	ef000000 	svc	0x00000000
    23a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23a4:	e12fff1e 	bx	lr

000023a8 <printPages>:
    23a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23ac:	e1a04003 	mov	r4, r3
    23b0:	e1a03002 	mov	r3, r2
    23b4:	e1a02001 	mov	r2, r1
    23b8:	e1a01000 	mov	r1, r0
    23bc:	e3a0001a 	mov	r0, #26
    23c0:	ef000000 	svc	0x00000000
    23c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23c8:	e12fff1e 	bx	lr

000023cc <kpt>:
    23cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23d0:	e1a04003 	mov	r4, r3
    23d4:	e1a03002 	mov	r3, r2
    23d8:	e1a02001 	mov	r2, r1
    23dc:	e1a01000 	mov	r1, r0
    23e0:	e3a0001b 	mov	r0, #27
    23e4:	ef000000 	svc	0x00000000
    23e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    23ec:	e12fff1e 	bx	lr

000023f0 <thread_create>:
    23f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    23f4:	e1a04003 	mov	r4, r3
    23f8:	e1a03002 	mov	r3, r2
    23fc:	e1a02001 	mov	r2, r1
    2400:	e1a01000 	mov	r1, r0
    2404:	e3a0001c 	mov	r0, #28
    2408:	ef000000 	svc	0x00000000
    240c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2410:	e12fff1e 	bx	lr

00002414 <thread_exit>:
    2414:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2418:	e1a04003 	mov	r4, r3
    241c:	e1a03002 	mov	r3, r2
    2420:	e1a02001 	mov	r2, r1
    2424:	e1a01000 	mov	r1, r0
    2428:	e3a0001d 	mov	r0, #29
    242c:	ef000000 	svc	0x00000000
    2430:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2434:	e12fff1e 	bx	lr

00002438 <thread_join>:
    2438:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    243c:	e1a04003 	mov	r4, r3
    2440:	e1a03002 	mov	r3, r2
    2444:	e1a02001 	mov	r2, r1
    2448:	e1a01000 	mov	r1, r0
    244c:	e3a0001e 	mov	r0, #30
    2450:	ef000000 	svc	0x00000000
    2454:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2458:	e12fff1e 	bx	lr

0000245c <waitpid>:
    245c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2460:	e1a04003 	mov	r4, r3
    2464:	e1a03002 	mov	r3, r2
    2468:	e1a02001 	mov	r2, r1
    246c:	e1a01000 	mov	r1, r0
    2470:	e3a0001f 	mov	r0, #31
    2474:	ef000000 	svc	0x00000000
    2478:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    247c:	e12fff1e 	bx	lr

00002480 <barrier_init>:
    2480:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2484:	e1a04003 	mov	r4, r3
    2488:	e1a03002 	mov	r3, r2
    248c:	e1a02001 	mov	r2, r1
    2490:	e1a01000 	mov	r1, r0
    2494:	e3a00020 	mov	r0, #32
    2498:	ef000000 	svc	0x00000000
    249c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    24a0:	e12fff1e 	bx	lr

000024a4 <barrier_check>:
    24a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    24a8:	e1a04003 	mov	r4, r3
    24ac:	e1a03002 	mov	r3, r2
    24b0:	e1a02001 	mov	r2, r1
    24b4:	e1a01000 	mov	r1, r0
    24b8:	e3a00021 	mov	r0, #33	@ 0x21
    24bc:	ef000000 	svc	0x00000000
    24c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    24c4:	e12fff1e 	bx	lr

000024c8 <sleepChan>:
    24c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    24cc:	e1a04003 	mov	r4, r3
    24d0:	e1a03002 	mov	r3, r2
    24d4:	e1a02001 	mov	r2, r1
    24d8:	e1a01000 	mov	r1, r0
    24dc:	e3a00022 	mov	r0, #34	@ 0x22
    24e0:	ef000000 	svc	0x00000000
    24e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    24e8:	e12fff1e 	bx	lr

000024ec <getChannel>:
    24ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    24f0:	e1a04003 	mov	r4, r3
    24f4:	e1a03002 	mov	r3, r2
    24f8:	e1a02001 	mov	r2, r1
    24fc:	e1a01000 	mov	r1, r0
    2500:	e3a00023 	mov	r0, #35	@ 0x23
    2504:	ef000000 	svc	0x00000000
    2508:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    250c:	e12fff1e 	bx	lr

00002510 <sigChan>:
    2510:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2514:	e1a04003 	mov	r4, r3
    2518:	e1a03002 	mov	r3, r2
    251c:	e1a02001 	mov	r2, r1
    2520:	e1a01000 	mov	r1, r0
    2524:	e3a00024 	mov	r0, #36	@ 0x24
    2528:	ef000000 	svc	0x00000000
    252c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2530:	e12fff1e 	bx	lr

00002534 <sigOneChan>:
    2534:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    2538:	e1a04003 	mov	r4, r3
    253c:	e1a03002 	mov	r3, r2
    2540:	e1a02001 	mov	r2, r1
    2544:	e1a01000 	mov	r1, r0
    2548:	e3a00025 	mov	r0, #37	@ 0x25
    254c:	ef000000 	svc	0x00000000
    2550:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    2554:	e12fff1e 	bx	lr

00002558 <putc>:
    2558:	e92d4800 	push	{fp, lr}
    255c:	e28db004 	add	fp, sp, #4
    2560:	e24dd008 	sub	sp, sp, #8
    2564:	e50b0008 	str	r0, [fp, #-8]
    2568:	e1a03001 	mov	r3, r1
    256c:	e54b3009 	strb	r3, [fp, #-9]
    2570:	e24b3009 	sub	r3, fp, #9
    2574:	e3a02001 	mov	r2, #1
    2578:	e1a01003 	mov	r1, r3
    257c:	e51b0008 	ldr	r0, [fp, #-8]
    2580:	ebfffed4 	bl	20d8 <write>
    2584:	e1a00000 	nop			@ (mov r0, r0)
    2588:	e24bd004 	sub	sp, fp, #4
    258c:	e8bd8800 	pop	{fp, pc}

00002590 <printint>:
    2590:	e92d4800 	push	{fp, lr}
    2594:	e28db004 	add	fp, sp, #4
    2598:	e24dd030 	sub	sp, sp, #48	@ 0x30
    259c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    25a0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    25a4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    25a8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    25ac:	e3a03000 	mov	r3, #0
    25b0:	e50b300c 	str	r3, [fp, #-12]
    25b4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    25b8:	e3530000 	cmp	r3, #0
    25bc:	0a000008 	beq	25e4 <printint+0x54>
    25c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    25c4:	e3530000 	cmp	r3, #0
    25c8:	aa000005 	bge	25e4 <printint+0x54>
    25cc:	e3a03001 	mov	r3, #1
    25d0:	e50b300c 	str	r3, [fp, #-12]
    25d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    25d8:	e2633000 	rsb	r3, r3, #0
    25dc:	e50b3010 	str	r3, [fp, #-16]
    25e0:	ea000001 	b	25ec <printint+0x5c>
    25e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    25e8:	e50b3010 	str	r3, [fp, #-16]
    25ec:	e3a03000 	mov	r3, #0
    25f0:	e50b3008 	str	r3, [fp, #-8]
    25f4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    25f8:	e51b3010 	ldr	r3, [fp, #-16]
    25fc:	e1a01002 	mov	r1, r2
    2600:	e1a00003 	mov	r0, r3
    2604:	eb0001d5 	bl	2d60 <__aeabi_uidivmod>
    2608:	e1a03001 	mov	r3, r1
    260c:	e1a01003 	mov	r1, r3
    2610:	e51b3008 	ldr	r3, [fp, #-8]
    2614:	e2832001 	add	r2, r3, #1
    2618:	e50b2008 	str	r2, [fp, #-8]
    261c:	e59f20a0 	ldr	r2, [pc, #160]	@ 26c4 <printint+0x134>
    2620:	e7d22001 	ldrb	r2, [r2, r1]
    2624:	e2433004 	sub	r3, r3, #4
    2628:	e083300b 	add	r3, r3, fp
    262c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    2630:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    2634:	e1a01003 	mov	r1, r3
    2638:	e51b0010 	ldr	r0, [fp, #-16]
    263c:	eb00018a 	bl	2c6c <__udivsi3>
    2640:	e1a03000 	mov	r3, r0
    2644:	e50b3010 	str	r3, [fp, #-16]
    2648:	e51b3010 	ldr	r3, [fp, #-16]
    264c:	e3530000 	cmp	r3, #0
    2650:	1affffe7 	bne	25f4 <printint+0x64>
    2654:	e51b300c 	ldr	r3, [fp, #-12]
    2658:	e3530000 	cmp	r3, #0
    265c:	0a00000e 	beq	269c <printint+0x10c>
    2660:	e51b3008 	ldr	r3, [fp, #-8]
    2664:	e2832001 	add	r2, r3, #1
    2668:	e50b2008 	str	r2, [fp, #-8]
    266c:	e2433004 	sub	r3, r3, #4
    2670:	e083300b 	add	r3, r3, fp
    2674:	e3a0202d 	mov	r2, #45	@ 0x2d
    2678:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    267c:	ea000006 	b	269c <printint+0x10c>
    2680:	e24b2020 	sub	r2, fp, #32
    2684:	e51b3008 	ldr	r3, [fp, #-8]
    2688:	e0823003 	add	r3, r2, r3
    268c:	e5d33000 	ldrb	r3, [r3]
    2690:	e1a01003 	mov	r1, r3
    2694:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    2698:	ebffffae 	bl	2558 <putc>
    269c:	e51b3008 	ldr	r3, [fp, #-8]
    26a0:	e2433001 	sub	r3, r3, #1
    26a4:	e50b3008 	str	r3, [fp, #-8]
    26a8:	e51b3008 	ldr	r3, [fp, #-8]
    26ac:	e3530000 	cmp	r3, #0
    26b0:	aafffff2 	bge	2680 <printint+0xf0>
    26b4:	e1a00000 	nop			@ (mov r0, r0)
    26b8:	e1a00000 	nop			@ (mov r0, r0)
    26bc:	e24bd004 	sub	sp, fp, #4
    26c0:	e8bd8800 	pop	{fp, pc}
    26c4:	00003004 	.word	0x00003004

000026c8 <printf>:
    26c8:	e92d000e 	push	{r1, r2, r3}
    26cc:	e92d4800 	push	{fp, lr}
    26d0:	e28db004 	add	fp, sp, #4
    26d4:	e24dd024 	sub	sp, sp, #36	@ 0x24
    26d8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    26dc:	e3a03000 	mov	r3, #0
    26e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    26e4:	e28b3008 	add	r3, fp, #8
    26e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    26ec:	e3a03000 	mov	r3, #0
    26f0:	e50b3010 	str	r3, [fp, #-16]
    26f4:	ea000074 	b	28cc <printf+0x204>
    26f8:	e59b2004 	ldr	r2, [fp, #4]
    26fc:	e51b3010 	ldr	r3, [fp, #-16]
    2700:	e0823003 	add	r3, r2, r3
    2704:	e5d33000 	ldrb	r3, [r3]
    2708:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    270c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2710:	e3530000 	cmp	r3, #0
    2714:	1a00000b 	bne	2748 <printf+0x80>
    2718:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    271c:	e3530025 	cmp	r3, #37	@ 0x25
    2720:	1a000002 	bne	2730 <printf+0x68>
    2724:	e3a03025 	mov	r3, #37	@ 0x25
    2728:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    272c:	ea000063 	b	28c0 <printf+0x1f8>
    2730:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2734:	e6ef3073 	uxtb	r3, r3
    2738:	e1a01003 	mov	r1, r3
    273c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2740:	ebffff84 	bl	2558 <putc>
    2744:	ea00005d 	b	28c0 <printf+0x1f8>
    2748:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    274c:	e3530025 	cmp	r3, #37	@ 0x25
    2750:	1a00005a 	bne	28c0 <printf+0x1f8>
    2754:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2758:	e3530064 	cmp	r3, #100	@ 0x64
    275c:	1a00000a 	bne	278c <printf+0xc4>
    2760:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2764:	e5933000 	ldr	r3, [r3]
    2768:	e1a01003 	mov	r1, r3
    276c:	e3a03001 	mov	r3, #1
    2770:	e3a0200a 	mov	r2, #10
    2774:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2778:	ebffff84 	bl	2590 <printint>
    277c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2780:	e2833004 	add	r3, r3, #4
    2784:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2788:	ea00004a 	b	28b8 <printf+0x1f0>
    278c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2790:	e3530078 	cmp	r3, #120	@ 0x78
    2794:	0a000002 	beq	27a4 <printf+0xdc>
    2798:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    279c:	e3530070 	cmp	r3, #112	@ 0x70
    27a0:	1a00000a 	bne	27d0 <printf+0x108>
    27a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    27a8:	e5933000 	ldr	r3, [r3]
    27ac:	e1a01003 	mov	r1, r3
    27b0:	e3a03000 	mov	r3, #0
    27b4:	e3a02010 	mov	r2, #16
    27b8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    27bc:	ebffff73 	bl	2590 <printint>
    27c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    27c4:	e2833004 	add	r3, r3, #4
    27c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    27cc:	ea000039 	b	28b8 <printf+0x1f0>
    27d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    27d4:	e3530073 	cmp	r3, #115	@ 0x73
    27d8:	1a000018 	bne	2840 <printf+0x178>
    27dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    27e0:	e5933000 	ldr	r3, [r3]
    27e4:	e50b300c 	str	r3, [fp, #-12]
    27e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    27ec:	e2833004 	add	r3, r3, #4
    27f0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    27f4:	e51b300c 	ldr	r3, [fp, #-12]
    27f8:	e3530000 	cmp	r3, #0
    27fc:	1a00000a 	bne	282c <printf+0x164>
    2800:	e59f30f4 	ldr	r3, [pc, #244]	@ 28fc <printf+0x234>
    2804:	e50b300c 	str	r3, [fp, #-12]
    2808:	ea000007 	b	282c <printf+0x164>
    280c:	e51b300c 	ldr	r3, [fp, #-12]
    2810:	e5d33000 	ldrb	r3, [r3]
    2814:	e1a01003 	mov	r1, r3
    2818:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    281c:	ebffff4d 	bl	2558 <putc>
    2820:	e51b300c 	ldr	r3, [fp, #-12]
    2824:	e2833001 	add	r3, r3, #1
    2828:	e50b300c 	str	r3, [fp, #-12]
    282c:	e51b300c 	ldr	r3, [fp, #-12]
    2830:	e5d33000 	ldrb	r3, [r3]
    2834:	e3530000 	cmp	r3, #0
    2838:	1afffff3 	bne	280c <printf+0x144>
    283c:	ea00001d 	b	28b8 <printf+0x1f0>
    2840:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2844:	e3530063 	cmp	r3, #99	@ 0x63
    2848:	1a000009 	bne	2874 <printf+0x1ac>
    284c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2850:	e5933000 	ldr	r3, [r3]
    2854:	e6ef3073 	uxtb	r3, r3
    2858:	e1a01003 	mov	r1, r3
    285c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2860:	ebffff3c 	bl	2558 <putc>
    2864:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2868:	e2833004 	add	r3, r3, #4
    286c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2870:	ea000010 	b	28b8 <printf+0x1f0>
    2874:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2878:	e3530025 	cmp	r3, #37	@ 0x25
    287c:	1a000005 	bne	2898 <printf+0x1d0>
    2880:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2884:	e6ef3073 	uxtb	r3, r3
    2888:	e1a01003 	mov	r1, r3
    288c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2890:	ebffff30 	bl	2558 <putc>
    2894:	ea000007 	b	28b8 <printf+0x1f0>
    2898:	e3a01025 	mov	r1, #37	@ 0x25
    289c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    28a0:	ebffff2c 	bl	2558 <putc>
    28a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    28a8:	e6ef3073 	uxtb	r3, r3
    28ac:	e1a01003 	mov	r1, r3
    28b0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    28b4:	ebffff27 	bl	2558 <putc>
    28b8:	e3a03000 	mov	r3, #0
    28bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    28c0:	e51b3010 	ldr	r3, [fp, #-16]
    28c4:	e2833001 	add	r3, r3, #1
    28c8:	e50b3010 	str	r3, [fp, #-16]
    28cc:	e59b2004 	ldr	r2, [fp, #4]
    28d0:	e51b3010 	ldr	r3, [fp, #-16]
    28d4:	e0823003 	add	r3, r2, r3
    28d8:	e5d33000 	ldrb	r3, [r3]
    28dc:	e3530000 	cmp	r3, #0
    28e0:	1affff84 	bne	26f8 <printf+0x30>
    28e4:	e1a00000 	nop			@ (mov r0, r0)
    28e8:	e1a00000 	nop			@ (mov r0, r0)
    28ec:	e24bd004 	sub	sp, fp, #4
    28f0:	e8bd4800 	pop	{fp, lr}
    28f4:	e28dd00c 	add	sp, sp, #12
    28f8:	e12fff1e 	bx	lr
    28fc:	00002fec 	.word	0x00002fec

00002900 <free>:
    2900:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    2904:	e28db000 	add	fp, sp, #0
    2908:	e24dd014 	sub	sp, sp, #20
    290c:	e50b0010 	str	r0, [fp, #-16]
    2910:	e51b3010 	ldr	r3, [fp, #-16]
    2914:	e2433008 	sub	r3, r3, #8
    2918:	e50b300c 	str	r3, [fp, #-12]
    291c:	e59f3154 	ldr	r3, [pc, #340]	@ 2a78 <free+0x178>
    2920:	e5933000 	ldr	r3, [r3]
    2924:	e50b3008 	str	r3, [fp, #-8]
    2928:	ea000010 	b	2970 <free+0x70>
    292c:	e51b3008 	ldr	r3, [fp, #-8]
    2930:	e5933000 	ldr	r3, [r3]
    2934:	e51b2008 	ldr	r2, [fp, #-8]
    2938:	e1520003 	cmp	r2, r3
    293c:	3a000008 	bcc	2964 <free+0x64>
    2940:	e51b200c 	ldr	r2, [fp, #-12]
    2944:	e51b3008 	ldr	r3, [fp, #-8]
    2948:	e1520003 	cmp	r2, r3
    294c:	8a000010 	bhi	2994 <free+0x94>
    2950:	e51b3008 	ldr	r3, [fp, #-8]
    2954:	e5933000 	ldr	r3, [r3]
    2958:	e51b200c 	ldr	r2, [fp, #-12]
    295c:	e1520003 	cmp	r2, r3
    2960:	3a00000b 	bcc	2994 <free+0x94>
    2964:	e51b3008 	ldr	r3, [fp, #-8]
    2968:	e5933000 	ldr	r3, [r3]
    296c:	e50b3008 	str	r3, [fp, #-8]
    2970:	e51b200c 	ldr	r2, [fp, #-12]
    2974:	e51b3008 	ldr	r3, [fp, #-8]
    2978:	e1520003 	cmp	r2, r3
    297c:	9affffea 	bls	292c <free+0x2c>
    2980:	e51b3008 	ldr	r3, [fp, #-8]
    2984:	e5933000 	ldr	r3, [r3]
    2988:	e51b200c 	ldr	r2, [fp, #-12]
    298c:	e1520003 	cmp	r2, r3
    2990:	2affffe5 	bcs	292c <free+0x2c>
    2994:	e51b300c 	ldr	r3, [fp, #-12]
    2998:	e5933004 	ldr	r3, [r3, #4]
    299c:	e1a03183 	lsl	r3, r3, #3
    29a0:	e51b200c 	ldr	r2, [fp, #-12]
    29a4:	e0822003 	add	r2, r2, r3
    29a8:	e51b3008 	ldr	r3, [fp, #-8]
    29ac:	e5933000 	ldr	r3, [r3]
    29b0:	e1520003 	cmp	r2, r3
    29b4:	1a00000d 	bne	29f0 <free+0xf0>
    29b8:	e51b300c 	ldr	r3, [fp, #-12]
    29bc:	e5932004 	ldr	r2, [r3, #4]
    29c0:	e51b3008 	ldr	r3, [fp, #-8]
    29c4:	e5933000 	ldr	r3, [r3]
    29c8:	e5933004 	ldr	r3, [r3, #4]
    29cc:	e0822003 	add	r2, r2, r3
    29d0:	e51b300c 	ldr	r3, [fp, #-12]
    29d4:	e5832004 	str	r2, [r3, #4]
    29d8:	e51b3008 	ldr	r3, [fp, #-8]
    29dc:	e5933000 	ldr	r3, [r3]
    29e0:	e5932000 	ldr	r2, [r3]
    29e4:	e51b300c 	ldr	r3, [fp, #-12]
    29e8:	e5832000 	str	r2, [r3]
    29ec:	ea000003 	b	2a00 <free+0x100>
    29f0:	e51b3008 	ldr	r3, [fp, #-8]
    29f4:	e5932000 	ldr	r2, [r3]
    29f8:	e51b300c 	ldr	r3, [fp, #-12]
    29fc:	e5832000 	str	r2, [r3]
    2a00:	e51b3008 	ldr	r3, [fp, #-8]
    2a04:	e5933004 	ldr	r3, [r3, #4]
    2a08:	e1a03183 	lsl	r3, r3, #3
    2a0c:	e51b2008 	ldr	r2, [fp, #-8]
    2a10:	e0823003 	add	r3, r2, r3
    2a14:	e51b200c 	ldr	r2, [fp, #-12]
    2a18:	e1520003 	cmp	r2, r3
    2a1c:	1a00000b 	bne	2a50 <free+0x150>
    2a20:	e51b3008 	ldr	r3, [fp, #-8]
    2a24:	e5932004 	ldr	r2, [r3, #4]
    2a28:	e51b300c 	ldr	r3, [fp, #-12]
    2a2c:	e5933004 	ldr	r3, [r3, #4]
    2a30:	e0822003 	add	r2, r2, r3
    2a34:	e51b3008 	ldr	r3, [fp, #-8]
    2a38:	e5832004 	str	r2, [r3, #4]
    2a3c:	e51b300c 	ldr	r3, [fp, #-12]
    2a40:	e5932000 	ldr	r2, [r3]
    2a44:	e51b3008 	ldr	r3, [fp, #-8]
    2a48:	e5832000 	str	r2, [r3]
    2a4c:	ea000002 	b	2a5c <free+0x15c>
    2a50:	e51b3008 	ldr	r3, [fp, #-8]
    2a54:	e51b200c 	ldr	r2, [fp, #-12]
    2a58:	e5832000 	str	r2, [r3]
    2a5c:	e59f2014 	ldr	r2, [pc, #20]	@ 2a78 <free+0x178>
    2a60:	e51b3008 	ldr	r3, [fp, #-8]
    2a64:	e5823000 	str	r3, [r2]
    2a68:	e1a00000 	nop			@ (mov r0, r0)
    2a6c:	e28bd000 	add	sp, fp, #0
    2a70:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    2a74:	e12fff1e 	bx	lr
    2a78:	00003084 	.word	0x00003084

00002a7c <morecore>:
    2a7c:	e92d4800 	push	{fp, lr}
    2a80:	e28db004 	add	fp, sp, #4
    2a84:	e24dd010 	sub	sp, sp, #16
    2a88:	e50b0010 	str	r0, [fp, #-16]
    2a8c:	e51b3010 	ldr	r3, [fp, #-16]
    2a90:	e3530a01 	cmp	r3, #4096	@ 0x1000
    2a94:	2a000001 	bcs	2aa0 <morecore+0x24>
    2a98:	e3a03a01 	mov	r3, #4096	@ 0x1000
    2a9c:	e50b3010 	str	r3, [fp, #-16]
    2aa0:	e51b3010 	ldr	r3, [fp, #-16]
    2aa4:	e1a03183 	lsl	r3, r3, #3
    2aa8:	e1a00003 	mov	r0, r3
    2aac:	ebfffdfe 	bl	22ac <sbrk>
    2ab0:	e50b0008 	str	r0, [fp, #-8]
    2ab4:	e51b3008 	ldr	r3, [fp, #-8]
    2ab8:	e3730001 	cmn	r3, #1
    2abc:	1a000001 	bne	2ac8 <morecore+0x4c>
    2ac0:	e3a03000 	mov	r3, #0
    2ac4:	ea00000a 	b	2af4 <morecore+0x78>
    2ac8:	e51b3008 	ldr	r3, [fp, #-8]
    2acc:	e50b300c 	str	r3, [fp, #-12]
    2ad0:	e51b300c 	ldr	r3, [fp, #-12]
    2ad4:	e51b2010 	ldr	r2, [fp, #-16]
    2ad8:	e5832004 	str	r2, [r3, #4]
    2adc:	e51b300c 	ldr	r3, [fp, #-12]
    2ae0:	e2833008 	add	r3, r3, #8
    2ae4:	e1a00003 	mov	r0, r3
    2ae8:	ebffff84 	bl	2900 <free>
    2aec:	e59f300c 	ldr	r3, [pc, #12]	@ 2b00 <morecore+0x84>
    2af0:	e5933000 	ldr	r3, [r3]
    2af4:	e1a00003 	mov	r0, r3
    2af8:	e24bd004 	sub	sp, fp, #4
    2afc:	e8bd8800 	pop	{fp, pc}
    2b00:	00003084 	.word	0x00003084

00002b04 <malloc>:
    2b04:	e92d4800 	push	{fp, lr}
    2b08:	e28db004 	add	fp, sp, #4
    2b0c:	e24dd018 	sub	sp, sp, #24
    2b10:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    2b14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2b18:	e2833007 	add	r3, r3, #7
    2b1c:	e1a031a3 	lsr	r3, r3, #3
    2b20:	e2833001 	add	r3, r3, #1
    2b24:	e50b3010 	str	r3, [fp, #-16]
    2b28:	e59f3134 	ldr	r3, [pc, #308]	@ 2c64 <malloc+0x160>
    2b2c:	e5933000 	ldr	r3, [r3]
    2b30:	e50b300c 	str	r3, [fp, #-12]
    2b34:	e51b300c 	ldr	r3, [fp, #-12]
    2b38:	e3530000 	cmp	r3, #0
    2b3c:	1a00000b 	bne	2b70 <malloc+0x6c>
    2b40:	e59f3120 	ldr	r3, [pc, #288]	@ 2c68 <malloc+0x164>
    2b44:	e50b300c 	str	r3, [fp, #-12]
    2b48:	e59f2114 	ldr	r2, [pc, #276]	@ 2c64 <malloc+0x160>
    2b4c:	e51b300c 	ldr	r3, [fp, #-12]
    2b50:	e5823000 	str	r3, [r2]
    2b54:	e59f3108 	ldr	r3, [pc, #264]	@ 2c64 <malloc+0x160>
    2b58:	e5933000 	ldr	r3, [r3]
    2b5c:	e59f2104 	ldr	r2, [pc, #260]	@ 2c68 <malloc+0x164>
    2b60:	e5823000 	str	r3, [r2]
    2b64:	e59f30fc 	ldr	r3, [pc, #252]	@ 2c68 <malloc+0x164>
    2b68:	e3a02000 	mov	r2, #0
    2b6c:	e5832004 	str	r2, [r3, #4]
    2b70:	e51b300c 	ldr	r3, [fp, #-12]
    2b74:	e5933000 	ldr	r3, [r3]
    2b78:	e50b3008 	str	r3, [fp, #-8]
    2b7c:	e51b3008 	ldr	r3, [fp, #-8]
    2b80:	e5933004 	ldr	r3, [r3, #4]
    2b84:	e51b2010 	ldr	r2, [fp, #-16]
    2b88:	e1520003 	cmp	r2, r3
    2b8c:	8a00001e 	bhi	2c0c <malloc+0x108>
    2b90:	e51b3008 	ldr	r3, [fp, #-8]
    2b94:	e5933004 	ldr	r3, [r3, #4]
    2b98:	e51b2010 	ldr	r2, [fp, #-16]
    2b9c:	e1520003 	cmp	r2, r3
    2ba0:	1a000004 	bne	2bb8 <malloc+0xb4>
    2ba4:	e51b3008 	ldr	r3, [fp, #-8]
    2ba8:	e5932000 	ldr	r2, [r3]
    2bac:	e51b300c 	ldr	r3, [fp, #-12]
    2bb0:	e5832000 	str	r2, [r3]
    2bb4:	ea00000e 	b	2bf4 <malloc+0xf0>
    2bb8:	e51b3008 	ldr	r3, [fp, #-8]
    2bbc:	e5932004 	ldr	r2, [r3, #4]
    2bc0:	e51b3010 	ldr	r3, [fp, #-16]
    2bc4:	e0422003 	sub	r2, r2, r3
    2bc8:	e51b3008 	ldr	r3, [fp, #-8]
    2bcc:	e5832004 	str	r2, [r3, #4]
    2bd0:	e51b3008 	ldr	r3, [fp, #-8]
    2bd4:	e5933004 	ldr	r3, [r3, #4]
    2bd8:	e1a03183 	lsl	r3, r3, #3
    2bdc:	e51b2008 	ldr	r2, [fp, #-8]
    2be0:	e0823003 	add	r3, r2, r3
    2be4:	e50b3008 	str	r3, [fp, #-8]
    2be8:	e51b3008 	ldr	r3, [fp, #-8]
    2bec:	e51b2010 	ldr	r2, [fp, #-16]
    2bf0:	e5832004 	str	r2, [r3, #4]
    2bf4:	e59f2068 	ldr	r2, [pc, #104]	@ 2c64 <malloc+0x160>
    2bf8:	e51b300c 	ldr	r3, [fp, #-12]
    2bfc:	e5823000 	str	r3, [r2]
    2c00:	e51b3008 	ldr	r3, [fp, #-8]
    2c04:	e2833008 	add	r3, r3, #8
    2c08:	ea000012 	b	2c58 <malloc+0x154>
    2c0c:	e59f3050 	ldr	r3, [pc, #80]	@ 2c64 <malloc+0x160>
    2c10:	e5933000 	ldr	r3, [r3]
    2c14:	e51b2008 	ldr	r2, [fp, #-8]
    2c18:	e1520003 	cmp	r2, r3
    2c1c:	1a000007 	bne	2c40 <malloc+0x13c>
    2c20:	e51b0010 	ldr	r0, [fp, #-16]
    2c24:	ebffff94 	bl	2a7c <morecore>
    2c28:	e50b0008 	str	r0, [fp, #-8]
    2c2c:	e51b3008 	ldr	r3, [fp, #-8]
    2c30:	e3530000 	cmp	r3, #0
    2c34:	1a000001 	bne	2c40 <malloc+0x13c>
    2c38:	e3a03000 	mov	r3, #0
    2c3c:	ea000005 	b	2c58 <malloc+0x154>
    2c40:	e51b3008 	ldr	r3, [fp, #-8]
    2c44:	e50b300c 	str	r3, [fp, #-12]
    2c48:	e51b3008 	ldr	r3, [fp, #-8]
    2c4c:	e5933000 	ldr	r3, [r3]
    2c50:	e50b3008 	str	r3, [fp, #-8]
    2c54:	eaffffc8 	b	2b7c <malloc+0x78>
    2c58:	e1a00003 	mov	r0, r3
    2c5c:	e24bd004 	sub	sp, fp, #4
    2c60:	e8bd8800 	pop	{fp, pc}
    2c64:	00003084 	.word	0x00003084
    2c68:	0000307c 	.word	0x0000307c

00002c6c <__udivsi3>:
    2c6c:	e2512001 	subs	r2, r1, #1
    2c70:	012fff1e 	bxeq	lr
    2c74:	3a000036 	bcc	2d54 <__udivsi3+0xe8>
    2c78:	e1500001 	cmp	r0, r1
    2c7c:	9a000022 	bls	2d0c <__udivsi3+0xa0>
    2c80:	e1110002 	tst	r1, r2
    2c84:	0a000023 	beq	2d18 <__udivsi3+0xac>
    2c88:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2c8c:	01a01181 	lsleq	r1, r1, #3
    2c90:	03a03008 	moveq	r3, #8
    2c94:	13a03001 	movne	r3, #1
    2c98:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2c9c:	31510000 	cmpcc	r1, r0
    2ca0:	31a01201 	lslcc	r1, r1, #4
    2ca4:	31a03203 	lslcc	r3, r3, #4
    2ca8:	3afffffa 	bcc	2c98 <__udivsi3+0x2c>
    2cac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2cb0:	31510000 	cmpcc	r1, r0
    2cb4:	31a01081 	lslcc	r1, r1, #1
    2cb8:	31a03083 	lslcc	r3, r3, #1
    2cbc:	3afffffa 	bcc	2cac <__udivsi3+0x40>
    2cc0:	e3a02000 	mov	r2, #0
    2cc4:	e1500001 	cmp	r0, r1
    2cc8:	20400001 	subcs	r0, r0, r1
    2ccc:	21822003 	orrcs	r2, r2, r3
    2cd0:	e15000a1 	cmp	r0, r1, lsr #1
    2cd4:	204000a1 	subcs	r0, r0, r1, lsr #1
    2cd8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2cdc:	e1500121 	cmp	r0, r1, lsr #2
    2ce0:	20400121 	subcs	r0, r0, r1, lsr #2
    2ce4:	21822123 	orrcs	r2, r2, r3, lsr #2
    2ce8:	e15001a1 	cmp	r0, r1, lsr #3
    2cec:	204001a1 	subcs	r0, r0, r1, lsr #3
    2cf0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    2cf4:	e3500000 	cmp	r0, #0
    2cf8:	11b03223 	lsrsne	r3, r3, #4
    2cfc:	11a01221 	lsrne	r1, r1, #4
    2d00:	1affffef 	bne	2cc4 <__udivsi3+0x58>
    2d04:	e1a00002 	mov	r0, r2
    2d08:	e12fff1e 	bx	lr
    2d0c:	03a00001 	moveq	r0, #1
    2d10:	13a00000 	movne	r0, #0
    2d14:	e12fff1e 	bx	lr
    2d18:	e3510801 	cmp	r1, #65536	@ 0x10000
    2d1c:	21a01821 	lsrcs	r1, r1, #16
    2d20:	23a02010 	movcs	r2, #16
    2d24:	33a02000 	movcc	r2, #0
    2d28:	e3510c01 	cmp	r1, #256	@ 0x100
    2d2c:	21a01421 	lsrcs	r1, r1, #8
    2d30:	22822008 	addcs	r2, r2, #8
    2d34:	e3510010 	cmp	r1, #16
    2d38:	21a01221 	lsrcs	r1, r1, #4
    2d3c:	22822004 	addcs	r2, r2, #4
    2d40:	e3510004 	cmp	r1, #4
    2d44:	82822003 	addhi	r2, r2, #3
    2d48:	908220a1 	addls	r2, r2, r1, lsr #1
    2d4c:	e1a00230 	lsr	r0, r0, r2
    2d50:	e12fff1e 	bx	lr
    2d54:	e3500000 	cmp	r0, #0
    2d58:	13e00000 	mvnne	r0, #0
    2d5c:	ea000007 	b	2d80 <__aeabi_idiv0>

00002d60 <__aeabi_uidivmod>:
    2d60:	e3510000 	cmp	r1, #0
    2d64:	0afffffa 	beq	2d54 <__udivsi3+0xe8>
    2d68:	e92d4003 	push	{r0, r1, lr}
    2d6c:	ebffffbe 	bl	2c6c <__udivsi3>
    2d70:	e8bd4006 	pop	{r1, r2, lr}
    2d74:	e0030092 	mul	r3, r2, r0
    2d78:	e0411003 	sub	r1, r1, r3
    2d7c:	e12fff1e 	bx	lr

00002d80 <__aeabi_idiv0>:
    2d80:	e12fff1e 	bx	lr
