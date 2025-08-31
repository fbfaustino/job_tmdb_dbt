select
    nota,
    conteudo,
    id_filme,
    autor
from {{ ref('stg_comentario_tmdb') }}
group by all