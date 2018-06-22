-- Usando REGEXP no oracle SQL 
-- Using REGEXP in SQL Oracle

-- ^ -> matches the beginning of a string, a one or multiple character in the begin 
-- $ -> matches the end of a string,a one or  multiple character in the end
-- . -> matches any character 
--[any char or num ] --> matches a list of character or number 
-- + --> matches a one or many of occurrences of the previous subexpression
-- * --> matches a zero or many of occurrences of the previous subexpression
-- THIRD argument in REGEXP_LIKE --> 'c' -> default value .Case sensitive search in previous expression,
--in other words, if the value of a selected column is UPPERCASE ,then character in expression needs to be UPPERCASE 
-- 'i' - insensitive search in previous expreesion, desconsidering UPPERCASE or LOWERCASSE
-- 'n' -- allow period (.) --> example REGEXP_SUBSTR('a'||CHR(10)||'d', 'a.d', 1, 1, 'n')
-- 'm' -- allow the search with metacharacter ^ or $
-- 'x' -- ignores whitespaces characters  in the regular expression

--REGEXP_LIKE
--Show the String with first letter is j and last letter is a OR first letter = a and last letter = r
SELECT FIRST_NAME FROM EMPLOYEES WHERE REGEXP_LIKE(FIRST_NAME,'^j.*a$|^a.*r$','i');

-- Show the String with first letter that corresponds to one of the characters of a character list
-- followed by a any character(.) multiply by any occurrences (*)
-- and show in the end of a String, the last letter that that corresponds to one of the characters of a character list
SELECT FIRST_NAME FROM EMPLOYEES WHERE REGEXP_LIKE(FIRST_NAME,'^[aeiou].+[aeiou]$','i');


-- Show the String with first letter that NOT corresponds to one of the characters of a character list
SELECT FIRST_NAME FROM EMPLOYEES WHERE REGEXP_LIKE(FIRST_NAME,'^[^aeiou]','i');

-- Show the String with first letter that NOT corresponds to one of the characters of a character list
SELECT FIRST_NAME FROM EMPLOYEES WHERE REGEXP_LIKE(FIRST_NAME,'^[aeiou]');

-- Show the String with first letter that NOT corresponds to one of the characters of a character list
SELECT FIRST_NAME FROM EMPLOYEES WHERE REGEXP_LIKE(FIRST_NAME,'[aeiou]$','i');
