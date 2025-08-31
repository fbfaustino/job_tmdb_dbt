select 
    id_filme,
    nome_filme,
    sinopse,
    popularidade,
    data_lancamento,
    nota_media,
    quantidade_votos,
    current_timestamp() as data_dados
from {{ ref('int_filmes_tmdb') }}  a