select 
    "id_filme" as id_filme,
    "pais_produtor" as pais_produtor
from {{ source('tmdb_bronze', 'pais_produtor') }}