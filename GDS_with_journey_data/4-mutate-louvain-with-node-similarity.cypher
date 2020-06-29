//4 mutate louvain with node similarity
CALL gds.louvain.mutate('similarity_graph',{relationshipTypes:['SIMILAR'], relationshipWeightProperty:'SCORE', mutateProperty:'louvainCommunity'});