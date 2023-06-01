using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AP2_Refatorar_Estacionamento
{
    public class CarroRepository : ICarroRepository
    {

        private readonly DataContext dcontext;

        public CarroRepository()
        {

            //Injeção de dependência(?)
            this.dcontext = new DataContext();
        }

        // ------------------------

        public Carro GetById(int entityId)
        {

            return dcontext.Carros.SingleOrDefault(a => a.Id == entityId);
        }

        public IList<Carro> GetAll()
        {

            return dcontext.Carros.ToList();
        }

        // --------------------------

        public Veiculo GetByPlaca(string placa)
        {
            //A intenção original era conferir se já existia uma plca
            //(Unique) cadastrada no banco igual a uma nova inserida
            //porém o EFCore já trata desses problemas de unicidade

            //A forma de tratamento do EFCore, porém, é com exception
            //E não queremos que o programa "pare" sempre que der
            //Algum erro de placa já existir, então fazemos "manual"

            var carro = dcontext.Carros.SingleOrDefault(g=>g.Placa==placa);
            var moto = dcontext.Motos.SingleOrDefault(j=>j.Placa==placa);

            if (carro != null)
            {

                return carro;
            }
            if (moto != null)
            {

                return moto;
            }

            return null;

        }

        // --------------------------

        public bool Save(Carro entity)
        {
            
            if(GetByPlaca(entity.Placa) != null)
            {

                return false;
            }
            else
            {

                dcontext.Add(entity);
                dcontext.SaveChanges();
                return true;
            }
        }

        public bool Update(Carro newEntity)
        {

            var existeCarro = dcontext.Carros.SingleOrDefault(i=>i.Placa==newEntity.Placa);

            if(existeCarro != null)
            {

                existeCarro.Modelo = newEntity.Modelo;
                existeCarro.Combustivel = newEntity.Combustivel;
                dcontext.SaveChanges();
                return true;
            }else{

                return false;
            }
        }
        public bool Delete(int entityId)
        {

            var toDelete = GetById(entityId);

            if(toDelete != null)
            {

                dcontext.Remove(toDelete);
                dcontext.SaveChanges();
                return true;
            }else{

                return false;
            }
        }

    }
}