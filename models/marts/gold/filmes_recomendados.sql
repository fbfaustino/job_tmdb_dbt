select    
    id_filme_original,
    nome_filme_original,
    id_filme_recomendado,
    filme_recomendado,
    current_timestamp() data_dados  
from {{ ref('int_filmes_recomendados_tmdb') }}