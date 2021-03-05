CREATE DATABASE bdOakTruffle;

USE bdOakTruffle;

create table tbUsuario(
	id_usuario int primary key auto_increment
    ,nome_usuario varchar(100)
    ,email_institucional_usuario varchar(100)
    ,senha_usuario varchar(100)
    ,data_nascimento_usuario datetime
    ,cpf_usuario varchar(15)
    ,CEP_usuario varchar(100)
    ,estado_usuario varchar(100)
    ,cidade_usuario varchar(100)
    ,bairro_usuario varchar(100)
    ,logradouro_usuario varchar(100)
    ,acesso_usuario boolean
);

create table tbEmpresa(
	id_empresa int primary key auto_increment
    ,nome_empresa varchar(100)
    ,cnpj_empresa varchar(100)
    ,estado_empresa varchar(100)
    ,cidade_empresa varchar(100)
    ,bairro_empresa varchar(100)
    ,logradouro_empresa varchar(100)
    ,CEP_empresa varchar(100)
);

create table tbEmpresaUsuario(
	id_empresaUsuario int primary key auto_increment
    	,constraint fk_empresa foreign key(id_empresa) references tbEmpresa(id_empresa)
    	,constraint fk_usuario foreign key(id_usuario) references tbUsuario(id_usuario)
	,email_institucional varchar(50)
);

create table tbTemperatura(
	id_temperatura int primary key auto_increment
    ,valor_temperatura float
    ,momento_temperatura datetime
);

create table tbUmidade(
	id_umidade int primary key auto_increment
    ,valor_umidade float
    ,momento_umidade datetime
);

insert into tbUsuario
values(null, '');




