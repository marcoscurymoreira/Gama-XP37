#Consulta contemplando a junção entre duas tabelas + totalização e agrupamento (join nas tabelas produtos e departamentos, mostrando a soma dos valores de cada departamento)

select sum(produtos.preco), departamentos.nome
from produtos
inner join departamentos
on produtos.departamento = departamentos.id
group by departamentos.id