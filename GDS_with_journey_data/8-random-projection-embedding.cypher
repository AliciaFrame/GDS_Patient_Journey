//8 random projection embedding
CALL gds.alpha.randomProjection.write(
  'cypher_patient_graph',
  {
    maxIterations: 3,
    iterationWeights: [1.0, 1.0, 4.0],
    embeddingDimension: 10,
    normalizeL2: true,
    normalizationStrength: -0.9,
    writeProperty:'RP_embedding'
  }
)