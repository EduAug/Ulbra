using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _03_inhClash
{
    public class Hero : Character
    {
        public  Hero(string name,int strg, int intl, int ablt) 
                :base(name,strg,intl,ablt){}

        public int AttackMelee(Villain target){

            if(target.Strength < this.Strength){

                return 2;
            }else if(target.Strength > this.Strength){

                return 1;
            }else{

                return 0;
            }
        }
        public int AttackRange(Villain target){
            
            if(target.Intelligence < this.Intelligence){

                return 2;
            }else if(target.Intelligence > this.Intelligence){

                return 1;
            }else{

                return 0;
            }
        }

        public int Block(bool canBlock){
            
            if(canBlock){

                Console.WriteLine(this.Name+" has entered a defensive stance");
                return 1;
            }else{

                Console.WriteLine(this.Name+"'s defenses are down");
                return 0;
            }
        }

        public void PowerUp(){

            Console.WriteLine(this.Name+" has powered up");
            this.Abilities +=1;
        }
    }
}