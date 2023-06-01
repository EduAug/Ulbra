using exempAulaEF;
using Microsoft.AspNetCore.Mvc;

namespace exAulaCRUD.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PersonController : ControllerBase
    {
        private readonly IPersonRepository _repository;
        public PersonController()
        {
            _repository = new PersonRepository();
        }

        //------------------------------------------------
        
        [HttpGet]   //Get All
        public IEnumerable<Person> Get()
        {
            return _repository.GetAll();
        }
                // v Decorator
        [HttpGet("{id}")]   //Get by id
        public IActionResult Get(int id)
        {
            var obj = _repository.GetById(id);
            if(obj == null)
                return Ok(new {
                    sttsCode = 400,
                    message = "Usuário não existe (Confira o Id)",
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
        public IActionResult Post([FromBody]Person item)
        {
            _repository.Save(item);
            return Ok(new {
                sttsCode = 200,
                message = "Cadastrado",
                item
            });
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id,[FromBody]Person item)
        {
            _repository.Update(id,item);
            return Ok(new {
                sttsCode = 200,
                message = "Cadastrado",
                item
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