package com.example.crudspring;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository{
    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public User Save(User toSave){
        entityManager.persist(toSave);
        return toSave;
    }

    public User GetById(long _id){
        return entityManager.find(User.class,_id);
    }
    @Transactional
    public User Update(User newEntity){
        return entityManager.merge(newEntity);
    }
    @Transactional
    public String DeleteById(long _id){
        User toDelete = GetById(_id);
        if(toDelete != null){
            entityManager.remove(toDelete);
            return "Usuário deletado com sucesso";
        }else{
            return "Usuário não encontrado";
        }
    }
}
