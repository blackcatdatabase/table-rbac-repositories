-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  rbac_repositories

-- Contract view for [rbac_repositories]
CREATE OR REPLACE VIEW vw_rbac_repositories AS
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
