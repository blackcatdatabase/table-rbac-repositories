-- Auto-generated from feature-modules-postgres.yaml (map@sha1:E21F17850CEF9511C760F725ABF4C7D45DC351E4)
-- engine: postgres
-- table:  rbac_sync_cursors_status

CREATE OR REPLACE VIEW vw_rbac_sync_cursors_status AS
SELECT
  r.id AS repo_id,
  r.name AS repo_name,
  c.peer           AS cursor_name,
  c.last_commit    AS cursor_value,
  c.last_synced_at AS updated_at
FROM rbac_repositories r
LEFT JOIN rbac_sync_cursors c ON c.repo_id = r.id;
