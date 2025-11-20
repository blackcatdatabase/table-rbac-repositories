-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  rbac_repositories_sync_status
-- RBAC repository sync cursors (per peer)
CREATE OR REPLACE VIEW vw_rbac_sync_status AS
SELECT
  r.id AS repo_id,
  r.name AS repo_name,
  r.status AS repo_status,
  r.last_synced_at AS repo_last_sync,
  r.last_commit    AS repo_last_commit,
  c.peer,
  c.last_commit    AS peer_last_commit,
  c.last_synced_at AS peer_last_synced_at
FROM rbac_repositories r
LEFT JOIN rbac_sync_cursors c ON c.repo_id = r.id
ORDER BY r.id, c.peer;

