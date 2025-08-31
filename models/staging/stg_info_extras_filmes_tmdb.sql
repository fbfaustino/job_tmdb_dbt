select 
    "id" as id_filme,
    "revenue" as receita,
    "budget" as orcamento,
    "imdb_id" as imdb_id,
    "original_language" as linguagem_original,
    "original_title" as titulo_original
from {{ source('tmdb_bronze', 'info_extras_filmes') }}
