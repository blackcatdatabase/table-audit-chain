-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  audit_chain

CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
