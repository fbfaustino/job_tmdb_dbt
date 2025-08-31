select 
    id_filme,
    pais_produtor
from {{ ref('stg_pais_produtor_tmdb') }}
group by all