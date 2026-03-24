SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'liquibase_lab' AND pid <> pg_backend_pid();

DROP DATABASE IF EXISTS liquibase_lab;
