//1 load similarity graph
CALL gds.graph.create('similarity_graph',['Patient','Drug','Procedure','Condition'],['PRESCRIBED','HAS_PROCEDURE','DIAGNOSED_WITH'])