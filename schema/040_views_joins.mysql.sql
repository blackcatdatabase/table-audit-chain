-- Auto-generated from joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
-- engine: mysql
-- view:   audit_chain_gaps

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
