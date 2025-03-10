programa
{
	
   	real saldo = 150.00// Float
   	cadeia nome


	funcao inicio() {

		inteiro opcao 
		inteiro numero
		real deposito
		real saque
		caracter continuar
				
		escreva("Qual é o seu nome? ")
		leia(nome)
		escreva("\nOlá ", nome," é um prazer ter você por aqui ")
	faca{
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Fazer depósito\n")
		escreva("3. Fazer saque\n")
		escreva("4. Sair\n")
		
		
		leia(numero)
		escolha(numero){
			caso 1:
				escreva("Seu saldo atual é: ", saldo, "\n")
			pare
			
			caso 2:
				faca {
					escreva("\nQual o valor para depósito? ")
					leia(deposito)
					
					se (deposito <= 0){
					escreva("\nPor favor, informe um número válido.\n")
				}
				}enquanto (deposito <= 0) // Repete até que o segundo valor seja maior que zero

				//calculo do deposito
				saldo = saldo + deposito
				escreva("\nO saldo atual é de ", saldo)
			pare
			
			caso 3:	
				faca {
				escreva("Qual o valor para saque? ")
				leia(saque)
	
				se (saque <= 0){					
					escreva("Por favor, informe um número válido.\n")
				}
				}enquanto (saque <= 0) // Repete até que o segundo valor seja maior que zero
					saldo = saldo - saque
	        			escreva("\nO saldo atual é de ", saldo)
			pare

			caso 4:
				//"Programa encerrado"
			pare

			caso contrario:
			 	escreva("Opção Inválida! tente novamente.")
		}
		// pergunta se o usuário deseja continuar
		escreva("\n\nDeseja realizar outra operação? (S/N): ")
		leia(continuar)
	} enquanto(continuar == 'S' ou continuar =='s') //repete enquanto o usuário quiser
	escreva("\nPrograma encerrado. Obrigado!")
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */