create database db_cadastro 
default character set utf8 -- caracters acentuado no padrao 
default collate utf8_general_ci;


create table tb_pessoas(
	id int not null auto_increment,
	Nome varchar (30) not null,
    Nascimento date,
    Sexo enum ('M', 'F'), -- está dizendo quais sao os valores que serao aceitos
    Peso decimal (5,2),
    Altura decimal (3,2),
    Nacionalidade varchar(20) default 'BRASIL', -- Por padrao, se ninguem digitar nada, será como brasil.
    primary key(id)
) default charset = utf8;

alter table tb_gafanhotos
add id int first;

alter table tb_cursos
add primary key (id);

insert into tb_pessoas values
	('Matheus', ' 1992-08-15', 'M','85.5', '1.73', 'Irlanda'),
	('Bruna', ' 2000-06-10', 'F','62.5', '1.53', 'Brasil'),
    ('Caio', ' 1990-02-02', 'M','98.0', '1.73', 'Arabia Saudita'),
    ('Ale', ' 1990-04-09', 'M','90.5', '1.78', 'Ghana');

desc tb_gafanhotos; -- para mostrar a descrição da tabela que foi criada. 

alter table tb_pessoas -- para add uma coluna na tabela 
add column profissao varchar(10) after nome;

alter table tb_pessoas
modify profissao varchar(20) not null default '';

alter table tb_pessoas
add codigo int first; -- para add uma coluna na primeira posição

select *from tb_gafanhotos;

alter table tb_pessoas -- para excluir uma coluna 
drop column profissao;

 alter table tb_pessoas
 rename to tb_gafanhotos;  -- para alterar o nome de uma tabela

select * from tb_cursos;

insert into tb_cursos values
		('1','HTML4','Curso de HTML5','40','37','2014'), 
		('2','Algoritmos','Lógica de programação','20','15','2014'),
        ('3','PhotoShop','Dicas de Photoshop CC','10','8','2014'),
        ('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
        ('5','Jarva','Introdução á linguagem JAVA','10','29','2000'),
        ('6','MySQL','Banco de Dados MySQL','30','15','2016'),
        ('7','Word','Curso completo de word','40','30','2016'),
        ('8','Sapateado','Dança Ritmicas','40','30','2018'),
        ('9','Cozinha Arabe','Aprenda a fazer Kibe','40','30','2018'),
        ('10','Youtuber','Gerar polemica e granhar inscritos','5','2','2018');
        
        select * from tb_cursos;
        
        update tb_cursos  -- para alterar um dado na coluna 
        set nome = 'HTML5'
        where idcurso = '1';
        
       update tb_cursos 
        set nome = 'PHP', ano = '2015' -- para alterar mais de um dado 
        where idcurso = '4';
        
        update tb_cursos
        set nome = 'Java', carga='40', ano='2015'
        where idcurso = '5'
        limit 1;   -- limita apenas atb_cursos um registro, seja ele modificar ou excluir. 
        
        delete from tb_cursos -- para apagar uma linha 
        where idcurso='10';
        
        -- COMANDO SELECT 
        
        select * from tb_cursos
        where nome like 'P%'; -- para chamar um icone especifico, nesse caso, que comecem com a letra P
        
		select * from tb_cursos
        where nome like '%A%'; -- chama itens que contenham A em seu nome
        
        select * from tb_cursos
        where nome like 'PH%P_'; -- O sublinhado serve para chamar qualquer icone que contenham algum caractere antes ou depois do solicitado. 
        
		select count(*) from tb_cursos -- serve para contar algo 
        where carga >10; 
        
        select max(carga) from tb_cursos -- para saber o maximod e alguma coisa 
        where ano = 2016;
        
        select sum( totalaulas) from tb_cursos; -- faz a soma dos itens solicitado dentro dos ()
        
        select avg(totalaulas) from tb_cursos -- serve para fazer a media dos itens solicitados dentro dos ()
        where ano ='2016';
        
        -- COMANDO DISTINCT // AGRUPAMENTO 
        
         select distinct carga from tb_cursos -- vai considerar apenas uma ocorrencia de cada valor 
        where carga >20
        order by carga asc;
        
        select totalaulas, count(nome) from tb_cursos -- usando o count, ele via mostrar quantos grupos estão dentro dos parametros solicitados 
        group by totalaulas;  -- usa agrupamento para separar em grupos com os mesmos parametros. 
        
        select ano, count(*) from tb_cursos
        group by ano
        having count(ano) >= 1;
        
        select carga, count(*) from tb_cursos -- So deus e o guanabara sabem fazer isso #pas
        where ano >2012
        group by carga
        having carga >( select avg(carga) from tb_cursos);
        
        -- CHAVE ESTRANGEIRA 
        
        use db_cadastro;
       
        
        
        
        