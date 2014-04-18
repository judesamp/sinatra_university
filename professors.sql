/*
 Navicat SQLite Data Transfer

 Source Server         : su
 Source Server Version : 3008001
 Source Database       : main

 Target Server Version : 3008001
 File Encoding         : utf-8

 Date: 04/18/2014 07:47:52 AM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for professors
-- ----------------------------
DROP TABLE IF EXISTS "professors";
CREATE TABLE "professors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "yrs_experience" integer, "course_id" integer, "subject_id" integer);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("professors", '7');

-- ----------------------------
--  Records of professors
-- ----------------------------
BEGIN;
INSERT INTO "professors" VALUES (1, 'Rob', 'Nash', 15, 5, 5);
INSERT INTO "professors" VALUES (2, 'Steven', 'Sheeley', 10, 4, 5);
INSERT INTO "professors" VALUES (3, 'Mattie', 'Hart', 30, 2, 4);
INSERT INTO "professors" VALUES (4, 'Houston', 'Smith', 45, 0, 5);
INSERT INTO "professors" VALUES (5, 'Joe', 'Wilson', 28, 7, 1);
INSERT INTO "professors" VALUES (6, 'Jimmy', 'Surf', 1, 3, 3);
INSERT INTO "professors" VALUES (7, 'Jake', 'Tech', 3, 6, 2);
COMMIT;

PRAGMA foreign_keys = true;
