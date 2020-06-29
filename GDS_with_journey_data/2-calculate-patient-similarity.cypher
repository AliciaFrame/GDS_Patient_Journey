//2 calculate patient similarity
CALL gds.nodeSimilarity.mutate('similarity_graph',{mutateRelationshipType:'SIMILAR',mutateProperty:'SCORE'})