#Consulta contemplando a junção entre três tabelas (join entre tabelas clientes, e enderecos e cidadeestados para mostrar nome do cliente, bem como os seus endereços e suas cidades e estados.)

select clientes.nome, enderecos.logradouro, enderecos.bairro, enderecos.numero, cidadeestados.cidade, cidadeestados.estado
from clientes
inner join enderecos on clientes.id = enderecos.cliente
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado