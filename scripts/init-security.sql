-- Force SSL connections only
ALTER SYSTEM SET ssl = 'on';
ALTER SYSTEM SET ssl_min_protocol_version = 'TLSv1.2';

-- Connection limits
ALTER SYSTEM SET max_connections = '100';
ALTER SYSTEM SET superuser_reserved_connections = '3';

-- Timeouts
ALTER SYSTEM SET statement_timeout = '60s';
ALTER SYSTEM SET idle_in_transaction_session_timeout = '60s';

-- Logging for security monitoring
ALTER SYSTEM SET log_connections = 'on';
ALTER SYSTEM SET log_disconnections = 'on';
ALTER SYSTEM SET log_duration = 'on';
ALTER SYSTEM SET log_line_prefix = '%m [%p] %u@%d from %h ';

-- Reload configuration
SELECT pg_reload_conf();
