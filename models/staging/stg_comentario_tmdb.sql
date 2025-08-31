select 
    "rating" as nota,
    "content" as conteudo,
    "id_filme" as id_filme,
    "author" as autor
from {{ source('tmdb_bronze', 'comentarios') }}