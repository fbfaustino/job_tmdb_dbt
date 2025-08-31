select 
    imdb_id,
    media_votos,
    quantidade_votos,
    current_timestamp() as data_dados
from {{ ref('int_avaliacoes_tmdb') }}