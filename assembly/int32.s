00000000000d9340 <stress_cpu_int32_longdouble.arch_skylake_avx512.9>:
   d9340:	f3 0f 1e fa          	endbr64 
   d9344:	41 57                	push   %r15
   d9346:	41 56                	push   %r14
   d9348:	41 55                	push   %r13
   d934a:	41 54                	push   %r12
   d934c:	41 bc ab aa aa aa    	mov    $0xaaaaaaab,%r12d
   d9352:	55                   	push   %rbp
   d9353:	bd e8 03 00 00       	mov    $0x3e8,%ebp
   d9358:	53                   	push   %rbx
   d9359:	48 83 ec 78          	sub    $0x78,%rsp
   d935d:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
   d9362:	4c 8d 74 24 60       	lea    0x60(%rsp),%r14
   d9367:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
   d936c:	e8 df 33 f8 ff       	call   5c750 <stress_mwc32>
   d9371:	89 c3                	mov    %eax,%ebx
   d9373:	e8 d8 33 f8 ff       	call   5c750 <stress_mwc32>
   d9378:	48 89 1c 24          	mov    %rbx,(%rsp)
   d937c:	df 2c 24             	fildll (%rsp)
   d937f:	89 c0                	mov    %eax,%eax
   d9381:	48 89 04 24          	mov    %rax,(%rsp)
   d9385:	db 7c 24 10          	fstpt  0x10(%rsp)
   d9389:	df 2c 24             	fildll (%rsp)
   d938c:	db 3c 24             	fstpt  (%rsp)
   d938f:	e8 0c fa f8 ff       	call   68da0 <stress_mwc_seed>
   d9394:	e8 b7 33 f8 ff       	call   5c750 <stress_mwc32>
   d9399:	89 c3                	mov    %eax,%ebx
   d939b:	e8 b0 33 f8 ff       	call   5c750 <stress_mwc32>
   d93a0:	db 2d 9a a1 3d 00    	fldt   0x3da19a(%rip)        # 4b3540 <limits+0xe0>
   d93a6:	41 89 c7             	mov    %eax,%r15d
   d93a9:	db 2c 24             	fldt   (%rsp)
   d93ac:	db 6c 24 10          	fldt   0x10(%rsp)
   d93b0:	eb 0c                	jmp    d93be <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x7e>
   d93b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   d93b8:	dd d9                	fstp   %st(1)
   d93ba:	d9 ca                	fxch   %st(2)
   d93bc:	d9 c9                	fxch   %st(1)
   d93be:	de c2                	faddp  %st,%st(2)
   d93c0:	44 01 fb             	add    %r15d,%ebx
   d93c3:	48 83 ec 10          	sub    $0x10,%rsp
   d93c7:	41 31 df             	xor    %ebx,%r15d
   d93ca:	d1 eb                	shr    %ebx
   d93cc:	41 c1 e7 02          	shl    $0x2,%r15d
   d93d0:	d8 c9                	fmul   %st(1),%st
   d93d2:	41 29 df             	sub    %ebx,%r15d
   d93d5:	f7 d3                	not    %ebx
   d93d7:	41 81 f7 0f 0f 0f 0f 	xor    $0xf0f0f0f,%r15d
   d93de:	8d 5c 5b 02          	lea    0x2(%rbx,%rbx,2),%ebx
   d93e2:	48 69 db c1 de 31 35 	imul   $0x3531dec1,%rbx,%rbx
   d93e9:	42 8d 04 fd 00 00 00 	lea    0x0(,%r15,8),%eax
   d93f0:	00 
   d93f1:	44 29 f8             	sub    %r15d,%eax
   d93f4:	d9 c1                	fld    %st(1)
   d93f6:	44 8d 78 fd          	lea    -0x3(%rax),%r15d
   d93fa:	d8 e1                	fsub   %st(1),%st
   d93fc:	db 2d 2e a2 3d 00    	fldt   0x3da22e(%rip)        # 4b3630 <limits+0x1d0>
   d9402:	48 c1 eb 24          	shr    $0x24,%rbx
   d9406:	4d 0f af fc          	imul   %r12,%r15
   d940a:	8d 5c 1b 01          	lea    0x1(%rbx,%rbx,1),%ebx
   d940e:	d8 f9                	fdivr  %st(1),%st
   d9410:	49 c1 ef 21          	shr    $0x21,%r15
   d9414:	41 c1 e7 02          	shl    $0x2,%r15d
   d9418:	41 83 cf 03          	or     $0x3,%r15d
   d941c:	dc c1                	fadd   %st,%st(1)
   d941e:	db 2d 1c a2 3d 00    	fldt   0x3da21c(%rip)        # 4b3640 <limits+0x1e0>
   d9424:	d8 ca                	fmul   %st(2),%st
   d9426:	db 7c 24 10          	fstpt  0x10(%rsp)
   d942a:	d9 cb                	fxch   %st(3)
   d942c:	de f2                	fdivp  %st,%st(2)
   d942e:	dc c1                	fadd   %st,%st(1)
   d9430:	db 7c 24 40          	fstpt  0x40(%rsp)
   d9434:	db 7c 24 20          	fstpt  0x20(%rsp)
   d9438:	db 3c 24             	fstpt  (%rsp)
   d943b:	e8 20 e2 f6 ff       	call   47660 <_init+0x3fc8>
   d9440:	58                   	pop    %rax
   d9441:	5a                   	pop    %rdx
   d9442:	db 6c 24 10          	fldt   0x10(%rsp)
   d9446:	de c1                	faddp  %st,%st(1)
   d9448:	db 7c 24 20          	fstpt  0x20(%rsp)
   d944c:	e8 ff 32 f8 ff       	call   5c750 <stress_mwc32>
   d9451:	db 2c 24             	fldt   (%rsp)
   d9454:	0f af d8             	imul   %eax,%ebx
   d9457:	d9 c0                	fld    %st(0)
   d9459:	db 6c 24 30          	fldt   0x30(%rsp)
   d945d:	dc c1                	fadd   %st,%st(1)
   d945f:	db 7c 24 10          	fstpt  0x10(%rsp)
   d9463:	de f1                	fdivp  %st,%st(1)
   d9465:	db 7c 24 30          	fstpt  0x30(%rsp)
   d9469:	e8 e2 32 f8 ff       	call   5c750 <stress_mwc32>
   d946e:	41 31 c7             	xor    %eax,%r15d
   d9471:	e8 da 32 f8 ff       	call   5c750 <stress_mwc32>
   d9476:	db 6c 24 10          	fldt   0x10(%rsp)
   d947a:	01 c3                	add    %eax,%ebx
   d947c:	db 2c 24             	fldt   (%rsp)
   d947f:	de c9                	fmulp  %st,%st(1)
   d9481:	db 7c 24 10          	fstpt  0x10(%rsp)
   d9485:	e8 c6 32 f8 ff       	call   5c750 <stress_mwc32>
   d948a:	db 2c 24             	fldt   (%rsp)
   d948d:	4c 89 ee             	mov    %r13,%rsi
   d9490:	48 83 ec 10          	sub    $0x10,%rsp
   d9494:	41 29 c7             	sub    %eax,%r15d
   d9497:	89 d8                	mov    %ebx,%eax
   d9499:	4c 89 f7             	mov    %r14,%rdi
   d949c:	48 69 c0 25 49 92 24 	imul   $0x24924925,%rax,%rax
   d94a3:	d9 e8                	fld1   
   d94a5:	4d 69 ff 39 8e e3 38 	imul   $0x38e38e39,%r15,%r15
   d94ac:	de c1                	faddp  %st,%st(1)
   d94ae:	48 c1 e8 20          	shr    $0x20,%rax
   d94b2:	29 c3                	sub    %eax,%ebx
   d94b4:	d1 eb                	shr    %ebx
   d94b6:	db 3c 24             	fstpt  (%rsp)
   d94b9:	01 c3                	add    %eax,%ebx
   d94bb:	e8 c0 e1 f6 ff       	call   47680 <_init+0x3fe8>
   d94c0:	db 6c 24 70          	fldt   0x70(%rsp)
   d94c4:	c1 eb 02             	shr    $0x2,%ebx
   d94c7:	49 c1 ef 21          	shr    $0x21,%r15
   d94cb:	81 cb 00 10 00 10    	or     $0x10001000,%ebx
   d94d1:	db 6c 24 30          	fldt   0x30(%rsp)
   d94d5:	41 81 e7 fe ff be fe 	and    $0xfebefffe,%r15d
   d94dc:	de e1                	fsubp  %st,%st(1)
   d94de:	db 7c 24 30          	fstpt  0x30(%rsp)
   d94e2:	ff 74 24 28          	push   0x28(%rsp)
   d94e6:	ff 74 24 28          	push   0x28(%rsp)
   d94ea:	e8 81 e1 f6 ff       	call   47670 <_init+0x3fd8>
   d94ef:	db 6c 24 50          	fldt   0x50(%rsp)
   d94f3:	de c9                	fmulp  %st,%st(1)
   d94f5:	db 6c 24 70          	fldt   0x70(%rsp)
   d94f9:	db 6c 24 30          	fldt   0x30(%rsp)
   d94fd:	de c1                	faddp  %st,%st(1)
   d94ff:	d8 c1                	fadd   %st(1),%st
   d9501:	d9 c9                	fxch   %st(1)
   d9503:	db 7c 24 20          	fstpt  0x20(%rsp)
   d9507:	db 3c 24             	fstpt  (%rsp)
   d950a:	e8 51 e1 f6 ff       	call   47660 <_init+0x3fc8>
   d950f:	db 2d 3b a1 3d 00    	fldt   0x3da13b(%rip)        # 4b3650 <limits+0x1f0>
   d9515:	de f9                	fdivrp %st,%st(1)
   d9517:	d9 e8                	fld1   
   d9519:	db 6c 24 40          	fldt   0x40(%rsp)
   d951d:	48 83 c4 20          	add    $0x20,%rsp
   d9521:	83 ed 01             	sub    $0x1,%ebp
   d9524:	dc e1                	fsub   %st,%st(1)
   d9526:	db 2c 24             	fldt   (%rsp)
   d9529:	0f 85 89 fe ff ff    	jne    d93b8 <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x78>
   d952f:	f6 05 c3 2b 66 00 04 	testb  $0x4,0x662bc3(%rip)        # 73c0f9 <g_opt_flags+0x1>
   d9536:	74 11                	je     d9549 <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x209>
   d9538:	81 fb 47 b5 e9 1c    	cmp    $0x1ce9b547,%ebx
   d953e:	75 30                	jne    d9570 <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x230>
   d9540:	41 81 ff 3a b3 24 0a 	cmp    $0xa24b33a,%r15d
   d9547:	75 2b                	jne    d9574 <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x234>
   d9549:	de c2                	faddp  %st,%st(2)
   d954b:	d9 c9                	fxch   %st(1)
   d954d:	de c2                	faddp  %st,%st(2)
   d954f:	de c1                	faddp  %st,%st(1)
   d9551:	dd 1c 24             	fstpl  (%rsp)
   d9554:	c5 fb 10 04 24       	vmovsd (%rsp),%xmm0
   d9559:	c5 fb 11 05 7f 87 67 	vmovsd %xmm0,0x67877f(%rip)        # 751ce0 <g_put_val>
   d9560:	00 
   d9561:	48 83 c4 78          	add    $0x78,%rsp
   d9565:	5b                   	pop    %rbx
   d9566:	5d                   	pop    %rbp
   d9567:	41 5c                	pop    %r12
   d9569:	41 5d                	pop    %r13
   d956b:	41 5e                	pop    %r14
   d956d:	41 5f                	pop    %r15
   d956f:	c3                   	ret    
   d9570:	d9 ca                	fxch   %st(2)
   d9572:	eb 02                	jmp    d9576 <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x236>
   d9574:	d9 ca                	fxch   %st(2)
   d9576:	db 7c 24 30          	fstpt  0x30(%rsp)
   d957a:	d9 ca                	fxch   %st(2)
   d957c:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
   d9581:	48 8d 3d 88 1f 3b 00 	lea    0x3b1f88(%rip),%rdi        # 48b510 <_IO_stdin_used+0x64d0>
   d9588:	31 c0                	xor    %eax,%eax
   d958a:	db 7c 24 20          	fstpt  0x20(%rsp)
   d958e:	db 7c 24 10          	fstpt  0x10(%rsp)
   d9592:	db 3c 24             	fstpt  (%rsp)
   d9595:	e8 e6 ed f8 ff       	call   68380 <pr_fail>
   d959a:	db 6c 24 30          	fldt   0x30(%rsp)
   d959e:	db 6c 24 20          	fldt   0x20(%rsp)
   d95a2:	db 2c 24             	fldt   (%rsp)
   d95a5:	db 6c 24 10          	fldt   0x10(%rsp)
   d95a9:	d9 ca                	fxch   %st(2)
   d95ab:	d9 cb                	fxch   %st(3)
   d95ad:	d9 ca                	fxch   %st(2)
   d95af:	eb 98                	jmp    d9549 <stress_cpu_int32_longdouble.arch_skylake_avx512.9+0x209>
   d95b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   d95b8:	00 00 00 00 
   d95bc:	0f 1f 40 00          	nopl   0x0(%rax)
