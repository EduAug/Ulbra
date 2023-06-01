using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AP2_Refatorar_Estacionamento
{
    public class VagaRepository : IVagaRepository
    {

        private readonly DataContext dcontext;

        public VagaRepository()
        {

            this.dcontext = new DataContext();
        }
        
        // ------------------------------------
        public Vaga GetById(int entityId)
        {

            return dcontext.Vagas.SingleOrDefault(c => c.Id == entityId);
        }
        public IList<Vaga> GetAll()
        {

            return dcontext.Vagas.ToList();
        }


        public bool Save(Vaga entity)
        {

            dcontext.Add(entity);
            dcontext.SaveChanges();
            return true;
        }
        public bool Update(Vaga newEntity)
        {

            dcontext.Vagas.Update(newEntity);
            dcontext.SaveChanges();
            return true;
        }
        public bool Delete(int entityId)
        {

            // Não sei se é uma boa "CRUDar" as vagas, mas, tá na interface
            var toDelete = GetById(entityId);

            dcontext.Remove(toDelete);
            dcontext.SaveChanges();
            return true;
        }

        public Vaga FindVaga()
        {

            return dcontext.Vagas.FirstOrDefault(f => f.Estacionado == null);
        }

        public bool EstacionarVeiculo(int idVei)
        {
            //Variavel para achar a vaga
            Vaga checkVaga = FindVaga();
            //Conferir a existência do veículo
            //Se for moto ou carro
            var acharMoto = dcontext.Motos.SingleOrDefault(k=>k.Id==idVei);
            var acharCarro = dcontext.Carros.SingleOrDefault(l=>l.Id==idVei);

            //Confere se o veículo passado já está em outra vaga
            var conferirOneToOne = dcontext.Vagas.FirstOrDefault(o=>o.Estacionado!=null & o.VeiculoId==idVei);

            if(conferirOneToOne != null)
            {

                return false;
            }

            //Confere se ainda há vagas disponíveis
            if(checkVaga == null)
            {

                return false;
            }


            //E se, tudo der certo, inserimos o veiculo na vaga
            if(acharMoto == null && acharCarro != null)
            {
                
                checkVaga.VeiculoId = idVei;
                checkVaga.Estacionado = acharCarro;
                dcontext.SaveChanges();
                return true;
            }else if(acharMoto != null && acharCarro == null){

                checkVaga.VeiculoId = idVei;
                checkVaga.Estacionado = acharMoto;
                dcontext.SaveChanges();
                return true;
            }else{

                //Confere se o veículo passado não existe, e retorna falso
                //Caso não exista nem em Carros nem Motos
                return false;
            }
        }

        public bool LiberarVaga(int idVei)
        {
            //Variavel para achar uma vaga que possua
            //um VeiculoId igual aquele passado por parâmetro
            //Logo, uma vaga ocupada, pelo veículo específico
            //que estamos procurando
            var vagaComOVeiculo = dcontext.Vagas.FirstOrDefault(m=>m.VeiculoId==idVei);

            if (vagaComOVeiculo == null)
            {
                //Retornar false se não achar a vaga com o "veículo"
                //Passado
                return false;
            }

            vagaComOVeiculo.VeiculoId = null;
            dcontext.SaveChanges();
            return true;
        }

        public List<Vaga> GetAllParked()
        {
            //SELECT *
            //FROM Vagas
            //WHERE Estacionado IS NOT NULL

            return dcontext.Vagas.Where(n=>n.Estacionado!=null).ToList();
        }

        public List<Vaga> GetAllEmpty()
        {

            //SELECT *
            //FROM Vagas
            //WHERE Estacionado IS NULL

            return dcontext.Vagas.Where(p=>p.Estacionado==null).ToList();
        }
    }
}