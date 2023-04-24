using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf2
{
    public class FormatadorInvertido : IFormatadorTexto
    {
        public string CaseInverso = "";
        public char nC;
        
        public string Formatar(string txt)
        {	
            
            foreach (char C in txt)
            {
            
                if(Char.IsUpper(C))
                {
                    
                    nC = Char.ToLower(C);
                }else
                {
                
                    nC = Char.ToUpper(C);
                }
                CaseInverso += nC;
            }
            
            return CaseInverso;
        }
    }
}