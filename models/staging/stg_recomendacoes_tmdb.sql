select 
    "id_recomendado" as id_filme_recomendado,
    "id_filme" as id_filme_original
from  {{ source('tmdb_bronze', 'recomendacoes') }}