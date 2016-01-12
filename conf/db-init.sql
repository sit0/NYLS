DROP DATABASE IF EXISTS vagrant;
DROP USER IF EXISTS vagrant;

CREATE DATABASE vagrant;
CREATE USER vagrant WITH PASSWORD 'nyls,098.';

ALTER ROLE vagrant SET client_encoding TO 'utf8';
ALTER ROLE vagrant SET default_transaction_isolation TO 'read committed';
ALTER ROLE vagrant SET timezone TO 'ETC';

GRANT ALL PRIVILEGES ON DATABASE vagrant TO vagrant;
