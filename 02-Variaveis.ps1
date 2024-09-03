#Variaveis
Clear-Host                              # Limpando terminal
$nome = Read-Host "Qual é o seu nome?"  # Lendo entrada do usuário e armazenando em uma variável
$idade = 30                             # Atribuindo um valor a uma variável
Write-Host "Olá, $nome!"                # Exibindo mensagem

# Trabalhando com variáveis de texto (Strings)
$nome.GetType()                         # Obtendo o tipo de dados da variável
$nome.ToUpper()                         # Convertendo o valor da variável para maiúsculas
$nome.ToLower()                         # Convertendo o valor da variável para minúsculas
$nome.Length                            # Obtendo o comprimento da variável
$nome.Substring(0, 3)                   # Obtendo uma parte da variável
$nome.Replace('a', 'o')                 # Substituindo um caractere na variável
$nome.Split(' ')                        # Dividindo a variável em partes
$nome.PadLeft(10)                       # Adicionando espaços à esquerda
$nome.PadRight(10)                      # Adicionando espaços à direita
$nome.Trim()                            # Removendo espaços em branco
$nome.TrimStart()                       # Removendo espaços em branco à esquerda
$nome.TrimEnd()                         # Removendo espaços em branco à direita

# Trabalhando com variáveis numéricas (Inteiros e Decimais)
$idade.GetType()                        # Obtendo o tipo de dados da variável
$idade + 5                              # Adicionando um valor à variável
$idade - 5                              # Subtraindo um valor da variável
$idade * 5                              # Multiplicando a variável por um valor
$idade / 5                              # Dividindo a variável por um valor
$idade % 5                              # Obtendo o resto da divisão da variável por um valor
$idade++                                # Incrementando a variável
$idade--                                # Decrementando a variável
$idade += 5                             # Adicionando um valor à variável e atribuindo o resultado
$idade -= 5                             # Subtraindo um valor da variável e atribuindo o resultado
$idade *= 5                             # Multiplicando a variável por um valor e atribuindo o resultado
$idade /= 5                             # Dividindo a variável por um valor e atribuindo o resultado
$idade %= 5                             # Obtendo o resto da divisão da variável por um valor e atribuindo o resultado

# Trabalhando com variáveis de data e hora
$data = Get-Date                        # Obtendo a data e hora atuais
$data.GetType()                         # Obtendo o tipo de dados da variável
$data.Day                               # Obtendo o dia da data
$data.Month                             # Obtendo o mês da data
$data.Year                              # Obtendo o ano da data
$data.Hour                              # Obtendo a hora da data
$data.Minute                            # Obtendo o minuto da data
$data.Second                            # Obtendo o segundo da data
$data.Millisecond                       # Obtendo o milissegundo da data
$data.AddDays(5)                        # Adicionando dias à data
$data.AddMonths(5)                      # Adicionando meses à data
$data.AddYears(5)                       # Adicionando anos à data
$data.AddHours(5)                       # Adicionando horas à data
$data.AddMinutes(5)                     # Adicionando minutos à data
$data.AddSeconds(5)                     # Adicionando segundos à data
$data.AddMilliseconds(5)                # Adicionando milissegundos à data
$data.ToString()                        # Convertendo a data em uma string
$data.ToShortDateString()               # Convertendo a data em uma string curta
$data.ToShortTimeString()               # Convertendo a hora em uma string curta
$data.ToLongDateString()                # Convertendo a data em uma string longa
$data.ToLongTimeString()                # Convertendo a hora em uma string longa
$data.ToString('dd/MM/yyyy')            # Convertendo a data em um formato personalizado
$data.ToString('HH:mm:ss')              # Convertendo a hora em um formato personalizado
$data.ToString('dd/MM/yyyy HH:mm:ss')   # Convertendo a data e hora em um formato personalizado

# Trabalhando com variáveis de coleções (Arrays e Listas)
$frutas = @('Maçã', 'Banana', 'Laranja')            # Criando um array
$frutas.GetType()                                   # Obtendo o tipo de dados da variável
$frutas.Length                                      # Obtendo o comprimento da variável
$frutas[0]                                          # Acessando um elemento do array
$frutas[1] = 'Pera'                                 # Alterando um elemento do array
$frutas += 'Uva'                                    # Adicionando um elemento ao array
$frutas.Contains('Maçã')                            # Verificando se o array contém um elemento
$frutas.IndexOf('Laranja')                          # Obtendo o índice de um elemento no array
$frutas.LastIndexOf('Laranja')                      # Obtendo o último índice de um elemento no array
$frutas.Clear()                                     # Limpando o array
$frutas = New-Object System.Collections.ArrayList   # Criando uma lista
$frutas.Add('Maçã')                                 # Adicionando um elemento à lista
$frutas.Insert(1, 'Banana')                         # Inserindo um elemento na lista
$frutas.Remove('Maçã')                              # Removendo um elemento da lista
$frutas.RemoveAt(1)                                 # Removendo um elemento da lista por índice
$frutas.Contains('Maçã')                            # Verificando se a lista contém um elemento
$frutas.IndexOf('Banana')                           # Obtendo o índice de um elemento na lista
$frutas.Sort()                                      # Ordenando os elementos da lista
$frutas.Reverse()                                   # Revertendo a ordem dos elementos da lista
$frutas.Clear()                                     # Limpando a lista

# Trabalhando com variáveis de hash (Dicionários)
$cores = @{ 'Vermelho' = 'Red'; 'Verde' = 'Green'; 'Azul' = 'Blue' }    # Criando um dicionário
$cores.GetType()                                                        # Obtendo o tipo de dados da variável
$cores.Count                                                            # Obtendo o número de elementos do dicionário
$cores['Vermelho']                                                      # Acessando um elemento do dicionário
$cores['Amarelo'] = 'Yellow'                                            # Adicionando um elemento ao dicionário
$cores['Vermelho'] = 'Vermelho'                                         # Alterando um elemento do dicionário
$cores.Remove('Verde')                                                  # Removendo um elemento do dicionário
$cores.ContainsKey('Vermelho')                                          # Verificando se o dicionário contém uma chave
$cores.ContainsValue('Green')                                           # Verificando se o dicionário contém um valor
$cores.Clear()                                                          # Limpando o dicionário
$cores = New-Object System.Collections.Hashtable                        # Criando um dicionário
$cores.Add('Vermelho', 'Red')                                           # Adicionando um elemento ao dicionário
$cores['Verde'] = 'Green'                                               # Adicionando um elemento ao dicionário
$cores['Azul'] = 'Blue'                                                 # Adicionando um elemento ao dicionário
$cores.Remove('Vermelho')                                               # Removendo um elemento do dicionário
$cores.ContainsKey('Vermelho')                                          # Verificando se o dicionário contém uma chave
$cores.ContainsValue('Green')                                           # Verificando se o dicionário contém um valor
$cores.Clear()                                                          # Limpando o dicionário

# Trabalhando com variáveis de booleano (Verdadeiro ou Falso)
$verdadeiro = $true                     # Atribuindo o valor verdadeiro a uma variável
$falso = $false                         # Atribuindo o valor falso a uma variável
$verdadeiro.GetType()                   # Obtendo o tipo de dados da variável
$verdadeiro -eq $falso                  # Comparando se as variáveis são iguais
$verdadeiro -ne $falso                  # Comparando se as variáveis são diferentes
$verdadeiro -and $falso                 # Comparando se ambas as variáveis são verdadeiras
$verdadeiro -or $falso                  # Comparando se pelo menos uma das variáveis é verdadeira
$verdadeiro -xor $falso                 # Comparando se apenas uma das variáveis é verdadeira
!$verdadeiro                            # Negando o valor da variável
$verdadeiro -band $falso                # Comparando se ambas as variáveis são verdadeiras (bitwise)
$verdadeiro -bor $falso                 # Comparando se pelo menos uma das variáveis é verdadeira (bitwise)
$verdadeiro -bxor $falso                # Comparando se apenas uma das variáveis é verdadeira (bitwise)
-bnot $verdadeiro                       # Negando o valor da variável (bitwise)

# Trabalhando com variáveis nulas
$nulo = $null                           # Atribuindo o valor nulo a uma variável
$nulo -eq $null                         # Comparando se a variável é nula
$nulo -ne $null                         # Comparando se a variável não é nula