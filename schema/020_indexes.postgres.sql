-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  audit_chain

CREATE INDEX IF NOT EXISTS idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
