#Consulta contemplando a junção entre três tabelas + totalização e agrupamento (join nas tabelas clientes, enderecos e cidadeestados, mostrando quantos clientes são de cada estado e mostrando o tipo de endereço de cada um deles)

select count(clientes.nome), cidadeestados.estado, enderecos.tipoendereco
from clientes
inner join enderecos on clientes.id = enderecos.cliente
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado
group by estado, tipoendereco