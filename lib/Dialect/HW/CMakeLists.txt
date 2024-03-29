set(LLVM_OPTIONAL_SOURCES
  HWReductions.cpp
)

add_circt_dialect_library(CIRCTHW
  CustomDirectiveImpl.cpp
  HWAttributes.cpp
  HWDialect.cpp
  HWInstanceGraph.cpp
  HWOpInterfaces.cpp
  HWOps.cpp
  HWTypeInterfaces.cpp
  HWTypes.cpp
  InstanceGraphBase.cpp
  InstanceImplementation.cpp
  ModuleImplementation.cpp
  InnerSymbolTable.cpp

  ADDITIONAL_HEADER_DIRS
  ${CIRCT_MAIN_INCLUDE_DIR}/circt/Dialect/HW

  DEPENDS
  MLIRHWIncGen
  MLIRHWAttrIncGen
  MLIRHWEnumsIncGen

  LINK_COMPONENTS
  Support

  LINK_LIBS PUBLIC
  CIRCTSupport
  MLIRIR
  MLIRInferTypeOpInterface
)

add_circt_library(CIRCTHWReductions
  HWReductions.cpp

  LINK_LIBS PUBLIC
  CIRCTReduceLib
  CIRCTHW
  MLIRIR
)

add_subdirectory(Transforms)
