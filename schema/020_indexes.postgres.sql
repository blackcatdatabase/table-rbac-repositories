-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  rbac_repositories

CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status);
