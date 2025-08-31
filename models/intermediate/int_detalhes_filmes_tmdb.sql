select 
    id_filme,
    max(receita) as receita,
    max(orcamento) as orcamento,
    max(tempo_duracao) as tempo_duracao,
    max(poster_path) as poster_path,
    max(imdb_id) as imdb_id,
    max(linguagem_original) as linguagem_original,
    max(titulo_original) as titulo_original
from {{ ref('stg_detalhes_filmes_tmdb') }}
group by all