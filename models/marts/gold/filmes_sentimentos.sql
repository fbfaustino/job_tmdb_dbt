select     
    id_filme,
    nome_filme,
    positivas,
    negativas,
    neutras,
    current_timestamp() as data_dados
from {{ ref('int_filmes_sentimentos_tmdb') }}
