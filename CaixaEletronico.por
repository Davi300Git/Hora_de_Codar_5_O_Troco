programa
{
	inclua biblioteca Util --> u
	
	funcao inicio() {

   		cadeia nome
		inteiro i, j, opcao, numero, conta, digito, numConta, operacao, linhas = 5
		real deposito, transferencia, saque, saldo = 150.00 // Float
		caracter continuar
		cadeia senhaCorreta = "3589" // Senha correta 
    		cadeia senhaDigitada         // Senha digitada pelo usuário 
    		inteiro tentativas = 50 // Número máximo de tentativas
		
				
		escreva("Qual é o seu nome? ")
		leia(nome)
		escreva("\nOlá ", nome," é um prazer ter você por aqui ")
 		// Loop para permitir tentativas
    		enquanto (tentativas > 0) {
        		escreva("Digite a senha: ")
        		leia(senhaDigitada)

        		// Verifica se a senha está correta
        		se (senhaDigitada == senhaCorreta) {
            		escreva("\nAcesso permitido! Bem-vindo.\n")
            	pare
        	} 
        		senao {
            		tentativas = tentativas - 1 // Decrementa o número de tentativas
            		escreva("\nSenha incorreta! Tentativas restantes: ", tentativas, "\n\n")
        }
    }

    // Mensagem de bloqueio após esgotar as tentativas
    escreva("\nAcesso bloqueado! Número máximo de tentativas excedido.\n")
    
	faca{
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver Saldo\n")
		escreva("2. Fazer Extrato\n")
		escreva("3. Fazer Saque\n")
		escreva("4. Fazer Depósito\n")
		escreva("5. Fazer Transferência\n")
		escreva("6. Sair\n")
		
		
		leia(numero)
		escolha(numero){
			caso 1: // saldo
				escreva("Seu saldo atual é: ", saldo, "\n")
			pare

			
			caso 3:	// saque
				faca {
				escreva("Qual o valor para saque? ")
				leia(saque)
	
				se (saque <= 0 ou saque > saldo){
					escreva("Operação não autorizada.\n")					
					escreva("Por favor, informe um número válido.\n")
				}
				}enquanto (saque <= 0 ou saque > saldo) // Repete até que o segundo valor seja maior que zero
					saldo = saldo - saque
	        			escreva("\nO saldo atual é de ", saldo)
			pare
			
			caso 4: // depósito
				faca {
					escreva("\nQual o valor para depósito? ")
					leia(deposito)
					
					se (deposito <= 0){
					escreva("\nOperação não autorizada.")
					escreva("\nPor favor, informe um número válido.\n")
				}
				}enquanto (deposito <= 0) // Repete até que o segundo valor seja maior que zero

				//calculo do deposito
				saldo = saldo + deposito
				escreva("\nO saldo atual é de ", saldo)
			pare
			caso 5: // Transferência

				//solicita os 7 numeros ao usuário
				escreva("\nInforme o número da conta: ")
				leia(numConta)
				//solicita o dígito ao usuário
				escreva("\nInforme o dígito da conta: ")
				leia(digito)
				escreva("\nConta: ",numConta,"-",digito)
				faca {
				escreva("\nQual o valor para transferência? ")
				leia(transferencia)
				
				se (transferencia <= 0 ou transferencia > saldo){
					escreva("Operação não autorizada.\n")					
					escreva("Por favor, informe um número válido.\n")
				}
				}enquanto (transferencia <= 0 ou transferencia > saldo) 
					saldo = saldo - transferencia
									// loop para imprimir as linhas 
				para(i = linhas; i >= 1; i--){
					u.aguarde(1000)
					para(j = 1; j <= i; j++){
						escreva(".")
					}
					escreva("\n")
				}
					escreva("\nTransferência feita com sucesso!")
	        			escreva("\nO saldo atual é de ", saldo)
			pare

			caso 6:
				//"Programa encerrado"
			pare

			caso contrario:
				escreva("\nerror")
			 	escreva("\nOpção Inválida! tente novamente.")
		}
		// pergunta se o usuário deseja continuar
		escreva("\n\nDeseja realizar outra operação? (S/N): ")
		leia(continuar)
	} enquanto(continuar == 'S' ou continuar =='s') //repete enquanto o usuário quiser
	escreva("\n",nome," foi um prazer ter você por aqui!")
	escreva("\nPrograma encerrado. Obrigado!")
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 851; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */