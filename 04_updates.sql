-- Atualizar telefone do cliente
UPDATE cliente
SET telefone = '31911112222'
WHERE cliente_id = 1;

-- Atualizar valor da viagem
UPDATE viagem
SET valor = 9000
WHERE viagem_id = 2;

-- Atualizar nota da avaliação
UPDATE avaliacao
SET nota = 4
WHERE avaliacao_id = 3;
