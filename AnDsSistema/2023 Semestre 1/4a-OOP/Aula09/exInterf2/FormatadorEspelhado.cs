using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf2
{
    public class FormatadorEspelhado : IFormatadorTexto
    {
        
        public string CaseEspelho = "";
        public string Formatar(string txt)
        {
        
            int txtLen = txt.Length;
            for(int i = txtLen-1; i >= 0; i--){
            
                CaseEspelho += txt[i];
            }
            return CaseEspelho;
        }
    }
}