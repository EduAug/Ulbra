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

        public void Update(int id, string name, string phone, int cho){
            int x = listPeople.FindIndex(x=>x.ID==id);
            if(listPeople.Exists(z=>z.ID==id)){
                switch (cho){
                    case 1:
                        listPeople[x].Name = name;
                        say($"\n\nAtualizado com sucesso!\n");
                        say($"ID: {id}      |Nome: {name}  |Telefone: {phone}(Inalterado)\n\n");   
                        break;
                    case 2:
                        listPeople[x].Phone = phone;
                        say($"\n\nAtualizado com sucesso!\n");
                        say($"ID: {id}      |Nome: {name}(Inalterado)  |Telefone: {phone}\n\n");   
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
            }else{
                Console.WriteLine($"Usuário inexistente! Adicione-o primeiro");
            }
        }
        public void Include(Person person){
            if(listPeople.Exists(y=>y.ID==person.ID)){
                say($"Já existe um usuário cadastrado com esse Identificador!\nTente outro\n\n");
            }else{
                listPeople.Add(person);
                say($"\n\nUsuário de Identificador {person.ID} inserido com sucesso!\n\n");
            }
        }
        public void Delete(int id){
            int y = listPeople.FindIndex(x=>x.ID==id);
            if(listPeople.Exists(y=>y.ID==id)){
            listPeople.RemoveAt(y);

            say($"\n\nUsuário removido com sucesso!\n");
            
            }else{
                Console.WriteLine($"Usuário inexistente! Adicione-o primeiro");
            }
            
        }
                













        void say(string txt){
            Console.WriteLine(txt);
        }
    }
    
}

