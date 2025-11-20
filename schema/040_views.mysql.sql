-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  audit_chain_gaps
-- Audit rows missing chain entries
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_audit_chain_gaps AS
SELECT
  al.id AS audit_id,
  al.changed_at,
  al.table_name,
  al.record_id
FROM audit_log al
LEFT JOIN audit_chain ac ON ac.audit_id = al.id
WHERE ac.audit_id IS NULL
ORDER BY al.changed_at DESC;

-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
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
  UPPER(HEX(prev_hash)) AS prev_hash_hex,
  `hash`,
  UPPER(HEX(`hash`))    AS hash_hex,
  created_at
FROM audit_chain;

