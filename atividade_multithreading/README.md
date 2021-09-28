# programa-de-bolsas-compasso

# Sugestão atividade 2 Sprint 3

Descrição da atividade:
Dentro do projeto há 3 arquivos no formato json: atributos.json, classes.json e ids_filtrados.json. Estes arquivos servirão como fontes de dados para a atividade.

O objetivo do exercício é ler todos os objetos do arquivo classes.json e mapeá-los para classes, filtrá-los utilizando os dados de ids_filtrados.json e associar os valores de atributos.json dentro do objeto classe correspondente através dos ids.

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

Obter os dados necessários para filtrar e exibir os objetos "classe" para o usuário final.

* A partir da interface IDataService, crie uma nova classe que a implemente.
    * ObterClassesAsync: Deverá ler do arquivo classes.json
    * ObterIdsFiltradosAsync: Deverá ler do arquivo ids_filtrados.json
    * ObterAtributosDeClasseAsync: deverá ler do arquivo atributos.json
* Os arquivos json deverão ser lidos utilizando System.IO.File.ReadAllTextAsync 
* Os métodos deverão ser chamados de forma assíncrona, simultâneamente e aguardando a conclusão de todas Tasks para prosseguir com o algoritmo. 	
* Os dados obtidos de  ObterClassesAsync deverão ser percorridos em paralelo e filtradas pelo resultado proveniente de ObterIdsFiltradosAsync para serem adicionais em uma  	nova lista de forma thread-safe.
* Após obter a nova lista filtrada, os atributos de cada classe obtidos de ObterAtributosDeClasseAsync deverão ser associados a suas respectivas classes, contidas na lista filtrada, baseado-se pela propriedade "classeId". A associação deverá ocorrer de forma paralela.
* Por fim, deverá ser exibido em tela os dados de cada classe e seus atributos, de acordo com o exemplo abaixo.

	
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
