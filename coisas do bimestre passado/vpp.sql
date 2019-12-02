create database vpp;
use vpp;

create table contatos(nome VARCHAR(50) NOT NULL, telefone VARCHAR(25) NOT NULL);
show tables;
desc contatos;
drop table contatos;
show tables;
create table if not exists contatos(nome VARCHAR(20) NOT NULL, sobrenome VARCHAR(30) NOT NULL, ddd INT(2) NOT NULL, telefone VARCHAR(9) NOT NULL, data_nasc DATE NULL, email VARCHAR(30) NULL);
show tables;
desc contatos;

create table membros( id_membro int not null primary key auto_increment,
nome_membro varchar(50) not null,
login_membro varchar(30) not null,
senha_membro varchar(32) not null,
ativo smallint not null,
sexo_membro enum("M","F") not null
);
create table tipo_membros(
id_tipo int not null primary key,
nome_tipo varchar(80) not null,
descricao varchar(200) null
);

insert into tipo_membros (id_tipo, nome_tipo, descricao) values
(1, "professor medio tecnico", "Professor dos cursos medio e tecnico"),
(2, "professor tecnico", "professor exclusivamente do ensino tecnico");
select nome_tipo as funcao from tipo_membros;
select * from tipo_membros;

create table tbCliente
(cpf varchar(11),
Nome varchar(100),
Endereco1 varchar(150),
Endereco2 varchar(150),
bairro varchar(50),
cidade varchar(50),
estado varchar(50),
cep varchar(8),
idade smallint,
sexo varchar(1),
Limite_credito float,
Volume_compra float,
Primeira_compra bit(1));

create table tbVendedor
(MATRICULA varchar(5) not null primary key,
NOME varchar(100) not null,
PERCENTUAL_COMISSAO smallint not null);

create table  tbProdutos
(Produto varchar(40) null,
Nome varchar(150) null,
Embalagem varchar(50) null,
Tamanho varchar(50) null,
Sabor varchar(50) null,
Preco_lista float null);
