using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace EntityFramework
{

    public class DataContext : DbContext
    {
        

        public DbSet<Person> Person {get;set;}
        public DbSet<Products> Products {get;set;}

        public DbSet<City> City {get;set;}

        public string DbPath {get;}
        public DataContext()
        {

            string path = Directory.GetCurrentDirectory();
            DbPath = System.IO.Path.Join(path, "EF_Quarta_v3_2.db");
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
            => options.UseSqlite($"Data Source={DbPath}");
        
    }
}