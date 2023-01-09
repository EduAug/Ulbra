alter table produtos 
    drop constraint categorias_fk_produtos_possuem_categorias;
    
alter table produtos 
    add constraint categorias_fk_produtos_possuem_categorias
    foreign key(categoria) references categorias(codigo)
        on delete cascade
        on update restrict;