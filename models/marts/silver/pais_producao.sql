select
    id_filme,
    listagg(pais_produtor, ', ') within group (order by pais_produtor) as paises_produtores,
    current_timestamp() as data_dados
from {{ ref('int_pais_producao_tmdb') }}
group by all