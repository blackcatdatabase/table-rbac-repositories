-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  rbac_repositories

CREATE UNIQUE INDEX IF NOT EXISTS ux_rbac_repositories_name ON rbac_repositories (name);

CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status);
