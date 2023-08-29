drop database Game_Store;

create database Game_Store;
use Game_Store;

create table tbDeveloper(
codDeveloper int auto_increment primary key,
cnpj varchar(18),
nome varchar(30)
);

create table tbGenero(
codGenero int auto_increment primary key,
nome varchar(30)
);


create table tbJogo(
codJogo int auto_increment primary key,
nome varchar(50),
preço double,
data_lançamento date,
codDeveloper int,
codGenero int,
constraint fkDeveloper foreign key (codDeveloper) references tbDeveloper (codDeveloper) on delete set null on update cascade,
constraint fkGenero foreign key (codGenero) references tbGenero (codGenero) on delete set null on update cascade
);

create table tbPlataforma(
codPlataforma int auto_increment primary key,
nome varchar(30)
);

create table tbJogoPlataforma(
codJogo int,
codPlataforma int,
primary key (codJogo, codPlataforma),
constraint fkPlataformaJogo foreign key (codJogo) references tbJogo (codJogo) on update cascade,
constraint fkJogoPlataforma foreign key (codPlataforma) references tbPlataforma (codPlataforma) on update cascade
);


create table tbCliente(
codCliente int auto_increment primary key,
cpf char(11),
nome varchar(30),
telefone char(11),
cidade varchar (30),
UF char(2),
data_nascimento date,
codAssinatura int
);

create table tbAssinatura(
codAssinatura int auto_increment primary key,
data_assinatura date,
valor_assinatura double default 29.90,
codCliente int,
constraint fkCliente foreign key (codCliente) references tbCliente (codCliente) on delete set null on update cascade
);


create table tbVenda(
codVenda int auto_increment primary key,
data_venda date,
valor_venda double,
codCliente int,
codJogo int,
codPlataforma int,
constraint fkClienteVenda foreign key (codCliente) references tbCliente (codCliente) on delete set null on update cascade,
constraint fkJogoVenda foreign key (codJogo) references tbJogo (codJogo) on delete set null on update cascade,
constraint fkPlataforma foreign key (codPlataforma) references tbPlataforma (codPlataforma) on delete set null on update cascade
);



create table tbAvaliação(
codAvaliação int auto_increment primary key,
pontuação char (10),
comentario varchar (500),
codCliente int,
codJogo int,
constraint fkClienteAvalia foreign key (codCliente) references tbCliente (codCliente) on delete set null on update cascade,
constraint fkJogoAvaliação foreign key (codJogo) references tbJogo (codJogo) on delete set null on update cascade
);


