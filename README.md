### Patient Journey Analysis with Neo4j, the Graph Data Science Library, and Bloom

This repo contains the sample code from the Graphs in Life Sciences presentation and demo, from Neo4j's [Connections: Graphs in Life Sciences & Healthcare](https://neo4j.com/connections/life-sciences-healthcare/) event. This contains sample data, the queries and algorithm calls run during the demo, and the Bloom perspective used.

To load the data, you can either:

1. download the neo4j.zip file from the data folder, unzip it, and place the contents of the folder in an empty neo4j database (under data/databases/neo4j), or 
2. you can use the code from our Solution Team's [Patient Journey Model Repo](https://github.com/Neo4jSolutions/patient-journey-model) to load generic Synthea patient journey data into Neo4j. I've provided the data files I used, but you can generate data directly from Synthea to match your needs, and use the scripts in that repo to load them into Neo4j.

To recreate my demo, once you've loaded your data, you can first run the cypher queries in the exploratory_queries folder, followed by the algorithm calls in the GDS_with_patient_journey folder. My Bloom perspective is loaded in as `PatientJourney_connections_Perspective.json`
