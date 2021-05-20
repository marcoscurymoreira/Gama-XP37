select count(clientes.nome), cidadeestados.estado, enderecos.tipoendereço
from clientes
inner join enderecos on clientes.id = enderecos.cliente
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado
group by estado, tipoendereço