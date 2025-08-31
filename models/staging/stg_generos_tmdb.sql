select 
    "id" as id_genero,
    "nome" as nome_genero
from {{ source('tmdb_bronze', 'generos') }}