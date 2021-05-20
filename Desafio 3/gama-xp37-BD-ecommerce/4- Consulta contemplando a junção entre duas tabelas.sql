select clientes.nome, enderecos.logradouro, enderecos.bairro, enderecos.numero
from clientes
inner join enderecos on clientes.id = enderecos.cliente