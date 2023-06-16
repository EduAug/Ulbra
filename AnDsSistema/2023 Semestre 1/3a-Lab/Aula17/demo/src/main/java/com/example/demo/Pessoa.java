package com.example.demo;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class Pessoa{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long Id;
    private String Nome;

    public void setId(Long id) {
        this.Id = id;
    }

    public Long getId() {
        return Id;
    }

    public void setNome(String nome) {
        this.Nome = nome;
    }
    public String getNome(String nome){
        return Nome;
    }
}
