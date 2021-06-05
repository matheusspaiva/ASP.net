--cria o banco de dados
CREATE DATABASE projeto_multiplataforma;

CREATE TABLE funcionario(
	cod_func CHAR(12) PRIMARY KEY,
	senha_func VARCHAR(20) NOT NULL,
	nome_func VARCHAR(50) NOT NULL,
	cargo VARCHAR(30) NOT NULL
);

CREATE TABLE cliente(
    cpf_cli CHAR(11) PRIMARY KEY,
    nome_cli VARCHAR(50) NOT NULL,
    end_cli VARCHAR(50) NOT NULL,
    tel_cli VARCHAR(14) NOT NULL
    );
	
CREATE TABLE cartao(
    num_cartao CHAR(15) PRIMARY KEY,
    cod_seg VARCHAR(20) NOT NULL,
    validade CHAR(11) NOT NULL,
    tipo_car VARCHAR(20) NOT NULL,
    nome_banco VARCHAR(30) NOT NULL,
    cpf_dono char(11) NOT NULL,
    CONSTRAINT cpf_cli FOREIGN KEY(cpf_dono) REFERENCES  cliente(cpf_cli) ON DELETE CASCADE ON UPDATE CASCADE
    );
	
CREATE TABLE compras(
    cod_com INTEGER PRIMARY KEY AUTO_INCREMENT,
    fk_fun CHAR(12),
    fk_clie CHAR(11),
	produto VARCHAR(50) NOT NULL,
    valor  DECIMAL(7,2) NOT NULL,
    forma_pag VARCHAR(20) NOT NULL,
    ende_loj VARCHAR(50) NOT NULL,
	CONSTRAINT cpf FOREIGN KEY(fk_clie) REFERENCES  cliente(cpf_cli) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT cod_func FOREIGN KEY(fk_fun) REFERENCES  funcionario(cod_func) ON DELETE CASCADE ON UPDATE CASCADE
    );
	
	--INSERINDO O PRIMEIRO FUNCIONARIO
	INSERT INTO funcionario VALUES('1234A', '123', 'Matheus', 'Vendedo');	