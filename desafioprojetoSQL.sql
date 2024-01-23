--Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

SELECT nome, ano
FROM filmes
ORDER BY ano ASC



SELECT nome, ano, Duracao	
FROM filmes
where nome like 'De Volta para o Futuro'



SELECT nome, ano, Duracao	
FROM filmes
where ano = 1997


SELECT nome, ano, Duracao	
FROM filmes
where ano > 2000


SELECT nome, ano, Duracao	
FROM filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;


select PrimeiroNome, UltimoNome, Genero 
from Atores
where Genero like 'M'


select PrimeiroNome, UltimoNome, Genero 
from Atores
where Genero like 'F'

SELECT Filmes.nome, Generos.Genero 
FROM Filmes
JOIN Generos ON Filmes.Id = generos.Id


SELECT Filmes.nome, Generos.Genero 
FROM Filmes
JOIN Generos ON Filmes.Id = generos.Id
where Generos.Genero like 'Mistério'


SELECT
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM
    Filmes
JOIN
    ElencoFilme ON Filmes.Id = ElencoFilme.Id
JOIN
    Atores ON  ElencoFilme.IdAtor  = Atores.Id