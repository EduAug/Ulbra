using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _03_inhClash
{
    public class Character{

        public string Name {get;set;}
        public int Strength {get;set;}
        public int Intelligence {get;set;}
        public int Abilities {get;set;}

        public Character(string name, int strength, int intelligence, int abilities){
            this.Name = name;
            this.Strength = strength;
            this.Intelligence = intelligence;
            this.Abilities = abilities;
        }

        public void displayStatus(){
            Console.Write(this.Name+": ");
            Console.WriteLine("Str: "+this.Strength+" | "+"Int: "+this.Intelligence+" | "+"Abl: "+this.Abilities);
        }
    }
}