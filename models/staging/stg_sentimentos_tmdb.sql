select
    "id_filme" as id_filme,
    positivas as positivas,
    negativas as negativas,
    neutras as neutras
from {{ source('tmdb_bronze', 'sentimentos') }}