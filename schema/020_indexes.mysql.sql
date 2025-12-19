-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  audit_chain

CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
