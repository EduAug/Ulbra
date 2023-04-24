using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exInterf2
{
    public class FormatadorMaiusculo : IFormatadorTexto
    {
        
        public string Formatar(string txt)
        {
        
            return txt.ToUpper();
        }
    }
}