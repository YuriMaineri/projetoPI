-- Comando para consulta de vendas/relatorio
SELECT itens.quantidade, itens.valor,
pag.valor as Valor_Pagamento,
p.nome as Nome_Produto, p.valor as Valor_Produto,
pe.valor_total, pe.status
FROM itens_pedido as itens
join pagamento as pag on itens.id_pagamento = pag.id
join produto as p on itens.id_produto = p.id
join pedido as pe on itens.id_pedido = pe.id

----------------------------------------------------
-- Insert vinculando com uma fk
INSERT into cliente_telefone (id_cliente, telefone) VALUES ((SELECT id from cliente WHERE nome = 'teste'), '31231312313')
