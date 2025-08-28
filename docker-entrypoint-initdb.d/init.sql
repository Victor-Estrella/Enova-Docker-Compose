-- Tabela de Avaliação
CREATE TABLE IF NOT EXISTS T_ENOVA_AVALIACAO (
    id_avaliacao BIGINT AUTO_INCREMENT PRIMARY KEY,
    nm_usuario VARCHAR(255) NOT NULL,
    tx_email VARCHAR(255) NOT NULL,
    tx_mensagem TEXT NOT NULL,
    nr_avaliacao INT NOT NULL
);

-- Tabela de Manutenção
CREATE TABLE IF NOT EXISTS T_ENOVA_MANUTENCAO (
    id_manutencao BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_energia BIGINT,
    ds_manutencao VARCHAR(255) NOT NULL,
    dt_manutencao DATE NOT NULL,
    tp_manutencao VARCHAR(100) NOT NULL
);

-- Tabela de Sistemas de Energia
CREATE TABLE IF NOT EXISTS T_ENOVA_SISTEMAS_ENERGIA (
    id_energia BIGINT AUTO_INCREMENT PRIMARY KEY,
    tx_tipo VARCHAR(100) NOT NULL,
    tx_localizacao VARCHAR(255) NOT NULL,
    nr_capacidade DOUBLE NOT NULL,
    dt_instalacao DATE NOT NULL,
    st_sistema VARCHAR(100) NOT NULL
);

-- Tabela de Usuários
CREATE TABLE IF NOT EXISTS T_ENOVA_USUARIOS (
    id_usuario BIGINT AUTO_INCREMENT PRIMARY KEY,
    nm_usuario VARCHAR(255) NOT NULL,
    tx_email VARCHAR(255) NOT NULL,
    tx_senha VARCHAR(255) NOT NULL,
    dt_cadastro DATE
);

-- Tabela de Análise de Eficiência
CREATE TABLE IF NOT EXISTS T_ENOVA_ANALISE_EFICIENCIA (
    id_analise BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_energia BIGINT,
    dt_analise DATE,
    nr_producao_energia DOUBLE NOT NULL,
    nr_consumo_energia DOUBLE NOT NULL,
    nr_eficiencia DOUBLE NOT NULL
);
