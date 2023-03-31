create table editoras(
	id int auto_increment primary key,
    nome varchar(25) not null
);
-- insert into editoras values(null,'Rosa'),(null,'Violeta'),(null,'Lavanda');

create table autores(
	id int auto_increment primary key,
    nome varchar(25) not null,
    CPF char(11) not null unique
);
-- insert into autores values(null, "Flapjack", "01234567895"),(null, "Pijack", "59876543210"),(null, "Bojack", "11111111111"),(null, "Blackjack", "48621597302"),(null, "Jack", "05653974259");

create table livros(
	id int auto_increment primary key,
    titulo varchar(25) not null,
    dataPubli date not null,
    valor double(12,2) not null,
    id_editora int,
    constraint e_fk_l
		foreign key(id_editora) references editoras(id)
			on update cascade 
            on delete set null
);
/* insert into livros values	(null,"Jack Attack",'210314',156.91,1),(null,"Mamangavas e Você",'210320',200.99,2),(null,"Abrasivo e Destrutivo",'210401',182.04,1),
								(null,"Polimofado",'210416',201.11,3),(null,"See Sharp",'210419',327.00,1),(null,"apple's N u",'210412',99.68,3),
								(null,"Towering Code",'210530',115.14,1),(null,"Use o cotovelo! Gambi",'210622',84.32,2),(null,"régua",'211001',99.90,3);*/

create table autores_livros(
	id_autor int,
    id_livro int,
    constraint a_fk_al
		foreign key(id_autor) references autores(id)
			on update cascade
            on delete set null,
	constraint l_fk_al
		foreign key(id_livro) references livros(id)
			on update cascade
            on delete set null
);
/*insert into autores_livros values(1,1),(1,2),(2,3),(4,4),(1,5),(5,5),(4,6),(2,7),(1,8),(5,8),(2,8),(4,9);

select A.nome, L.titulo
from autores_livros AL 
	inner join autores A on A.id=AL.id_autor
    inner join livros L on L.id=AL.id_livro
order by L.titulo;*/

-- PROCEDURE QUE RETORNA O TOTAL DE LIVROS DO AUTOR

DELIMITER $$
create procedure livros_do_autor(IN p_CPF Char(11))
BEGIN

	SELECT COUNT(L.id) as 'Livros do Autor'
    FROM autores_livros AL 
    INNER JOIN autores A ON A.id=AL.id_autor
    INNER JOIN livros L ON L.id=AL.id_livro
    WHERE A.CPF LIKE p_CPF;
END$$
DELIMITER ;

call livros_do_autor("01234567895");



-- PRODCEDURE QUE ALTERA A DATA DE LANÇAMENTO DO LIVRO (Tive de chutar na interpretação, pois parece que apenas deve atualizar a tabela, e ponto)

DELIMITER $$
create procedure alterar_lancamento_livro(IN p_data DATE, IN p_idLiv int)
BEGIN

		DECLARE novaData DATE;
        SET novaData = '220401';

		UPDATE livros SET dataPubli = novaData 
			WHERE livros.id = p_idLiv AND livros.dataPubli = p_data;
END$$
DELIMITER ;

select * from livros;
call alterar_lancamento_livro('220330',1);




-- PROCEDURES QUE 

-- INSERE TABELA

DELIMITER $$
CREATE PROCEDURE inserir_novo_livro(pn_titulo Varchar(25), pn_dataPubli DATE, pn_valor DOUBLE(12,2), pn_ideditora INT)
BEGIN
	
		INSERT INTO livros values(null,pn_titulo,pn_dataPubli,pn_valor,pn_ideditora);
END$$
DELIMITER ;

-- EXCLUI da TABELA

DELIMITER $$
CREATE PROCEDURE excluir_linha_livro(p_idlivro INT)
BEGIN

    IF p_idlivro NOT IN (SELECT id FROM livros) THEN
    
		SELECT id AS 'Id não encontrada, tente estas' FROM livros;
	ELSE
    
		DELETE FROM livros WHERE id = p_idlivro;
    END IF;
END$$
DELIMITER ;

-- ATUALIZA VALORES

DELIMITER $$
CREATE PROCEDURE update_linha_livro(p_idlivro INT, p_operador CHAR(1), pn_titulo varchar(25), pn_dataPubli date, pn_valor double(12,2), pn_editora int)
-- Operador: A - Todos, T - Titulo, D - Data Publi, V - Valor, E - Editora
BEGIN

	IF p_idlivro NOT IN (SELECT id FROM livros) THEN
    
		SELECT "A Id inserida não foi encontrada" AS Result;
	ELSE
    
		IF (p_operador LIKE 'A') THEN
        
			UPDATE livros SET titulo = pn_titulo, dataPubli = pn_dataPubli, valor = pn_valor, id_editora = pn_editora
				WHERE id = p_idlivro;
		ELSEIF (P_operador LIKE 'T') THEN
        
			UPDATE livros SET titulo = pn_titulo
				WHERE id = p_idlivro;
		ELSEIF (P_operador LIKE 'D') THEN
        
			UPDATE livros SET dataPubli = pn_dataPubli
				WHERE id = p_idlivro;
		ELSEIF (P_operador LIKE 'V') THEN
        
			UPDATE livros SET valor = pn_valor
				WHERE id = p_idlivro;
		ELSEIF (P_operador LIKE 'E') THEN
        
			UPDATE livros SET id_editora = pn_editora
				WHERE id = p_idlivro;
        ELSE
        
			SELECT "Operação não suportada" AS Result;
		END IF;
    END IF;
END$$
DELIMITER ;

select * from livros;
call inserir_novo_livro("Sem escritor", '220514', 45.64, 3);

-- Operador: A - Todos, T - Titulo, D - Data Publi, V - Valor, E - Editora
call update_linha_livro(11,'T',"Livros, AI e Você",'000000','0.0',14); -- Atualizando apenas o título
call update_linha_livro(11,'A',"AI: You and I by ChatGPT",'230401','72.40',2); -- Atualizando toda a linha
-- call update_linha_livro(11,'J',"Livros, AI e Você",'000000','0.0',14); / Atualizando com operador inexistente
-- call update_linha_livro(134,'T',"Livros, AI e Você",'000000','0.0',14); / Atualizando com ID inexistente

call excluir_linha_livro(10); -- Alternativamente, teste a primeira parte do código com: call excluir_linha_livro(20981);




-- PROCEDURE QUE ALTERA O VALOR DOS LIVROS POR EDITORA (-17%)

DELIMITER $$
CREATE PROCEDURE alterar_valores_editora(IN p_ideditora INT, p_operadorvalor CHAR(1), p_quantiaalterada INT, p_isPerc BOOLEAN)
BEGIN

	IF p_ideditora NOT IN (SELECT id FROM editoras) THEN
		
        SELECT 'Editora não encontrada' as ErroEditora;
    ELSE
		IF(p_isPerc = TRUE) THEN
		
			IF(p_operadorvalor LIKE '+') THEN
			
				UPDATE livros SET valor = valor + (valor*(p_quantiaalterada/100))
					WHERE id_editora = p_ideditora;
			ELSEIF(p_operadorvalor LIKE '-') THEN
			
				UPDATE livros SET valor = valor - (valor*((p_quantiaalterada * -1)/100))
					WHERE id_editora = p_ideditora;
			ELSE
				
				SELECT "Operador não suportado!" AS ErroOperador;
			END IF;
		ELSEIF(p_isPerc = FALSE) THEN
		
			IF(p_operadorvalor LIKE '+') THEN
			
				UPDATE livros SET valor = valor + p_quantiaalterada
					WHERE id_editora = p_ideditora;
			ELSEIF(p_operadorvalor LIKE '-') THEN
			
				UPDATE livros SET valor = valor - p_quantiaalterada
					WHERE id_editora = p_ideditora;
			ELSE
				
				SELECT "Operador não suportado!" AS ErroOperador;
			END IF;
		END IF;
	END IF;
END $$
DELIMITER ;

-- call alterar_valores_editora(2,'/',17,1);  / Alterando valores com operação diferente de + ou -
-- call alterar_valores_editora(51,'-',17,1); / Altrando valores com editora inexistente
call alterar_valores_editora(2,'-',17,1);	  -- Desconto de 17% em todos os livros da Editora Violeta
call alterar_valores_editora(3,'+',200,0);	  -- Acréscimo de 200 em todos os livros da Editora Lavanda

select * from livros where id_editora = 2;
select * from livros where id_editora = 3;