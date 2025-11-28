-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  audit_chain

CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
