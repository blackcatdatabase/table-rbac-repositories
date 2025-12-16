-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  rbac_repositories

ALTER TABLE rbac_repositories ADD CONSTRAINT fk_rbac_repos_sign_key FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
