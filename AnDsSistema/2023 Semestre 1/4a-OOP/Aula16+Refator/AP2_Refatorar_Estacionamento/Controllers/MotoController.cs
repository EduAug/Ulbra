using AP2_Refatorar_Estacionamento;
using Microsoft.AspNetCore.Mvc;

namespace AP2_Refatorar_Estacionamento.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class MotoController : ControllerBase
    {
        private readonly IMotoRepository _repository;
        public MotoController()
        {
            _repository = new MotoRepository();
        }
        //---------------------------------------------

        [HttpGet]
        public IEnumerable<Moto> Get()
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
                    message = "Veículo não existe (Confira o Id)",
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
        public IActionResult Post([FromBody]Moto veiculo)
        {
            _repository.Save(veiculo);
            return Ok(new {
                sttsCode = 200,
                message = "Cadastrado",
                veiculo
            });
        }

        [HttpPut]
        public IActionResult Put([FromBody]Moto veiculo)
        {
            _repository.Update(veiculo);
            return Ok(new {
                sttsCode = 200,
                message = "Alterado",
                veiculo
            });
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            if(_repository.Delete(id))
                return Ok(new {
                    sttsCode = 200,
                    message = "Apagado"
                });
            else
                return Ok(new {
                    sttsCode = 500,
                    message = "Não encontrado"
                });
        }
    }
}