CREATE TABLE entrega (
    id BIGINT NOT NULL AUTO_INCREMENT,
    cliente_id BIGINT NOT NULL,
    taxa DECIMAL(10 , 2 ) NOT NULL,
    status VARCHAR(20) NOT NULL,
    data_pedido DATETIME NOT NULL,
    data_finalizacao DATETIME,
    
    destinatario_nome VARCHAR(60) NOT NULL,
    destinatario_logradouro VARCHAR(255) NOT NULL,
    destinatario_numero VARCHAR(30) NOT NULL,
    destinatario_complemento varchar(60) not null,
	destinatario_bairro varchar(30) not null,
 
 PRIMARY KEY (id)
);

alter table entrega add constraint fk_entrega_cliente
foreign key (cliente_id) references cliente(id)