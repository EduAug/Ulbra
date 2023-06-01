using AP2_Refatorar_Estacionamento;
using Microsoft.AspNetCore.Mvc;

namespace AP2_Refatorar_Estacionamento.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class VagaController : ControllerBase
    {
        private readonly IVagaRepository _repository;
        public VagaController()
        {
            _repository = new VagaRepository();
        }
        //---------------------------------------------
        
        [HttpGet]
        public IEnumerable<Vaga> Get()
        {
            return _repository.GetAll();
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var obj = _repository.GetById(id);
            if(obj == null)
                return Ok(new {
                    sttsCode = 400,
                    message = "Vaga inexistente (Confira o Id)",
                    obj
                });
            else
                return Ok(new {
                    sttsCode = 200,
                    message = "Ok",
                    obj
                });
        }

        [HttpPost]
        public IActionResult Post([FromBody]Vaga _vaga)
        {
            _repository.Save(_vaga);
            return Ok(new {
                sttsCode = 200,
                message = "Vaga criada",
                _vaga
            });
        }

        [HttpPut]
        public IActionResult Put([FromBody]Vaga _vaga)
        {
            _repository.Update(_vaga);
            return Ok(new {
                sttsCode = 200,
                message = "Vaga alterada",
                _vaga
            });
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            if(_repository.Delete(id))
                return Ok(new {
                    sttsCode = 200,
                    message = "Vaga apagada"
                });
            else
                return Ok(new {
                    sttsCode = 500,
                    message = "Não encontrado"
                });
        }

        // ----- Outros Métodos de Vaga -----------
        
        [HttpGet("acharVazia")]
        public Vaga acharVazia()
        {
            return _repository.FindVaga();
        }

        [HttpPut("estacionarVeiculo/{idVei}")]
        public IActionResult estacionarVeiculo(int idVei)
        {

            if(_repository.EstacionarVeiculo(idVei))
                return Ok(new {
                    sttsCode = 200,
                    message = "Veiculo estacionado"
                });
            else
                return Ok(new {
                    sttsCode = 500,
                    message = "Não foi possível estacionar"
                });
        }

        [HttpPut("liberarVaga/{idVei}")]
        public IActionResult liberarVaga(int idVei)
        {
            if(_repository.LiberarVaga(idVei))
                return Ok(new {
                    sttsCode = 200,
                    message = "Veiculo desalocado da vaga"
                });
            else
                return Ok(new {
                    sttsCode = 500,
                    message = "Este veículo não está estacionado"
                });
        }

        [HttpGet("acharOcupadas")]
        public List<Vaga> acharOcupadas()
        {
            return _repository.GetAllParked();
        }

        [HttpGet("acharLivres")]
        public List<Vaga> acharLivres()
        {
            return _repository.GetAllEmpty();
        }
    }
}