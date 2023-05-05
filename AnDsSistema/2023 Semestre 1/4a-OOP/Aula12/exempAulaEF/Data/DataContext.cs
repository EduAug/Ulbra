using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace exempAulaEF
{

    public class DataContext : DbContext
    {
        

        public DbSet<Person> Persons {get;set;}
        public DbSet<Products> Products {get;set;}


        public string DbPath {get;}
        public DataContext()
        {

            var folder = Environment.SpecialFolder.LocalApplicationData;;
            var path = Environment.GetFolderPath(folder);
            DbPath = System.IO.Path.Join(path, "teste_orm.db");
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
            => options.UseSqlite($"Data Source={DbPath}");
    }
}