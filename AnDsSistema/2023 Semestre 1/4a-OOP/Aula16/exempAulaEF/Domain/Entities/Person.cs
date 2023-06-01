using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exempAulaEF
{
    public class Person
    {

        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }

        public List<Products> Products {get;set;}
    }
}