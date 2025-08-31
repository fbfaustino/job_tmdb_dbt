with cte_filmes as (
    select 
        a.id_filme as id_filme_original,
        a.nome_filme as nome_filme_original,
        b.id_filme_recomendado 
    from {{ ref('stg_filmes_tmdb') }} a
    inner join {{ ref('stg_recomendacoes_tmdb') }} b on a.id_filme = b.id_filme_original
    where a.id_filme is not null and b.id_filme_recomendado is not null
)
select     
    a.id_filme_original,
    a.nome_filme_original,
    a.id_filme_recomendado,
    b.nome_filme as filme_recomendado
from cte_filmes a
inner join {{ ref('stg_filmes_tmdb') }} b on a.id_filme_recomendado = b.id_filme
