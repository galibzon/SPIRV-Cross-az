import cpp_utilities, cccobject
# Types:
type spvSourceLanguage* {.pure, exportc, importcpp:"spv::SourceLanguage".} = enum
    SourceLanguageUnknown = 0, SourceLanguageESSL = 1, SourceLanguageGLSL = 2, SourceLanguageOpenCLC = 3, SourceLanguageOpenCLCPP = 4, SourceLanguageHLSL = 5, SourceLanguageMax = 2147483647
type spvExecutionModel* {.pure, exportc, importcpp:"spv::ExecutionModel".} = enum
    ExecutionModelVertex = 0, ExecutionModelTessellationControl = 1, ExecutionModelTessellationEvaluation = 2, ExecutionModelGeometry = 3, ExecutionModelFragment = 4, ExecutionModelGLCompute = 5, ExecutionModelKernel = 6, ExecutionModelMax = 2147483647
type spvAddressingModel* {.pure, exportc, importcpp:"spv::AddressingModel".} = enum
    AddressingModelLogical = 0, AddressingModelPhysical32 = 1, AddressingModelPhysical64 = 2, AddressingModelMax = 2147483647
type spvMemoryModel* {.pure, exportc, importcpp:"spv::MemoryModel".} = enum
    MemoryModelSimple = 0, MemoryModelGLSL450 = 1, MemoryModelOpenCL = 2, MemoryModelMax = 2147483647
type spvExecutionMode* {.pure, exportc, importcpp:"spv::ExecutionMode".} = enum
    ExecutionModeInvocations = 0, ExecutionModeSpacingEqual = 1, ExecutionModeSpacingFractionalEven = 2, ExecutionModeSpacingFractionalOdd = 3, ExecutionModeVertexOrderCw = 4, ExecutionModeVertexOrderCcw = 5, ExecutionModePixelCenterInteger = 6, ExecutionModeOriginUpperLeft = 7, ExecutionModeOriginLowerLeft = 8, ExecutionModeEarlyFragmentTests = 9, ExecutionModePointMode = 10, ExecutionModeXfb = 11, ExecutionModeDepthReplacing = 12, ExecutionModeDepthGreater = 14, ExecutionModeDepthLess = 15, ExecutionModeDepthUnchanged = 16, ExecutionModeLocalSize = 17, ExecutionModeLocalSizeHint = 18, ExecutionModeInputPoints = 19, ExecutionModeInputLines = 20, ExecutionModeInputLinesAdjacency = 21, ExecutionModeTriangles = 22, ExecutionModeInputTrianglesAdjacency = 23, ExecutionModeQuads = 24, ExecutionModeIsolines = 25, ExecutionModeOutputVertices = 26, ExecutionModeOutputPoints = 27, ExecutionModeOutputLineStrip = 28, ExecutionModeOutputTriangleStrip = 29, ExecutionModeVecTypeHint = 30, ExecutionModeContractionOff = 31, ExecutionModeMax = 2147483647
type spvStorageClass* {.pure, exportc, importcpp:"spv::StorageClass".} = enum
    StorageClassUniformConstant = 0, StorageClassInput = 1, StorageClassUniform = 2, StorageClassOutput = 3, StorageClassWorkgroup = 4, StorageClassCrossWorkgroup = 5, StorageClassPrivate = 6, StorageClassFunction = 7, StorageClassGeneric = 8, StorageClassPushConstant = 9, StorageClassAtomicCounter = 10, StorageClassImage = 11, StorageClassStorageBuffer = 12, StorageClassMax = 2147483647
type spvDim* {.pure, exportc, importcpp:"spv::Dim".} = enum
    Dim1D = 0, Dim2D = 1, Dim3D = 2, DimCube = 3, DimRect = 4, DimBuffer = 5, DimSubpassData = 6, DimMax = 2147483647
type spvSamplerAddressingMode* {.pure, exportc, importcpp:"spv::SamplerAddressingMode".} = enum
    SamplerAddressingModeNone = 0, SamplerAddressingModeClampToEdge = 1, SamplerAddressingModeClamp = 2, SamplerAddressingModeRepeat = 3, SamplerAddressingModeRepeatMirrored = 4, SamplerAddressingModeMax = 2147483647
type spvSamplerFilterMode* {.pure, exportc, importcpp:"spv::SamplerFilterMode".} = enum
    SamplerFilterModeNearest = 0, SamplerFilterModeLinear = 1, SamplerFilterModeMax = 2147483647
type spvImageFormat* {.pure, exportc, importcpp:"spv::ImageFormat".} = enum
    ImageFormatUnknown = 0, ImageFormatRgba32f = 1, ImageFormatRgba16f = 2, ImageFormatR32f = 3, ImageFormatRgba8 = 4, ImageFormatRgba8Snorm = 5, ImageFormatRg32f = 6, ImageFormatRg16f = 7, ImageFormatR11fG11fB10f = 8, ImageFormatR16f = 9, ImageFormatRgba16 = 10, ImageFormatRgb10A2 = 11, ImageFormatRg16 = 12, ImageFormatRg8 = 13, ImageFormatR16 = 14, ImageFormatR8 = 15, ImageFormatRgba16Snorm = 16, ImageFormatRg16Snorm = 17, ImageFormatRg8Snorm = 18, ImageFormatR16Snorm = 19, ImageFormatR8Snorm = 20, ImageFormatRgba32i = 21, ImageFormatRgba16i = 22, ImageFormatRgba8i = 23, ImageFormatR32i = 24, ImageFormatRg32i = 25, ImageFormatRg16i = 26, ImageFormatRg8i = 27, ImageFormatR16i = 28, ImageFormatR8i = 29, ImageFormatRgba32ui = 30, ImageFormatRgba16ui = 31, ImageFormatRgba8ui = 32, ImageFormatR32ui = 33, ImageFormatRgb10a2ui = 34, ImageFormatRg32ui = 35, ImageFormatRg16ui = 36, ImageFormatRg8ui = 37, ImageFormatR16ui = 38, ImageFormatR8ui = 39, ImageFormatMax = 2147483647
type spvImageChannelOrder* {.pure, exportc, importcpp:"spv::ImageChannelOrder".} = enum
    ImageChannelOrderR = 0, ImageChannelOrderA = 1, ImageChannelOrderRG = 2, ImageChannelOrderRA = 3, ImageChannelOrderRGB = 4, ImageChannelOrderRGBA = 5, ImageChannelOrderBGRA = 6, ImageChannelOrderARGB = 7, ImageChannelOrderIntensity = 8, ImageChannelOrderLuminance = 9, ImageChannelOrderRx = 10, ImageChannelOrderRGx = 11, ImageChannelOrderRGBx = 12, ImageChannelOrderDepth = 13, ImageChannelOrderDepthStencil = 14, ImageChannelOrdersRGB = 15, ImageChannelOrdersRGBx = 16, ImageChannelOrdersRGBA = 17, ImageChannelOrdersBGRA = 18, ImageChannelOrderABGR = 19, ImageChannelOrderMax = 2147483647
type spvImageChannelDataType* {.pure, exportc, importcpp:"spv::ImageChannelDataType".} = enum
    ImageChannelDataTypeSnormInt8 = 0, ImageChannelDataTypeSnormInt16 = 1, ImageChannelDataTypeUnormInt8 = 2, ImageChannelDataTypeUnormInt16 = 3, ImageChannelDataTypeUnormShort565 = 4, ImageChannelDataTypeUnormShort555 = 5, ImageChannelDataTypeUnormInt101010 = 6, ImageChannelDataTypeSignedInt8 = 7, ImageChannelDataTypeSignedInt16 = 8, ImageChannelDataTypeSignedInt32 = 9, ImageChannelDataTypeUnsignedInt8 = 10, ImageChannelDataTypeUnsignedInt16 = 11, ImageChannelDataTypeUnsignedInt32 = 12, ImageChannelDataTypeHalfFloat = 13, ImageChannelDataTypeFloat = 14, ImageChannelDataTypeUnormInt24 = 15, ImageChannelDataTypeUnormInt1010102 = 16, ImageChannelDataTypeMax = 2147483647
type spvImageOperandsShift* {.pure, exportc, importcpp:"spv::ImageOperandsShift".} = enum
    ImageOperandsBiasShift = 0, ImageOperandsLodShift = 1, ImageOperandsGradShift = 2, ImageOperandsConstOffsetShift = 3, ImageOperandsOffsetShift = 4, ImageOperandsConstOffsetsShift = 5, ImageOperandsSampleShift = 6, ImageOperandsMinLodShift = 7, ImageOperandsMax = 2147483647
type spvImageOperandsMask* {.pure, exportc, importcpp:"spv::ImageOperandsMask".} = enum
    ImageOperandsMaskNone = 0, ImageOperandsBiasMask = 1, ImageOperandsLodMask = 2, ImageOperandsGradMask = 4, ImageOperandsConstOffsetMask = 8, ImageOperandsOffsetMask = 16, ImageOperandsConstOffsetsMask = 32, ImageOperandsSampleMask = 64, ImageOperandsMinLodMask = 128
type spvFPFastMathModeShift* {.pure, exportc, importcpp:"spv::FPFastMathModeShift".} = enum
    FPFastMathModeNotNaNShift = 0, FPFastMathModeNotInfShift = 1, FPFastMathModeNSZShift = 2, FPFastMathModeAllowRecipShift = 3, FPFastMathModeFastShift = 4, FPFastMathModeMax = 2147483647
type spvFPFastMathModeMask* {.pure, exportc, importcpp:"spv::FPFastMathModeMask".} = enum
    FPFastMathModeMaskNone = 0, FPFastMathModeNotNaNMask = 1, FPFastMathModeNotInfMask = 2, FPFastMathModeNSZMask = 4, FPFastMathModeAllowRecipMask = 8, FPFastMathModeFastMask = 16
type spvFPRoundingMode* {.pure, exportc, importcpp:"spv::FPRoundingMode".} = enum
    FPRoundingModeRTE = 0, FPRoundingModeRTZ = 1, FPRoundingModeRTP = 2, FPRoundingModeRTN = 3, FPRoundingModeMax = 2147483647
type spvLinkageType* {.pure, exportc, importcpp:"spv::LinkageType".} = enum
    LinkageTypeExport = 0, LinkageTypeImport = 1, LinkageTypeMax = 2147483647
type spvAccessQualifier* {.pure, exportc, importcpp:"spv::AccessQualifier".} = enum
    AccessQualifierReadOnly = 0, AccessQualifierWriteOnly = 1, AccessQualifierReadWrite = 2, AccessQualifierMax = 2147483647
type spvFunctionParameterAttribute* {.pure, exportc, importcpp:"spv::FunctionParameterAttribute".} = enum
    FunctionParameterAttributeZext = 0, FunctionParameterAttributeSext = 1, FunctionParameterAttributeByVal = 2, FunctionParameterAttributeSret = 3, FunctionParameterAttributeNoAlias = 4, FunctionParameterAttributeNoCapture = 5, FunctionParameterAttributeNoWrite = 6, FunctionParameterAttributeNoReadWrite = 7, FunctionParameterAttributeMax = 2147483647
type spvDecoration* {.pure, exportc, importcpp:"spv::Decoration".} = enum
    DecorationRelaxedPrecision = 0, DecorationSpecId = 1, DecorationBlock = 2, DecorationBufferBlock = 3, DecorationRowMajor = 4, DecorationColMajor = 5, DecorationArrayStride = 6, DecorationMatrixStride = 7, DecorationGLSLShared = 8, DecorationGLSLPacked = 9, DecorationCPacked = 10, DecorationBuiltIn = 11, DecorationNoPerspective = 13, DecorationFlat = 14, DecorationPatch = 15, DecorationCentroid = 16, DecorationSample = 17, DecorationIncvariant = 18, DecorationRestrict = 19, DecorationAliased = 20, DecorationVolatile = 21, DecorationConstant = 22, DecorationCoherent = 23, DecorationNonWritable = 24, DecorationNonReadable = 25, DecorationUniform = 26, DecorationSaturatedConversion = 28, DecorationStream = 29, DecorationLocation = 30, DecorationComponent = 31, DecorationIndex = 32, DecorationBinding = 33, DecorationDescriptorSet = 34, DecorationOffset = 35, DecorationXfbBuffer = 36, DecorationXfbStride = 37, DecorationFuncParamAttr = 38, DecorationFPRoundingMode = 39, DecorationFPFastMathMode = 40, DecorationLinkageAttributes = 41, DecorationNoContraction = 42, DecorationInputAttachmentIndex = 43, DecorationAlignment = 44, DecorationOverrideCoverageNV = 5248, DecorationPassthroughNV = 5250, DecorationViewportRelativeNV = 5252, DecorationSecondaryViewportRelativeNV = 5256, DecorationMax = 2147483647
type spvBuiltIn* {.pure, exportc, importcpp:"spv::BuiltIn".} = enum
    BuiltInPosition = 0, BuiltInPointSize = 1, BuiltInClipDistance = 3, BuiltInCullDistance = 4, BuiltInVertexId = 5, BuiltInInstanceId = 6, BuiltInPrimitiveId = 7, BuiltInInvocationId = 8, BuiltInLayer = 9, BuiltInViewportIndex = 10, BuiltInTessLevelOuter = 11, BuiltInTessLevelInner = 12, BuiltInTessCoord = 13, BuiltInPatchVertices = 14, BuiltInFragCoord = 15, BuiltInPointCoord = 16, BuiltInFrontFacing = 17, BuiltInSampleId = 18, BuiltInSamplePosition = 19, BuiltInSampleMask = 20, BuiltInFragDepth = 22, BuiltInHelperInvocation = 23, BuiltInNumWorkgroups = 24, BuiltInWorkgroupSize = 25, BuiltInWorkgroupId = 26, BuiltInLocalInvocationId = 27, BuiltInGlobalInvocationId = 28, BuiltInLocalInvocationIndex = 29, BuiltInWorkDim = 30, BuiltInGlobalSize = 31, BuiltInEnqueuedWorkgroupSize = 32, BuiltInGlobalOffset = 33, BuiltInGlobalLinearId = 34, BuiltInSubgroupSize = 36, BuiltInSubgroupMaxSize = 37, BuiltInNumSubgroups = 38, BuiltInNumEnqueuedSubgroups = 39, BuiltInSubgroupId = 40, BuiltInSubgroupLocalInvocationId = 41, BuiltInVertexIndex = 42, BuiltInInstanceIndex = 43, BuiltInSubgroupEqMaskKHR = 4416, BuiltInSubgroupGeMaskKHR = 4417, BuiltInSubgroupGtMaskKHR = 4418, BuiltInSubgroupLeMaskKHR = 4419, BuiltInSubgroupLtMaskKHR = 4420, BuiltInBaseVertex = 4424, BuiltInBaseInstance = 4425, BuiltInDrawIndex = 4426, BuiltInDeviceIndex = 4438, BuiltInViewIndex = 4440, BuiltInViewportMaskNV = 5253, BuiltInSecondaryPositionNV = 5257, BuiltInSecondaryViewportMaskNV = 5258, BuiltInPositionPerViewNV = 5261, BuiltInViewportMaskPerViewNV = 5262, BuiltInMax = 2147483647
type spvSelectionControlShift* {.pure, exportc, importcpp:"spv::SelectionControlShift".} = enum
    SelectionControlFlattenShift = 0, SelectionControlDontFlattenShift = 1, SelectionControlMax = 2147483647
type spvSelectionControlMask* {.pure, exportc, importcpp:"spv::SelectionControlMask".} = enum
    SelectionControlMaskNone = 0, SelectionControlFlattenMask = 1, SelectionControlDontFlattenMask = 2
type spvLoopControlShift* {.pure, exportc, importcpp:"spv::LoopControlShift".} = enum
    LoopControlUnrollShift = 0, LoopControlDontUnrollShift = 1, LoopControlMax = 2147483647
type spvLoopControlMask* {.pure, exportc, importcpp:"spv::LoopControlMask".} = enum
    LoopControlMaskNone = 0, LoopControlUnrollMask = 1, LoopControlDontUnrollMask = 2
type spvFunctionControlShift* {.pure, exportc, importcpp:"spv::FunctionControlShift".} = enum
    FunctionControlInlineShift = 0, FunctionControlDontInlineShift = 1, FunctionControlPureShift = 2, FunctionControlConstShift = 3, FunctionControlMax = 2147483647
type spvFunctionControlMask* {.pure, exportc, importcpp:"spv::FunctionControlMask".} = enum
    FunctionControlMaskNone = 0, FunctionControlInlineMask = 1, FunctionControlDontInlineMask = 2, FunctionControlPureMask = 4, FunctionControlConstMask = 8
type spvMemorySemanticsShift* {.pure, exportc, importcpp:"spv::MemorySemanticsShift".} = enum
    MemorySemanticsAcquireShift = 1, MemorySemanticsReleaseShift = 2, MemorySemanticsAcquireReleaseShift = 3, MemorySemanticsSequentiallyConsistentShift = 4, MemorySemanticsUniformMemoryShift = 6, MemorySemanticsSubgroupMemoryShift = 7, MemorySemanticsWorkgroupMemoryShift = 8, MemorySemanticsCrossWorkgroupMemoryShift = 9, MemorySemanticsAtomicCounterMemoryShift = 10, MemorySemanticsImageMemoryShift = 11, MemorySemanticsMax = 2147483647
type spvMemorySemanticsMask* {.pure, exportc, importcpp:"spv::MemorySemanticsMask".} = enum
    MemorySemanticsMaskNone = 0, MemorySemanticsAcquireMask = 2, MemorySemanticsReleaseMask = 4, MemorySemanticsAcquireReleaseMask = 8, MemorySemanticsSequentiallyConsistentMask = 16, MemorySemanticsUniformMemoryMask = 64, MemorySemanticsSubgroupMemoryMask = 128, MemorySemanticsWorkgroupMemoryMask = 256, MemorySemanticsCrossWorkgroupMemoryMask = 512, MemorySemanticsAtomicCounterMemoryMask = 1024, MemorySemanticsImageMemoryMask = 2048
type spvMemoryAccessShift* {.pure, exportc, importcpp:"spv::MemoryAccessShift".} = enum
    MemoryAccessVolatileShift = 0, MemoryAccessAlignedShift = 1, MemoryAccessNontemporalShift = 2, MemoryAccessMax = 2147483647
type spvMemoryAccessMask* {.pure, exportc, importcpp:"spv::MemoryAccessMask".} = enum
    MemoryAccessMaskNone = 0, MemoryAccessVolatileMask = 1, MemoryAccessAlignedMask = 2, MemoryAccessNontemporalMask = 4
type spvScope* {.pure, exportc, importcpp:"spv::Scope".} = enum
    ScopeCrossDevice = 0, ScopeDevice = 1, ScopeWorkgroup = 2, ScopeSubgroup = 3, ScopeInvocation = 4, ScopeMax = 2147483647
type spvGroupOperation* {.pure, exportc, importcpp:"spv::GroupOperation".} = enum
    GroupOperationReduce = 0, GroupOperationInclusiveScan = 1, GroupOperationExclusiveScan = 2, GroupOperationMax = 2147483647
type spvKernelEnqueueFlags* {.pure, exportc, importcpp:"spv::KernelEnqueueFlags".} = enum
    KernelEnqueueFlagsNoWait = 0, KernelEnqueueFlagsWaitKernel = 1, KernelEnqueueFlagsWaitWorkGroup = 2, KernelEnqueueFlagsMax = 2147483647
type spvKernelProfilingInfoShift* {.pure, exportc, importcpp:"spv::KernelProfilingInfoShift".} = enum
    KernelProfilingInfoCmdExecTimeShift = 0, KernelProfilingInfoMax = 2147483647
type spvKernelProfilingInfoMask* {.pure, exportc, importcpp:"spv::KernelProfilingInfoMask".} = enum
    KernelProfilingInfoMaskNone = 0, KernelProfilingInfoCmdExecTimeMask = 1
type spvCapability* {.pure, exportc, importcpp:"spv::Capability".} = enum
    CapabilityMatrix = 0, CapabilityShader = 1, CapabilityGeometry = 2, CapabilityTessellation = 3, CapabilityAddresses = 4, CapabilityLinkage = 5, CapabilityKernel = 6, CapabilityVector16 = 7, CapabilityFloat16Buffer = 8, CapabilityFloat16 = 9, CapabilityFloat64 = 10, CapabilityInt64 = 11, CapabilityInt64Atomics = 12, CapabilityImageBasic = 13, CapabilityImageReadWrite = 14, CapabilityImageMipmap = 15, CapabilityPipes = 17, CapabilityGroups = 18, CapabilityDeviceEnqueue = 19, CapabilityLiteralSampler = 20, CapabilityAtomicStorage = 21, CapabilityInt16 = 22, CapabilityTessellationPointSize = 23, CapabilityGeometryPointSize = 24, CapabilityImageGatherExtended = 25, CapabilityStorageImageMultisample = 27, CapabilityUniformBufferArrayDynamicIndexing = 28, CapabilitySampledImageArrayDynamicIndexing = 29, CapabilityStorageBufferArrayDynamicIndexing = 30, CapabilityStorageImageArrayDynamicIndexing = 31, CapabilityClipDistance = 32, CapabilityCullDistance = 33, CapabilityImageCubeArray = 34, CapabilitySampleRateShading = 35, CapabilityImageRect = 36, CapabilitySampledRect = 37, CapabilityGenericPointer = 38, CapabilityInt8 = 39, CapabilityInputAttachment = 40, CapabilitySparseResidency = 41, CapabilityMinLod = 42, CapabilitySampled1D = 43, CapabilityImage1D = 44, CapabilitySampledCubeArray = 45, CapabilitySampledBuffer = 46, CapabilityImageBuffer = 47, CapabilityImageMSArray = 48, CapabilityStorageImageExtendedFormats = 49, CapabilityImageQuery = 50, CapabilityDerivativeControl = 51, CapabilityInterpolationFunction = 52, CapabilityTransformFeedback = 53, CapabilityGeometryStreams = 54, CapabilityStorageImageReadWithoutFormat = 55, CapabilityStorageImageWriteWithoutFormat = 56, CapabilityMultiViewport = 57, CapabilitySubgroupBallotKHR = 4423, CapabilityDrawParameters = 4427, CapabilitySubgroupVoteKHR = 4431, CapabilityStorageBuffer16BitAccess = 4433, CapabilityStorageUniform16 = 4434, CapabilityStoragePushConstant16 = 4435, CapabilityStorageInputOutput16 = 4436, CapabilityDeviceGroup = 4437, CapabilityMultiView = 4439, CapabilityVariablePointersStorageBuffer = 4441, CapabilityVariablePointers = 4442, CapabilitySampleMaskOverrideCoverageNV = 5249, CapabilityGeometryShaderPassthroughNV = 5251, CapabilityShaderViewportIndexLayerNV = 5254, CapabilityShaderViewportMaskNV = 5255, CapabilityShaderStereoViewNV = 5259, CapabilityPerViewAttributesNV = 5260, CapabilityMax = 2147483647
type spvOp* {.pure, exportc, importcpp:"spv::Op".} = enum
    OpNop = 0, OpUndef = 1, OpSourceContinued = 2, OpSource = 3, OpSourceExtension = 4, OpName = 5, OpMemberName = 6, OpString = 7, OpLine = 8, OpExtension = 10, OpExtInstImport = 11, OpExtInst = 12, OpMemoryModel = 14, OpEntryPoint = 15, OpExecutionMode = 16, OpCapability = 17, OpTypeVoid = 19, OpTypeBool = 20, OpTypeInt = 21, OpTypeFloat = 22, OpTypeVector = 23, OpTypeMatrix = 24, OpTypeImage = 25, OpTypeSampler = 26, OpTypeSampledImage = 27, OpTypeArray = 28, OpTypeRuntimeArray = 29, OpTypeStruct = 30, OpTypeOpaque = 31, OpTypePointer = 32, OpTypeFunction = 33, OpTypeEvent = 34, OpTypeDeviceEvent = 35, OpTypeReserveId = 36, OpTypeQueue = 37, OpTypePipe = 38, OpTypeForwardPointer = 39, OpConstantTrue = 41, OpConstantFalse = 42, OpConstant = 43, OpConstantComposite = 44, OpConstantSampler = 45, OpConstantNull = 46, OpSpecConstantTrue = 48, OpSpecConstantFalse = 49, OpSpecConstant = 50, OpSpecConstantComposite = 51, OpSpecConstantOp = 52, OpFunction = 54, OpFunctionParameter = 55, OpFunctionEnd = 56, OpFunctionCall = 57, OpVariable = 59, OpImageTexelPointer = 60, OpLoad = 61, OpStore = 62, OpCopyMemory = 63, OpCopyMemorySized = 64, OpAccessChain = 65, OpInBoundsAccessChain = 66, OpPtrAccessChain = 67, OpArrayLength = 68, OpGenericPtrMemSemantics = 69, OpInBoundsPtrAccessChain = 70, OpDecorate = 71, OpMemberDecorate = 72, OpDecorationGroup = 73, OpGroupDecorate = 74, OpGroupMemberDecorate = 75, OpVectorExtractDynamic = 77, OpVectorInsertDynamic = 78, OpVectorShuffle = 79, OpCompositeConstruct = 80, OpCompositeExtract = 81, OpCompositeInsert = 82, OpCopyObject = 83, OpTranspose = 84, OpSampledImage = 86, OpImageSampleImplicitLod = 87, OpImageSampleExplicitLod = 88, OpImageSampleDrefImplicitLod = 89, OpImageSampleDrefExplicitLod = 90, OpImageSampleProjImplicitLod = 91, OpImageSampleProjExplicitLod = 92, OpImageSampleProjDrefImplicitLod = 93, OpImageSampleProjDrefExplicitLod = 94, OpImageFetch = 95, OpImageGather = 96, OpImageDrefGather = 97, OpImageRead = 98, OpImageWrite = 99, OpImage = 100, OpImageQueryFormat = 101, OpImageQueryOrder = 102, OpImageQuerySizeLod = 103, OpImageQuerySize = 104, OpImageQueryLod = 105, OpImageQueryLevels = 106, OpImageQuerySamples = 107, OpConvertFToU = 109, OpConvertFToS = 110, OpConvertSToF = 111, OpConvertUToF = 112, OpUConvert = 113, OpSConvert = 114, OpFConvert = 115, OpQuantizeToF16 = 116, OpConvertPtrToU = 117, OpSatConvertSToU = 118, OpSatConvertUToS = 119, OpConvertUToPtr = 120, OpPtrCastToGeneric = 121, OpGenericCastToPtr = 122, OpGenericCastToPtrExplicit = 123, OpBitcast = 124, OpSNegate = 126, OpFNegate = 127, OpIAdd = 128, OpFAdd = 129, OpISub = 130, OpFSub = 131, OpIMul = 132, OpFMul = 133, OpUDiv = 134, OpSDiv = 135, OpFDiv = 136, OpUMod = 137, OpSRem = 138, OpSMod = 139, OpFRem = 140, OpFMod = 141, OpVectorTimesScalar = 142, OpMatrixTimesScalar = 143, OpVectorTimesMatrix = 144, OpMatrixTimesVector = 145, OpMatrixTimesMatrix = 146, OpOuterProduct = 147, OpDot = 148, OpIAddCarry = 149, OpISubBorrow = 150, OpUMulExtended = 151, OpSMulExtended = 152, OpAny = 154, OpAll = 155, OpIsNan = 156, OpIsInf = 157, OpIsFinite = 158, OpIsNormal = 159, OpSignBitSet = 160, OpLessOrGreater = 161, OpOrdered = 162, OpUnordered = 163, OpLogicalEqual = 164, OpLogicalNotEqual = 165, OpLogicalOr = 166, OpLogicalAnd = 167, OpLogicalNot = 168, OpSelect = 169, OpIEqual = 170, OpINotEqual = 171, OpUGreaterThan = 172, OpSGreaterThan = 173, OpUGreaterThanEqual = 174, OpSGreaterThanEqual = 175, OpULessThan = 176, OpSLessThan = 177, OpULessThanEqual = 178, OpSLessThanEqual = 179, OpFOrdEqual = 180, OpFUnordEqual = 181, OpFOrdNotEqual = 182, OpFUnordNotEqual = 183, OpFOrdLessThan = 184, OpFUnordLessThan = 185, OpFOrdGreaterThan = 186, OpFUnordGreaterThan = 187, OpFOrdLessThanEqual = 188, OpFUnordLessThanEqual = 189, OpFOrdGreaterThanEqual = 190, OpFUnordGreaterThanEqual = 191, OpShiftRightLogical = 194, OpShiftRightArithmetic = 195, OpShiftLeftLogical = 196, OpBitwiseOr = 197, OpBitwiseXor = 198, OpBitwiseAnd = 199, OpNot = 200, OpBitFieldInsert = 201, OpBitFieldSExtract = 202, OpBitFieldUExtract = 203, OpBitReverse = 204, OpBitCount = 205, OpDPdx = 207, OpDPdy = 208, OpFwidth = 209, OpDPdxFine = 210, OpDPdyFine = 211, OpFwidthFine = 212, OpDPdxCoarse = 213, OpDPdyCoarse = 214, OpFwidthCoarse = 215, OpEmitVertex = 218, OpEndPrimitive = 219, OpEmitStreamVertex = 220, OpEndStreamPrimitive = 221, OpControlBarrier = 224, OpMemoryBarrier = 225, OpAtomicLoad = 227, OpAtomicStore = 228, OpAtomicExchange = 229, OpAtomicCompareExchange = 230, OpAtomicCompareExchangeWeak = 231, OpAtomicIIncrement = 232, OpAtomicIDecrement = 233, OpAtomicIAdd = 234, OpAtomicISub = 235, OpAtomicSMin = 236, OpAtomicUMin = 237, OpAtomicSMax = 238, OpAtomicUMax = 239, OpAtomicAnd = 240, OpAtomicOr = 241, OpAtomicXor = 242, OpPhi = 245, OpLoopMerge = 246, OpSelectionMerge = 247, OpLabel = 248, OpBranch = 249, OpBranchConditional = 250, OpSwitch = 251, OpKill = 252, OpReturn = 253, OpReturnValue = 254, OpUnreachable = 255, OpLifetimeStart = 256, OpLifetimeStop = 257, OpGroupAsyncCopy = 259, OpGroupWaitEvents = 260, OpGroupAll = 261, OpGroupAny = 262, OpGroupBroadcast = 263, OpGroupIAdd = 264, OpGroupFAdd = 265, OpGroupFMin = 266, OpGroupUMin = 267, OpGroupSMin = 268, OpGroupFMax = 269, OpGroupUMax = 270, OpGroupSMax = 271, OpReadPipe = 274, OpWritePipe = 275, OpReservedReadPipe = 276, OpReservedWritePipe = 277, OpReserveReadPipePackets = 278, OpReserveWritePipePackets = 279, OpCommitReadPipe = 280, OpCommitWritePipe = 281, OpIsValidReserveId = 282, OpGetNumPipePackets = 283, OpGetMaxPipePackets = 284, OpGroupReserveReadPipePackets = 285, OpGroupReserveWritePipePackets = 286, OpGroupCommitReadPipe = 287, OpGroupCommitWritePipe = 288, OpEnqueueMarker = 291, OpEnqueueKernel = 292, OpGetKernelNDrangeSubGroupCount = 293, OpGetKernelNDrangeMaxSubGroupSize = 294, OpGetKernelWorkGroupSize = 295, OpGetKernelPreferredWorkGroupSizeMultiple = 296, OpRetainEvent = 297, OpReleaseEvent = 298, OpCreateUserEvent = 299, OpIsValidEvent = 300, OpSetUserEventStatus = 301, OpCaptureEventProfilingInfo = 302, OpGetDefaultQueue = 303, OpBuildNDRange = 304, OpImageSparseSampleImplicitLod = 305, OpImageSparseSampleExplicitLod = 306, OpImageSparseSampleDrefImplicitLod = 307, OpImageSparseSampleDrefExplicitLod = 308, OpImageSparseSampleProjImplicitLod = 309, OpImageSparseSampleProjExplicitLod = 310, OpImageSparseSampleProjDrefImplicitLod = 311, OpImageSparseSampleProjDrefExplicitLod = 312, OpImageSparseFetch = 313, OpImageSparseGather = 314, OpImageSparseDrefGather = 315, OpImageSparseTexelsResident = 316, OpNoLine = 317, OpAtomicFlagTestAndSet = 318, OpAtomicFlagClear = 319, OpImageSparseRead = 320, OpSubgroupBallotKHR = 4421, OpSubgroupFirstInvocationKHR = 4422, OpSubgroupAllKHR = 4428, OpSubgroupAnyKHR = 4429, OpSubgroupAllEqualKHR = 4430, OpSubgroupReadInvocationKHR = 4432, OpGroupIAddNonUniformAMD = 5000, OpGroupFAddNonUniformAMD = 5001, OpGroupFMinNonUniformAMD = 5002, OpGroupUMinNonUniformAMD = 5003, OpGroupSMinNonUniformAMD = 5004, OpGroupFMaxNonUniformAMD = 5005, OpGroupUMaxNonUniformAMD = 5006, OpGroupSMaxNonUniformAMD = 5007, OpFragmentMaskFetchAMD = 5011, OpFragmentFetchAMD = 5012, OpMax = 2147483647
type CompilerError* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerError", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CompilerError]): bool = true
type Instruction* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Instruction", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Instruction]): bool = true
type IVariant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::IVariant", inheritable.}  = object
proc isCCCConcept*(T: typedesc[IVariant]): bool = true
type spirv_crossTypes* {.pure, exportc, importcpp:"spirv_cross::Types".} = enum
    TypeNone = 0, TypeType = 1, TypeVariable = 2, TypeConstant = 3, TypeFunction = 4, TypeFunctionPrototype = 5, TypePointer = 6, TypeBlock = 7, TypeExtension = 8, TypeExpression = 9, TypeConstantOp = 10, TypeCombinedImageSampler = 11, TypeAccessChain = 12, TypeUndef = 13
type SPIRUndef* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRUndef", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRUndef]): bool = true
type SPIRCombinedImageSampler* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRCombinedImageSampler", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRCombinedImageSampler]): bool = true
type SPIRConstantOp* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstantOp", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRConstantOp]): bool = true
type SPIRType* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRType", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRType]): bool = true
type SPIRTypeBaseType* {.pure, exportc, importcpp:"spirv_cross::SPIRType::BaseType".} = enum
    Unknown = 0, Void = 1, Boolean = 2, Char = 3, Int = 4, UInt = 5, Int64 = 6, UInt64 = 7, AtomicCounter = 8, Float = 9, Double = 10, Struct = 11, Image = 12, SampledImage = 13, Sampler = 14
type ImageType* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRType::ImageType", inheritable.}  = object
proc isCCCConcept*(T: typedesc[ImageType]): bool = true
type ImageType00* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRType::ImageType", inheritable.}  = object
proc isCCCConcept*(T: typedesc[ImageType00]): bool = true
type SPIRExtension* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRExtension", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRExtension]): bool = true
type SPIRExtensionExtension* {.pure, exportc, importcpp:"spirv_cross::SPIRExtension::Extension".} = enum
    Unsupported = 0, GLSL = 1, SPVAMDshaderballot = 2, SPVAMDshaderexplicitvertexparameter = 3, SPVAMDshadertrinaryminmax = 4, SPVAMDgcnshader = 5
type SPIREntryPoint* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIREntryPoint", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIREntryPoint]): bool = true
type a* {.nodecl, inheritable.}  = object
proc isCCCConcept*(T: typedesc[a]): bool = true
type a00* {.nodecl, inheritable.}  = object
proc isCCCConcept*(T: typedesc[a00]): bool = true
type SPIRExpression* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRExpression", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRExpression]): bool = true
type SPIRFunctionPrototype* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunctionPrototype", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRFunctionPrototype]): bool = true
type SPIRBlock* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRBlock", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRBlock]): bool = true
type SPIRBlockTerminator* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::Terminator".} = enum
    Unknown = 0, Direct = 1, Select = 2, MultiSelect = 3, Return = 4, Unreachable = 5, Kill = 6
type SPIRBlockMerge* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::Merge".} = enum
    MergeNone = 0, MergeLoop = 1, MergeSelection = 2
type SPIRBlockMethod* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::Method".} = enum
    MergeToSelectForLoop = 0, MergeToDirectForLoop = 1
type SPIRBlockContinueBlockType* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::ContinueBlockType".} = enum
    ContinueNone = 0, ForLoop = 1, WhileLoop = 2, DoWhileLoop = 3, ComplexLoop = 4
type Phi* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRBlock::Phi", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Phi]): bool = true
type Case* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRBlock::Case", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Case]): bool = true
type SPIRFunction* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunction", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRFunction]): bool = true
type Parameter* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunction::Parameter", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Parameter]): bool = true
type CombinedImageSamplerParameter* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunction::CombinedImageSamplerParameter", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CombinedImageSamplerParameter]): bool = true
type SPIRAccessChain* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRAccessChain", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRAccessChain]): bool = true
type SPIRVariable* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRVariable", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRVariable]): bool = true
type SPIRConstant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SPIRConstant]): bool = true
type Constant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant::Constant", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Constant]): bool = true
type ConstantVector* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant::ConstantVector", inheritable.}  = object
proc isCCCConcept*(T: typedesc[ConstantVector]): bool = true
type ConstantMatrix* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant::ConstantMatrix", inheritable.}  = object
proc isCCCConcept*(T: typedesc[ConstantMatrix]): bool = true
type Variant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Variant", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Variant]): bool = true
type Meta* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Meta", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Meta]): bool = true
type Decoration* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Meta::Decoration", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Decoration]): bool = true
type ClassicLocale* {.header: "spirvcross.hpp", importcpp:"spirv_cross::ClassicLocale", inheritable.}  = object
proc isCCCConcept*(T: typedesc[ClassicLocale]): bool = true
type Resource* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Resource", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Resource]): bool = true
type ShaderResources* {.header: "spirvcross.hpp", importcpp:"spirv_cross::ShaderResources", inheritable.}  = object
proc isCCCConcept*(T: typedesc[ShaderResources]): bool = true
type CombinedImageSampler* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CombinedImageSampler", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CombinedImageSampler]): bool = true
type SpecializationConstant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SpecializationConstant", inheritable.}  = object
proc isCCCConcept*(T: typedesc[SpecializationConstant]): bool = true
type BufferRange* {.header: "spirvcross.hpp", importcpp:"spirv_cross::BufferRange", inheritable.}  = object
proc isCCCConcept*(T: typedesc[BufferRange]): bool = true
type spirv_crossBufferPackingStandard* {.pure, exportc, importcpp:"spirv_cross::BufferPackingStandard".} = enum
    BufferPackingStd140 = 0, BufferPackingStd430 = 1, BufferPackingStd140EnhancedLayout = 2, BufferPackingStd430EnhancedLayout = 3, BufferPackingHLSLCbuffer = 4, BufferPackingHLSLCbufferPackOffset = 5
type Compiler* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Compiler", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Compiler]): bool = true
type spirv_crossPlsFormat* {.pure, exportc, importcpp:"spirv_cross::PlsFormat".} = enum
    PlsNone = 0, PlsR11FG11FB10F = 1, PlsR32F = 2, PlsRG16F = 3, PlsRGB10A2 = 4, PlsRGBA8 = 5, PlsRG16 = 6, PlsRGBA8I = 7, PlsRG16I = 8, PlsRGB10A2UI = 9, PlsRGBA8UI = 10, PlsRG16UI = 11, PlsR32UI = 12
type PlsRemap* {.header: "spirvcross.hpp", importcpp:"spirv_cross::PlsRemap", inheritable.}  = object
proc isCCCConcept*(T: typedesc[PlsRemap]): bool = true
type CompilerGLSL* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerGLSL", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CompilerGLSL]): bool = true
type Options* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerGLSL::Options", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Options]): bool = true
type OptionsPrecision* {.pure, exportc, importcpp:"spirv_cross::CompilerGLSL::Options::Precision".} = enum
    DontCare = 0, Lowp = 1, Mediump = 2, Highp = 3
type a0000* {.nodecl, inheritable.}  = object
proc isCCCConcept*(T: typedesc[a0000]): bool = true
type a000000* {.nodecl, inheritable.}  = object
proc isCCCConcept*(T: typedesc[a000000]): bool = true
type a00000000* {.nodecl, inheritable.}  = object
proc isCCCConcept*(T: typedesc[a00000000]): bool = true
type a0000000000* {.nodecl, inheritable.}  = object
proc isCCCConcept*(T: typedesc[a0000000000]): bool = true
type HLSLVertexAttributeRemap* {.header: "spirvcross.hpp", importcpp:"spirv_cross::HLSLVertexAttributeRemap", inheritable.}  = object
proc isCCCConcept*(T: typedesc[HLSLVertexAttributeRemap]): bool = true
type CompilerHLSL* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerHLSL", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CompilerHLSL]): bool = true
type Options00* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerHLSL::Options", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Options00]): bool = true
type MSLVertexAttr* {.header: "spirvcross.hpp", importcpp:"spirv_cross::MSLVertexAttr", inheritable.}  = object
proc isCCCConcept*(T: typedesc[MSLVertexAttr]): bool = true
type MSLResourceBinding* {.header: "spirvcross.hpp", importcpp:"spirv_cross::MSLResourceBinding", inheritable.}  = object
proc isCCCConcept*(T: typedesc[MSLResourceBinding]): bool = true
type CompilerMSL* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerMSL", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CompilerMSL]): bool = true
type CompilerMSLSPVFuncImpl* {.pure, exportc, importcpp:"spirv_cross::CompilerMSL::SPVFuncImpl".} = enum
    SPVFuncImplNone = 0, SPVFuncImplMod = 1, SPVFuncImplRadians = 2, SPVFuncImplDegrees = 3, SPVFuncImplFindILsb = 4, SPVFuncImplFindSMsb = 5, SPVFuncImplFindUMsb = 6, SPVFuncImplArrayCopy = 7, SPVFuncImplInverse2x2 = 8, SPVFuncImplInverse3x3 = 9, SPVFuncImplInverse4x4 = 10, SPVFuncImplRowMajor2x3 = 11, SPVFuncImplRowMajor2x4 = 12, SPVFuncImplRowMajor3x2 = 13, SPVFuncImplRowMajor3x4 = 14, SPVFuncImplRowMajor4x2 = 15, SPVFuncImplRowMajor4x3 = 16
type Options0000* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerMSL::Options", inheritable.}  = object
proc isCCCConcept*(T: typedesc[Options0000]): bool = true
type Options000000* {.pure, exportc, importcpp:"spirv_cross::CompilerMSL::Options::Platform".} = enum
    iOS = 0, macOS = 1
type CompilerCPP* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerCPP", inheritable.}  = object
proc isCCCConcept*(T: typedesc[CompilerCPP]): bool = true
