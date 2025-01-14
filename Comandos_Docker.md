Aqui está um documento com os comandos mais úteis e frequentemente utilizados no Docker:

---

# Comandos Úteis e Mais Utilizados no Docker

## **1. Comandos Básicos do Docker**

### **1.1 Verificar versão do Docker**
```bash
docker --version
```

### **1.2 Verificar informações do Docker**
```bash
docker info
```

### **1.3 Mostrar imagens do Docker**
```bash
docker images
```

### **1.4 Mostrar containers do Docker**
```bash
docker ps
```
Para mostrar também containers parados:
```bash
docker ps -a
```

### **1.5 Criar um container**
```bash
docker run [opções] imagem [comando]
```
Exemplo:
```bash
docker run -d -p 8080:80 nginx
```
- `-d`: Rodar em segundo plano (detached mode)
- `-p`: Mapear porta do container para a máquina local

### **1.6 Parar um container**
```bash
docker stop [nome ou id do container]
```

### **1.7 Iniciar um container parado**
```bash
docker start [nome ou id do container]
```

### **1.8 Reiniciar um container**
```bash
docker restart [nome ou id do container]
```

### **1.9 Remover um container**
```bash
docker rm [nome ou id do container]
```

### **1.10 Remover uma imagem**
```bash
docker rmi [nome ou id da imagem]
```

## **2. Manipulação de Imagens**

### **2.1 Baixar uma imagem**
```bash
docker pull [nome da imagem]
```
Exemplo:
```bash
docker pull nginx
```

### **2.2 Criar uma imagem a partir de um Dockerfile**
```bash
docker build -t [nome da imagem] [diretório]
```
Exemplo:
```bash
docker build -t minha-imagem .
```

### **2.3 Listar as imagens locais**
```bash
docker images
```

### **2.4 Remover uma imagem não utilizada**
```bash
docker rmi [nome ou id da imagem]
```

## **3. Manipulação de Containers**

### **3.1 Executar um comando dentro de um container**
```bash
docker exec -it [nome ou id do container] [comando]
```
Exemplo para abrir o terminal de um container:
```bash
docker exec -it [nome ou id do container] bash
```

### **3.2 Acessar o terminal interativo de um container**
```bash
docker run -it [nome da imagem] /bin/bash
```

### **3.3 Ver os logs de um container**
```bash
docker logs [nome ou id do container]
```

## **4. Docker Compose**

### **4.1 Iniciar containers com Docker Compose**
```bash
docker-compose up
```
Para rodar em segundo plano:
```bash
docker-compose up -d
```

### **4.2 Parar os containers com Docker Compose**

Para apenas **parar** os containers sem removê-los, você pode usar o comando `docker-compose stop`.

### Exemplo:

```bash
docker-compose stop
```

Isso irá parar **todos os containers** definidos no seu `docker-compose.yml`, mas **não removerá** os containers, redes ou volumes.

### 4.3 Para iniciar novamente os containers, basta usar:

```bash
docker-compose start
```

Isso iniciará os containers que foram parados sem afetar a configuração deles.

#### Diferença entre `docker-compose stop` e `docker-compose down`:
- **`docker-compose stop`**: Apenas para os containers, mantendo a configuração e os dados (eles podem ser reiniciados com `docker-compose start`).
- **`docker-compose down`**: Para e remove containers, redes e pode remover volumes (se especificado).

### **4.4 Parar e remover os containers com Docker Compose**
```bash
docker-compose down
```

### **4.5 Visualizar logs do Docker Compose**
```bash
docker-compose logs
```

### **4.6 Verificar o status dos containers do Docker Compose**
```bash
docker-compose ps
```

## **5. Redes e Volumes**

### **5.1 Criar uma rede Docker**
```bash
docker network create [nome da rede]
```

### **5.2 Ver redes Docker**
```bash
docker network ls
```

### **5.3 Criar um volume Docker**
```bash
docker volume create [nome do volume]
```

### **5.4 Ver volumes Docker**
```bash
docker volume ls
```

### **5.5 Remover um volume**
```bash
docker volume rm [nome do volume]
```

## **6. Outros Comandos**

### **6.1 Verificar informações sobre containers**
```bash
docker inspect [nome ou id do container]
```

### **6.2 Rodar um container temporário para testar um comando**
```bash
docker run --rm [nome da imagem] [comando]
```
Exemplo:
```bash
docker run --rm ubuntu ls
```
- `--rm`: Remove o container após o comando ser executado

### **6.3 Verificar o uso de espaço no Docker**
```bash
docker system df
```

### **6.4 Limpar recursos não utilizados (containers, imagens, volumes, redes)**
```bash
docker system prune
```
Adicionar `-a` para remover também imagens não utilizadas:
```bash
docker system prune -a
```

---

Esse documento contém comandos básicos, úteis para o dia a dia no Docker.