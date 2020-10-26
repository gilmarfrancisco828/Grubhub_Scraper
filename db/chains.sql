PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE chains
                                (id VARCHAR(100) PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL);
COMMIT;
