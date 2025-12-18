-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  rbac_repositories

CREATE TABLE IF NOT EXISTS rbac_repositories (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  url VARCHAR(1024) NULL,
  signing_key_id BIGINT UNSIGNED NULL,
  status ENUM('active','disabled') NOT NULL DEFAULT 'active',
  last_synced_at DATETIME(6) NULL,
  last_commit VARCHAR(128) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY ux_rbac_repositories_name (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
