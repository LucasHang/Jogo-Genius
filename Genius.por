programa
{
	inclua biblioteca Util-->u
	funcao inicio()
	{
		//Todos direitos reservados a Gabriel Mello & Lucas Hang. ('°-°)
		
		inteiro repeticoes[31],resposta[31]
		inteiro acertos=0,posicao=0
		inteiro nivel
		cadeia decisao
		logico acertou=falso

		faca{
			preenche_vetor(repeticoes)
			main_menu()
			escreva("\nEscolha o nível: ")
			leia(nivel)
			limpa()
			escolha(nivel){
				caso 1:
					faca{
						acertou = verdadeiro
						escreve_repeticoes(repeticoes,posicao,acertos)
						ler_resposta(resposta,repeticoes,posicao,acertos,acertou)
						limpa()
						contar_acertos(acertou,acertos)
					}enquanto(acertou e acertos<8)
					limpa()
					resultado(acertou,acertos,posicao)
				pare
				caso 2:
					faca{
						acertou = verdadeiro
						escreve_repeticoes(repeticoes,posicao,acertos)
						ler_resposta(resposta,repeticoes,posicao,acertos,acertou)
						limpa()
						contar_acertos(acertou,acertos)
					}enquanto(acertou e acertos<14)
					limpa()
					resultado(acertou,acertos,posicao)
				pare
				caso 3:
					faca{
						acertou = verdadeiro
						escreve_repeticoes(repeticoes,posicao,acertos)
						ler_resposta(resposta,repeticoes,posicao,acertos,acertou)
						limpa()
						contar_acertos(acertou,acertos)
					}enquanto(acertou e acertos<20)
					limpa()
					resultado(acertou,acertos,posicao)
				pare
				caso 4:
					faca{
						acertou = verdadeiro
						escreve_repeticoes(repeticoes,posicao,acertos)
						ler_resposta(resposta,repeticoes,posicao,acertos,acertou)
						limpa()
						contar_acertos(acertou,acertos)
					}enquanto(acertou e acertos<31)
					limpa()
					resultado(acertou,acertos,posicao)
				pare
				caso contrario:
					escreva("\nDigite apenas números de 1 e 4,  por favor")
				pare
			}
			escreva("\nDeseja voltar ao menu principal?(s/n): ")
			leia(decisao)
			limpa_variavel(acertos)
		}enquanto(quer_continuar(decisao))
	}
	
	funcao preenche_vetor(inteiro vetor[]){
		para(inteiro contador=0;contador<31;contador++){
			vetor[contador] = u.sorteia(1,10)
		}
	}

	funcao logico verifica_resposta(inteiro vetor1[],inteiro vetor2[],inteiro posicao){
		se(vetor1[posicao]==vetor2[posicao]){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}

	funcao resultado(logico acertou,inteiro acertos,inteiro posicao){
		se(acertou){
			fogos()
			escreva_n("\nVencedor!!!!")
			escreva(acertos," Acertos") 
		}senao{
			escreva_n("Perdeu Bro :(")
			escreva("\n",acertos," Acertos")
			escreva("\nErrou na sequência ",posicao)
		}
	}

	funcao escreve_repeticoes(inteiro vetor[],inteiro posicao,inteiro acertos){
		para(posicao=0;posicao<=acertos;posicao++){
			u.aguarde(600)
			escreva(vetor[posicao])
			u.aguarde(600)
			limpa()
		}
	}

	funcao ler_resposta(inteiro vetor1[],inteiro vetor2[],inteiro &posicao,inteiro acertos,logico &acertou){
		para(posicao=0;posicao<=acertos e acertou;posicao++){
			leia(vetor1[posicao])
			u.aguarde(100)
			limpa()
			acertou = verifica_resposta(vetor1,vetor2,posicao)
		}
	}

	funcao contar_acertos(logico acertou,inteiro &acertos){
		se(acertou){
			acertos++
		}
	}

	funcao logico quer_continuar(cadeia decisao){
		se(decisao=="s" ou decisao=="S" ou decisao=="sim" ou decisao=="Sim" ou decisao=="SIM"){
			retorne verdadeiro  
		}
		retorne falso
	}

	funcao main_menu(){
		escreva_n("GENIUS!\n")
		escreva_n("\n\tNíveis:\n")
		escreva_n("Nivel 1 - 8 repetições")
		escreva_n("Nivel 2 - 14 repetições")
		escreva_n("Nivel 3 - 20 repetições")
		escreva_n("Nivel 4 - 31 repetições")
	}

	funcao escreva_n(cadeia texto)
	{
		escreva(texto, "\n")
	}

	funcao limpa_variavel(inteiro &acertos)
	{
		acertos=0
	}

	funcao fogos()
	{
		escreva_n("                     .")
	     escreva_n("                   .' |")
	  	escreva_n("                 .'   |")
	 	escreva_n("                 /`-._'")
	 	escreva_n("                /   /")
		escreva_n("               /   /")
		escreva_n("              /   /")
		escreva_n("             (`-./")
		escreva_n("              )")
		escreva_n("            /##/")
		u.aguarde(100)
		escreva_n("           /##/")
		u.aguarde(100)
		escreva_n("          /##/")
		u.aguarde(100)
		escreva_n("         /##/")
		u.aguarde(100)
		escreva_n("        /##/")
		u.aguarde(100)
		escreva_n("       /##/")
		u.aguarde(100)
		escreva_n("      /##/")
		u.aguarde(300)
		limpa()
		escreva_n("		               *    *")
		u.aguarde(50)
		escreva_n("   *         '       *       .  *   '     .           * *")
		u.aguarde(50)
		escreva_n("                                                               '")
		u.aguarde(50)
		escreva_n("       *                *'          *          *        '")
		u.aguarde(50)
		escreva_n("   .           *               |               /")
		u.aguarde(50)
		escreva_n("               '.         |    |      '       |   '     *")
		u.aguarde(50)
		escreva_n("                 \\*        \\   \\             /")
		u.aguarde(50)
		escreva_n("       '          \\     '* |    |  *        |*                *  *")
		u.aguarde(50)
		escreva_n("            *      `.       \\   |     *     /    *      '")
		u.aguarde(50)
		escreva_n("  .                  \\      |   \\          /               *")
		u.aguarde(50)
		escreva_n("     *'  *     '      \\      \\   '.       |")
		u.aguarde(50)
		escreva_n("        -._            `                  /         *")
		u.aguarde(50)
		escreva_n("  ' '      ``._   *                           '          .      '")
		u.aguarde(50)
		escreva_n("   *           *\\*          * .   .      *")
		u.aguarde(50)
		escreva_n("*  '        *    `-._                       .         _..:='        *")
		u.aguarde(50)
		escreva_n("             .  '      *       *    *   .       _.:--'")
		u.aguarde(50)
		escreva_n("          *           .     .     *         .-'         *")
		u.aguarde(50)
		escreva_n("   .               '             . '   *           *         .")
		u.aguarde(50)
		escreva_n("  *       ___.-=--..-._     *                '               '")
		u.aguarde(50)
		escreva_n("                                  *       *")
		u.aguarde(50)
		escreva_n("                *        _.'  .'       `.        '  *             *")
		u.aguarde(50)
		escreva_n("     *              *_.-'   .'            `.               *")
		u.aguarde(50)
		escreva_n("                   .'                       `._             *  '")
		u.aguarde(50)
		escreva_n("   '       '                        .       .  `.     .")
		u.aguarde(50)
		escreva_n("       .                      *                  `")
		u.aguarde(50)
		escreva_n("               *        '             '                          .")
		u.aguarde(50)
		escreva_n("     .                          *        .           *  *")
		u.aguarde(50)
		escreva_n("             *        .                                    '")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 639; 
 * @DOBRAMENTO-CODIGO = [74, 80, 88, 100, 109, 118, 124, 131, 140, 145];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */