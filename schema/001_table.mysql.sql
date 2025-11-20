-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  audit_chain
CREATE TABLE IF NOT EXISTS audit_chain (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  audit_id BIGINT UNSIGNED NOT NULL,
  chain_name VARCHAR(100) NOT NULL DEFAULT 'default',
  prev_hash VARBINARY(255) NULL,
  hash VARBINARY(255) NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_audit_chain (audit_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
