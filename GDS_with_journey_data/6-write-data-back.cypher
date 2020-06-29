// 6 write data back
CALL gds.graph.writeNodeProperties('similarity_graph',['louvainCommunity']);

CALL gds.graph.writeRelationship('similarity_graph','SIMILAR','SCORE');

CALL gds.graph.drop('similarity_graph')