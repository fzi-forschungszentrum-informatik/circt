add_circt_dialect_library(CIRCTFIRRTLTransforms
  AddSeqMemPorts.cpp
  BlackBoxReader.cpp
  CheckCombCycles.cpp
  CheckCombLoops.cpp
  CreateSiFiveMetadata.cpp
  Dedup.cpp
  DropConst.cpp
  DropName.cpp
  EmitOMIR.cpp
  ExpandWhens.cpp
  ExtractInstances.cpp
  FlattenMemory.cpp
  FinalizeIR.cpp
  GrandCentral.cpp
  IMConstProp.cpp
  IMDeadCodeElim.cpp
  InferResets.cpp
  InferReadWrite.cpp
  InferWidths.cpp
  InjectDUTHierarchy.cpp
  InnerSymbolDCE.cpp
  LegacyWiring.cpp
  LowerAnnotations.cpp
  LowerCHIRRTL.cpp
  LowerIntrinsics.cpp
  LowerMatches.cpp
  LowerMemory.cpp
  LowerOpenAggs.cpp
  LowerTypes.cpp
  LowerXMR.cpp
  MergeConnections.cpp
  MemToRegOfVec.cpp
  ModuleInliner.cpp
  PrefixModules.cpp
  PrintFIRRTLFieldSource.cpp
  PrintInstanceGraph.cpp
  PrintNLATable.cpp
  RandomizeRegisterInit.cpp
  RegisterOptimizer.cpp
  ResolveTraces.cpp
  RemoveUnusedPorts.cpp
  SFCCompat.cpp
  VBToBV.cpp
  Vectorization.cpp
  WireDFT.cpp

  DEPENDS
  CIRCTFIRRTLTransformsIncGen

  LINK_LIBS PUBLIC
  CIRCTFIRRTL
  CIRCTHW
  CIRCTOM
  CIRCTSV
  CIRCTSupport
  MLIRIR
  MLIRPass
  MLIRTransformUtils
)
