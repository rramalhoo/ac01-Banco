create database ac01
go

use ac01
go

/*1*/
create table Clientes(
	ID_Cliente int primary key,
	Nome varchar(30),
	Email varchar(30),
	Idade int,
)
go

/*2*/
alter table Clientes
add Endereço varchar(100)
go

/*3*/
create table Produtos(
	ID_Produto int primary key,
	Nome varchar(30),
	Preço float,
) 
go

/*4*/
alter table Produtos
add Dados varchar(255)
go

/*5*/
create table Ordens(
	ID_Ordem int primary key,
	ID_Cliente int,
	ID_Produto int,
	Quantidade int,
)
go

/*6*/
alter table Ordens
add Data_Pedido date
go

/*7*/
alter table Clientes
drop column Idade
go

/*8*/
create table Categorias(
	ID_Categorias int primary key,
	Nome varchar(30),
)
go

/*9*/
alter table Produtos
add ID_Categoria int
go

/*10*/
create table Estoque(
	ID_Produto int primary key,
	Quantidade int
)
go

/*11*/
alter table Clientes
add Data_Cadastro datetime
go

/*12*/
create table Fornecedores(
	ID_Fornecedor int primary key,
	Nome varchar(30),
	Telefone varchar(8),
)
go

/*13*/
alter table Produtos
add ID_Fornecedor int
go

/*14*/
create table Detalhes_Pedido(
	ID_Detalhe int primary key,
	ID_Pedido int,
	ID_Produto int,
	Quantidade int,
)
go

/*15*/
alter table Detalhes_Pedido
drop column ID_Produto
go

/*16*/
alter table Produtos
alter column Preço money
go

/*17*/
drop table Categorias
