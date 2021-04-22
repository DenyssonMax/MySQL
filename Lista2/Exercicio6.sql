create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
  id bigint auto_increment,
  ensino varchar(50) not null, 
  ead boolean not null,
  matricula boolean not null,
  primary key (id)
);

desc tb_categoria;
insert into tb_categoria (ensino,ead,matricula)  values 
		('MBA' , true, true),
        ('Doutorado' , true, true),
        ('Graduação' , true, true),
        ('Pós-graduação' , true, true),
        ('Mestrado', true, true);
        
        select * from tb_categoria;
        
create table tb_curso(
	id bigint auto_increment,
    nome varchar (40) not null, 
    valor decimal (40,2) not null,
    unidade varchar (40) not null,
    duracao int (40) not null,
    turma int (10) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome,valor,unidade,duracao,turma,categoria_id) values 
		('Arquitetura','1800','Paulista','5','1','3'),
		('Ed. Fisica','1200','Vergueiro','4','2','3'),
        ('História','750','Penha','4','2','5'),
        ('Desenho','1200','Paraíso','2','2','2'),
        ('Física','900','Armênia','3','1','1'),
        ('ADS','1400','Barra Funda','3','1','2'),
        ('Farmácia','1300','Vila Mariana','5','2','5'),
        ('Eng. Civil','1750','Mooca','5','5','1');
        
select nome from  tb_curso where valor >1000;
select nome from  tb_curso where valor between 1300 and 2000;
select * from tb_curso where nome like "%J%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.ensino = 'MBA';

        