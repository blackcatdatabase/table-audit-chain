-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  audit_chain

-- Contract view for [audit_chain]
-- Exposes hash blobs with hex helpers.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_audit_chain AS
SELECT
  id,
  audit_id,
  chain_name,
  prev_hash,
  CAST(LPAD(HEX(prev_hash), 64, '0') AS CHAR(64)) AS prev_hash_hex,
  `hash`,
  CAST(LPAD(HEX(`hash`), 64, '0') AS CHAR(64))    AS hash_hex,
  created_at
FROM audit_chain;
