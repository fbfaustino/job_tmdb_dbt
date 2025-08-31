select 
    nota,
    conteudo,
    id_filme,
    autor,
    current_timestamp() as data_dados
from {{ ref('int_comentarios_tmdb') }}