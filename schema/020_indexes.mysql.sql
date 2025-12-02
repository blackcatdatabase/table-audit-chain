-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  audit_chain

CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
