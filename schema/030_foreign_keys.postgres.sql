-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  audit_chain

ALTER TABLE audit_chain ADD CONSTRAINT fk_audit_chain_audit FOREIGN KEY (audit_id) REFERENCES audit_log(id) ON DELETE CASCADE;
