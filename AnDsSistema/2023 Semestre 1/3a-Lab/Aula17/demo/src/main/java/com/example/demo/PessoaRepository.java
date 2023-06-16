package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PessoaRepository {
    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public Pessoa salvar(Pessoa pessoa){

        entityManager.persist(pessoa);
        return pessoa;
    }

    public Pessoa buscaPorId(Long Id){

        return entityManager.find(Pessoa.class, Id);
    }

    @Transactional
    public Pessoa atualizar(Pessoa _pessoa){

        return entityManager.merge(_pessoa);
    }

    @Transactional
    public void deletarPessoa(Long Id){

        Pessoa pessoa = buscaPorId(Id);
        if(pessoa != null){
            entityManager.remove(pessoa);
        }
    }

    public List<Pessoa> listarTodos(){
        return entityManager.createQuery("SELECT p FROM Pessoa p", Pessoa.class).getResultList();
    }
}
