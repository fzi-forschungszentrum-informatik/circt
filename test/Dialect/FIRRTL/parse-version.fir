; RUN: circt-translate -import-firrtl -verify-diagnostics %s | circt-opt | FileCheck %s
FIRRTL version 1.1.0
circuit MyModule :     ; CHECK: firrtl.circuit "MyModule" {

  ; CHECK-LABEL: firrtl.module @MyModule(in %in: !firrtl.uint, out %out: !firrtl.uint<8>) {
  module MyModule :   @[FooBar.scala 369:27]
    input in: UInt
    output out: UInt<8>

    ; CHECK: %0 = firrtl.widthCast %in
    ; CHECK: firrtl.strictconnect %out, %0 : !firrtl.uint<8>
    out <= in

  ; CHECK: }
