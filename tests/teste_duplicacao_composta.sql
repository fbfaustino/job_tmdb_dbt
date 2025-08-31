SELECT 
  id_filme,
  data_lancamento,
  COUNT(*) AS qtd
FROM {{ ref('tab_filmes') }}
GROUP BY id_filme, data_lancamento
HAVING COUNT(*) > 1
