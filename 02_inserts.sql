USE sem fronteiras;

-- CLIENTES
INSERT INTO cliente (nome, email, telefone, data_nascimento)
VALUES
('Arthur Silva', 'arthur@gmail.com', '31999990000', '2003-05-12'),
('Mariana Costa', 'mariana@gmail.com', '31987654321', '1999-10-30'),
('Pedro Almeida', 'pedro@gmail.com', '21988887777', '1987-04-20');

-- DESTINOS
INSERT INTO destino (cidade, estado, pais, descricao)
VALUES
('Rio de Janeiro', 'RJ', 'Brasil', 'Cidade turística com praias famosas'),
('Lisboa', 'Lisboa', 'Portugal', 'Capital portuguesa com cultura histórica'),
('Orlando', 'Florida', 'EUA', 'Destino famoso pelos parques temáticos');

-- VIAGENS
INSERT INTO viagem (cliente_id, destino_id, data_partida, data_retorno, valor)
VALUES
(1, 1, '2025-01-10', '2025-01-20', 2500.00),
(2, 2, '2025-02-15', '2025-02-28', 7800.00),
(3, 3, '2025-03-05', '2025-03-15', 12000.00);

-- AVALIAÇÕES
INSERT INTO avaliacao (viagem_id, nota, comentario)
VALUES
(1, 5, 'A viagem foi incrível!'),
(2, 4, 'Experiência muito boa.'),
(3, 5, 'Orlando é fantástico!');

-- ITENS DE RESERVA
INSERT INTO item_reserva (viagem_id, tipo, descricao, valor)
VALUES
(1, 'Hotel', 'Hotel Atlântico', 1200.00),
(2, 'Voo', 'Passagem aérea TAP', 3500.00),
(3, 'Seguro', 'Seguro viagem internacional', 600.00);
