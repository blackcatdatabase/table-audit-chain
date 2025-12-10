# audit_chain

Hash chain built on top of audit_log entries for tamper evidence.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| audit_id | BIGINT | NO |  | Audit entry id (FK audit_log.id). |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| hash | mysql: VARBINARY(255) / postgres: BYTEA | NO |  | Hash of the current entry. |
| chain_name | VARCHAR(100) | NO | default | Chain namespace (multiple chains may coexist). |
| id | BIGINT | NO |  | Surrogate primary key. |
| prev_hash | mysql: VARBINARY(255) / postgres: BYTEA | YES |  | Hash of the previous audit entry in the chain. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_audit_chain | audit_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_audit_chain_name_time | chain_name,created_at | CREATE INDEX idx_audit_chain_name_time ON audit_chain (chain_name, created_at) |
| uq_audit_chain | audit_id | UNIQUE KEY uq_audit_chain (audit_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_audit_chain_audit | audit_id | audit_log(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_audit_chain | audit_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_audit_chain_name_time | chain_name,created_at | CREATE INDEX IF NOT EXISTS idx_audit_chain_name_time ON audit_chain (chain_name, created_at) |
| uq_audit_chain | audit_id | CONSTRAINT uq_audit_chain UNIQUE (audit_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_audit_chain_audit | audit_id | audit_log(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_audit_chain | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_audit_chain_gaps | mysql | algorithm=TEMPTABLE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_audit_chain | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
| vw_audit_chain_gaps | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
