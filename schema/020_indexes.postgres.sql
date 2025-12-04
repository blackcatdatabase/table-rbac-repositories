-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  rbac_repositories

CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status);
