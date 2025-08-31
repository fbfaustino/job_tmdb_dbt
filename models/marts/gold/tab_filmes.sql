select 
    a.id_filme,
    a.nome_filme,
    d.titulo_original,
    a.sinopse,
    a.popularidade,
    a.data_lancamento,
    max(d.orcamento) as orcamento,
    max(d.tempo_duracao) as tempo_duracao,
    max(d.poster_path) as poster_path,
    a.nota_media as nota_critica,
    a.quantidade_votos as quantidade_votos_critica,
    max(e.media_votos) as media_votos_geral,
    max(e.quantidade_votos) as quantidade_votos_geral,
    d.receita,
    d.linguagem_original,
    g.palavras_chaves,
    b.generos,
    c.produtoras,
    f.paises_produtores,
from {{ ref('filmes') }} a
left join {{ ref('generos_filmes') }} b on b.id_filme = a.id_filme
left join {{ ref('produtora') }} c on c.id_filme = a.id_filme
left join {{ ref('detalhes_filmes') }} d on d.id_filme = a.id_filme
left join {{ ref('avaliacoes') }} e on d.imdb_id = e.imdb_id
left join {{ ref('pais_producao') }} f on f.id_filme = a.id_filme
left join {{ ref('palavras_chaves') }} g on g.id_filme = a.id_filme
group by all