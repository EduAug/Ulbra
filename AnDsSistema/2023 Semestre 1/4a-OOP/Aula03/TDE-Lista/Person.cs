using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TDE_Lista
{
    public class Person
    {
        public int ID {get; private set;}

        public string Name {get ; set;}

        public string Phone {get ; set;}


        public Person(int id, string name, string phone){
            this.ID = id;
            this.Name = name;
            this.Phone = phone;
        }
    }
}