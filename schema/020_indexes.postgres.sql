-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  audit_chain

CREATE INDEX IF NOT EXISTS idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
