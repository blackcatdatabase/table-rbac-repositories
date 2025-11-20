<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – rbac_repositories

Sources of RBAC definitions (git repos, APIs, etc.).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(120) | NO | — | Repository identifier. |  |
| url | VARCHAR(1024) | YES | — | Optional URL/endpoint. |  |
| signing_key_id | BIGINT | YES | — | Signing key used to verify snapshots (FK signing_keys.id). |  |
| last_commit | VARCHAR(128) | YES | — | Hash/identifier of the last synced commit. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |