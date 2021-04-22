SELECT ano, nome, carga  from cursos
order by ano, nome;
desc cursos;

select nome, descricao from cursos
where ano <=2015
order by nome;

select nome, descricao, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

select nome, descricao, ano from cursos
where ano in (2014,2016,2020)
order by ano;

select nome, carga, ano from cursos
where  carga > 35 or totaulas <30;

select distinct nacionalidade from gafanhotos;


-- EXERCICIO 

select nome from gafanhotos
where sexo= 'F';

select nome,nacionalidade from gafanhotos
where nacionalidade= 'Brasil' and nome like 'J%';

select nome, profissao from gafanhotos
where profissao= 'programador' and sexo = 'm';

select nome, nacionalidade from gafanhotos
where sexo= 'M' and nome like '%silva%' and peso < 100 and nacionalidade != 'Brasil';

select max(altura) from gafanhotos
where sexo= 'M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos;

-- EXERCICIO GROUP 

select * from gafanhotos;

select profissao, count(*) from gafanhotos
group by profissao;

select sexo, count( nascimento > '2005/01/01') from gafanhotos
group by sexo;

select count(nacionalidade), nacionalidade  from gafanhotos
group by nacionalidade
having count( nacionalidade != 'Brasil') >3;

 -- chave estrangeira 
 
 select *from gafanhotos;
 
 use cadastro;
 desc gafanhotos;
 alter table gafanhotos add cursopreferido int;
 
 alter table gafanhotos
 add foreign key (cursopreferido) -- usa para adicionar uma chave estrangeira, precisa colocar oque sera alterado. 
 references cursos (idcurso);
 
 select * from gafanhotos;
 select *from cursos;
 
 update gafanhotos set cursopreferido = 6 where id=1;
 
 
 

