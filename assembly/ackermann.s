000000000009ce70 <ackermann>:

   
   9ce7c:	89 7d fc             	mov    %edi,-0x4(%rbp)
   9ce7f:	89 75 f8             	mov    %esi,-0x8(%rbp)
   9ce82:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)

   // if (m != 0) {
   9ce86:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   9ce8a:	75 08                	jne    9ce94 <ackermann+0x24>
   // } else {
	// ret_val = n + 1
	// goto ret;
   9ce8c:	8b 45 f8             	mov    -0x8(%rbp),%eax
   9ce8f:	83 c0 01             	add    $0x1,%eax
   9ce92:	eb 4d                	jmp    9cee1 <ackermann+0x71>
   
   // } 
   //		;//  m!= 0
   // if (n != 0) {	
   9ce94:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
   9ce98:	75 1b                	jne    9ceb5 <ackermann+0x45>

   //	}
   9ce9a:	8b 45 fc             	mov    -0x4(%rbp),%eax
   9ce9d:	8d 48 ff             	lea    -0x1(%rax),%ecx
   9cea0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   9cea4:	48 89 c2             	mov    %rax,%rdx
   9cea7:	be 01 00 00 00       	mov    $0x1,%esi
   9ceac:	89 cf                	mov    %ecx,%edi
   9ceae:	e8 bd ff ff ff       	call   9ce70 <ackermann>
   9ceb3:	eb 2c                	jmp    9cee1 <ackermann+0x71>
   9ceb5:	8b 45 f8             	mov    -0x8(%rbp),%eax
   9ceb8:	8d 48 ff             	lea    -0x1(%rax),%ecx
   9cebb:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   9cebf:	8b 45 fc             	mov    -0x4(%rbp),%eax
   9cec2:	89 ce                	mov    %ecx,%esi
   9cec4:	89 c7                	mov    %eax,%edi
   9cec6:	e8 a5 ff ff ff       	call   9ce70 <ackermann>
   9cecb:	89 c6                	mov    %eax,%esi
   9cecd:	8b 45 fc             	mov    -0x4(%rbp),%eax
   9ced0:	8d 48 ff             	lea    -0x1(%rax),%ecx
   9ced3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   9ced7:	48 89 c2             	mov    %rax,%rdx
   9ceda:	89 cf                	mov    %ecx,%edi
   9cedc:	e8 8f ff ff ff       	call   9ce70 <ackermann>
	
   9cee1:	c9                   	leave  
   9cee2:	c3                   	ret    
   9cee3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   9ceea:	00 00 00 00 
   9ceee:	66 90                	xchg   %ax,%ax
