000000000004d920 <ccitt_crc16>:
   4d920:	f3 0f 1e fa          	endbr64 
   4d924:	31 c0                	xor    %eax,%eax
   4d926:	48 85 f6             	test   %rsi,%rsi
   4d929:	0f 84 0a 01 00 00    	je     4da39 <ccitt_crc16+0x119>
   4d92f:	48 01 fe             	add    %rdi,%rsi
   4d932:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   4d937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   4d93e:	00 00 
   4d940:	0f b6 17             	movzbl (%rdi),%edx
   4d943:	89 c1                	mov    %eax,%ecx
   4d945:	48 83 c7 01          	add    $0x1,%rdi
   4d949:	66 d1 e9             	shr    %cx
   4d94c:	31 d0                	xor    %edx,%eax
   4d94e:	41 89 c8             	mov    %ecx,%r8d
   4d951:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4d957:	a8 01                	test   $0x1,%al
   4d959:	41 0f 45 c8          	cmovne %r8d,%ecx
   4d95d:	41 89 d0             	mov    %edx,%r8d
   4d960:	41 d0 e8             	shr    %r8b
   4d963:	89 c8                	mov    %ecx,%eax
   4d965:	44 31 c1             	xor    %r8d,%ecx
   4d968:	66 d1 e8             	shr    %ax
   4d96b:	41 89 c0             	mov    %eax,%r8d
   4d96e:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4d974:	83 e1 01             	and    $0x1,%ecx
   4d977:	41 0f 45 c0          	cmovne %r8d,%eax
   4d97b:	41 89 d0             	mov    %edx,%r8d
   4d97e:	41 c0 e8 02          	shr    $0x2,%r8b
   4d982:	89 c1                	mov    %eax,%ecx
   4d984:	44 31 c0             	xor    %r8d,%eax
   4d987:	66 d1 e9             	shr    %cx
   4d98a:	41 89 c8             	mov    %ecx,%r8d
   4d98d:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4d993:	a8 01                	test   $0x1,%al
   4d995:	41 0f 45 c8          	cmovne %r8d,%ecx
   4d999:	41 89 d0             	mov    %edx,%r8d
   4d99c:	41 c0 e8 03          	shr    $0x3,%r8b
   4d9a0:	89 c8                	mov    %ecx,%eax
   4d9a2:	44 31 c1             	xor    %r8d,%ecx
   4d9a5:	66 d1 e8             	shr    %ax
   4d9a8:	41 89 c0             	mov    %eax,%r8d
   4d9ab:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4d9b1:	83 e1 01             	and    $0x1,%ecx
   4d9b4:	41 0f 45 c0          	cmovne %r8d,%eax
   4d9b8:	41 89 d0             	mov    %edx,%r8d
   4d9bb:	41 c0 e8 04          	shr    $0x4,%r8b
   4d9bf:	89 c1                	mov    %eax,%ecx
   4d9c1:	44 31 c0             	xor    %r8d,%eax
   4d9c4:	66 d1 e9             	shr    %cx
   4d9c7:	41 89 c8             	mov    %ecx,%r8d
   4d9ca:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4d9d0:	a8 01                	test   $0x1,%al
   4d9d2:	41 0f 45 c8          	cmovne %r8d,%ecx
   4d9d6:	41 89 d0             	mov    %edx,%r8d
   4d9d9:	41 c0 e8 05          	shr    $0x5,%r8b
   4d9dd:	89 c8                	mov    %ecx,%eax
   4d9df:	44 31 c1             	xor    %r8d,%ecx
   4d9e2:	66 d1 e8             	shr    %ax
   4d9e5:	41 89 c0             	mov    %eax,%r8d
   4d9e8:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4d9ee:	83 e1 01             	and    $0x1,%ecx
   4d9f1:	41 0f 45 c0          	cmovne %r8d,%eax
   4d9f5:	41 89 d0             	mov    %edx,%r8d
   4d9f8:	41 c0 e8 06          	shr    $0x6,%r8b
   4d9fc:	89 c1                	mov    %eax,%ecx
   4d9fe:	44 31 c0             	xor    %r8d,%eax
   4da01:	66 d1 e9             	shr    %cx
   4da04:	41 89 c8             	mov    %ecx,%r8d
   4da07:	66 41 81 f0 08 84    	xor    $0x8408,%r8w
   4da0d:	a8 01                	test   $0x1,%al
   4da0f:	41 0f 45 c8          	cmovne %r8d,%ecx
   4da13:	c0 ea 07             	shr    $0x7,%dl
   4da16:	89 c8                	mov    %ecx,%eax
   4da18:	31 d1                	xor    %edx,%ecx
   4da1a:	66 d1 e8             	shr    %ax
   4da1d:	89 c2                	mov    %eax,%edx
   4da1f:	66 81 f2 08 84       	xor    $0x8408,%dx
   4da24:	83 e1 01             	and    $0x1,%ecx
   4da27:	0f 45 c2             	cmovne %edx,%eax
   4da2a:	48 39 fe             	cmp    %rdi,%rsi
   4da2d:	0f 85 0d ff ff ff    	jne    4d940 <ccitt_crc16+0x20>
   4da33:	f7 d0                	not    %eax
   4da35:	66 c1 c0 08          	rol    $0x8,%ax
   4da39:	c3                   	ret    
   4da3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
