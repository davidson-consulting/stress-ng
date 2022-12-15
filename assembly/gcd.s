000000000012ef50 <stress_cpu_gcd.arch_skylake_avx512.9>:
12ef50:	f3 0f 1e fa          	endbr64
	
  12ef54:	45 31 d2             	xor    %r10d,%r10d
  12ef57:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  12ef5d:	31 f6                	xor    %esi,%esi
  12ef5f:	45 31 db             	xor    %r11d,%r11d
  12ef62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  12ef68:	41 01 f2             	add    %esi,%r10d
  12ef6b:	90                   	nop
  12ef6c:	44 89 c9             	mov    %r9d,%ecx
  12ef6f:	49 81 f9 00 40 00 00 	cmp    $0x4000,%r9
  12ef76:	74 4d                	je     12efc5 <stress_cpu_gcd.arch_skylake_avx512.9+0x75>
  12ef78:	44 89 ce             	mov    %r9d,%esi
  12ef7b:	89 c8                	mov    %ecx,%eax
  12ef7d:	31 d2                	xor    %edx,%edx
  12ef7f:	81 f6 cd 07 00 00    	xor    $0x7cd,%esi
  12ef85:	83 c6 03             	add    $0x3,%esi
  12ef88:	f7 f6                	div    %esi
  12ef8a:	41 89 d0             	mov    %edx,%r8d
  12ef8d:	4d 0f af c1          	imul   %r9,%r8
  12ef91:	85 d2                	test   %edx,%edx
  12ef93:	74 2b                	je     12efc0 <stress_cpu_gcd.arch_skylake_avx512.9+0x70>
  12ef95:	0f 1f 00             	nopl   (%rax)
  12ef98:	89 d6                	mov    %edx,%esi
  12ef9a:	89 c8                	mov    %ecx,%eax
  12ef9c:	89 d1                	mov    %edx,%ecx
  12ef9e:	31 d2                	xor    %edx,%edx
12efa0:	f7 f6                	div    %esi


  12efa2:	85 d2                	test   %edx,%edx
  12efa4:	75 f2                	jne    12ef98 <stress_cpu_gcd.arch_skylake_avx512.9+0x48>
  12efa6:	89 f1                	mov    %esi,%ecx
  12efa8:	4c 89 c0             	mov    %r8,%rax
  12efab:	31 d2                	xor    %edx,%edx
  12efad:	49 83 c1 01          	add    $0x1,%r9
  12efb1:	48 f7 f1             	div    %rcx
  12efb4:	49 01 c3             	add    %rax,%r11
  12efb7:	eb af                	jmp    12ef68 <stress_cpu_gcd.arch_skylake_avx512.9+0x18>


	
  12efb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  12efc0:	44 89 ce             	mov    %r9d,%esi
  12efc3:	eb e1                	jmp    12efa6 <stress_cpu_gcd.arch_skylake_avx512.9+0x56>

12efc5:	f6 05 65 71 7d 00 04 	testb  $0x4,0x7d7165(%rip)        # 906131 <g_opt_flags+0x1>
  12efcc:	74 18                	je     12efe6 <stress_cpu_gcd.arch_skylake_avx512.9+0x96>
  12efce:	41 81 fa 24 51 c1 03 	cmp    $0x3c15124,%r10d
  12efd5:	74 0f                	je     12efe6 <stress_cpu_gcd.arch_skylake_avx512.9+0x96>
  12efd7:	48 b8 e9 4a c8 b1 09 	movabs $0x9b1c84ae9,%rax
  12efde:	00 00 00 
  12efe1:	49 39 c3             	cmp    %rax,%r11
  12efe4:	75 01                	jne    12efe7 <stress_cpu_gcd.arch_skylake_avx512.9+0x97>
  12efe6:	c3                   	ret    
  12efe7:	48 89 fe             	mov    %rdi,%rsi
  12efea:	31 c0                	xor    %eax,%eax
  12efec:	48 8d 3d b5 c5 52 00 	lea    0x52c5b5(%rip),%rdi        # 65b5a8 <option+0x62e8>
  12eff3:	e9 78 b1 f2 ff       	jmp    5a170 <pr_fail>
  12eff8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  12efff:	00 
