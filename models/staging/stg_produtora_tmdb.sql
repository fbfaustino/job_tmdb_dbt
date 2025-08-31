select 
    "id_filme" as id_filme,
    "produtora" as nome_produtora
from {{ source('tmdb_bronze', 'produtora') }}