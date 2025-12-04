-- Auto-generated from joins-postgres.yaml (map@85230ed)
-- engine: postgres
-- view:   audit_chain_gaps

-- Audit rows missing chain entries
CREATE OR REPLACE VIEW vw_audit_chain_gaps AS
SELECT
  al.id AS audit_id,
  al.changed_at,
  al.table_name,
  al.record_id
FROM audit_log al
LEFT JOIN audit_chain ac ON ac.audit_id = al.id
WHERE ac.audit_id IS NULL
ORDER BY al.changed_at DESC;
