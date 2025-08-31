select 
    id_filme,
    nome_genero
from {{ ref('stg_generos_filme_tmdb') }} a
inner join {{ ref('stg_generos_tmdb') }} b on a.id_genero = b.id_genero
group by all