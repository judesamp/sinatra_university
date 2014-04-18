/*
 Navicat SQLite Data Transfer

 Source Server         : su
 Source Server Version : 3008001
 Source Database       : main

 Target Server Version : 3008001
 File Encoding         : utf-8

 Date: 04/18/2014 07:44:28 AM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS "courses";
CREATE TABLE "courses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "course_number" integer, "last_semester_taught" varchar(255), "next_semester_taught" varchar(255), "subject_id" integer, "professor_id" integer);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("courses", '7');

-- ----------------------------
--  Records of courses
-- ----------------------------
BEGIN;
INSERT INTO "courses" VALUES (1, 'American History 1885-1889', 345, 'Spring 2014', 'Winter 2013', 6, 1);
INSERT INTO "courses" VALUES (2, 'Philosophy 101', 299, 'Spring 2012', 'Fall 2015', 4, 3);
INSERT INTO "courses" VALUES (3, 'Basket Weaving', 342, 'Winter 2011', 'Fall 2014', 3, 6);
INSERT INTO "courses" VALUES (4, 'Christian History', 111, 'Winter 2012', 'Fall 2015', 5, 2);
INSERT INTO "courses" VALUES (5, 'Buddhism', 101, 'Winter 2013', 'Fall 2014', 5, 4);
INSERT INTO "courses" VALUES (6, 'Algebra', 101, 'Winter 2013', 'Fall 2014', 2, 7);
INSERT INTO "courses" VALUES (7, 'English Literature', 101, 'Winter 2013', 'Fall 2014', 1, 5);
COMMIT;

PRAGMA foreign_keys = true;
