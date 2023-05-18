using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EntityFramework
{
    public class Person
    {

        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public City City {get;set;}

        public List<Products> Products {get;set;}
    }
}