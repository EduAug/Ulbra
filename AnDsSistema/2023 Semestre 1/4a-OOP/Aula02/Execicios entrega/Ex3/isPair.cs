using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Ex3
{
    public class isPair
    {
        public int ConferirPares(int num){
            int numCheckPair = num;

            if(numCheckPair%2==0){
                return numCheckPair;
            } else {
                return 0;
            }

        }
    }
}