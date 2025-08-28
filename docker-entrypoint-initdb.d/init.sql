-- Tabela de Avaliação
CREATE TABLE IF NOT EXISTS T_ENOVA_AVALIACAO (
    id_avaliacao BIGINT AUTO_INCREMENT PRIMARY KEY,
    nmUsuario VARCHAR(255) NOT NULL,
    txEmail VARCHAR(255) NOT NULL,
    txMensagem TEXT NOT NULL,
    nrAvaliacao INT NOT NULL
);

-- Tabela de Manutenção
CREATE TABLE IF NOT EXISTS T_ENOVA_MANUTENCAO (
    idManutencao BIGINT AUTO_INCREMENT PRIMARY KEY,
    idEnergia BIGINT,
    dsManutencao VARCHAR(255) NOT NULL,
    dtManutencao DATE NOT NULL,
    tpManutencao VARCHAR(100) NOT NULL
);

-- Tabela de Sistemas de Energia
CREATE TABLE IF NOT EXISTS T_ENOVA_SISTEMAS_ENERGIA (
    idEnergia BIGINT AUTO_INCREMENT PRIMARY KEY,
    txTipo VARCHAR(100) NOT NULL,
    txLocalizacao VARCHAR(255) NOT NULL,
    nrCapacidade DOUBLE NOT NULL,
    dtInstalacao DATE NOT NULL,
    stSistema VARCHAR(100) NOT NULL
);

-- Tabela de Usuários
CREATE TABLE IF NOT EXISTS T_ENOVA_USUARIOS (
    idUsuario BIGINT AUTO_INCREMENT PRIMARY KEY,
    nmUsuario VARCHAR(255) NOT NULL,
    txEmail VARCHAR(255) NOT NULL,
    txSenha VARCHAR(255) NOT NULL,
    dtCadastro DATE
);

-- Tabela de Análise de Eficiência
CREATE TABLE IF NOT EXISTS T_ENOVA_ANALISE_EFICIENCIA (
    idAnalise BIGINT AUTO_INCREMENT PRIMARY KEY,
    idEnergia BIGINT,
    dtAnalise DATE,
    nrProducaoEnergia DOUBLE NOT NULL,
    nrConsumoEnergia DOUBLE NOT NULL,
    nrEficiencia DOUBLE NOT NULL
);
