-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
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
