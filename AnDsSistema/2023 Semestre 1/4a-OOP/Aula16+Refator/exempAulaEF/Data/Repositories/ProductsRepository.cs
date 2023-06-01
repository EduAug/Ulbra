using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exempAulaEF
{
    public class ProductsRepository : IProductsRepository
    {

        private readonly DataContext context;
        public ProductsRepository(DataContext _context)
        {

            this.context = _context;
        }

        
        public IList<Products> GetAll()
        {

            return context.Products.ToList();
        }
        public Products GetById(int entityId)
        {

            return context.Products.SingleOrDefault(y => y.Id == entityId);
        }

        
        public void Save(Products entity)
        {

            context.Add(entity);
            context.SaveChanges();
        }

        public void Update(int Id, Products newEntity)
        {
            
            //var oldData = context.Products.SingleOrDefault(z => z.Id == Id);
            var oldData = GetById(Id);
            oldData.Description = newEntity.Description;
            oldData.Price = newEntity.Price;
            //oldData.Person = newEntity.Person;
            oldData.PersonId = newEntity.PersonId;

            //Melhor não implementar a última tendo em vista que não conferimos
            // as chaves em outras tabelas
            context.SaveChanges();
        }

        public bool Delete(int entityId)
        {

            var Eliminar = GetById(entityId);
            context.Remove(Eliminar);

            context.SaveChanges();
            return true;
        }
    }
}