
CREATE DATABASE `oficina_dio`;

-- criando tabela clientes
create table clients(
		id_client int auto_increment primary key,
		nome varchar(255),
    cpf char(11),
		constraint unique_cpf_client unique (CPF)
)

-- criando tabela marcas
create table marca(
		id_marca int auto_increment primary key,
		marca varchar(255)
)

