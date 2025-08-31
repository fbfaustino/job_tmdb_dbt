select 
    "id" as id_filme,
    "revenue" as receita,
    "budget" as orcamento,
    "runtime" as tempo_duracao,
    "poster_path" as poster_path,
    "imdb_id" as imdb_id,
    "original_language" as linguagem_original,
    "original_title" as titulo_original
from {{ source('tmdb_bronze', 'detalhes_filmes') }}