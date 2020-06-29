//3 find a patient journey with readmissions
MATCH(e1:Encounter)<-[:HAS_ENCOUNTER]-(p:Patient)-[:HAS_ENCOUNTER]->(e2:Encounter)
WHERE e1.class='inpatient' and e2.class='inpatient'
AND abs(e2.date - e1.date)<2592000000 WITH p LIMIT 1
MATCH journey= ((p:Patient)-[:HAS_ENCOUNTER]->(e:Encounter)-[:NEXT]->())
RETURN journey