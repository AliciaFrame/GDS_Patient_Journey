//7 patient to patient projection
CALL gds.graph.create.cypher(
	'cypher_patient_graph',
    'MATCH (p:Patient) RETURN id(p) as id',
    'MATCH (p1:Patient)-[]-(:Procedure)-[]-(p2:Patient) RETURN DISTINCT id(p1) as source, id(p2) as target'
)