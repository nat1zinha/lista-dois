-- Tema 1 , exercício 1
SELECT pedidos.pedido_id, clientes.nome, clientes.email, pedidos.data_pedido, pedidos.total, pedidos.status
FROM pedidos
INNER JOIN clientes ON pedidos.cliente_id = clientes.cliente_id;


-- Tema 2, exercício 2
SELECT campanhas.nome AS nome_campanha, clientes.nome AS nome_cliente
FROM campanhas
INNER JOIN participacoes_campanha ON campanhas.campanha_id = participacoes_campanha.campanha_id
INNER JOIN clientes ON participacoes_campanha.cliente_id = clientes.cliente_id;

-- Tema3, exercício 3
SELECT 
    t.transacao_id,
    t.conta_id,
    t.tipo,
    t.valor,
    t.descricao,
    o.categoria,
    o.valor_planejado,
    o.data_inicio,
    o.data_fim
FROM 
    transacoes t
LEFT JOIN 
    orcamentos o 
ON 
    t.descricao LIKE CONCAT('%', o.categoria, '%')
OR 
    t.tipo = o.categoria;

-- Tema 4, exercício 4
SELECT 
   p.paciente_id, 
   p.nome AS paciente_nome, 
   p.data_nascimento, 
   p.sexo, 
   pr.prontuario_id, 
   pr.medico, 
   pr.diagnostico, 
   pr.prescricao, 
   pr.observacoes
FROM 
   pacientes p
LEFT JOIN 
   prontuarios pr 
ON 
   p.paciente_id = pr.paciente_id;


-- Tema 5, exercício 5 
SELECT 
    fornecedores.fornecedor_id,
    fornecedores.nome AS nome_fornecedor,
    fornecedores.contato,
    fornecedores.telefone,
    produtos.produto_id,
    produtos.nome AS nome_produto,
    produtos.descricao,
    produtos.preco,
    produtos.estoque
FROM 
    fornecedores
LEFT JOIN 
    produtos 
ON 
    fornecedores.fornecedor_id = produtos.fornecedor_id;