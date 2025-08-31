select
    id_filme,
    receita,
    orcamento,
    tempo_duracao,
    poster_path,
    imdb_id,
    linguagem_original,
    titulo_original,
    current_timestamp() as data_dados
from {{ ref('int_detalhes_filmes_tmdb') }}