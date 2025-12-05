-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  rbac_repositories

ALTER TABLE rbac_repositories ADD CONSTRAINT fk_rbac_repos_sign_key FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
