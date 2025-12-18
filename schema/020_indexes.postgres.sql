-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  rbac_repositories

CREATE UNIQUE INDEX IF NOT EXISTS ux_rbac_repositories_name ON rbac_repositories (name);

CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status);
