-- Auto-generated from joins-mysql.psd1 (map@mtime:2025-11-27T17:49:37Z)
-- engine: mysql
-- view:   audit_chain_gaps
-- Audit rows missing chain entries
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_audit_chain_gaps AS
SELECT
  al.id AS audit_id,
  al.changed_at,
  al.table_name,
  al.record_id
FROM audit_log al
LEFT JOIN audit_chain ac ON ac.audit_id = al.id
WHERE ac.audit_id IS NULL
ORDER BY al.changed_at DESC;
