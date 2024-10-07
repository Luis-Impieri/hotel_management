-- Este comando aqui irá criar o usuário que eu salvei no back-end novamente
CREATE USER meu_usuario WITH PASSWORD 'senhateste';

-- Aqui todas as permissões necessárias são concedidas no banco de dados
GRANT ALL PRIVILEGES ON DATABASE hotel_management TO meu_usuario;

-- Aqui as permissões das tabelas
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO meu_usuario;

-- Aqui garante que o meu_usuario vai ter acesso a futuras tabelas tambem
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO meu_usuario;
