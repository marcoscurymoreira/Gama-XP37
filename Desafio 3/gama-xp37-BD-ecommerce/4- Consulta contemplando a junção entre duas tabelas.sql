#Consulta contemplando a junção entre duas tabelas (join entre tabelas clientes e enderecos para mostrar nome do cliente, bem como os seus endereços)

select clientes.nome, enderecos.logradouro, enderecos.bairro, enderecos.numero
from clientes
inner join enderecos on clientes.id = enderecos.cliente