select
    id_filme,
    listagg(palavras_chaves_br, ', ') within group (order by palavras_chaves_br) as palavras_chaves,
    current_timestamp() as data_dados
from {{ ref('int_palavras_chaves_tmdb') }}
group by all
