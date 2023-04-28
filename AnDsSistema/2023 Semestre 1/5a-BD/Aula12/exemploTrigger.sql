create table Setores(
	id int AUTO_INCREMENT PRIMARY key,
  	nome varchar(50) not null,
  	total_salario decimal(18,2) default 0
);

insert into setores (nome)
	values ('Dev'), ('Suporte'),('Finan');

CREATE TABLE Funcionarios
(
	id int auto_increment primary key,
    nome varchar(50) not null, 
    salario decimal(18,2) default 0,
    id_setor int,
    constraint funcionarios_setores_fk
		foreign key(id_setor) 
			references setores(id) 
				ON DELETE RESTRICT
                ON UPDATE CASCADE
);

INSERT INTO Funcionarios (nome, salario, id_setor) values ('Zé da Manga','3000','1'),('Mike','1500','2');

DELIMITER $$
CREATE TRIGGER trigger_atualiza_total_salario AFTER INSERT ON Funcionarios
	FOR EACH ROW
BEGIN
	
    UPDATE Setores SET total_salario = total_salario + NEW.salario
    WHERE id = NEW.id_setor;
END $$
DELIMITER ;

-- Ao deletar funcionario

DELIMITER $$
CREATE TRIGGER trigger_atualiza_total_salario_quando_deleta AFTER DELETE ON Funcionarios
	FOR EACH ROW
BEGIN
	
    UPDATE Setores SET total_salario = total_salario - OLD.salario
    WHERE id = OLD.id_setor;
END $$
DELIMITER ;

-- Ao atualizar salário funcionario


-- v1.0
DELIMITER $$
CREATE TRIGGER trigger_atualiza_total_salario_quando_alterado AFTER UPDATE ON Funcionarios
	FOR EACH ROW
BEGIN
	
    IF(NEW.salario > OLD.salario) THEN
    
      UPDATE Setores SET total_salario = total_salario + (NEW.salario - OLD.salario)
      WHERE id = NEW.id_setor;
	ELSEIF (NEW.salario < OLD.salario) THEN
    
    	UPDATE Setores SET total_salario = total_salario - (OLD.salario - NEW.salario)
        WHERE id = NEW.id_setor;
    END IF;
END $$
DELIMITER ;

-- v2.0
DELIMITER $$
CREATE TRIGGER trigger_atualiza_total_salario_quando_update AFTER UPDATE ON Funcionarios
	FOR EACH ROW
BEGIN
	
	update Setores SET total_salario = total_salario + (NEW.salario - OLD.salario)
    WHERE id = NEW.id_setor;
END $$
DELIMITER ;