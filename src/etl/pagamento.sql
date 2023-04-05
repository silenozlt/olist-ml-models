WITH tb_join AS (
SELECT 
    t2.*,
    t3.idVendedor
FROM 
    Pedido t1
LEFT JOIN
    pagamento_pedido t2 ON (t1.idPedido = t2.idPedido)
LEFT JOIN
    item_pedido t3 ON (t1.idPedido = t2.idPedido)
WHERE
    t1.dtPedido < '2018-01-01' AND
    t1.dtPedido > '2017-07-01'
LIMIT 5)



/*
SELECT 
    idVendedor,
    descTipoPagamento,
    COUNT(DISTINCT(idPedido))       AS qtdPedido,
    SUM(vlPagamento)                AS VlPedidoMeioPagamento,
FROM
    tb_join
GROUP BY
    idVendedorm descTipoPagamento;
    */