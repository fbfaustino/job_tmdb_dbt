select 
    "id" as id_filme,
    "title" as nome_filme,
    "overview" as sinopse,
    "popularity" as popularidade,
    "release_date" as data_lancamento,
    "vote_average" as nota_media,
    "vote_count" as quantidade_votos
from {{ source('tmdb_bronze', 'filmes') }}