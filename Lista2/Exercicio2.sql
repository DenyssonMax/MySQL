create database db_pizza_legal;
use db_pizza_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar (100) not null,
bordaRecheada boolean not null,
cliente boolean not null,
primary key (id)
);

insert into tb_categoria (tamanho,bordaRecheada,cliente)  values 
		('Média' , false, true),
        ('Grande' , true, true),
        ('Brotinho' , true, true),
        ('Pequena' , false, true),
        ('Grande', true, true);
        
create table tb_pizza(
    id bigint auto_increment,
    sabor varchar (100) not null,
    preco decimal (10,2) not null,
    azeitona boolean not null,
    bebida varchar(100) not null,
    entrega boolean not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert into tb_pizza(sabor,preco,azeitona,bebida,entrega,categoria_id) values 
		('Peperone','48.50',false,'Cerveja',true,'3'),
        ('Muzzarela','25.90',true,'Coca-Cola',true,'2'),
        ('Baiana','45.50',false,'Guaraná Jesus',true,'4'),
        ('4 Queijos','40.00',true,'H2O',true,'1'),
        ('Frango c/ Catupiry','45.50',true,'Vinho',true,'3'),
        ('Lombo','55.00',false,'Água Mineral',true,'5'),
        ('Chocolate','52.50',true,'Cerveja Puro Malte',true,'2'),
        ('Atum','35.50',true,'Limonetto',true,'2');
        
select sabor from tb_pizza where preco > 45;

Select sabor from tb_pizza where preco between 29 and 60
order by sabor asc;

select * from tb_pizza where preco like '%C%';

select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;
select * from tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tamanho = 'pequena';
    
    
        