select
    id_filme,
    listagg(nome_produtora, ', ') within group (order by nome_produtora) as produtoras,
    current_timestamp() as data_dados
from {{ ref('stg_produtora_tmdb') }}
group by all
