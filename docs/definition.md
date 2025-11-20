<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – audit_chain

Hash chain built on top of audit_log entries for tamper evidence.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| audit_id | BIGINT | NO | — | Audit entry id (FK audit_log.id). |  |
| chain_name | VARCHAR(100) | NO | 'default' | Chain namespace (multiple chains may coexist). |  |
| prev_hash | BYTEA | YES | — | Hash of the previous audit entry in the chain. |  |
| hash | BYTEA | NO | — | Hash of the current entry. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |