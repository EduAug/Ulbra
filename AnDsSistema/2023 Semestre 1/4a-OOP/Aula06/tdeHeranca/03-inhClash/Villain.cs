using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _03_inhClash
{
    public class Villain : Character
    {
        public  Villain(string name, int strg, int intl, int ablt)
                : base(name,strg,intl,ablt){}

        public int AttackMelee(Hero target){

            if(target.Strength < this.Strength){

                return 2;
            }else if(target.Strength > this.Strength){

                return 1;
            }else{

                return 0;
            }
        }
        public int AttackRange(Hero target){

            if(target.Intelligence < this.Intelligence){

                return 2;
            }else if(target.Intelligence > this.Intelligence){

                return 1;
            }else{

                return 0;
            }
        }

        public int Block(bool canBlock){

            Console.WriteLine(this.Name+" has entered a defensive stance");
            return 1;
        }

        public void PowerUp(){

            Console.WriteLine(this.Name+" has powered up");
            this.Abilities +=1;
        }
    }
}