using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AP2_Refatorar_Estacionamento
{
    public interface IVagaRepository : IBaseRepository<Vaga>
    {

        public Vaga FindVaga();
        public bool EstacionarVeiculo(int idVei);
        public bool LiberarVaga(int idVei);
        public List<Vaga> GetAllParked();
        public List<Vaga> GetAllEmpty();
    }
}