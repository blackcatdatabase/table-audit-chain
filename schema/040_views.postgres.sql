-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  audit_chain

-- Contract view for [audit_chain]
-- Hides raw hashes; exposes hex.
CREATE OR REPLACE VIEW vw_audit_chain AS
SELECT
  id,
  audit_id,
  chain_name,
  prev_hash,
  UPPER(encode(prev_hash,'hex'))::char(64) AS prev_hash_hex,
  hash,
  UPPER(encode(hash,'hex'))::char(64)      AS hash_hex,
  created_at
FROM audit_chain;
