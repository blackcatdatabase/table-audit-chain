-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  audit_chain
CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
