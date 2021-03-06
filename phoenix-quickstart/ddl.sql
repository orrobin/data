CREATE TABLE IF NOT EXISTS \"Customer\"(\"ROW_ID\" VARCHAR PRIMARY KEY, \"customer\".\"city\" VARCHAR, \"customer\".\"name\" VARCHAR, \"sales\".\"amount\" VARCHAR, \"sales\".\"product\" VARCHAR)
CREATE TABLE IF NOT EXISTS \"TypesTest\" (\"ROW_ID\" VARCHAR PRIMARY KEY, \"f\".\"q1\" VARCHAR, \"f\".\"q2\" VARBINARY, \"f\".\"q3\" VARCHAR, \"f\".\"q4\" BOOLEAN, \"f\".\"q5\" TINYINT, \"f\".\"q6\" TINYINT, \"f\".\"q7\" SMALLINT, \"f\".\"q8\" SMALLINT, \"f\".\"q9\" INTEGER, \"f\".\"q10\" INTEGER, \"f\".\"q11\" BIGINT, \"f\".\"q12\" BIGINT, \"f\".\"q13\" FLOAT, \"f\".\"q14\" FLOAT, \"f\".\"q15\" DOUBLE, \"f\".\"q16\" DECIMAL, \"f\".\"q17\" DECIMAL, \"f\".\"q18\" DATE, \"f\".\"q19\" TIME, \"f\".\"q20\" TIMESTAMP)
CREATE TABLE IF NOT EXISTS \"TimesTest\"(\"ROW_ID\" VARCHAR PRIMARY KEY, \"f\".\"column1\" DATE, \"f\".\"column2\" TIME, \"f\".\"column3\" TIMESTAMP)

UPSERT INTO \"Customer\" VALUES('101', 'Los Angeles, CA', 'John White', '$400.00', 'Chairs')
UPSERT INTO \"Customer\" VALUES('102', 'Atlanta, GA', 'Jane Brown', '$200.00', 'Lamps')
UPSERT INTO \"Customer\" VALUES('103', 'Pittsburgh, PA', 'Bill Green', '$500.00', 'Desk')
UPSERT INTO \"Customer\" VALUES('104', 'St. Louis, MO', 'Jack Black', '$8000.00', 'Bed')
UPSERT INTO \"Customer\" VALUES('105', 'Los Angeles, CA', 'John White', '$400.00', 'Chairs')
UPSERT INTO \"Customer\" VALUES('108', 'Beijing', 'Kylin Soong', '$8000.00', 'Crystal Orange')

SELECT * FROM \"Customer\"
SELECT \"city\", \"amount\" FROM \"Customer\"
SELECT DISTINCT \"city\" FROM \"Customer\"
SELECT \"city\", \"amount\" FROM \"Customer\" WHERE \"ROW_ID\"='105'

SELECT * FROM \"Customer\" WHERE \"ROW_ID\"='105' OR \"name\"='John White'
SELECT * FROM \"Customer\" WHERE \"ROW_ID\"='105' AND \"name\"='John White'
SELECT * FROM \"Customer\" WHERE \"ROW_ID\"='105' AND (\"name\"='John White' OR \"name\"='Kylin Soong')
