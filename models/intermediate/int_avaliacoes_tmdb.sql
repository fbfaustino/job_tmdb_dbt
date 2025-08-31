select 
    imdb_id,
    media_votos,
    quantidade_votos
from {{ ref('stg_avaliacoes_tmdb') }}
group by all