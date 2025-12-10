# rbac_repositories

Sources of RBAC definitions (git repos, APIs, etc.).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| last_commit | VARCHAR(128) | YES |  | Hash/identifier of the last synced commit. |
| last_synced_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Last successful sync time. |
| name | VARCHAR(120) | NO |  | Repository identifier. |
| signing_key_id | BIGINT | YES |  | Signing key used to verify snapshots (FK signing_keys.id). |
| status | mysql: ENUM('active','disabled') / postgres: TEXT | NO | active | Repository status. (enum: active, disabled) |
| url | VARCHAR(1024) | YES |  | Optional URL/endpoint. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_rbac_repositories_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rbac_repos_status | status | CREATE INDEX idx_rbac_repos_status ON rbac_repositories (status) |
| ux_rbac_repositories_name | name | UNIQUE KEY ux_rbac_repositories_name (name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_repos_sign_key | signing_key_id | signing_keys(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_rbac_repositories_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rbac_repos_status | status | CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status) |
| ux_rbac_repositories_name | name | CREATE UNIQUE INDEX IF NOT EXISTS ux_rbac_repositories_name ON rbac_repositories (name) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rbac_repos_sign_key | signing_key_id | signing_keys(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_rbac_repositories | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_rbac_repositories | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
