using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EntityFramework
{
    public class Products
    {
        
        public int Id {get;set;}
        public string Description {get;set;}
        public double Price { get; set; }

        // "Foreign Key"
        public int PersonId {get;set;}
        public Person Person {get;set;}
    }
}