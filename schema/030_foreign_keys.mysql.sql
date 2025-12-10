-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  audit_chain

ALTER TABLE audit_chain ADD CONSTRAINT fk_audit_chain_audit FOREIGN KEY (audit_id) REFERENCES audit_log(id) ON DELETE CASCADE;
