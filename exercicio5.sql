SELECT *
FROM PRODUTO P LEFT JOIN PRODUTO_PRECO PP
ON P.ID = PP.ID_PRODUTO;