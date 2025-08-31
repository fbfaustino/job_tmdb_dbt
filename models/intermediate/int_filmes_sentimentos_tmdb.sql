select     
    a.id_filme,
    max(a.nome_filme) as nome_filme,
    b.positivas,
    b.negativas,
    b.neutras
from {{ ref('stg_filmes_tmdb') }} a
inner join {{ ref('stg_sentimentos_tmdb') }} b on a.id_filme = b.id_filme
group by all