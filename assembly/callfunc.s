0000000000120b90 <stress_cpu_callfunc>:
  120b90:	f3 0f 1e fa          	endbr64 
  120b94:	41 54                	push   %r12
  120b96:	48 83 ec 10          	sub    $0x10,%rsp
  120b9a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  120ba1:	00 00 
  120ba3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  120ba8:	31 c0                	xor    %eax,%eax
  120baa:	e8 01 bc f3 ff       	call   5c7b0 <stress_mwc64>
  120baf:	48 89 04 24          	mov    %rax,(%rsp)
  120bb3:	e8 98 bb f3 ff       	call   5c750 <stress_mwc32>
  120bb8:	41 89 c4             	mov    %eax,%r12d
  120bbb:	e8 a0 bc f3 ff       	call   5c860 <stress_mwc16>
  120bc0:	e8 3b bd f3 ff       	call   5c900 <stress_mwc8>
  120bc5:	48 8b 04 24          	mov    (%rsp),%rax
  120bc9:	44 89 e2             	mov    %r12d,%edx
  120bcc:	48 89 e1             	mov    %rsp,%rcx
  120bcf:	bf fe 03 00 00       	mov    $0x3fe,%edi
  120bd4:	48 8d 34 50          	lea    (%rax,%rdx,2),%rsi
  120bd8:	44 89 e2             	mov    %r12d,%edx
  120bdb:	e8 00 ff ff ff       	call   120ae0 <stress_cpu_callfunc_func.isra.0>
  120be0:	48 89 05 f9 10 63 00 	mov    %rax,0x6310f9(%rip)        # 751ce0 <g_put_val>
  120be7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  120bec:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  120bf3:	00 00 
  120bf5:	75 07                	jne    120bfe <stress_cpu_callfunc+0x6e>
  120bf7:	48 83 c4 10          	add    $0x10,%rsp
  120bfb:	41 5c                	pop    %r12
  120bfd:	c3                   	ret    
  120bfe:	e8 4d 4b f4 ff       	call   65750 <__stack_chk_fail>
  120c03:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  120c0a:	00 00 00 00 
  120c0e:	66 90                	xchg   %ax,%ax


000000000005c750 <stress_mwc32>:
   5c750:	f3 0f 1e fa          	endbr64 
   5c754:	f3 0f 7e 0d 7c e9 6d 	movq   0x6de97c(%rip),%xmm1        # 73b0d8 <mwc>
   5c75b:	00 
   5c75c:	0f b7 05 75 e9 6d 00 	movzwl 0x6de975(%rip),%eax        # 73b0d8 <mwc>
   5c763:	69 c0 50 46 00 00    	imul   $0x4650,%eax,%eax
   5c769:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
   5c76e:	66 0f 6e c0          	movd   %eax,%xmm0
   5c772:	0f b7 05 63 e9 6d 00 	movzwl 0x6de963(%rip),%eax        # 73b0dc <mwc+0x4>
   5c779:	69 c0 69 90 00 00    	imul   $0x9069,%eax,%eax
   5c77f:	66 0f 6e d0          	movd   %eax,%xmm2
   5c783:	66 0f 62 c2          	punpckldq %xmm2,%xmm0
   5c787:	66 0f fe c1          	paddd  %xmm1,%xmm0
   5c78b:	66 0f 70 d8 e5       	pshufd $0xe5,%xmm0,%xmm3
   5c790:	66 0f 7e d8          	movd   %xmm3,%eax
   5c794:	66 0f 7e c2          	movd   %xmm0,%edx
   5c798:	66 0f d6 05 38 e9 6d 	movq   %xmm0,0x6de938(%rip)        # 73b0d8 <mwc>
   5c79f:	00 
   5c7a0:	c1 e0 10             	shl    $0x10,%eax
   5c7a3:	01 d0                	add    %edx,%eax
   5c7a5:	c3                   	ret    
   5c7a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   5c7ad:	00 00 00 

000000000005c7b0 <stress_mwc64>:
   5c7b0:	f3 0f 1e fa          	endbr64 
   5c7b4:	8b 15 22 e9 6d 00    	mov    0x6de922(%rip),%edx        # 73b0dc <mwc+0x4>
   5c7ba:	8b 05 18 e9 6d 00    	mov    0x6de918(%rip),%eax        # 73b0d8 <mwc>
   5c7c0:	f3 0f 7e 0d 10 e9 6d 	movq   0x6de910(%rip),%xmm1        # 73b0d8 <mwc>
   5c7c7:	00 
   5c7c8:	0f b7 ca             	movzwl %dx,%ecx
   5c7cb:	0f b7 f0             	movzwl %ax,%esi
   5c7ce:	c1 ea 10             	shr    $0x10,%edx
   5c7d1:	69 c9 69 90 00 00    	imul   $0x9069,%ecx,%ecx
   5c7d7:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
   5c7dc:	c1 e8 10             	shr    $0x10,%eax
   5c7df:	69 f6 50 46 00 00    	imul   $0x4650,%esi,%esi
   5c7e5:	66 0f 6e d9          	movd   %ecx,%xmm3
   5c7e9:	01 ca                	add    %ecx,%edx
   5c7eb:	66 0f 6e c6          	movd   %esi,%xmm0
   5c7ef:	01 f0                	add    %esi,%eax
   5c7f1:	0f b7 d2             	movzwl %dx,%edx
   5c7f4:	66 0f 62 c3          	punpckldq %xmm3,%xmm0
   5c7f8:	69 d2 69 90 00 00    	imul   $0x9069,%edx,%edx
   5c7fe:	0f b7 c0             	movzwl %ax,%eax
   5c801:	69 c0 50 46 00 00    	imul   $0x4650,%eax,%eax
   5c807:	66 0f fe c8          	paddd  %xmm0,%xmm1
   5c80b:	66 0f 6e e2          	movd   %edx,%xmm4
   5c80f:	66 0f 6e c0          	movd   %eax,%xmm0
   5c813:	66 0f 6f d1          	movdqa %xmm1,%xmm2
   5c817:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
   5c81c:	66 0f 7e ea          	movd   %xmm5,%edx
   5c820:	66 0f 62 c4          	punpckldq %xmm4,%xmm0
   5c824:	66 0f 72 d2 10       	psrld  $0x10,%xmm2
   5c829:	c1 e2 10             	shl    $0x10,%edx
   5c82c:	66 0f 7e c8          	movd   %xmm1,%eax
   5c830:	66 0f fe c2          	paddd  %xmm2,%xmm0
   5c834:	01 d0                	add    %edx,%eax
   5c836:	89 c0                	mov    %eax,%eax
   5c838:	48 c1 e0 20          	shl    $0x20,%rax
   5c83c:	66 0f 70 f0 e5       	pshufd $0xe5,%xmm0,%xmm6
   5c841:	66 0f 7e f1          	movd   %xmm6,%ecx
   5c845:	66 0f 7e c2          	movd   %xmm0,%edx
   5c849:	66 0f d6 05 87 e8 6d 	movq   %xmm0,0x6de887(%rip)        # 73b0d8 <mwc>
   5c850:	00 
   5c851:	c1 e1 10             	shl    $0x10,%ecx
   5c854:	01 ca                	add    %ecx,%edx
   5c856:	89 d2                	mov    %edx,%edx
   5c858:	48 09 d0             	or     %rdx,%rax
   5c85b:	c3                   	ret    
   5c85c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000005c860 <stress_mwc16>:
   5c860:	f3 0f 1e fa          	endbr64 
   5c864:	0f b6 05 6d 3b 6f 00 	movzbl 0x6f3b6d(%rip),%eax        # 7503d8 <mwc_n16>
   5c86b:	84 c0                	test   %al,%al
   5c86d:	74 21                	je     5c890 <stress_mwc16+0x30>
   5c86f:	8d 50 ff             	lea    -0x1(%rax),%edx
   5c872:	0f b7 05 5d 3b 6f 00 	movzwl 0x6f3b5d(%rip),%eax        # 7503d6 <mwc_saved.2+0x2>
   5c879:	88 15 59 3b 6f 00    	mov    %dl,0x6f3b59(%rip)        # 7503d8 <mwc_n16>
   5c87f:	89 05 4f 3b 6f 00    	mov    %eax,0x6f3b4f(%rip)        # 7503d4 <mwc_saved.2>
   5c885:	c3                   	ret    
   5c886:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   5c88d:	00 00 00 
   5c890:	f3 0f 7e 0d 40 e8 6d 	movq   0x6de840(%rip),%xmm1        # 73b0d8 <mwc>
   5c897:	00 
   5c898:	0f b7 05 39 e8 6d 00 	movzwl 0x6de839(%rip),%eax        # 73b0d8 <mwc>
   5c89f:	69 c0 50 46 00 00    	imul   $0x4650,%eax,%eax
   5c8a5:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
   5c8aa:	66 0f 6e c0          	movd   %eax,%xmm0
   5c8ae:	0f b7 05 27 e8 6d 00 	movzwl 0x6de827(%rip),%eax        # 73b0dc <mwc+0x4>
   5c8b5:	69 c0 69 90 00 00    	imul   $0x9069,%eax,%eax
   5c8bb:	66 0f 6e d0          	movd   %eax,%xmm2
   5c8bf:	66 0f 62 c2          	punpckldq %xmm2,%xmm0
   5c8c3:	66 0f fe c1          	paddd  %xmm1,%xmm0
   5c8c7:	66 0f 70 d8 e5       	pshufd $0xe5,%xmm0,%xmm3
   5c8cc:	66 0f 7e d8          	movd   %xmm3,%eax
   5c8d0:	66 0f 7e c2          	movd   %xmm0,%edx
   5c8d4:	66 0f d6 05 fc e7 6d 	movq   %xmm0,0x6de7fc(%rip)        # 73b0d8 <mwc>
   5c8db:	00 
   5c8dc:	c1 e0 10             	shl    $0x10,%eax
   5c8df:	01 d0                	add    %edx,%eax
   5c8e1:	ba 01 00 00 00       	mov    $0x1,%edx
   5c8e6:	89 05 e8 3a 6f 00    	mov    %eax,0x6f3ae8(%rip)        # 7503d4 <mwc_saved.2>
   5c8ec:	88 15 e6 3a 6f 00    	mov    %dl,0x6f3ae6(%rip)        # 7503d8 <mwc_n16>
   5c8f2:	c3                   	ret    
   5c8f3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   5c8fa:	00 00 00 00 
   5c8fe:	66 90                	xchg   %ax,%ax

000000000005c900 <stress_mwc8>:
   5c900:	f3 0f 1e fa          	endbr64 
   5c904:	0f b6 05 ce 3a 6f 00 	movzbl 0x6f3ace(%rip),%eax        # 7503d9 <mwc_n8>
   5c90b:	84 c0                	test   %al,%al
   5c90d:	74 21                	je     5c930 <stress_mwc8+0x30>
   5c90f:	8d 50 ff             	lea    -0x1(%rax),%edx
   5c912:	8b 05 b8 3a 6f 00    	mov    0x6f3ab8(%rip),%eax        # 7503d0 <mwc_saved.1>
   5c918:	88 15 bb 3a 6f 00    	mov    %dl,0x6f3abb(%rip)        # 7503d9 <mwc_n8>
   5c91e:	c1 e8 08             	shr    $0x8,%eax
   5c921:	89 05 a9 3a 6f 00    	mov    %eax,0x6f3aa9(%rip)        # 7503d0 <mwc_saved.1>
   5c927:	c3                   	ret    
   5c928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   5c92f:	00 
   5c930:	f3 0f 7e 0d a0 e7 6d 	movq   0x6de7a0(%rip),%xmm1        # 73b0d8 <mwc>
   5c937:	00 
   5c938:	0f b7 05 99 e7 6d 00 	movzwl 0x6de799(%rip),%eax        # 73b0d8 <mwc>
   5c93f:	69 c0 50 46 00 00    	imul   $0x4650,%eax,%eax
   5c945:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
   5c94a:	66 0f 6e c0          	movd   %eax,%xmm0
   5c94e:	0f b7 05 87 e7 6d 00 	movzwl 0x6de787(%rip),%eax        # 73b0dc <mwc+0x4>
   5c955:	69 c0 69 90 00 00    	imul   $0x9069,%eax,%eax
   5c95b:	66 0f 6e d0          	movd   %eax,%xmm2
   5c95f:	66 0f 62 c2          	punpckldq %xmm2,%xmm0
   5c963:	66 0f fe c1          	paddd  %xmm1,%xmm0
   5c967:	66 0f 70 d8 e5       	pshufd $0xe5,%xmm0,%xmm3
   5c96c:	66 0f 7e d8          	movd   %xmm3,%eax
   5c970:	66 0f 7e c2          	movd   %xmm0,%edx
   5c974:	66 0f d6 05 5c e7 6d 	movq   %xmm0,0x6de75c(%rip)        # 73b0d8 <mwc>
   5c97b:	00 
   5c97c:	c1 e0 10             	shl    $0x10,%eax
   5c97f:	01 d0                	add    %edx,%eax
   5c981:	ba 03 00 00 00       	mov    $0x3,%edx
   5c986:	89 05 44 3a 6f 00    	mov    %eax,0x6f3a44(%rip)        # 7503d0 <mwc_saved.1>
   5c98c:	88 15 47 3a 6f 00    	mov    %dl,0x6f3a47(%rip)        # 7503d9 <mwc_n8>
   5c992:	c3                   	ret    
   5c993:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   5c99a:	00 00 00 00 
   5c99e:	66 90                	xchg   %ax,%ax

000000000005c9a0 <stress_mwc1>:
   5c9a0:	f3 0f 1e fa          	endbr64 
   5c9a4:	0f b6 05 2f 3a 6f 00 	movzbl 0x6f3a2f(%rip),%eax        # 7503da <mwc_n1>
   5c9ab:	84 c0                	test   %al,%al
   5c9ad:	74 21                	je     5c9d0 <stress_mwc1+0x30>
   5c9af:	8d 50 ff             	lea    -0x1(%rax),%edx
   5c9b2:	8b 05 14 3a 6f 00    	mov    0x6f3a14(%rip),%eax        # 7503cc <mwc_saved.0>
   5c9b8:	88 15 1c 3a 6f 00    	mov    %dl,0x6f3a1c(%rip)        # 7503da <mwc_n1>
   5c9be:	d1 e8                	shr    %eax
   5c9c0:	89 05 06 3a 6f 00    	mov    %eax,0x6f3a06(%rip)        # 7503cc <mwc_saved.0>
   5c9c6:	83 e0 01             	and    $0x1,%eax
   5c9c9:	c3                   	ret    
   5c9ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   5c9d0:	f3 0f 7e 0d 00 e7 6d 	movq   0x6de700(%rip),%xmm1        # 73b0d8 <mwc>
   5c9d7:	00 
   5c9d8:	0f b7 05 f9 e6 6d 00 	movzwl 0x6de6f9(%rip),%eax        # 73b0d8 <mwc>
   5c9df:	69 c0 50 46 00 00    	imul   $0x4650,%eax,%eax
   5c9e5:	66 0f 72 d1 10       	psrld  $0x10,%xmm1
   5c9ea:	66 0f 6e c0          	movd   %eax,%xmm0
   5c9ee:	0f b7 05 e7 e6 6d 00 	movzwl 0x6de6e7(%rip),%eax        # 73b0dc <mwc+0x4>
   5c9f5:	69 c0 69 90 00 00    	imul   $0x9069,%eax,%eax
   5c9fb:	66 0f 6e d0          	movd   %eax,%xmm2
   5c9ff:	66 0f 62 c2          	punpckldq %xmm2,%xmm0
   5ca03:	66 0f fe c1          	paddd  %xmm1,%xmm0
   5ca07:	66 0f 70 d8 e5       	pshufd $0xe5,%xmm0,%xmm3
   5ca0c:	66 0f 7e d8          	movd   %xmm3,%eax
   5ca10:	66 0f 7e c2          	movd   %xmm0,%edx
   5ca14:	66 0f d6 05 bc e6 6d 	movq   %xmm0,0x6de6bc(%rip)        # 73b0d8 <mwc>
   5ca1b:	00 
   5ca1c:	c1 e0 10             	shl    $0x10,%eax
   5ca1f:	01 d0                	add    %edx,%eax
   5ca21:	ba 1f 00 00 00       	mov    $0x1f,%edx
   5ca26:	89 05 a0 39 6f 00    	mov    %eax,0x6f39a0(%rip)        # 7503cc <mwc_saved.0>
   5ca2c:	83 e0 01             	and    $0x1,%eax
   5ca2f:	88 15 a5 39 6f 00    	mov    %dl,0x6f39a5(%rip)        # 7503da <mwc_n1>
   5ca35:	c3                   	ret    
	...
