select 
    tmdb_id as imdb_id,
    media_votos,
    quantidade_votos
from {{ source('tmdb_bronze','avaliacoes')}}