package com.example.demo;

import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
public class PessoaController {

    private final PessoaRepository personRepo;

    public PessoaController(PessoaRepository personRepository){

        this.personRepo = personRepository;
    }

    @PostMapping("/pessoa")
    public Pessoa criarPessoa(@RequestParam String nome){
        Pessoa pessoa = new Pessoa();
        pessoa.setNome(nome);
        return personRepo.salvar(pessoa);
    }

    @GetMapping("/pessoa/{id}")
    public Pessoa buscaPorId(@PathVariable Long id){
        return personRepo.buscaPorId(id);
    }

    @PutMapping("/pessoa/{id}")
    public Pessoa atualizar(@PathVariable Long id, @RequestParam String name){
        Pessoa person = personRepo.buscaPorId(id);
        person.setNome(name);
        return personRepo.atualizar(person);
    }

    @DeleteMapping("/pessoa/{id}")
    public void deletar(@PathVariable Long id){
        personRepo.deletarPessoa(id);
    }

    @GetMapping("/pessoa")
    public List<Pessoa> listarTodos(){
        return personRepo.listarTodos();
    }
}
