-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  audit_chain

CREATE INDEX IF NOT EXISTS idx_audit_chain_name_time ON audit_chain (chain_name, created_at);
