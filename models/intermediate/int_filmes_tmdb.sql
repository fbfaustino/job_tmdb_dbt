with cte_filmes as (
  select
    id_filme,
    nome_filme,
    sinopse,
    popularidade,
    NULLIF(data_lancamento, '')::DATE as data_lancamento,
    nota_media,
    quantidade_votos
from {{ ref('stg_filmes_tmdb') }}
), filmes_qualify as (
  select 
    *
  from cte_filmes
  where id_filme is not null
  qualify row_number() over (
      partition by id_filme 
      order by data_lancamento desc
  ) = 1
)
select 
    id_filme,
    nome_filme,
    sinopse,
    popularidade,
    data_lancamento,
    nota_media,
    quantidade_votos
from filmes_qualify  a