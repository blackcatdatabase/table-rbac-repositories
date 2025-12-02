-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  rbac_repositories

ALTER TABLE rbac_repositories ADD CONSTRAINT fk_rbac_repos_sign_key FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
