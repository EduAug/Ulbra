using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace exempAulaEF
{
    public class PersonRepository : IPersonRepository
    {

        private readonly DataContext context;
        public PersonRepository(DataContext _context)
        {

            this.context = _context;
        }


        public IList<Person> GetAll()
        {

            return context.Person.ToList();
        }

        public Person GetById(int entityId)
        {

            return context.Person.SingleOrDefault(x => x.Id == entityId);
        }

        public void Save(Person entity)
        {

            context.Add(entity);
            context.SaveChanges();
        }

        public bool /*void?*/ Delete(int entityId)
        {

            var Removido = GetById(entityId);

            context.Remove(Removido);

            context.SaveChanges();
            return true;
        }


        public void Update(int personId, Person newData)
        {

            var oldData = GetById(personId);
            //oldData.Id = newData.Id; //Não é possível alterar Id, é uma PK
            oldData.Name = newData.Name;
            oldData.Phone = newData.Phone;

            context.SaveChanges();
        }
    }
}