000000000009dd90 <stress_cpu_callfunc_func>:
   9dd90:	f3 0f 1e fa          	endbr64 
   9dd94:	55                   	push   %rbp
   9dd95:	48 89 e5             	mov    %rsp,%rbp
   9dd98:	48 83 ec 30          	sub    $0x30,%rsp
   9dd9c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
   9dda0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
   9dda4:	89 55 ec             	mov    %edx,-0x14(%rbp)
   9dda7:	89 c8                	mov    %ecx,%eax
   9dda9:	44 89 c2             	mov    %r8d,%edx
   9ddac:	4c 89 4d d8          	mov    %r9,-0x28(%rbp)
   9ddb0:	66 89 45 e8          	mov    %ax,-0x18(%rbp)
   9ddb4:	89 d0                	mov    %edx,%eax
   9ddb6:	88 45 e4             	mov    %al,-0x1c(%rbp)
   9ddb9:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
   9ddbe:	0f 9f c0             	setg   %al
   9ddc1:	0f b6 c0             	movzbl %al,%eax
   9ddc4:	48 85 c0             	test   %rax,%rax
   9ddc7:	74 43                	je     9de0c <stress_cpu_callfunc_func+0x7c>
   9ddc9:	0f b6 4d e4          	movzbl -0x1c(%rbp),%ecx
   9ddcd:	0f b7 55 e8          	movzwl -0x18(%rbp),%edx
   9ddd1:	8b 75 ec             	mov    -0x14(%rbp),%esi
   9ddd4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   9ddd8:	48 01 c6             	add    %rax,%rsi
   9dddb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   9dddf:	48 8d 78 ff          	lea    -0x1(%rax),%rdi
   9dde3:	4c 8b 45 d8          	mov    -0x28(%rbp),%r8
   9dde7:	8b 45 ec             	mov    -0x14(%rbp),%eax
   9ddea:	48 83 ec 08          	sub    $0x8,%rsp
   9ddee:	ff 75 20             	push   0x20(%rbp)
   9ddf1:	ff 75 18             	push   0x18(%rbp)
   9ddf4:	ff 75 10             	push   0x10(%rbp)
   9ddf7:	4d 89 c1             	mov    %r8,%r9
   9ddfa:	41 89 c8             	mov    %ecx,%r8d
   9ddfd:	89 d1                	mov    %edx,%ecx
   9ddff:	89 c2                	mov    %eax,%edx
   9de01:	e8 8a ff ff ff       	call   9dd90 <stress_cpu_callfunc_func>
   9de06:	48 83 c4 20          	add    $0x20,%rsp
   9de0a:	eb 0c                	jmp    9de18 <stress_cpu_callfunc_func+0x88>
   9de0c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   9de10:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
   9de14:	48 c1 f8 03          	sar    $0x3,%rax
   9de18:	c9                   	leave  
   9de19:	c3                   	ret    
   9de1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
