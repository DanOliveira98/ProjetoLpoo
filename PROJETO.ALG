Algoritmo "Projeto"
//
//
// Autor(a)    : Daniel Sousa de Oliveira - 44124
// Data atual  : 11/04/2018
Var
   //nesta parte dos comandos irei declarar as variaveis
   n1, n2, soma, subtracao, OPCAO: inteiro
   num_p, idade, x, m, f, FM, FF, y: inteiro
   nv, d, n_c, VD, v1, v2, v3, v4, v5, v6, v7, v8 : inteiro
   r, db, lv, sexo : caractere
   divisao, media, FEM, FEF: real
Inicio
   repita(OPCAO<>7)//aqui estarei criando um looping para continuar no programa
      //enquanto o usuario não escolher a opção correta pra sair - que é 7.
      //aqui estão as opções que aparecerá para o usuario
      escreval(" 1.SOMA") //aqui dirá ao usuario que a opção 1 significa soma
      escreval(" 2.SUBTRAÇÂO")//aqui dirá ao usuario que a opção 2 significa subtração
      escreval(" 3.DIVISÂO")//aqui dirá ao usuario que a opção 3 significa divisão
      escreval(" 4.FAIXA ETARIA")//aqui dirá ao usuario que a opção 4 significa Faixa Etaria
      escreval(" 5.NUMEROS PRIMOS")//aqui dirá ao usuario que a opção 5 significa Numeros Primos
      escreval(" 6.MUDANÇA DA BASE")//aqui dirá ao usuario que a opção 6 significa Mudança de base
      escreval(" 7.SAIR ")//aqui dirá ao usuario que a opção 7 significa Sair
      escreval("Informe a opção")//aqui irá pedir que o usuario informe a opção
      leia(OPCAO)// este comando ira reconhecer a opção selecionada pelo usuario
      se (OPCAO=1) entao // este comando ira levar o usuario para efetuar a soma
         escreva("digite o primeiro numero:")//aqui irá pedir para que o usuario informe um dos numeros que vai ser somado
         leia(n1)//aqui irá ler o valor informado pelo usuario
         escreva("digite o segundo numero:") //aqui irá pedir para que o usuario informe outro numero que vai ser somado
         leia(n2)//aqui irá ler o outro valor informado pelo usuario
         soma<- n1 + n2//aqui é o comando para efetuar a soma
         escreval("o resultado da soma dos dois numero é:", soma)//aqui irá informar ao usuario o valor da soma dos numero
      senao//aqui irá pular a opção 1, caso a opção escolhida pelo usuario for diferente que 1.
         se (OPCAO=2) entao// este comando ira levar o usuario para efetuar a subtração
            escreva("digite o primeiro numero:")//aqui irá pedir para que o usuario informe um dos numeros que vai ser subtraido
            leia(n1)//aqui irá ler o valor informado pelo usuario
            escreva("digite o segundo numero:") //aqui irá pedir para que o usuario informe um o numero que ira subtrair o primeiro numero
            leia(n2)//aqui irá ler o outro valor informado pelo usuario
            subtracao<- n1 - n2//aqui é o comando para efetuar a subtração
            escreval("A diferença dos dois numero é:", subtracao)//aqui irá informar ao usuario o resto da subtração dos numero
         senao//aqui irá pular a opção 1 e 2, caso a opção escolhida pelo usuario seja diferente.
            se (OPCAO=3) entao// este comando ira levar o usuario para efetuar a divisão
               escreva("informe o dividendo:")//aqui irá pedir para que o usuario informe o dividendo
               leia(n1)//aqui irá ler o valor informado pelo usuario
               escreva("informe o divisor:")//aqui irá pedir para que o usuario informe o divisor
               leia(n2)//aqui irá ler o outro valor informado pelo usuario
               se(n2= 0 )entao//aqui irá impor uma repetição para quê não haja erro no programa
                  repita//aqui irá fazer um looping até o usuario informar um divisor diferente
                     escreva("informe um divisor diferente de 0:")//este comando pedirá para que o usuario escolha um dividendo diferente que 0
                     leia(n2)//aqui irá ler o outro valor informado pelo usuario novamente
                  ate(n2<>0)//Aqui irá encerrar o looping até o usuario informar o dividendo diferente de 0
               fimse//aqui encerrará a estrutura de condição
               divisao<- n1 / n2//comando para efetuar a divisão
               escreval("A divisao do primeiro numero para o segundo numero é:", divisao)//comando de saida para informar o valor da divisão
            senao//aqui irá pular a opção 1, 2 e 3, caso a opção escolhida pelo usuario seja diferente.
               se(OPCAO=4)entao//este comando ira levar o usuario para efetuar o calculo da faixa etaria
                  escreva("fale a quantidade de pessoas:")//comando de saida pedindo que o usuario informe o numero de pessoas
                  leia(num_p)//ira ler o valor informado pelo usuario
                  para x <- 1 ate num_p passo 1 faca// comando para repetir as infomações até chegar ao numero exato de pessoas que foi informado pelo usuario
                     escreva ("informe a idade de uma das pessoas:")//comando de saida pedindo que o usuario informe o a idade de uma das pessoas até o numero total de pessoas, uma por vez
                     leia(idade)//comando que ira ler o valor informado pelo usuario
                     escreval ("informe o sexo dessa pessoas, se é Masculino(m) ou Feminino(f):")//comando de saida pedindo que o usuario informe o sexode uma das pessoas até o numero total de pessoas, uma por vez
                     leia(sexo)//comando que ira ler o valor informado pelo usuario
                     enquanto<(sexo <> "m") e (sexo <> "f")>faca//estrutura de repetição para colocar o Usuario no Looping até o mesmo informar um sexo valido
                        escreval ("informe um sexo valido, igual ao que foi pedido!")//comando de saida pedindo que o usuario informe um sexo valido
                        leia(sexo)//comando que ira ler o valor informado pelo usuario
                     fimenquanto//aqui encerrará a estrutura de Repetição
                     se(sexo = "m")entao//Neste comando ira impor uma estrutura de condição para agregar os valores de cada sexo
                        m <- m + idade//comando para agregar o valor da idade a uma variavel correspondete ao sexo masculino
                        FM<- FM + 1//comando para agregar o valor a uma variavel referente ao calculo da media do sexo masculino
                     fimse//comando para encerrr a estrutura de condição
                     se(sexo= "f")entao//Neste comando ira impor uma estrutura de condição para agregar os valores de cada sexo
                        f<- f + idade//comando para agregar o valor da idade a uma variavel correspondete ao sexo feminino
                        FF<- FF + 1//comando para agregar o valor a uma variavel referente ao calculo da media do sexo feminino
                     fimse//aqui encerrará a estrutura de condição
                  fimpara//aqui encerrará a estrutura de Repetição
                  media<- ( m + f )/ num_p//comando para calcular a media das idades de ambos os sexos
                  FEF<- f / FF//comando para calcular a media de idade do sexo feminino
                  FEM<- m / FM//comando para calcular a media de idade do sexo Masculino
                  escreval("a media de idades é:", media)//comando de saida para informar o valor da media de todas as idades
                  escreval("a media de idades do sexo masculino é:", FEM)//comando de saida para informar o valor da media de idade do sexo masculino
                  escreval("a media de idades do sexo feminino é:", FEF)//comando de saida para informar o valor da media de idade do sexo feminino
                  m <- 0//aqui adicionará a variavel o valor  0
                  f <- 0//aqui adicionará a variavel o valor  0
                  FF <- 0//aqui adicionará a variavel o valor  0
                  FM <- 0//aqui adicionará a variavel o valor  0
                  FEF <- 0//aqui adicionará a variavel o valor  0
                  FEM <- 0//aqui adicionará a variavel o valor  0
                  media <- 0//aqui adicionará a variavel o valor  0
               senao//aqui irá pular a opção 1, 2, 3 e 4, caso a opção escolhida pelo usuario seja diferente.
                  se(OPCAO=5) entao//este comando ira levar o usuario para a opção dos numeros primos
                     y<-0 //aqui adicionará a variavel o valor  0
                     escreval("Diga um valor:")//comando de saida pedindo que o usuario informe um valor
                     leia(num_p)//comando que ira ler o valor informado pelo usuario
                     para x de 1 ate num_p faca// comando para repetir as infomações até chegar ao numero exato que foi informado pelo usuario
                        m <- 0//aqui adicionará a variavel o valor  0
                        para f de 1 ate x faca//comando para repetir o calculo da divisão até f ter o mesmo valor que x
                           se(x mod f = 0) entao//comando que irá verificar se x divido por f resta 0
                              m<- m + 1//se x divido por f restar 0, este comando irá adicionar +1 ao valor da variavel
                           fimse//aqui encerrará a estrutura de condição
                        fimpara//aqui encerrará a estrutura de repetição
                        se(m=2) entao//Novamente abrirá a estrutura de condição, se m = 2
                           y <- y  + x//comando para efetuar a soma dos numeros primos
                           escreva(x)//comando que irá mostrar ao usuario os numero primos de 1 até o numero escolhido por ele
                        fimse//aqui encerrará a estrutura de condição
                     fimpara//aqui encerrará a estrutura de repetição
                     escreval(", estes são os numeros primos de 1 até", num_P, "!")//comando que irá mostrar ao usuario os numero primos de 1 até o numero escolhido por ele
                     escreval(" A soma dos numeros primos de 1 até", num_P, " é ", y)//comando para informar ao usuario o valor da soma dos numeros primos
                  senao//aqui irá pular a opção 1, 2, 3, 4 e 5, caso a opção escolhida pelo usuario seja diferente.
                     se(OPCAO = 6) entao//este comando ira levar o usuario para a opção Mudança de Base
                        escreva("informe o numero de casos: ")//comando de saida pedindo que o usuario informe o numero de casos
                        leia(n_c)//comando que ira ler o valor informado pelo usuario
                        x<- 0//aqui adicionará a variavel o valor  0
                        repita// comando para repetir as infomações até chegar ao numero exato de casos que foi informado pelo usuario
                           escreval("Informe se o numero está no sistema binario(b) ou decimal (d):")//comando que irá mostrar ao usuario que ele informe em qual sistema seu numero esta
                           leia(db)//comando que ira ler o valor informado pelo usuario
                           se(db = "d") entao//comando que irá verificar se o numero está em decimal
                              escreval("Informe o valor do numero:")//comando que irá pedir que o usuario informe o valor do numero decimal
                              leia(nv)//comando que ira ler o valor informado pelo usuario
                              d <- nv//aqui adicionará a variavel outra variavel para que a variavel d não acumule valor
                              r <- lv//aqui adicionará a variavel outra variavel para que a variavel r não acumule valor
                              enquanto nv > 0 faca//estrutura de repetição para efetuar a divisão do numero pra saber o seu valor em binario
                                 se(nv mod 2) = 0 entao//estrutura de condição para verificar se o numero divido por 2 resta 0
                                    r <- r + "0"//se restar 0 agregara a variavel caractere o valor 0
                                 senao//se não restar 0 pulará para este comando
                                    r <- r + "1"//após isso irá adicionar a variavel caractere o valor 1
                                 fimse//fim da estrutura de condição
                                 nv <- nv div 2//comando para agregar a variavel nv o valor da divisão dele que o resultado seja 2
                              fimenquanto//fim da estrutura de repetição
                              limpatela//comando para limpar a tela
                              escreval("A representação binaria de", d ," é ", r)//comando de saida para informar ao usuario a representção binaria do numero decimal
                           fimse//fim da estrutura de condição
                           se(db = "b") entao//comando que irá verificar se o numero está em binario
                              escreval("informe os bits do valor(coloque 0 se não houver mais bits)")//comando de saida pedindo que o usuario informe o numero binario
                              leia(v1)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v1 <> 0) e (v1 <> 1)> faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v1)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v2)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v2 <> 0) e (v2 <> 1)>faca //estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v2)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v3)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v3 <> 0) e (v3 <> 1)>faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v3)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v4)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v4 <> 0) e (v4 <> 1)>faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v4)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v5)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v5 <> 0) e (v5 <> 1)>faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v5)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v6)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v6 <> 0) e (v6 <> 1)>faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v6)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v7)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v7 <> 0) e (v7 <> 1)>faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v7)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              leia(v8)//comando que ira ler o valor informado pelo usuario
                              enquanto<(v8 <> 0) e (v8 <> 1)> faca//estrutura de repetição que colocara o usuario em um looping, se o bit não for 0 ou 1
                                 escreva("informe o bit correto:")//comando de saida pedindo que o usuario informe um bit correto
                                 leia(v8)//comando que ira ler o valor informado pelo usuario
                              fimenquanto//fim da estrutura de repetição até o usuario informar um bit correto
                              VD<- (v1 * 1) + (v2 * 2) + (v3 * 4) + (v4 * 8) + (v5 * 16) + (v6 * 32)//comando para efetuar a inverção de binario pra decimal
                              VD<- VD + (v7 * 64) + (v8 * 128)//comando para efetuar a inverção de binario pra decimal
                              escreval("A representação do seu numero binario em decimal é :", VD)//comando de saida informando ao usuario o valor do
                           fimse//fim da estrutura de condição
                           x <- x + 1//comando que adicionara a variavel x 1 para ser efetuado o loop de acordo com o numero de casos que o usuario informar
                        ate(x = n_c)//fim da estrutura de repetição quando x tiver o mesmo valor que n_c
                     senao//aqui irá pular a opção 1, 2, 3, 4, 5 e 6, caso a opção escolhida pelo usuario seja diferente.
                        se((OPCAO <> 7) e (OPCAO <> 6) e (OPCAO <> 5) e (OPCAO <> 4) e (OPCAO <> 3) e (OPCAO <> 2) e (OPCAO <> 1))entao//estrutura de condição caso a Opção que o usuario não escolher seja invalida
                        limpatela//comando para limpar a tela
                           escreval("INFORME UMA OPÇÂO VALIDA!")//comando de saida solicitando que o usuario informe uma opção valida
                        fimse//fim da estrutura de condição
                     fimse//fim da estrutura de condição
                  fimse//fim da estrutura de condição
               fimse//fim da estrutura de condição
            fimse//fim da estrutura de condição
         fimse//fim da estrutura de condição
      fimse//fim da estrutura de condição
   ate(OPCAO=7)//comando para encerrar a estrutura de repetição se, e somente se, a opção escolhida pelo usuario for 7
Fimalgoritmo