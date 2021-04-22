use db_estoque;

create table tb_produtos(
	id bigint Auto_increment,
    nome varchar(30) not null,
    preco decimal (10,2), -- o que vem antes e o que vem depois da virgula 
    marca_id bigint not null,
    
    primary key (id),
    foreign key(marca_id) references tb_marcas (id)
);

insert into tb_produtos (nome, preco, marca_id) values ("Camisa", 22.99, 2)