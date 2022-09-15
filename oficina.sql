
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

-- criando tabela funcionarios
create table funcionarios(
		id_funcionario int auto_increment primary key,
		nome varchar(255),
cpf char(11)

)


-- criando tabela 
create table precos(
		id_preco int auto_increment primary key,
		serviço varchar(255),
tipo varchar(255)
                


)
-- criando carro
create table carro(
		id_carro int auto_increment primary key,
id_marca int,
id_client int,
		constraint marca_fk foreign key(id_marca) references marca(id_marca),
                constraint client_fk foreign key(id_client) references clients(id_client)
                
                


)
-- alternado carro 
ALTER TABLE carro
ADD COLUMN placa varchar(10)

-- alterando funcionarios
ALTER TABLE funcionarios
ADD COLUMN tipo enum('mecanico','gerente','secretaria')

-- criando mecanico
create table mecanico(
		id_mecanico int auto_increment primary key,
id_funcionario int,

		constraint funcionario_fk foreign key(id_funcionario) references funcionarios(id_funcionario)

);
-- alterando mecanico
ALTER TABLE mecanico
ADD COLUMN especialidade varchar(255)

-- criando equipe
create table equipe(
		id_equipe int auto_increment primary key,

nome_equipe varchar(30)


);

-- criando mecanico
create table equipe_mecanico(
		
id_equipe int,
id_mecanico int,
		constraint equipe_fk foreign key(id_equipe) references equipe(id_equipe),
                constraint mecanico_fk foreign key(id_mecanico) references mecanico(id_mecanico)

)

-- criando ordem_servico
create table ordem_sevico(
id_ordem int auto_increment primary key,
id_client int,		
id_equipe int,

id_carro int,
 constraint client_ordem_fk foreign key(id_client) references clients(id_client),
constraint equipe_ordem_fk foreign key(id_equipe) references equipe(id_equipe),

constraint id_carro_ordem_fk foreign key(id_carro) references carro(id_carro)



)

-- criando clientes

insert into clients(nome,cpf)
		values('Antonio X', 12346789)
		('deotado manaco', 14386789),
('jusé geninho', 12386799)

-- criando marcas
INSERT INTO marca
VALUES ('fiat'),
('vw')


INSERT INTO carro (id_marca, id_client)
VALUES (3,1),(4,2)

insert into funcionarios(nome,cpf,tipo)
values('Carlitos',123456677,'mecanico'),
('Andre',123457654,'mecanico'),
('Rosa',1234656677,'secretaria'),
('Romildo',123456677,'mecanico')

alter table mecanico 
ADD COLUMN especialide VARCHAR(15);



insert into mecanico(id_funcionario,especialide)
values(1,'carburadores'),
(2,'tratores')



insert into equipe(nome_equipe)
values('fogareiros'),
('trabalhaBem')

insert into equipe_mecanico
values(1,2),
(2,1)


ALTER TABLE ordem_servico
ADD COLUMN tipo enum('reparo','preventiva','troca de óleo'),
ADD COLUMN valor float, 
ADD COLUMN status_client enum('não permitido','permitido'),
ADD COLUMN status enum('em andamento','esperando peças','completo')
ADD COLUMN data_emissao datetime,
ADD COLUMN data_conclusao datetime


create table tabela_precos(
 id_tabela_precos int auto_increment primary key,
 tipo varchar(255),
preco float
 
)

create table tabela_precos_tipos(
id_precos_tipos int auto_increment primary key,
id_tabela_precos int,		

constraint id_tabela_precos_fk foreign key(id_tabela_precos) references tabela_precos(id_tabela_precos)

)


