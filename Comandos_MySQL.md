Aqui está um documento com os comandos úteis e mais utilizados no MySQL, além da forma de acessar o MySQL via terminal:

---

# Comandos Úteis e Mais Utilizados no MySQL

### 1. **Acessando o MySQL via Terminal**
Para acessar o MySQL no terminal, utilize o seguinte comando:

```bash
mysql -u root -p
```

- `-u root`: Especifica o usuário (no caso, `root`).
- `-p`: Solicita a senha do usuário.

Após isso, você será solicitado a digitar a senha do usuário especificado.

### 2. **Comandos Básicos**

- **Mostrar bancos de dados**:

```sql
SHOW DATABASES;
```

- **Criar um banco de dados**:

```sql
CREATE DATABASE nome_do_banco;
```

- **Usar um banco de dados**:

```sql
USE nome_do_banco;
```

- **Mostrar tabelas de um banco de dados**:

```sql
SHOW TABLES;
```

- **Mostrar estrutura de uma tabela**:

```sql
DESCRIBE nome_da_tabela;
```

- **Criar uma tabela**:

```sql
CREATE TABLE nome_da_tabela (
    coluna1 tipo_de_dado,
    coluna2 tipo_de_dado,
    ...
);
```

- **Excluir uma tabela**:

```sql
DROP TABLE nome_da_tabela;
```

- **Excluir um banco de dados**:

```sql
DROP DATABASE nome_do_banco;
```

### 3. **Comandos de Manipulação de Dados**

- **Inserir dados em uma tabela**:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, ...) 
VALUES (valor1, valor2, ...);
```

- **Selecionar dados de uma tabela**:

```sql
SELECT * FROM nome_da_tabela;
```

- **Selecionar dados com condição**:

```sql
SELECT * FROM nome_da_tabela WHERE coluna = valor;
```

- **Atualizar dados de uma tabela**:

```sql
UPDATE nome_da_tabela 
SET coluna1 = novo_valor1, coluna2 = novo_valor2 
WHERE coluna = valor;
```

- **Excluir dados de uma tabela**:

```sql
DELETE FROM nome_da_tabela WHERE coluna = valor;
```

### 4. **Comandos de Alteração de Tabelas**

- **Adicionar uma nova coluna**:

```sql
ALTER TABLE nome_da_tabela ADD coluna_nome tipo_de_dado;
```

- **Alterar o tipo de dado de uma coluna**:

```sql
ALTER TABLE nome_da_tabela MODIFY coluna_nome novo_tipo_de_dado;
```

- **Renomear uma coluna**:

```sql
ALTER TABLE nome_da_tabela CHANGE coluna_antiga nova_coluna tipo_de_dado;
```

- **Excluir uma coluna**:

```sql
ALTER TABLE nome_da_tabela DROP COLUMN coluna_nome;
```

### 5. **Comandos de Índices e Chaves**

- **Criar índice**:

```sql
CREATE INDEX nome_do_indice ON nome_da_tabela (coluna);
```

- **Excluir índice**:

```sql
DROP INDEX nome_do_indice ON nome_da_tabela;
```

- **Adicionar chave primária**:

```sql
ALTER TABLE nome_da_tabela ADD PRIMARY KEY (coluna);
```

- **Adicionar chave estrangeira**:

```sql
ALTER TABLE nome_da_tabela ADD CONSTRAINT nome_da_fk FOREIGN KEY (coluna) REFERENCES outra_tabela(coluna_referenciada);
```

### 6. **Comandos de Gerenciamento de Usuários**

- **Criar um novo usuário**:

```sql
CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'senha';
```

- **Conceder privilégios a um usuário**:

```sql
GRANT ALL PRIVILEGES ON nome_do_banco.* TO 'usuario'@'localhost';
```

- **Revogar privilégios de um usuário**:

```sql
REVOKE ALL PRIVILEGES ON nome_do_banco.* FROM 'usuario'@'localhost';
```

- **Excluir um usuário**:

```sql
DROP USER 'usuario'@'localhost';
```

### 7. **Comandos de Backup e Restauração**

- **Fazer backup de um banco de dados**:

```bash
mysqldump -u root -p nome_do_banco > backup_nome_do_banco.sql
```

- **Restaurar um banco de dados a partir de um backup**:

```bash
mysql -u root -p nome_do_banco < backup_nome_do_banco.sql
```

### 8. **Comandos de Outros Recursos Úteis**

- **Contar o número de registros em uma tabela**:

```sql
SELECT COUNT(*) FROM nome_da_tabela;
```

- **Ordenar os resultados**:

```sql
SELECT * FROM nome_da_tabela ORDER BY coluna ASC;  -- ASC para ordem crescente
SELECT * FROM nome_da_tabela ORDER BY coluna DESC; -- DESC para ordem decrescente
```

- **Limitar o número de resultados**:

```sql
SELECT * FROM nome_da_tabela LIMIT 10;
```

- **Conectar ao MySQL remoto**:

```bash
mysql -u usuario -h host_remoto -p
```

---

Esses são alguns dos comandos mais comuns e úteis ao trabalhar com MySQL. Caso precise de algo mais específico, posso ajudar com mais detalhes.