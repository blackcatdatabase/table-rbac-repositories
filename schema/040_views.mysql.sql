-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
-- engine: mysql
-- table:  rbac_repositories

-- Contract view for [rbac_repositories]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_rbac_repositories AS
SELECT
  id,
  name,
  url,
  status,
  signing_key_id,
  last_synced_at,
  last_commit,
  created_at
FROM rbac_repositories;
