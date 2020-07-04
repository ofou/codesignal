CREATE PROCEDURE combinationLock() BEGIN
SELECT ROUND(EXP(SUM(LOG(length(characters))))) as combinations
FROM discs;
END