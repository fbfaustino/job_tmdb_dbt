select 
    id_filme,
    nome_produtora
from {{ ref('stg_produtora_tmdb') }}
group by all