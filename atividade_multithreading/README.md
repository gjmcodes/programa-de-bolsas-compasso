# programa-de-bolsas-compasso

# Atividade 2 Sprint 3

# Descrição da atividade:

No projeto há 4 arquivos no formato json que possuem dados fragmentados. Quando juntos poderão informar dados de uma pessoa, sua música favorita, o ano da música favorita, outras músicas do gosto dessa pessoa e uma lista com os artistas e todas suas músicas que relacionam com as músicas desta pessoa.

O objetivo do exercício é juntar todas as informações e preencher uma lista com objetos com a classe "Output" (Output.cs). Ao total deverão ter 88 registros. Todas as informações de cada objeto "Output" deverão estar preenchidas. Não há nulos.

# Requisitos

  * Há uma animação sendo executada na thread principal. Toda a lógica para gerar o resultado final deverá ser feita sem interromper a animação.
  * Deverá utilizar a classe "Database" para consumir os dados
  * Poderá utilizar Tasks, Parallel ou pLinq

# Exemplo de Resultado Final
```json
{
    "PersonName": "Gary Ortiz",
    "PersonAge": 50,
    "FavoriteSong": "Free Fallin'",
    "FavoriteSongArtist": "Tom Petty",
    "FavoriteSongYear": 1989,
    "OtherSongs": [ "King of Spain", "New Realization", "American Girl", "American Music", "Flapper Girl", "High and Dry", "Danny Boy", "Moonshadow", "Little Talks", "Party in the USA", "Summer of '69", "The Mother We Share", "The Weight" ],
    "ArtistSongs": [
      {
        "Artist": {
          "Id": 41,
          "Name": "Of Monsters and Men"
        },
        "Songs": [
          {
            "Id": 98,
            "Name": "Little Talks",
            "Year": 2012,
            "ArtistId": 41
          }
        ]
      }
   ]
},
      
      (...................)
```
# Dicas
[<img src="https://c.tenor.com/NPJgF7_j7RAAAAAM/dungeons-and-dragons-dungeon-master.gif">]()
* O básico as vezes é mais eficiente que o complexo
* Try/Catch pode não ser muito amigável em produção, mas é um grande amigo para debugar
* Flags booleanas podem ser grandes aliadas nesta aventura!
