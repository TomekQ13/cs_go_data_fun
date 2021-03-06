--------------------------------------------------------
--  File created - czwartek-października-08-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table IF_FINAL_DICTIONARY
--------------------------------------------------------

  CREATE TABLE "IF_FINAL_DICTIONARY" 
   (	"MATCH_URL" VARCHAR2(1024 CHAR), 
	"LEFT_TEAM" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM" VARCHAR2(255 BYTE), 
	"LEFT_TEAM_NATIONALITY" VARCHAR2(255 BYTE), 
	"LEFT_TEAM_MATCH_POINTS" VARCHAR2(255 BYTE), 
	"LEFT_TEAM_RANKING" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_NATIONALITY" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_MATCH_POINTS" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_RANKING" VARCHAR2(255 BYTE), 
	"TOURNAMENT" VARCHAR2(255 BYTE), 
	"HOUR_OF_MATCH" VARCHAR2(255 BYTE), 
	"DAY_OF_MATCH" VARCHAR2(255 BYTE), 
	"MONTH_OF_MATCH" VARCHAR2(255 BYTE), 
	"YEAR_OF_MATCH" VARCHAR2(255 BYTE), 
	"H2H_LEFT_TEAM_WINS" VARCHAR2(255 BYTE), 
	"H2H_RIGHT_TEAM_WINS" VARCHAR2(255 BYTE), 
	"OVERTIMES" VARCHAR2(255 BYTE), 
	"MATCH_TYPE" VARCHAR2(1024 BYTE), 
	"LEFT_TEAM_PLAYER_ONE" VARCHAR2(255 BYTE), 
	"LEFT_TEAM_PLAYER_TWO" VARCHAR2(255 BYTE), 
	"LEFT_TEAM_PLAYER_THREE" VARCHAR2(255 BYTE), 
	"LEFT_TEAM_PLAYER_FOUR" VARCHAR2(255 CHAR), 
	"LEFT_TEAM_PLAYER_FIVE" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_PLAYER_ONE" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_PLAYER_TWO" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_PLAYER_THREE" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_PLAYER_FOUR" VARCHAR2(255 BYTE), 
	"RIGHT_TEAM_PLAYER_FIVE" VARCHAR2(255 BYTE), 
	"T_INSERT_DTTM" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table IF_HEAD_TO_HEAD
--------------------------------------------------------

  CREATE TABLE "IF_HEAD_TO_HEAD" 
   (	"MATCH_URL" VARCHAR2(1024 CHAR), 
	"TEAM_LEFT" VARCHAR2(255 CHAR), 
	"TEAM_RIGHT" VARCHAR2(255 CHAR), 
	"MATCH_DATE" VARCHAR2(255 CHAR), 
	"TOURNAMENT" VARCHAR2(255 CHAR), 
	"MAP" VARCHAR2(255 CHAR), 
	"SCORE" VARCHAR2(255 CHAR), 
	"T_INSERT_DTTM" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IF_RESULTS_PDF
--------------------------------------------------------

  CREATE TABLE "IF_RESULTS_PDF" 
   (	"MATCH_URL" VARCHAR2(1024 CHAR), 
	"MAP_NAME" VARCHAR2(255 BYTE), 
	"MAP_NUMBER" VARCHAR2(255 BYTE), 
	"TEAM_LEFT_SCORE" VARCHAR2(255 BYTE), 
	"TEAM_RIGHT_SCORE" VARCHAR2(255 BYTE), 
	"T_INSERT_DTTM" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"   NO INMEMORY ;
--------------------------------------------------------
--  DDL for Table IF_TEAMS_PAST_MATCHES
--------------------------------------------------------

  CREATE TABLE "IF_TEAMS_PAST_MATCHES" 
   (	"MATCH_URL" VARCHAR2(1024 CHAR), 
	"TEAM" VARCHAR2(255 CHAR), 
	"TYPE" VARCHAR2(255 CHAR), 
	"OPPONENT" VARCHAR2(255 CHAR), 
	"RESULT" VARCHAR2(255 CHAR), 
	"T_INSERT_DTTM" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT current_timestamp
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table IF_FINAL_DICTIONARY
--------------------------------------------------------

  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("MATCH_URL" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_NATIONALITY" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_MATCH_POINTS" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_RANKING" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_NATIONALITY" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_MATCH_POINTS" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_RANKING" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("TOURNAMENT" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("HOUR_OF_MATCH" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("DAY_OF_MATCH" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("MONTH_OF_MATCH" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("YEAR_OF_MATCH" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("H2H_LEFT_TEAM_WINS" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("H2H_RIGHT_TEAM_WINS" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("OVERTIMES" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("MATCH_TYPE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_PLAYER_ONE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_PLAYER_TWO" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_PLAYER_THREE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_PLAYER_FOUR" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("LEFT_TEAM_PLAYER_FIVE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_PLAYER_ONE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_PLAYER_TWO" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_PLAYER_THREE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_PLAYER_FOUR" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("RIGHT_TEAM_PLAYER_FIVE" NOT NULL ENABLE);
  ALTER TABLE "IF_FINAL_DICTIONARY" MODIFY ("T_INSERT_DTTM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IF_HEAD_TO_HEAD
--------------------------------------------------------

  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("MATCH_URL" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("TEAM_LEFT" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("TEAM_RIGHT" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("MATCH_DATE" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("TOURNAMENT" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("MAP" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("SCORE" NOT NULL ENABLE);
  ALTER TABLE "IF_HEAD_TO_HEAD" MODIFY ("T_INSERT_DTTM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IF_RESULTS_PDF
--------------------------------------------------------

  ALTER TABLE "IF_RESULTS_PDF" MODIFY ("MAP_NAME" NOT NULL ENABLE);
  ALTER TABLE "IF_RESULTS_PDF" MODIFY ("MAP_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "IF_RESULTS_PDF" MODIFY ("TEAM_LEFT_SCORE" NOT NULL ENABLE);
  ALTER TABLE "IF_RESULTS_PDF" MODIFY ("TEAM_RIGHT_SCORE" NOT NULL ENABLE);
  ALTER TABLE "IF_RESULTS_PDF" MODIFY ("T_INSERT_DTTM" NOT NULL ENABLE);
  ALTER TABLE "IF_RESULTS_PDF" MODIFY ("MATCH_URL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IF_TEAMS_PAST_MATCHES
--------------------------------------------------------

  ALTER TABLE "IF_TEAMS_PAST_MATCHES" MODIFY ("MATCH_URL" NOT NULL ENABLE);
  ALTER TABLE "IF_TEAMS_PAST_MATCHES" MODIFY ("TEAM" NOT NULL ENABLE);
  ALTER TABLE "IF_TEAMS_PAST_MATCHES" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "IF_TEAMS_PAST_MATCHES" MODIFY ("OPPONENT" NOT NULL ENABLE);
  ALTER TABLE "IF_TEAMS_PAST_MATCHES" MODIFY ("RESULT" NOT NULL ENABLE);
  ALTER TABLE "IF_TEAMS_PAST_MATCHES" MODIFY ("T_INSERT_DTTM" NOT NULL ENABLE);
