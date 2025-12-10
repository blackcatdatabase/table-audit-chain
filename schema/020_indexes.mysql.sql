-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  audit_chain

CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
