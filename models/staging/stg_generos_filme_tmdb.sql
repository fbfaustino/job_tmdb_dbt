select 
    "id_filme" as id_filme,
    "id_genero" as id_genero
from {{ source('tmdb_bronze', 'generos_filme') }}