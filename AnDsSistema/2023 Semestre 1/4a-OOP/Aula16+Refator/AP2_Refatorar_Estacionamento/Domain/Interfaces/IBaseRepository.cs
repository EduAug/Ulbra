using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AP2_Refatorar_Estacionamento
{
    public interface IBaseRepository<Entity> where Entity : class
    {
        
        Entity GetById(int entityId);
        IList<Entity> GetAll();
        bool Save(Entity entity);
        bool Delete(int entityId);
        bool Update(Entity newEntity);
    }
}