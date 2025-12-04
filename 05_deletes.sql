-- Deletar uma avaliação
DELETE FROM avaliacao
WHERE avaliacao_id = 2;

-- Deletar item de reserva
DELETE FROM item_reserva
WHERE item_id = 3;

-- Deletar viagem (só funciona se remover dependências antes)
DELETE FROM viagem
WHERE viagem_id = 1;
