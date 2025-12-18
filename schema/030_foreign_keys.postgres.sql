-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  audit_chain

ALTER TABLE audit_chain ADD CONSTRAINT fk_audit_chain_audit FOREIGN KEY (audit_id) REFERENCES audit_log(id) ON DELETE CASCADE;
