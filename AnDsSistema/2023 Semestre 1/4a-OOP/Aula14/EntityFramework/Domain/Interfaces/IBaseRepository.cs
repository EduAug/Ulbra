using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EntityFramework
{

    public interface IBaseRepository<Entity> where Entity : class
    {

         Entity GetById(int entityId);
         IList<Entity> GetAll();
         void Save(Entity entity);
         bool Delete(int entityId);
         void Update(int Id, Entity newEntity); //Deixar os "novos dados"
                                        //como objeto, para ser "polivalente"
    }
}