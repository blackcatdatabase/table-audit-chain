-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  audit_chain

CREATE INDEX IF NOT EXISTS idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
