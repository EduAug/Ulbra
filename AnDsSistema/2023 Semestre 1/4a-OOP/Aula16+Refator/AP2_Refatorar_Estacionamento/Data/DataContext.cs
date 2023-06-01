using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace AP2_Refatorar_Estacionamento
{
    public class DataContext : DbContext
    {
        
        public DbSet<Carro> Carros {get;set;}
        public DbSet<Moto> Motos {get;set;}
        public DbSet<Vaga> Vagas {get;set;}

        public string DbPath {get;}
        public DataContext()
        {

            string folder = Directory.GetCurrentDirectory();
            DbPath = System.IO.Path.Join(folder, "ap2_refatorar_estac.db");
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        => options.UseSqlite($"Data Source={DbPath}");

        protected override void OnModelCreating(ModelBuilder model)
        {
            base.OnModelCreating(model);

            model.Entity<Veiculo>()
                .HasIndex(v => v.Placa)
                .IsUnique();

            model.Entity<Vaga>()
                .HasOne(v => v.Estacionado)
                .WithOne()
                .HasForeignKey<Vaga>(v=>v.VeiculoId)
                .OnDelete(DeleteBehavior.SetNull);
        }
    }
}