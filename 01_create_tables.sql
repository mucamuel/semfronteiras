USE sem foronteiras;
-- =====================================================
-- TABELA: CLIENTE
-- =====================================================
CREATE TABLE cliente (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_nascimento DATE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================================
-- TABELA: DESTINO
-- =====================================================
CREATE TABLE destino (
    destino_id INT AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100),
    pais VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- =====================================================
-- TABELA: VIAGEM
-- =====================================================
CREATE TABLE viagem (
    viagem_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    destino_id INT NOT NULL,
    data_partida DATE NOT NULL,
    data_retorno DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id),
    FOREIGN KEY (destino_id) REFERENCES destino(destino_id)
);

-- =====================================================
-- TABELA: AVALIACAO
-- =====================================================
CREATE TABLE avaliacao (
    avaliacao_id INT AUTO_INCREMENT PRIMARY KEY,
    viagem_id INT NOT NULL,
    nota INT CHECK (nota BETWEEN 1 AND 5),
    comentario TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (viagem_id) REFERENCES viagem(viagem_id)
);

-- =====================================================
-- TABELA: ITEM_RESERVA
-- =====================================================
CREATE TABLE item_reserva (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    viagem_id INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (viagem_id) REFERENCES viagem(viagem_id)
);
