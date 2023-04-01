using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace _03_inhClash
{
    public class SuperVillain : Villain
    {

        public  SuperVillain(string name, int strg, int intl, int ablt) 
                        :base(name,strg,intl,ablt)
                        {}

        public bool WickedWill(int hp, bool canBoost){

            if(hp == 1 && canBoost == true){

                Console.WriteLine(this.Name+" won`t allow anything to step in their way");
                this.Intelligence+=1;
                this.Strength+=1;
                this.Abilities+=1;

                return false;
            }else{

                return true;
            }
        }
        
        public void SuperStrength(int ablt){

            if(ablt > 3){
                Console.WriteLine(this.Name+"`s going to put them in their place");
                this.Strength +=2;
                this.Abilities -=1;
            }else{
                Console.WriteLine(this.Name+" doesn't have enough ability to get the powerup!");
            }
        }

        public void SuperIntelligence(int ablt){

            if(ablt > 3){
                Console.WriteLine(this.Name+"'s nasty plot sets in");
                this.Intelligence +=2;
                this.Abilities -=1;
            }else{
                Console.WriteLine(this.Name+" doesn't have enough ability to get the powerup!");
            }
        }
    }
}