select sum(produtos.preco), departamentos.nome
from produtos
inner join departamentos
on produtos.departamento = departamentos.id
group by departamentos.id