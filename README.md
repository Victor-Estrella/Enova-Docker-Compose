# Enova - Ambiente Multi-Stack com Docker Compose

## Descrição
Este projeto integra aplicações Next.js, Java e Python, todas conectadas a um banco MySQL, utilizando Docker Compose para orquestração e automação do ambiente.

---

## 1. Instruções de Uso

### Pré-requisitos
- Docker
- Docker Compose

### Clonando os Repositórios
Clone cada projeto individualmente usando os comandos abaixo:

```sh
git clone https://github.com/Victor-Estrella/Enova-Python

git clone https://github.com/Victor-Estrella/Enova-Java

git clone https://github.com/Victor-Estrella/Enova
```

**Atenção:** Caso esteja utilizando uma máquina virtual (VM), ao clonar o projeto de frontend (Next.js), crie um arquivo `.env.local` na raiz do projeto e adicione as seguintes variáveis, substituindo `<IPSUAVM>` pelo IP da sua VM:
   ```env
   NEXT_PUBLIC_API_JAVA=http://<IPSUAVM>:8080
   NEXT_PUBLIC_API_PYTHON=http://<IPSUAVM>:5000
   ```

### Configuração do Ambiente
1. Crie um arquivo `.env` na raiz do projeto com as variáveis:

   ```env
   MYSQL_ROOT_PASSWORD=suasenha
   MYSQL_DATABASE=enova_db
   MYSQL_USER=enova_user
   MYSQL_PASSWORD=suasenha
   ```
2. Certifique-se que os Dockerfiles estão corretos em cada projeto.

### Build e Deploy dos Containers
```cmd
docker-compose up --build
```

### Parar os Containers
```cmd
docker-compose down
```

---

## 2. Comandos Essenciais do Docker Compose
- `docker-compose up` - Inicia os serviços
- `docker-compose up --build` - Reconstrói as imagens e inicia
- `docker-compose down` - Para e remove os containers
- `docker-compose ps` - Lista os containers em execução
- `docker-compose logs` - Mostra os logs dos serviços

---

## 3. Estrutura dos Serviços
- **enova-nextjs**: Aplicação Next.js
- **enova-java**: Aplicação Java (Spring Boot ou similar)
- **enova-python**: Aplicação Python (Flask)
- **mysql-enova**: Banco de dados MySQL

### Definição dos Serviços
Todos os serviços estão definidos no arquivo `docker-compose.yml`.

### Configuração de Redes
Todos os containers estão conectados à rede `enova-network` para comunicação interna.

### Gerenciamento de Volumes
O serviço MySQL utiliza o volume `mysql-enova-data` para persistência dos dados.

### Variáveis de Ambiente
As variáveis de ambiente são configuradas via arquivo `.env` e repassadas para os containers.

### Políticas de Restart
Todos os serviços utilizam `restart: unless-stopped` para garantir alta disponibilidade.

### Exposição de Portas
- Next.js: 3000
- Java: 8080
- Python: 5000
- MySQL: 3306

### Health Checks
O serviço MySQL possui healthcheck para monitoramento e dependência dos demais serviços.

### Usuário sem Privilégios Administrativos
Os serviços de aplicação utilizam o usuário `1000:1000` para execução, evitando privilégios administrativos.

---

## 4. Processo de Deploy Passo a Passo
1. Clone os repositórios
2. Configure o `.env`
3. Execute `docker-compose up --build`
4. Acesse as aplicações pelas portas:
   - Next.js: http://localhost:3000
   - Java: http://localhost:8080
   - Python: http://localhost:5000

---

## 5. Troubleshooting Básico
- **Erro de conexão com MySQL:** Verifique se as variáveis do `.env` estão corretas e se o serviço `mysql-enova` está saudável.
- **Porta já em uso:** Altere a porta no `docker-compose.yml` ou pare o serviço que está usando a porta.
- **Permissão negada:** Certifique-se que os arquivos e pastas têm permissão de leitura para o usuário do container.
- **Build falhou:** Confira se os Dockerfiles estão corretos e se todos os arquivos necessários estão presentes.
- **Serviço não inicia:** Verifique os logs com `docker-compose logs <serviço>`.

---

## 6. Referências e Dúvidas
- Consulte os logs com `docker-compose logs <serviço>` para mais detalhes.
- Documentação oficial: https://docs.docker.com/compose/

---

## 7. Observações de Segurança
- Nunca utilize o usuário root para rodar aplicações dentro dos containers.
- Mantenha suas variáveis sensíveis fora do versionamento.

---

## 8. Estrutura dos Arquivos
- `docker-compose.yml`: Orquestração dos serviços
- `Dockerfile`: Imagem base dos serviços
- `docker-entrypoint-initdb.d/init.sql`: Script de inicialização do banco
- `.env`: Variáveis de ambiente

---

Projeto preparado para avaliação dos requisitos de Docker Compose e documentação técnica.
