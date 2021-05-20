select clientes.nome, enderecos.logradouro, enderecos.bairro, enderecos.numero, cidadeestados.cidade
from clientes
inner join enderecos on clientes.id = enderecos.cliente
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado