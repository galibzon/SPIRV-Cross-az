import typetraits, macros
macro cpp2nimRef*(procDef: untyped): untyped =
  result = procDef
macro cpp2nimCopy*(procDef: untyped): untyped =
  result = procDef
proc cppnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}
type cwchar* {.importcpp:"wchar_t".} = object
type constType* {.importcpp:"'0 const".} [T] = object
proc constify*[T](x: var T): var constType[T] {.importcpp:"const_cast<'0>(@)".}
proc constify*[T](x: ptr T): ptr constType[T] {.importcpp:"const_cast<'0>(@)".}
proc constify*[T](x: T): constType[T] {.importcpp:"const_cast<'0>(@)".}
proc deconstify*[T](x: var constType[T]): var T {.importcpp:"const_cast<'0>(@)".}
proc deconstify*[T](x: ptr constType[T]): ptr T {.importcpp:"const_cast<'0>(@)".}
proc deconstify*[T](x: constType[T]): T {.importcpp:"const_cast<'0>(@)".}
proc `@`*[T](c: var T): var constType[T] {.importcpp:"const_cast<'0>(@)".}
proc `@`*[T](c: var constType[T]): var T {.importcpp:"const_cast<'0>(@)".}
type
  ConstPtr = concept x
    type T1 = auto
    x is ptr constType[T1]
  ConstVar = concept x
    type T1 = auto
    x is var constType[T1]
  ConstObj = concept x
    type T1 = auto
    x is constType[T1]
macro stripConstTypeInternal(x: untyped): untyped =
  result = x[0][1]
template stripConstType*(x: untyped): untyped =
  when x is ConstPtr:
    stripConstTypeInternal(x)
  elif x is ConstVar:
    stripConstTypeInternal(x)
  elif x is ConstObj:
    stripConstTypeInternal(x)
  else:
    type(x)
template constnessExport*(x: untyped, inputType: untyped, outputType: untyped): untyped =
  when inputType is ConstPtr and outputType is not ConstPtr:
    deconstify(x)
  elif inputType is ConstVar and outputType is not ConstVar:
    deconstify(x)   
  elif inputType is ConstObj and outputType is not ConstObj:
    deconstify(x)
  elif outputType is ConstPtr and inputType is not ConstPtr:
    constify(x)
  elif outputType is ConstVar and inputType is not ConstVar:
    constify(x)
  elif outputType is ConstObj and inputType is not ConstObj:
    constify(x)
  else:
    x
