//9a cosine similarity with embeddings
MATCH (p:Patient) 
WITH id(p) as id, p.RP_embedding as weights 
WITH {item:id, weights: [value in weights | toFloat(value)]} as patientData 
WITH collect(patientData) as data 
CALL gds.alpha.similarity.cosine.write({
    nodeProjection: '*', 
    relationshipProjection: '*', 
    similarityCutoff:0.5, 
    topK:10, 
    data: data,     writeRelationshipType:'EMBEDDING_SIMILARITY'}) 
YIELD nodes, similarityPairs 
RETURN nodes, similarityPairs