-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  rbac_repositories

CREATE UNIQUE INDEX IF NOT EXISTS ux_rbac_repositories_name ON rbac_repositories (name);

CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status);
