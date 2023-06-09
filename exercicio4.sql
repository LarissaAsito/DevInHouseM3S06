SET SERVEROUTPUT ON
BEGIN
    FOR I IN (SELECT P.QUANTIDADE_EM_ESTOQUE * PP.VALOR AS SOMA
                FROM PRODUTO P INNER JOIN PRODUTO_PRECO PP
                ON P.ID = PP.ID_PRODUTO
                AND PP.STATUS = 1) LOOP
        CASE 
            WHEN I.SOMA < 150.00 THEN
                DBMS_OUTPUT.PUT_LINE('Soma do produto menor 150.00');
            WHEN I.SOMA >= 150.00 AND I.SOMA < 500.00 THEN
                DBMS_OUTPUT.PUT_LINE('Soma do produto está entre 150 e 500');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Soma dos produtos está acima de 500,00');
        END CASE;
    END LOOP;
END;