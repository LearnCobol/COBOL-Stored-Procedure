IF EXIST  %1.cbl (DEL  %1.cbl)
IF EXIST  %1 (DEL  %1)
IF EXIST  %1.dll (DEL  %1.dll)
IF EXIST  %1.i (DEL  %1.i)
IF EXIST  %1.h (DEL  %1.h)

db2 connect to sample
db2 prep %1.sqb bindfile target ibmcob
cobc -static -fimplicit-init  -std=ibm -o %1.dll %1.cbl "C:\Program Files\IBM\SQLLIB\lib\db2api.lib" -O -b -v
db2 bind %1.bnd
db2 connect reset
DEL /f "C:\Program Files\IBM\SQLLIB\FUNCTION\%1.dll"
COPY %1.dll "C:\Program Files\IBM\SQLLIB\FUNCTION\"