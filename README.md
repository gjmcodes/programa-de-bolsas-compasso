# programa-de-bolsas-compasso
Exercícios Programa de bolsas .Net

 # Sugestão atividade 2 Sprint 3

Requisitos funcionais e não funcionais

1 - Requisitos Funcionais:

 * Deverá ser exibido todos os detalhes de cada "classe" (neste contexto, entenda como classe de jogo RPG) filtrada e seus respectivos atributos

2 - Requisitos não funcionais

  * C#;
  * Separar as classes existentes e criar novas em arquivos .cs separados.
  * Criar classe a partir da interface IDataService
  * Classes:
    - ClassesRoot
      - Classes
      
    - IdsRoot
      - Ids
            
    - AtributosRoot
      - Atributos
  * Interfaces:
      IDataService
      
  * Ler arquivos json utilizando System.IO.File.ReadAllTextAsync para as implementações de IDataService
  * Utilizar a classe Task, async e await
  * Utilizar Parallel.For, Parallel.ForEach ou Plinq


3 - Descrição da tarefa
    - Obter os dados necessários para filtrar e exibir os objetos "classe" para o usuário final.

```
Exemplo para Output:
                Console.WriteLine(@$"       ----    ----        ---         ");
                Console.WriteLine(@$"Id: {item.Id}                          ");
                Console.WriteLine(@$"Nome: {item.NomeClasse}                ");
                Console.WriteLine(@$"      Atributos                        ");
                Console.WriteLine(@$"FOR: {item.Atributos.Forca}            ");
                Console.WriteLine(@$"DES: {item.Atributos.Destreza}         ");
                Console.WriteLine(@$"INT: {item.Atributos.Inteligencia}     ");
                Console.WriteLine(@"                                        ");
```
```
Output final:

       ----    ----        ---
Id: 3
Nome: Monge
      Atributos
FOR: 6
DES: 2
INT: 4

       ----    ----        ---
Id: 4
Nome: Amazona
      Atributos
FOR: 5
DES: 3
INT: 1

       ----    ----        ---
Id: 1
Nome: Mago
      Atributos
FOR: 2
DES: 3
INT: 4
```
