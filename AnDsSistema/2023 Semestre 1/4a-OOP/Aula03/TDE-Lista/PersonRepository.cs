using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TDE_Lista
{
    public class PersonRepository
    {
        public static List<Person> listPeople = new List<Person>();


        public List<Person> GetAll(){
            return listPeople;
        }

        public int CheckExists(int id){
            if(listPeople.Exists(w=>w.Id==id)){
                return id;
            }else{
                return 0;
            }
        }

        public void Update(int id, string name, string phone, int cho){
            
            int x = listPeople.FindIndex(x=>x.Id==id);
                switch (cho){
                    case 1:
                        listPeople[x].Name = name;
                        say($"\n\nAtualizado com sucesso!\n");
                        say($"ID: {id}      |Nome: {name}  |Telefone: {listPeople[x].Phone}(Inalterado)\n\n");   
                        break;
                    case 2:
                        listPeople[x].Phone = phone;
                        say($"\n\nAtualizado com sucesso!\n");
                        say($"ID: {id}      |Nome: {listPeople[x].Name}(Inalterado)  |Telefone: {phone}\n\n");   
                        break;
                    case 3:
                        listPeople[x].Name = name;
                        listPeople[x].Phone = phone;
                        say($"\n\nAtualizado com sucesso!\n");
                        say($"ID: {id}      |Nome: {name}   |Telefone: {phone}\n\n");   
                        break;
                    default:
                        break;
                }
        }
        public void Include(Person person){
            
            listPeople.Add(person);

            say($"\n\nUsuário de Identificador {person.Id} inserido com sucesso!\n\n");
        }
        public void Delete(int id){

            int y = listPeople.FindIndex(x=>x.Id==id);
            listPeople.RemoveAt(y);

            say($"\n\nUsuário removido com sucesso!\n");
        }
                













        void say(string txt){
            Console.WriteLine(txt);
        }
    }
    
}

