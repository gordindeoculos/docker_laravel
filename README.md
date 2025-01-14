# **Docker Compose Laravel**

Adiciona o projeto laravel `laravel-app` no container DOCKER.

## **Requisitos**

- Docker instalado
- Docker Compose instalado

## **Como Rodar os Containers**

### **Construir e Subir os Containers**

Execute o seguinte comando para construir e iniciar os containers Docker:

```bash
docker-compose up --build -d
```

O parâmetro `-d` faz com que os containers sejam executados em segundo plano.

### **Verificar os Logs do Container**

Use o comando abaixo para visualizar os logs do container `apache-laravel`:

```bash
docker-compose logs -f apache-laravel
```

### **Acessar o Bash do Container Laravel**

Para acessar o bash do container `laravel-app`, execute o seguinte comando:

```bash
docker exec -it laravel-app bash
```

Este comando permite que você acesse o terminal dentro do container do Laravel, onde pode rodar comandos como `php artisan` ou `composer`.

### **Acessar o Bash do Container MySQL**

Para acessar o bash do container `mysql-db`, execute o seguinte comando:

```bash
docker exec -it mysql-db bash
```

### **Acessar o MySQL no Container**

Para acessar o MySQL dentro do container `mysql-db`, use o comando abaixo:

```bash
docker exec -it mysql-db mysql -u root -p
```

Você será solicitado a inserir a senha do root. A senha é `admin`, conforme definida no arquivo `docker-compose.yml`.

### **Acessar a Aplicação**

Após subir os containers, abra o navegador e acesse:

```bash
http://localhost:8080
```

Você verá a aplicação Laravel em funcionamento.

## **Comandos Docker Úteis**

### **Verificar Containers em Execução**

O comando `docker ps` lista todos os containers em execução no momento. Para ver informações sobre os containers ativos, use:

```bash
docker ps
```

### **Verificar Todos os Containers (Ativos e Parados)**

O comando `docker ps -a` lista todos os containers, tanto os em execução quanto os que estão parados:

```bash
docker ps -a
```

### **Parar os Containers**

Para parar os containers em execução, execute o seguinte comando:

```bash
docker stop <nome_do_container>
```

Substitua `<nome_do_container>` pelo nome do container que você deseja parar (por exemplo, `laravel-app` ou `mysql-db`). Para parar todos os containers, use:

```bash
docker stop $(docker ps -q)
```

### **Iniciar os Containers Parados**

Para iniciar um container que foi parado, use o comando:

```bash
docker start <nome_do_container>
```

Substitua `<nome_do_container>` pelo nome do container que você deseja iniciar.

### **Parar e Remover os Containers**

Para parar e remover os containers, execute:

```bash
docker-compose down
```

Isso irá parar e remover todos os containers definidos no arquivo `docker-compose.yml`. Ele também removerá redes e volumes associados, a menos que o volume seja especificado para persistir.

### **Excluir Volumes**

Se você deseja excluir os volumes de dados (o que pode ser útil para redefinir a base de dados), execute:

```bash
docker-compose down -v
```

O parâmetro `-v` garante que os volumes criados durante a execução dos containers sejam excluídos.

---

Este `README.md` agora inclui todos os comandos essenciais para gerenciar os containers Docker, incluindo a parada e o início de containers específicos, além de comandos para visualizar, parar, remover e excluir volumes.