create database db_generation_game_online;
 
 use db_generation_game_online;
 
 create table tb_classe(
  id bigint (5)  not null  auto_increment,
  valor varchar (50) not null,
  jogo varchar (30) not null,
 primary key(id)
 );
  
insert into tb_classe (valor, jogo) values
	('200.0', 'mortal kombat'),
	( '150.0', 'roblox'),
    ( '180.0', 'fortnite'),
    ( '100.0', 'cyberpunk'),
     ( '100.0', 'Pokemon');
    
    select * from tb_classe;
    
    create table tb_personagem(
     id bigint (20) auto_increment,
     nome varchar (20),
    poder_ataque int (10),
    poder_defesa int (10),
    tipo_arma varchar (30),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_classe (id)
    );
    
    select * from tb_personagem;
    
  insert into tb_personagem (nome, poder_ataque,poder_defesa, tipo_arma, categoria_id) values
			('Sub Zero', ' 1550','1026','gelo','1'),
			('Raiden ','1820','980','magia','1'),
            (' Carlos ', ' 820', '1026','Arco e flecha','2'),
            (' Raven ', ' 1052','1026','Espada','3'),
            (' Red Knight ', '1240','869','Luta','3'),
            (' Alex ', '759','468','Luta','4'),
            (' Arcnine ', ' 2300','2100','fogo','5'),
            (' Pikachu ', ' 1850','1900','eletrico','5');
           
    select nome, poder_ataque from tb_personagem
    where poder_ataque > 2000;
    
    select nome, poder_defesa from tb_personagem
    where poder_defesa between 1000 and 2000;
    
    select * from tb_personagem
    where nome like '%C%';
    
    select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;
    select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.jogo = 'mortal kombat';
    
    
    
    
    
    
    
    
    
    
    