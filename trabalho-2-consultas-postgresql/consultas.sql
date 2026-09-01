-- GUSTAVO ANTUNES DE SOUZA
-- 12311BSI276

--1)
select * from filme order by titulo_original

--2)
select * from filme where duracao > 120 order by data_lancamento desc

--3)
select * from filme where categoria like '%Drama%' order by duracao desc

--4)
select * from cliente where cliente.foneres like '%(21)%' or fonecel like '%(21)%'

--5)
select nomeartistico as nomes from ator union select direcao from filme order by nomes

--6)
select count(*) as contagem from ator where nacionalidade != 'USA' and nacionalidade != 'Canadá'

--7)
select avg (duracao) as Duração_Média from filme f, classificacao c where f.classificacao = c.cod and c.preco > 8
-- ou select avg (duracao) as Duração_Media from filme, classificacao where filme.classificacao = classificacao.cod and classificacao.preco > 8

--8)
select e.*, c.nome as nome_cliente from emprestimo e join cliente c on e.cliente = c.numcliente order by e.dataret;

--9)
select a.nomeartistico, f.direcao FROM ator a join estrela e on a.cod = e.codator join filme f on e.numfilme = f.numfilme order by f.direcao, a.nomeartistico;

--10)
select c.nome as cliente, f.direcao as diretor from cliente c join emprestimo e on c.numcliente = e.cliente join filme f ON e.numfilme = f.numfilme order by c.nome, f.direcao;

--11)
select c.nome AS cliente, a.nomeartistico AS ator from cliente c join emprestimo e on c.numcliente = e.cliente join filme f on e.numfilme = f.numfilme join estrela fa on f.numfilme = fa.numfilme join ator a on fa.codator = a.cod where extract(year from CURRENT_DATE) - extract(year from f.data_lancamento) >= 40 order by c.nome, a.nomeartistico;

--12)
select c.numcliente, c.nome, sum(f.duracao) from cliente c join emprestimo e on c.numcliente = e.cliente join filme f on e.numfilme = f.numfilme group by c.numcliente, c.nome order by numcliente;

--13)
select a.cod, a.nomeartistico, count(e.numfilme) as count from ator a join estrela e on a.cod = e.codator join filme f on e.numfilme = f.numfilme join emprestimo emp on f.numfilme = emp.numfilme group by a.cod, a.nomeartistico having count(e.numfilme) > 1 order by a.nomeartistico;

--14)
select c.numcliente, c.nome, c_indicador.nome as indicado_por from cliente c join cliente c_indicador on c.numclienteindicador = c_indicador.numcliente where c.numclienteindicador is not null order by c.nome;
