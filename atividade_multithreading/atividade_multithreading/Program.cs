using Newtonsoft.Json;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace atividade_multithreading
{
    interface IDataService
    {
        Task<IEnumerable<Classe>> ObterClassesAsync();
        Task<IEnumerable<int>> ObterIdsFiltradosAsync();
        Task<IEnumerable<Atributos>> ObterAtributosDeClasseAsync();
    }

    class ClassesRoot
    {
        public IEnumerable<Classe> Classes { get; set; }
    }
    class IdsRoot
    {
        public IEnumerable<int> Ids { get; set; }
    }
    class AtributosRoot
    {
        public IEnumerable<Atributos> Atributos { get; set; }
    }
    class Classe
    {
        public int Id { get; set; }
        public string NomeClasse { get; set; }
        public Atributos Atributos { get; set; }
    }

    public class Atributos
    {
        public int ClasseId{ get; set; }
        public int Forca { get; set; }
        public int Destreza { get; set; }
        public int Inteligencia { get; set; }
    }

    class Program
    {
       
        static async Task Main(string[] args)
        {

            Console.ReadLine();
        }
    }
}
