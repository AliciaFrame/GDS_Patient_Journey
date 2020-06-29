//4 why are patients being readmitted
MATCH(e1:Encounter)<-[:HAS_ENCOUNTER]-(p:Patient)-[:HAS_ENCOUNTER]->(e2:Encounter)
WHERE e1.class='inpatient' and e2.class='inpatient'
AND abs(e2.date - e1.date)<2592000000 
WITH p, e1, e2 
MATCH (c1:Condition)<-[:HAS_CONDITION]-(e1)<-[:HAS_ENCOUNTER]-(p)-[:HAS_ENCOUNTER]->(e2)-[:HAS_CONDITION]->(c2:Condition)
RETURN p.id, c1.description, c2.description