programa
{
	
   	real saldo = 150.00// Float
   	cadeia nome


	funcao inicio() {

		inteiro opcao 
		escreva("Qual é o seu nome? ")
		leia(nome)
		escreva("\nOlá ", nome," é um prazer ter você por aqui ")
	
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Fazer depósito\n")
		escreva("3. Fazer saque\n")
		escreva("4. Sair\n")
		
		inteiro numero
		leia(numero)
		escolha(numero){
			caso 1:
				escreva("Seu saldo atual é: ", saldo, "\n")
			pare
			
			caso 2:
				real deposito
		
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
				real saque
				
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
				escreva("Programa encerrado")
			pare

			caso contrario:
			 	escreva("Opção Inválida, tente novamente.")
		}

	}			//escreva("Opção Inválida")
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 82; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */