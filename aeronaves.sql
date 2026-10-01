create table aeronave (
id sereal primary key
modelo not null
codigo_cauda VARCHAR(10), unique key, not null
capacidade int not null check (capacidade >=0)
)

create table pilotos (
nome varchar (150)not null;
codigo_anac varchar (6), unique key, not null
horas_voo int default (0) not null check (horas_voo >=0)
)

create table voos (
id serial primary key
aeronave id 
piloto id int not null references 
numero voo varchar(150)not null
origem varchar (150)not null
destino varchar (150)not null
data_hora timestamp default (current_timestamp)
status
)

create tables passageiros (
id serial primary key
nome varchar (150)not null
cpf varchar(150) not null
email varchar (150) not null
)

create tables passagens (
id serial primary key
voos_id int not null references voos(id),
passageiros_id int not null passageiros (id)
assento varchar (4) not null,
classe varchar (150) default
valor
)

insert into piloto (nome, codigo_anac, horas_voo) values 
('jose'), 'HGEICE' , 672),
('bruna'), 'MAIEHD', 812),
('lucas'), 'NALPHB', 213),
('yago'), 'YGHDDB', 1768),
('vanessa')'EWRAMP', 951),

insert into voos (aeronave_id, piloto_id, numero_voo, origem, destino, data_hora) values
('67, 82, 61'), 'japao' , tokyo),
('87, 34, 51'), 'alemanha', berlim),
('92, 87, 95'), 'brasil', parana),
('28, 51, 91'), 'estados unidos', utah),
('37, 52, 98')'espanha', madrid),
