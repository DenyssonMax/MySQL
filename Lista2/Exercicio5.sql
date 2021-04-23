create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (100) not null,
uso varchar (100) not null, 
cliente boolean not null,
primary key (id)
);

insert into tb_categoria (tipo,uso,cliente)  values 
		('AP' , 'Hidraulico', true),
        ('Casa' , 'Eletrico', true),
        ('Jadim' , 'Sanitário', true),
        ('Casa' , 'Portas', true),
        ('AP', 'Construção', true);
        
	select *from tb_categoria;
    
create table tb_produto (
    id bigint auto_increment,
    descricao varchar (100) not null,
    valor decimal (10,2) not null,
    estoque int not null,
    tamanho decimal (10,2) not null,
    peso decimal (3,1) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert into tb_produto (descricao,valor,estoque,tamanho, peso, categoria_id)  values 
		('Torneira','27.3','200','1.22','0.4','4'),
        ('Piso','45.6','400','0.80','0.8','1'),
        ('Lâmpada','31.1','45','0.65','0.2','2'),
        ('Lustre','35.24','75','1.64','1.20','2'),
        ('Cano','18.4','48','2.00','0.40','4'),
        ('Cuba','238','90','2.68','20.0','4'),
        ('Porta','189','124','2.10','10.0','4'),
        ('Janela','264','68','1.20','3.4','4'),
        ('Fita Led','90','79','1','0.04','2');
        
	
    select * from tb_produto; 
	select descricao from tb_produto where valor > 50;
        
	select  descricao from tb_produto where valor between 3 and 60 
	order by descricao asc;
    
    select * from tb_produto where nome like "%C%";
          
     select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;     
	select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo = 'casa';
    

      
	
    

