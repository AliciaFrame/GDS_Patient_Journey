//2 patient journey with bonchitis
MATCH(p:Patient)-[:HAS_ENCOUNTER]-(e:Encounter)-[:HAS_CONDITION]-(c:Condition)
WHERE c.description="Acute bronchitis (disorder)"
WITH p LIMIT 1
MATCH journey=((p:Patient)-[:HAS_ENCOUNTER]->(e1:Encounter)-[:NEXT*]->())
WHERE size(()-[:NEXT]->(e1)) = 0
RETURN journey