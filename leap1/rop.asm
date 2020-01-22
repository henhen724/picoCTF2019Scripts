
rop:     file format elf32-i386


Disassembly of section .init:

080483e8 <_init>:
 80483e8:	53                   	push   %ebx
 80483e9:	83 ec 08             	sub    $0x8,%esp
 80483ec:	e8 2f 01 00 00       	call   8048520 <__x86.get_pc_thunk.bx>
 80483f1:	81 c3 0f 1c 00 00    	add    $0x1c0f,%ebx
 80483f7:	8b 83 f8 ff ff ff    	mov    -0x8(%ebx),%eax
 80483fd:	85 c0                	test   %eax,%eax
 80483ff:	74 05                	je     8048406 <_init+0x1e>
 8048401:	e8 ba 00 00 00       	call   80484c0 <__gmon_start__@plt>
 8048406:	83 c4 08             	add    $0x8,%esp
 8048409:	5b                   	pop    %ebx
 804840a:	c3                   	ret    

Disassembly of section .plt:

08048410 <.plt>:
 8048410:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048416:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804841c:	00 00                	add    %al,(%eax)
	...

08048420 <printf@plt>:
 8048420:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048426:	68 00 00 00 00       	push   $0x0
 804842b:	e9 e0 ff ff ff       	jmp    8048410 <.plt>

08048430 <gets@plt>:
 8048430:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048436:	68 08 00 00 00       	push   $0x8
 804843b:	e9 d0 ff ff ff       	jmp    8048410 <.plt>

08048440 <fgets@plt>:
 8048440:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048446:	68 10 00 00 00       	push   $0x10
 804844b:	e9 c0 ff ff ff       	jmp    8048410 <.plt>

08048450 <getegid@plt>:
 8048450:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048456:	68 18 00 00 00       	push   $0x18
 804845b:	e9 b0 ff ff ff       	jmp    8048410 <.plt>

08048460 <puts@plt>:
 8048460:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048466:	68 20 00 00 00       	push   $0x20
 804846b:	e9 a0 ff ff ff       	jmp    8048410 <.plt>

08048470 <exit@plt>:
 8048470:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048476:	68 28 00 00 00       	push   $0x28
 804847b:	e9 90 ff ff ff       	jmp    8048410 <.plt>

08048480 <__libc_start_main@plt>:
 8048480:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048486:	68 30 00 00 00       	push   $0x30
 804848b:	e9 80 ff ff ff       	jmp    8048410 <.plt>

08048490 <setvbuf@plt>:
 8048490:	ff 25 28 a0 04 08    	jmp    *0x804a028
 8048496:	68 38 00 00 00       	push   $0x38
 804849b:	e9 70 ff ff ff       	jmp    8048410 <.plt>

080484a0 <fopen@plt>:
 80484a0:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 80484a6:	68 40 00 00 00       	push   $0x40
 80484ab:	e9 60 ff ff ff       	jmp    8048410 <.plt>

080484b0 <setresgid@plt>:
 80484b0:	ff 25 30 a0 04 08    	jmp    *0x804a030
 80484b6:	68 48 00 00 00       	push   $0x48
 80484bb:	e9 50 ff ff ff       	jmp    8048410 <.plt>

Disassembly of section .plt.got:

080484c0 <__gmon_start__@plt>:
 80484c0:	ff 25 f8 9f 04 08    	jmp    *0x8049ff8
 80484c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080484d0 <_start>:
 80484d0:	31 ed                	xor    %ebp,%ebp
 80484d2:	5e                   	pop    %esi
 80484d3:	89 e1                	mov    %esp,%ecx
 80484d5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484d8:	50                   	push   %eax
 80484d9:	54                   	push   %esp
 80484da:	52                   	push   %edx
 80484db:	e8 23 00 00 00       	call   8048503 <_start+0x33>
 80484e0:	81 c3 20 1b 00 00    	add    $0x1b20,%ebx
 80484e6:	8d 83 a0 e8 ff ff    	lea    -0x1760(%ebx),%eax
 80484ec:	50                   	push   %eax
 80484ed:	8d 83 40 e8 ff ff    	lea    -0x17c0(%ebx),%eax
 80484f3:	50                   	push   %eax
 80484f4:	51                   	push   %ecx
 80484f5:	56                   	push   %esi
 80484f6:	c7 c0 c9 87 04 08    	mov    $0x80487c9,%eax
 80484fc:	50                   	push   %eax
 80484fd:	e8 7e ff ff ff       	call   8048480 <__libc_start_main@plt>
 8048502:	f4                   	hlt    
 8048503:	8b 1c 24             	mov    (%esp),%ebx
 8048506:	c3                   	ret    
 8048507:	66 90                	xchg   %ax,%ax
 8048509:	66 90                	xchg   %ax,%ax
 804850b:	66 90                	xchg   %ax,%ax
 804850d:	66 90                	xchg   %ax,%ax
 804850f:	90                   	nop

08048510 <_dl_relocate_static_pie>:
 8048510:	f3 c3                	repz ret 
 8048512:	66 90                	xchg   %ax,%ax
 8048514:	66 90                	xchg   %ax,%ax
 8048516:	66 90                	xchg   %ax,%ax
 8048518:	66 90                	xchg   %ax,%ax
 804851a:	66 90                	xchg   %ax,%ax
 804851c:	66 90                	xchg   %ax,%ax
 804851e:	66 90                	xchg   %ax,%ax

08048520 <__x86.get_pc_thunk.bx>:
 8048520:	8b 1c 24             	mov    (%esp),%ebx
 8048523:	c3                   	ret    
 8048524:	66 90                	xchg   %ax,%ax
 8048526:	66 90                	xchg   %ax,%ax
 8048528:	66 90                	xchg   %ax,%ax
 804852a:	66 90                	xchg   %ax,%ax
 804852c:	66 90                	xchg   %ax,%ax
 804852e:	66 90                	xchg   %ax,%ax

08048530 <deregister_tm_clones>:
 8048530:	b8 3c a0 04 08       	mov    $0x804a03c,%eax
 8048535:	3d 3c a0 04 08       	cmp    $0x804a03c,%eax
 804853a:	74 24                	je     8048560 <deregister_tm_clones+0x30>
 804853c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048541:	85 c0                	test   %eax,%eax
 8048543:	74 1b                	je     8048560 <deregister_tm_clones+0x30>
 8048545:	55                   	push   %ebp
 8048546:	89 e5                	mov    %esp,%ebp
 8048548:	83 ec 14             	sub    $0x14,%esp
 804854b:	68 3c a0 04 08       	push   $0x804a03c
 8048550:	ff d0                	call   *%eax
 8048552:	83 c4 10             	add    $0x10,%esp
 8048555:	c9                   	leave  
 8048556:	c3                   	ret    
 8048557:	89 f6                	mov    %esi,%esi
 8048559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048560:	f3 c3                	repz ret 
 8048562:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048570 <register_tm_clones>:
 8048570:	b8 3c a0 04 08       	mov    $0x804a03c,%eax
 8048575:	2d 3c a0 04 08       	sub    $0x804a03c,%eax
 804857a:	c1 f8 02             	sar    $0x2,%eax
 804857d:	89 c2                	mov    %eax,%edx
 804857f:	c1 ea 1f             	shr    $0x1f,%edx
 8048582:	01 d0                	add    %edx,%eax
 8048584:	d1 f8                	sar    %eax
 8048586:	74 20                	je     80485a8 <register_tm_clones+0x38>
 8048588:	ba 00 00 00 00       	mov    $0x0,%edx
 804858d:	85 d2                	test   %edx,%edx
 804858f:	74 17                	je     80485a8 <register_tm_clones+0x38>
 8048591:	55                   	push   %ebp
 8048592:	89 e5                	mov    %esp,%ebp
 8048594:	83 ec 10             	sub    $0x10,%esp
 8048597:	50                   	push   %eax
 8048598:	68 3c a0 04 08       	push   $0x804a03c
 804859d:	ff d2                	call   *%edx
 804859f:	83 c4 10             	add    $0x10,%esp
 80485a2:	c9                   	leave  
 80485a3:	c3                   	ret    
 80485a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80485a8:	f3 c3                	repz ret 
 80485aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

080485b0 <__do_global_dtors_aux>:
 80485b0:	80 3d 3c a0 04 08 00 	cmpb   $0x0,0x804a03c
 80485b7:	75 17                	jne    80485d0 <__do_global_dtors_aux+0x20>
 80485b9:	55                   	push   %ebp
 80485ba:	89 e5                	mov    %esp,%ebp
 80485bc:	83 ec 08             	sub    $0x8,%esp
 80485bf:	e8 6c ff ff ff       	call   8048530 <deregister_tm_clones>
 80485c4:	c6 05 3c a0 04 08 01 	movb   $0x1,0x804a03c
 80485cb:	c9                   	leave  
 80485cc:	c3                   	ret    
 80485cd:	8d 76 00             	lea    0x0(%esi),%esi
 80485d0:	f3 c3                	repz ret 
 80485d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80485d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080485e0 <frame_dummy>:
 80485e0:	55                   	push   %ebp
 80485e1:	89 e5                	mov    %esp,%ebp
 80485e3:	5d                   	pop    %ebp
 80485e4:	eb 8a                	jmp    8048570 <register_tm_clones>

080485e6 <leapA>:
 80485e6:	55                   	push   %ebp
 80485e7:	89 e5                	mov    %esp,%ebp
 80485e9:	e8 3f 02 00 00       	call   804882d <__x86.get_pc_thunk.ax>
 80485ee:	05 12 1a 00 00       	add    $0x1a12,%eax
 80485f3:	c6 80 3d 00 00 00 01 	movb   $0x1,0x3d(%eax)
 80485fa:	90                   	nop
 80485fb:	5d                   	pop    %ebp
 80485fc:	c3                   	ret    

080485fd <leap2>:
 80485fd:	55                   	push   %ebp
 80485fe:	89 e5                	mov    %esp,%ebp
 8048600:	53                   	push   %ebx
 8048601:	83 ec 04             	sub    $0x4,%esp
 8048604:	e8 24 02 00 00       	call   804882d <__x86.get_pc_thunk.ax>
 8048609:	05 f7 19 00 00       	add    $0x19f7,%eax
 804860e:	0f b6 90 3f 00 00 00 	movzbl 0x3f(%eax),%edx
 8048615:	84 d2                	test   %dl,%dl
 8048617:	74 12                	je     804862b <leap2+0x2e>
 8048619:	81 7d 08 ef be ad de 	cmpl   $0xdeadbeef,0x8(%ebp)
 8048620:	75 09                	jne    804862b <leap2+0x2e>
 8048622:	c6 80 3e 00 00 00 01 	movb   $0x1,0x3e(%eax)
 8048629:	eb 35                	jmp    8048660 <leap2+0x63>
 804862b:	0f b6 90 3f 00 00 00 	movzbl 0x3f(%eax),%edx
 8048632:	84 d2                	test   %dl,%dl
 8048634:	74 16                	je     804864c <leap2+0x4f>
 8048636:	83 ec 0c             	sub    $0xc,%esp
 8048639:	8d 90 c0 e8 ff ff    	lea    -0x1740(%eax),%edx
 804863f:	52                   	push   %edx
 8048640:	89 c3                	mov    %eax,%ebx
 8048642:	e8 19 fe ff ff       	call   8048460 <puts@plt>
 8048647:	83 c4 10             	add    $0x10,%esp
 804864a:	eb 14                	jmp    8048660 <leap2+0x63>
 804864c:	83 ec 0c             	sub    $0xc,%esp
 804864f:	8d 90 dc e8 ff ff    	lea    -0x1724(%eax),%edx
 8048655:	52                   	push   %edx
 8048656:	89 c3                	mov    %eax,%ebx
 8048658:	e8 03 fe ff ff       	call   8048460 <puts@plt>
 804865d:	83 c4 10             	add    $0x10,%esp
 8048660:	90                   	nop
 8048661:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048664:	c9                   	leave  
 8048665:	c3                   	ret    

08048666 <leap3>:
 8048666:	55                   	push   %ebp
 8048667:	89 e5                	mov    %esp,%ebp
 8048669:	53                   	push   %ebx
 804866a:	83 ec 04             	sub    $0x4,%esp
 804866d:	e8 bb 01 00 00       	call   804882d <__x86.get_pc_thunk.ax>
 8048672:	05 8e 19 00 00       	add    $0x198e,%eax
 8048677:	0f b6 90 3d 00 00 00 	movzbl 0x3d(%eax),%edx
 804867e:	84 d2                	test   %dl,%dl
 8048680:	74 17                	je     8048699 <leap3+0x33>
 8048682:	0f b6 90 3d 00 00 00 	movzbl 0x3d(%eax),%edx
 8048689:	83 f2 01             	xor    $0x1,%edx
 804868c:	84 d2                	test   %dl,%dl
 804868e:	74 09                	je     8048699 <leap3+0x33>
 8048690:	c6 80 3f 00 00 00 01 	movb   $0x1,0x3f(%eax)
 8048697:	eb 14                	jmp    80486ad <leap3+0x47>
 8048699:	83 ec 0c             	sub    $0xc,%esp
 804869c:	8d 90 dc e8 ff ff    	lea    -0x1724(%eax),%edx
 80486a2:	52                   	push   %edx
 80486a3:	89 c3                	mov    %eax,%ebx
 80486a5:	e8 b6 fd ff ff       	call   8048460 <puts@plt>
 80486aa:	83 c4 10             	add    $0x10,%esp
 80486ad:	90                   	nop
 80486ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80486b1:	c9                   	leave  
 80486b2:	c3                   	ret    

080486b3 <display_flag>:
 80486b3:	55                   	push   %ebp
 80486b4:	89 e5                	mov    %esp,%ebp
 80486b6:	53                   	push   %ebx
 80486b7:	83 ec 54             	sub    $0x54,%esp
 80486ba:	e8 61 fe ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 80486bf:	81 c3 41 19 00 00    	add    $0x1941,%ebx
 80486c5:	83 ec 08             	sub    $0x8,%esp
 80486c8:	8d 83 fb e8 ff ff    	lea    -0x1705(%ebx),%eax
 80486ce:	50                   	push   %eax
 80486cf:	8d 83 fd e8 ff ff    	lea    -0x1703(%ebx),%eax
 80486d5:	50                   	push   %eax
 80486d6:	e8 c5 fd ff ff       	call   80484a0 <fopen@plt>
 80486db:	83 c4 10             	add    $0x10,%esp
 80486de:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80486e1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 80486e5:	75 1c                	jne    8048703 <display_flag+0x50>
 80486e7:	83 ec 0c             	sub    $0xc,%esp
 80486ea:	8d 83 08 e9 ff ff    	lea    -0x16f8(%ebx),%eax
 80486f0:	50                   	push   %eax
 80486f1:	e8 6a fd ff ff       	call   8048460 <puts@plt>
 80486f6:	83 c4 10             	add    $0x10,%esp
 80486f9:	83 ec 0c             	sub    $0xc,%esp
 80486fc:	6a 00                	push   $0x0
 80486fe:	e8 6d fd ff ff       	call   8048470 <exit@plt>
 8048703:	83 ec 04             	sub    $0x4,%esp
 8048706:	ff 75 f4             	pushl  -0xc(%ebp)
 8048709:	6a 40                	push   $0x40
 804870b:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804870e:	50                   	push   %eax
 804870f:	e8 2c fd ff ff       	call   8048440 <fgets@plt>
 8048714:	83 c4 10             	add    $0x10,%esp
 8048717:	0f b6 83 3d 00 00 00 	movzbl 0x3d(%ebx),%eax
 804871e:	84 c0                	test   %al,%al
 8048720:	74 2e                	je     8048750 <display_flag+0x9d>
 8048722:	0f b6 83 3e 00 00 00 	movzbl 0x3e(%ebx),%eax
 8048729:	84 c0                	test   %al,%al
 804872b:	74 23                	je     8048750 <display_flag+0x9d>
 804872d:	0f b6 83 3f 00 00 00 	movzbl 0x3f(%ebx),%eax
 8048734:	84 c0                	test   %al,%al
 8048736:	74 18                	je     8048750 <display_flag+0x9d>
 8048738:	83 ec 08             	sub    $0x8,%esp
 804873b:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 804873e:	50                   	push   %eax
 804873f:	8d 83 35 e9 ff ff    	lea    -0x16cb(%ebx),%eax
 8048745:	50                   	push   %eax
 8048746:	e8 d5 fc ff ff       	call   8048420 <printf@plt>
 804874b:	83 c4 10             	add    $0x10,%esp
 804874e:	eb 3c                	jmp    804878c <display_flag+0xd9>
 8048750:	0f b6 83 3d 00 00 00 	movzbl 0x3d(%ebx),%eax
 8048757:	84 c0                	test   %al,%al
 8048759:	75 0b                	jne    8048766 <display_flag+0xb3>
 804875b:	0f b6 83 3f 00 00 00 	movzbl 0x3f(%ebx),%eax
 8048762:	84 c0                	test   %al,%al
 8048764:	74 14                	je     804877a <display_flag+0xc7>
 8048766:	83 ec 0c             	sub    $0xc,%esp
 8048769:	8d 83 38 e9 ff ff    	lea    -0x16c8(%ebx),%eax
 804876f:	50                   	push   %eax
 8048770:	e8 eb fc ff ff       	call   8048460 <puts@plt>
 8048775:	83 c4 10             	add    $0x10,%esp
 8048778:	eb 12                	jmp    804878c <display_flag+0xd9>
 804877a:	83 ec 0c             	sub    $0xc,%esp
 804877d:	8d 83 58 e9 ff ff    	lea    -0x16a8(%ebx),%eax
 8048783:	50                   	push   %eax
 8048784:	e8 d7 fc ff ff       	call   8048460 <puts@plt>
 8048789:	83 c4 10             	add    $0x10,%esp
 804878c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804878f:	c9                   	leave  
 8048790:	c3                   	ret    

08048791 <vuln>:
 8048791:	55                   	push   %ebp
 8048792:	89 e5                	mov    %esp,%ebp
 8048794:	53                   	push   %ebx
 8048795:	83 ec 14             	sub    $0x14,%esp
 8048798:	e8 83 fd ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 804879d:	81 c3 63 18 00 00    	add    $0x1863,%ebx
 80487a3:	83 ec 0c             	sub    $0xc,%esp
 80487a6:	8d 83 7b e9 ff ff    	lea    -0x1685(%ebx),%eax
 80487ac:	50                   	push   %eax
 80487ad:	e8 6e fc ff ff       	call   8048420 <printf@plt>
 80487b2:	83 c4 10             	add    $0x10,%esp
 80487b5:	83 ec 0c             	sub    $0xc,%esp
 80487b8:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80487bb:	50                   	push   %eax
 80487bc:	e8 6f fc ff ff       	call   8048430 <gets@plt>
 80487c1:	83 c4 10             	add    $0x10,%esp
 80487c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80487c7:	c9                   	leave  
 80487c8:	c3                   	ret    

080487c9 <main>:
 80487c9:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80487cd:	83 e4 f0             	and    $0xfffffff0,%esp
 80487d0:	ff 71 fc             	pushl  -0x4(%ecx)
 80487d3:	55                   	push   %ebp
 80487d4:	89 e5                	mov    %esp,%ebp
 80487d6:	53                   	push   %ebx
 80487d7:	51                   	push   %ecx
 80487d8:	83 ec 10             	sub    $0x10,%esp
 80487db:	e8 40 fd ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 80487e0:	81 c3 20 18 00 00    	add    $0x1820,%ebx
 80487e6:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80487ec:	8b 00                	mov    (%eax),%eax
 80487ee:	6a 00                	push   $0x0
 80487f0:	6a 02                	push   $0x2
 80487f2:	6a 00                	push   $0x0
 80487f4:	50                   	push   %eax
 80487f5:	e8 96 fc ff ff       	call   8048490 <setvbuf@plt>
 80487fa:	83 c4 10             	add    $0x10,%esp
 80487fd:	e8 4e fc ff ff       	call   8048450 <getegid@plt>
 8048802:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048805:	83 ec 04             	sub    $0x4,%esp
 8048808:	ff 75 f4             	pushl  -0xc(%ebp)
 804880b:	ff 75 f4             	pushl  -0xc(%ebp)
 804880e:	ff 75 f4             	pushl  -0xc(%ebp)
 8048811:	e8 9a fc ff ff       	call   80484b0 <setresgid@plt>
 8048816:	83 c4 10             	add    $0x10,%esp
 8048819:	e8 73 ff ff ff       	call   8048791 <vuln>
 804881e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048823:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8048826:	59                   	pop    %ecx
 8048827:	5b                   	pop    %ebx
 8048828:	5d                   	pop    %ebp
 8048829:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804882c:	c3                   	ret    

0804882d <__x86.get_pc_thunk.ax>:
 804882d:	8b 04 24             	mov    (%esp),%eax
 8048830:	c3                   	ret    
 8048831:	66 90                	xchg   %ax,%ax
 8048833:	66 90                	xchg   %ax,%ax
 8048835:	66 90                	xchg   %ax,%ax
 8048837:	66 90                	xchg   %ax,%ax
 8048839:	66 90                	xchg   %ax,%ax
 804883b:	66 90                	xchg   %ax,%ax
 804883d:	66 90                	xchg   %ax,%ax
 804883f:	90                   	nop

08048840 <__libc_csu_init>:
 8048840:	55                   	push   %ebp
 8048841:	57                   	push   %edi
 8048842:	56                   	push   %esi
 8048843:	53                   	push   %ebx
 8048844:	e8 d7 fc ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 8048849:	81 c3 b7 17 00 00    	add    $0x17b7,%ebx
 804884f:	83 ec 0c             	sub    $0xc,%esp
 8048852:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8048856:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804885c:	e8 87 fb ff ff       	call   80483e8 <_init>
 8048861:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048867:	29 c6                	sub    %eax,%esi
 8048869:	c1 fe 02             	sar    $0x2,%esi
 804886c:	85 f6                	test   %esi,%esi
 804886e:	74 25                	je     8048895 <__libc_csu_init+0x55>
 8048870:	31 ff                	xor    %edi,%edi
 8048872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048878:	83 ec 04             	sub    $0x4,%esp
 804887b:	55                   	push   %ebp
 804887c:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048880:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048884:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804888b:	83 c7 01             	add    $0x1,%edi
 804888e:	83 c4 10             	add    $0x10,%esp
 8048891:	39 fe                	cmp    %edi,%esi
 8048893:	75 e3                	jne    8048878 <__libc_csu_init+0x38>
 8048895:	83 c4 0c             	add    $0xc,%esp
 8048898:	5b                   	pop    %ebx
 8048899:	5e                   	pop    %esi
 804889a:	5f                   	pop    %edi
 804889b:	5d                   	pop    %ebp
 804889c:	c3                   	ret    
 804889d:	8d 76 00             	lea    0x0(%esi),%esi

080488a0 <__libc_csu_fini>:
 80488a0:	f3 c3                	repz ret 

Disassembly of section .fini:

080488a4 <_fini>:
 80488a4:	53                   	push   %ebx
 80488a5:	83 ec 08             	sub    $0x8,%esp
 80488a8:	e8 73 fc ff ff       	call   8048520 <__x86.get_pc_thunk.bx>
 80488ad:	81 c3 53 17 00 00    	add    $0x1753,%ebx
 80488b3:	83 c4 08             	add    $0x8,%esp
 80488b6:	5b                   	pop    %ebx
 80488b7:	c3                   	ret    
