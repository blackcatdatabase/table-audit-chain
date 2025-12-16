-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  audit_chain

ALTER TABLE audit_chain ADD CONSTRAINT fk_audit_chain_audit FOREIGN KEY (audit_id) REFERENCES audit_log(id) ON DELETE CASCADE;
