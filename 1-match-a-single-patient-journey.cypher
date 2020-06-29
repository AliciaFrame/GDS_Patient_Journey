//1 Match a single patient journey
MATCH (p:Patient)
WITH p LIMIT 1
MATCH journey=((p:Patient)-[:HAS_ENCOUNTER]->(e1:Encounter)-[:NEXT*]->())
WHERE size(()-[:NEXT]->(e1)) = 0
RETURN journey