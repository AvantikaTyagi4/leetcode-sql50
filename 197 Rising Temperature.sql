SELECT b.id
FROM weather a JOIN weather b
ON a.recordDate = b.recordDate -1
WHERE b.temperature > a.temperature;
