CREATE DATABASE bdHephaestos;

USE bdHephaestos;

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
	,numeroCasa_usuario varchar(100)
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
	,id_empresa int
	,id_usuario int
	,email_institucional varchar(70)
);

create table tbEstufa(
	id_estufa int primary key auto_increment
	,descrição_estufa varchar(100)
	,id_empresa int
);

create table tbTemperatura(
	id_temperatura int primary key auto_increment
	,valor_temperatura float
	,momento_temperatura datetime default current_timestamp
);

create table tbUmidade(
	id_umidade int primary key auto_increment
	,valor_umidade float
	,momento_umidade datetime default current_timestamp
);

create table tbSensor(
	id_sensor int primary key auto_increment
	,id_estufa int
	,id_temperatura int
	,id_umidade int
);


insert into tbUsuario values
(null, 'Mateus Ferreira', 'mateus@bandtec.com', 'urubu100','2001/05/31', '000.000.000-00', '00000-000', 'SP', 'Santo André',
'Palmares', 'sítio', '112',false),
(null, 'Antonio Augusto', 'antonio.augusto@bandtec.com.br', 'urubu101','1997/05/07', '111.111.111-11', '11111-111', 'SP', 'Santo André',
'casa', 'apartamento', '1042', false),
(null, 'Wesley Paternezi', 'wesley.paternezi@bandtec.com.br', 'urubu102','1997/03/25', '222.222.222-22', '22222-222', 'SP', 'São Caetano do Sul',
'Jardins', 'casa', '271', true);

select * from tbUsuario;

insert into tbEmpresa values
(null, 'OakTruffle', '00.000.000/0000-01', 'MG', 'Ouro Preto', 'Catedral Metropolitana', 'prédio comercial', '000.000.000-01'),
(null, 'Santa Luzia', '00.000.000/0000-02', 'SP', 'São Paulo', 'Penha', 'prédio comercial', '000.000.000-02');

select * from tbEmpresa;

insert into tbEmpresaUsuario values 
(null, '1', '2', 'antonio@oaktruffle.com'),
(null, '2', '3', 'wesley@santaluzia.com');

select * from tbEmpresaUsuario;



