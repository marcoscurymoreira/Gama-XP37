#Consulta contemplando contagem ou totalização (valor total do estoque)
select sum(preco) from produtos;


#Consulta contemplando contagem ou totalização (contagem total de clientes)
select count(id) from clientes;


#Consulta contemplando a junção entre duas tabelas (join entre tabelas clientes e enderecos para mostrar nome do cliente, bem como os seus endereços)
select clientes.nome, enderecos.logradouro, enderecos.bairro, enderecos.numero
from clientes
inner join enderecos on clientes.id = enderecos.cliente;


#Consulta contemplando a junção entre três tabelas (join entre tabelas clientes, e enderecos e cidadeestados para mostrar nome do cliente, bem como os seus endereços e suas cidades e estados.)
select clientes.nome, enderecos.logradouro, enderecos.bairro, enderecos.numero, cidadeestados.cidade, cidadeestados.estado
from clientes
inner join enderecos on clientes.id = enderecos.cliente
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado;


#Consulta contemplando a junção entre duas tabelas + totalização e agrupamento (join nas tabelas produtos e departamentos, mostrando a soma dos valores de cada departamento)
select sum(produtos.preco), departamentos.nome
from produtos
inner join departamentos
on produtos.departamento = departamentos.id
group by departamentos.id;


#Consulta contemplando a junção entre três tabelas + totalização e agrupamento (join nas tabelas clientes, enderecos e cidadeestados, mostrando quantos clientes são de cada estado e mostrando o tipo de endereço de cada um deles)
select count(clientes.nome), cidadeestados.estado, enderecos.tipoendereco
from clientes
inner join enderecos on clientes.id = enderecos.cliente
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado
group by estado, tipoendereco