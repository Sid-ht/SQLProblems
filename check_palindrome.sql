Q. Write a SQL query to find out palindromes from the below employee table.

create table employee(id number);
INSERT ALL
INTO employee VALUES('1')
INTO employee VALUES('12')
INTO employee VALUES('11')
INTO employee VALUES('222')
INTO employee VALUES('232')
INTO employee VALUES('123')
INTO employee VALUES('4334')
INTO employee VALUES('5678')
SELECT * FROM DUAL;

Query:
select id from
(
select id,
case
when length(id)=1 then 'true'
when (substr(id,1,1) = substr(id,-1,1)) and (substr(id,2,1) = substr(substr(id,-2),1,1)) then 'true' else 'false'
end palindrome
from employee
)
where palindrome = 'true';

Output:
ID
1
11
222
232
4334
