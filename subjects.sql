/*
 Navicat SQLite Data Transfer

 Source Server         : su
 Source Server Version : 3008001
 Source Database       : main

 Target Server Version : 3008001
 File Encoding         : utf-8

 Date: 04/18/2014 07:48:54 AM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS "subjects";
CREATE TABLE "subjects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255));
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("subjects", '6');

-- ----------------------------
--  Records of subjects
-- ----------------------------
BEGIN;
INSERT INTO "subjects" VALUES (1, 'English');
INSERT INTO "subjects" VALUES (2, 'Math');
INSERT INTO "subjects" VALUES (3, 'P.E.');
INSERT INTO "subjects" VALUES (4, 'Philosophy');
INSERT INTO "subjects" VALUES (5, 'Religion');
INSERT INTO "subjects" VALUES (6, 'History');
COMMIT;

PRAGMA foreign_keys = true;
