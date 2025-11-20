-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  rbac_repositories
ALTER TABLE rbac_repositories ADD CONSTRAINT fk_rbac_repos_sign_key FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
