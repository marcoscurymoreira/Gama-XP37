SELECT clientes.nome, SUM(produtospedidos.precoTotal) as valortotal, cidadeestados.cidade, cidadeestados.estado from clientes
inner join pedidos on clientes.id = pedidos.cliente
inner join produtospedidos on produtospedidos.pedido = pedidos.id
inner join enderecos on enderecos.cliente = clientes.id
inner join cidadeestados on cidadeestados.id = enderecos.cidadeEstado
group by (clientes.id)