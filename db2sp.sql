CREATE PROCEDURE db2sp
  (IN  EMPNO CHAR(6),
   INOUT SQLCD    INT ,
   OUT FIRSTNME CHAR(12),
   OUT LASTNAME CHAR(15),
   OUT HIREDATE CHAR(10),
   OUT SALARY   DEC(9,2) )
   DYNAMIC RESULT SETS 1
     LANGUAGE COBOL
     PARAMETER STYLE GENERAL
     NO DBINFO
     FENCED
     NOT THREADSAFE
     READS SQL DATA
     PROGRAM TYPE SUB
     EXTERNAL NAME "db2sp!db2sp"@
