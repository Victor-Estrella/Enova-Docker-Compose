Criação do DockerFile# Enova - Ambiente Multi-Stack com Docker Compose

## Descrição
Este projeto integra aplicações Next.js, Java e Python, todas conectadas a um banco MySQL, utilizando Docker Compose para orquestração.

## Pré-requisitos
- Docker
- Docker Compose

## Estrutura dos Serviços
- **enova-nextjs**: Aplicação Next.js
- **enova-java**: Aplicação Java (Spring Boot ou similar)
- **enova-python**: Aplicação Python (Flask)
- **mysql-enova**: Banco de dados MySQL

## Instruções de Uso

1. **Configure o arquivo `.env`** na raiz do projeto com as variáveis:
   ```env
   MYSQL_ROOT_PASSWORD=suasenha
   MYSQL_DATABASE=enova_db
   MYSQL_USER=enova_user
   MYSQL_PASSWORD=suasenha
   ```

2. **Build e deploy dos containers:**
   ```powershell
   docker-compose up --build
   ```

3. **Parar os containers:**
   ```powershell
   docker-compose down
   ```

## Comandos Essenciais do Docker Compose
- `docker-compose up` - Inicia os serviços
- `docker-compose up --build` - Reconstrói as imagens e inicia
- `docker-compose down` - Para e remove os containers
- `docker-compose ps` - Lista os containers em execução
- `docker-compose logs` - Mostra os logs dos serviços

## Processo de Deploy Passo a Passo
1. Clone o repositório
2. Configure o `.env`
3. Certifique-se que os Dockerfiles estão corretos em cada projeto
4. Execute `docker-compose up --build`
5. Acesse as aplicações pelas portas:
   - Next.js: http://localhost:3000
   - Java: http://localhost:8080
   - Python: http://localhost:5000

## Troubleshooting Básico
- **Erro de conexão com MySQL:** Verifique se as variáveis do `.env` estão corretas e se o serviço `mysql-enova` está saudável.
- **Porta já em uso:** Altere a porta no `docker-compose.yml` ou pare o serviço que está usando a porta.
- **Permissão negada:** Certifique-se que os arquivos e pastas têm permissão de leitura para o usuário do container.
- **Build falhou:** Confira se os Dockerfiles estão corretos e se todos os arquivos necessários estão presentes.

---

Dúvidas ou problemas? Consulte os logs com `docker-compose logs <serviço>` para mais detalhes.
