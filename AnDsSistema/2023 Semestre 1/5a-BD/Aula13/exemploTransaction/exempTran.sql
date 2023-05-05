set AUTOCOMMIT = 0;
CREATE TABLE pessoas (
	num_pessoa int not null,
  	nome_email varchar(100) not null,
  	PRIMARY key(num_pessoa)
);
select * from pessoas;
start TRANSACTION;
insert into pessoas(num_pessoa,nome_email) values(1234,"email@1.com"),(4321,"email@2.com"),(4213,"email@3.com");
SELECT * FROM pessoas;
COMMIT;
CREATE TABLE PESSOA_FISICA (
  num_pessoa_pf INT NOT NULL,
  nom_pessoa VARCHAR(100) NOT NULL,
  num_CPF VARCHAR(11) NOT NULL,
  num_documento_identidade VARCHAR(20) NOT NULL,
  nom_orgao_emissor_doc_ident VARCHAR(50) NOT NULL,
  dat_nascimento DATE NOT NULL,
  idt_sexo CHAR(1) NOT NULL,
  cod_estado_civil INT NOT NULL,
  PRIMARY KEY (num_pessoa_pf)
);
start TRANSACTION;
INSERT INTO PESSOA_FISICA
(num_pessoa_pf, nom_pessoa, num_CPF, num_documento_identidade, nom_orgao_emissor_doc_ident, dat_nascimento, idt_sexo, cod_estado_civil)
VALUES
(78360, 'Roberto Marcondes', '99911122233', '19999888', 'SSP', '1988-03-15', 'M', 1),
(78361, 'Julio Meirellies', '99811233134', '18888999', 'SSP', '1975-02-17', 'M', 1),
(78362, 'Maria Rita Amadeu', '99711333235', '17777888', 'SSP', '1980-12-23', 'F', 1);
COMMIT;
START TRANSACTION;
UPDATE PESSOA_FISICA SET nom_pessoa = "Júlio Meirelles", cod_estado_civil = 2 WHERE num_pessoa_pf = 78361;
SELECT * from PESSOA_FISICA;
ROLLBACK;
SELECT * FROM PESSOA_FISICA WHERE num_pessoa_pf = 78361;
-- 9. O resultado do "segundo" select foi o sr.Julio Meirellies, com código civil igual a 1, uma vez que a alteração não foi commitada

START TRANSACTION;
UPDATE PESSOA_FISICA SET nom_pessoa = "Júlio Meirelles", cod_estado_civil = 2 WHERE num_pessoa_pf = 78361;
COMMIT;

START TRANSACTION;
DELETE FROM PESSOA_FISICA WHERE num_pessoa_pf = 78362;
ROLLBACK;

START TRANSACTION;
UPDATE PESSOA_FISICA SET dat_nascimento = '1998-01-13' WHERE num_pessoa_pf = 78362;
UPDATE PESSOA_FISICA SET num_documento_identidade = '13321142' WHERE num_pessoa_pf = 78362;
ROLLBACK;

START TRANSACTION;
UPDATE PESSOA_FISICA SET dat_nascimento = '1998-01-13', num_documento_identidade = '13321142' WHERE num_pessoa_pf = 78362;
COMMIT;