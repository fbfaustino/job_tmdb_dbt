select 
    id_filme,
    palavras_chave,
    palavras_chaves_br
from {{ ref('stg_palavras_chave_tmdb') }}
group by all