-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  rbac_repositories

CREATE UNIQUE INDEX IF NOT EXISTS ux_rbac_repositories_name ON rbac_repositories (name);

CREATE INDEX IF NOT EXISTS idx_rbac_repos_status ON rbac_repositories (status);
