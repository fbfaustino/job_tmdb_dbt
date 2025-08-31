select 
    id_filme,
    listagg(nome_genero, ', ') within group (order by nome_genero) as generos,
    current_timestamp() as data_dados
from {{ ref("int_generos_filmes_tmdb") }}
group by all