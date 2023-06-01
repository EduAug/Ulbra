using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AP2_Refatorar_Estacionamento
{
    public class MotoRepository : IMotoRepository
    {
        
        private readonly DataContext dcontext;

        public MotoRepository()
        {

            this.dcontext = new DataContext();
        }
        // -------------------------
        public Moto GetById(int entityId)
        {

            return dcontext.Motos.SingleOrDefault(b => b.Id == entityId);
        }
        public IList<Moto> GetAll()
        {

            return dcontext.Motos.ToList();
        }

        // -----------------------------
        // Conferir a existência no banco inteiro
        // Como "Veiculo" é abstrata, não existe no banco
        // Por isso, é preciso conferir em motos e carros
        public Veiculo GetByPlaca(string placa)
        {
            
            var moto = dcontext.Motos.SingleOrDefault(d=>d.Placa==placa);
            var carro = dcontext.Carros.SingleOrDefault(e=>e.Placa==placa);
            // Acoplamento moderado?
            if (moto != null)
            {

                return moto;
            }
            if (carro != null)
            {

                return carro;
            }

            return null;
        }

        // ---------------------------

        public bool Save(Moto entity)
        {

            if(GetByPlaca(entity.Placa) != null) 
            {

                //testar se já existe a placa no sistema
                //tanto faz se receber uma moto ou carro
                //só vamos fazer o "insert" se for null
                return false;
            }else{

                dcontext.Add(entity);
                dcontext.SaveChanges();
                return true;
            }
        }

        public bool Update(Moto newEntity)
        {

            var existeMoto = dcontext.Motos.SingleOrDefault(h=>h.Placa==newEntity.Placa);
            //Cria um objeto com valor igual a "moto existente"
            //Cuja placa seja igual a que foi inserida, da moto para
            //Atualizar

            if(existeMoto != null){

                //Se encontrar uma moto que tenha essa placa
                //Atualize seus valores com aqueles passados
                //No objeto de parâmetro
                existeMoto.Modelo = newEntity.Modelo;
                existeMoto.Combustivel = newEntity.Combustivel;
                dcontext.SaveChanges();
                return true;
            }else{

                //Se não achar, retorna falso e avisa no program
                //que deu bigode
                return false;
            }
        }

        public bool Delete(int entityId)
        {
            //Como aqui é pedida a Id da moto a ser apagada, a situação muda
            //Não há comparação, e o GetById retorna a Id igual o
            //Parâmetro
            var toDelete = GetById(entityId);

            if(toDelete != null){

                //Se retornar algo, deleta e devolve true
                dcontext.Remove(toDelete);
                dcontext.SaveChanges();
                return true;
            }else{

                //Se retorar nulo, devolve false
                return false;
            }
        }
    }
}