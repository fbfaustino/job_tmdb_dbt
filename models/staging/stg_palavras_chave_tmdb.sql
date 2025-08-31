select 
    "id_filme" as id_filme,
    "palavra_chave" as palavras_chave,
    "palavra_chave_br" as palavras_chaves_br
from {{ source('tmdb_bronze', 'palavras_chave') }}