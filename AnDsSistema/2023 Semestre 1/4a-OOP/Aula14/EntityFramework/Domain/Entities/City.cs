using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EntityFramework
{
    public class City
    {
        
        public int Id {get;set;}
        public string Name {get;set;}
        
        public List<Person> People {get;set;}
    }
}