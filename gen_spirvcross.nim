import cpp_utilities
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
type Instruction* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Instruction", inheritable.}  = object
type IVariant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::IVariant", inheritable.}  = object
type spirv_crossTypes* {.pure, exportc, importcpp:"spirv_cross::Types".} = enum
    TypeNone = 0, TypeType = 1, TypeVariable = 2, TypeConstant = 3, TypeFunction = 4, TypeFunctionPrototype = 5, TypePointer = 6, TypeBlock = 7, TypeExtension = 8, TypeExpression = 9, TypeConstantOp = 10, TypeCombinedImageSampler = 11, TypeAccessChain = 12, TypeUndef = 13
type SPIRUndef* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRUndef", inheritable.}  = object
type SPIRCombinedImageSampler* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRCombinedImageSampler", inheritable.}  = object
type SPIRConstantOp* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstantOp", inheritable.}  = object
type SPIRType* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRType", inheritable.}  = object
type SPIRTypeBaseType* {.pure, exportc, importcpp:"spirv_cross::SPIRType::BaseType".} = enum
    Unknown = 0, Void = 1, Boolean = 2, Char = 3, Int = 4, UInt = 5, Int64 = 6, UInt64 = 7, AtomicCounter = 8, Float = 9, Double = 10, Struct = 11, Image = 12, SampledImage = 13, Sampler = 14
type ImageType* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRType::ImageType", inheritable.}  = object
type ImageType00* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRType::ImageType", inheritable.}  = object
type SPIRExtension* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRExtension", inheritable.}  = object
type SPIRExtensionExtension* {.pure, exportc, importcpp:"spirv_cross::SPIRExtension::Extension".} = enum
    Unsupported = 0, GLSL = 1, SPVAMDshaderballot = 2, SPVAMDshaderexplicitvertexparameter = 3, SPVAMDshadertrinaryminmax = 4, SPVAMDgcnshader = 5
type SPIREntryPoint* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIREntryPoint", inheritable.}  = object
type a* {.nodecl, inheritable.}  = object
type a00* {.nodecl, inheritable.}  = object
type SPIRExpression* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRExpression", inheritable.}  = object
type SPIRFunctionPrototype* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunctionPrototype", inheritable.}  = object
type SPIRBlock* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRBlock", inheritable.}  = object
type SPIRBlockTerminator* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::Terminator".} = enum
    Unknown = 0, Direct = 1, Select = 2, MultiSelect = 3, Return = 4, Unreachable = 5, Kill = 6
type SPIRBlockMerge* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::Merge".} = enum
    MergeNone = 0, MergeLoop = 1, MergeSelection = 2
type SPIRBlockMethod* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::Method".} = enum
    MergeToSelectForLoop = 0, MergeToDirectForLoop = 1
type SPIRBlockContinueBlockType* {.pure, exportc, importcpp:"spirv_cross::SPIRBlock::ContinueBlockType".} = enum
    ContinueNone = 0, ForLoop = 1, WhileLoop = 2, DoWhileLoop = 3, ComplexLoop = 4
type Phi* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRBlock::Phi", inheritable.}  = object
type Case* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRBlock::Case", inheritable.}  = object
type SPIRFunction* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunction", inheritable.}  = object
type Parameter* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunction::Parameter", inheritable.}  = object
type CombinedImageSamplerParameter* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRFunction::CombinedImageSamplerParameter", inheritable.}  = object
type SPIRAccessChain* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRAccessChain", inheritable.}  = object
type SPIRVariable* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRVariable", inheritable.}  = object
type SPIRConstant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant", inheritable.}  = object
type Constant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant::Constant", inheritable.}  = object
type ConstantVector* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant::ConstantVector", inheritable.}  = object
type ConstantMatrix* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SPIRConstant::ConstantMatrix", inheritable.}  = object
type Variant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Variant", inheritable.}  = object
type Meta* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Meta", inheritable.}  = object
type Decoration* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Meta::Decoration", inheritable.}  = object
type ClassicLocale* {.header: "spirvcross.hpp", importcpp:"spirv_cross::ClassicLocale", inheritable.}  = object
type Resource* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Resource", inheritable.}  = object
type ShaderResources* {.header: "spirvcross.hpp", importcpp:"spirv_cross::ShaderResources", inheritable.}  = object
type CombinedImageSampler* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CombinedImageSampler", inheritable.}  = object
type SpecializationConstant* {.header: "spirvcross.hpp", importcpp:"spirv_cross::SpecializationConstant", inheritable.}  = object
type BufferRange* {.header: "spirvcross.hpp", importcpp:"spirv_cross::BufferRange", inheritable.}  = object
type spirv_crossBufferPackingStandard* {.pure, exportc, importcpp:"spirv_cross::BufferPackingStandard".} = enum
    BufferPackingStd140 = 0, BufferPackingStd430 = 1, BufferPackingStd140EnhancedLayout = 2, BufferPackingStd430EnhancedLayout = 3, BufferPackingHLSLCbuffer = 4, BufferPackingHLSLCbufferPackOffset = 5
type Compiler* {.header: "spirvcross.hpp", importcpp:"spirv_cross::Compiler", inheritable.}  = object
type spirv_crossPlsFormat* {.pure, exportc, importcpp:"spirv_cross::PlsFormat".} = enum
    PlsNone = 0, PlsR11FG11FB10F = 1, PlsR32F = 2, PlsRG16F = 3, PlsRGB10A2 = 4, PlsRGBA8 = 5, PlsRG16 = 6, PlsRGBA8I = 7, PlsRG16I = 8, PlsRGB10A2UI = 9, PlsRGBA8UI = 10, PlsRG16UI = 11, PlsR32UI = 12
type PlsRemap* {.header: "spirvcross.hpp", importcpp:"spirv_cross::PlsRemap", inheritable.}  = object
type CompilerGLSL* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerGLSL", inheritable.}  = object
type Options* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerGLSL::Options", inheritable.}  = object
type OptionsPrecision* {.pure, exportc, importcpp:"spirv_cross::CompilerGLSL::Options::Precision".} = enum
    DontCare = 0, Lowp = 1, Mediump = 2, Highp = 3
type a0000* {.nodecl, inheritable.}  = object
type a000000* {.nodecl, inheritable.}  = object
type a00000000* {.nodecl, inheritable.}  = object
type a0000000000* {.nodecl, inheritable.}  = object
type HLSLVertexAttributeRemap* {.header: "spirvcross.hpp", importcpp:"spirv_cross::HLSLVertexAttributeRemap", inheritable.}  = object
type CompilerHLSL* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerHLSL", inheritable.}  = object
type Options00* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerHLSL::Options", inheritable.}  = object
type MSLVertexAttr* {.header: "spirvcross.hpp", importcpp:"spirv_cross::MSLVertexAttr", inheritable.}  = object
type MSLResourceBinding* {.header: "spirvcross.hpp", importcpp:"spirv_cross::MSLResourceBinding", inheritable.}  = object
type CompilerMSL* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerMSL", inheritable.}  = object
type CompilerMSLSPVFuncImpl* {.pure, exportc, importcpp:"spirv_cross::CompilerMSL::SPVFuncImpl".} = enum
    SPVFuncImplNone = 0, SPVFuncImplMod = 1, SPVFuncImplRadians = 2, SPVFuncImplDegrees = 3, SPVFuncImplFindILsb = 4, SPVFuncImplFindSMsb = 5, SPVFuncImplFindUMsb = 6, SPVFuncImplArrayCopy = 7, SPVFuncImplInverse2x2 = 8, SPVFuncImplInverse3x3 = 9, SPVFuncImplInverse4x4 = 10, SPVFuncImplRowMajor2x3 = 11, SPVFuncImplRowMajor2x4 = 12, SPVFuncImplRowMajor3x2 = 13, SPVFuncImplRowMajor3x4 = 14, SPVFuncImplRowMajor4x2 = 15, SPVFuncImplRowMajor4x3 = 16
type Options0000* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerMSL::Options", inheritable.}  = object
type Options000000* {.pure, exportc, importcpp:"spirv_cross::CompilerMSL::Options::Platform".} = enum
    iOS = 0, macOS = 1
type CompilerCPP* {.header: "spirvcross.hpp", importcpp:"spirv_cross::CompilerCPP", inheritable.}  = object
type Bytetraits* {.header: "spirvcross.hpp", importcpp:"std::char_traits<char>", inheritable.}  = object
type allocator* {.header: "spirvcross.hpp", importcpp:"std::allocator<char>", inheritable.}  = object
type astring* {.header: "spirvcross.hpp", importcpp:"std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> >", inheritable.}  = object
type allocator00* {.header: "spirvcross.hpp", importcpp:"std::allocator<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > >", inheritable.}  = object
type stdvector_stdstring* {.header: "spirvcross.hpp", importcpp:"std::vector<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > COMMA  std::allocator<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > >", inheritable.}  = object
type allocator0000* {.header: "spirvcross.hpp", importcpp:"std::allocator<unsigned int>", inheritable.}  = object
type spirv* {.header: "spirvcross.hpp", importcpp:"std::vector<unsigned int COMMA  std::allocator<unsigned int> >", inheritable.}  = object
type allocator000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<bool>", inheritable.}  = object
type stdvector_bool* {.header: "spirvcross.hpp", importcpp:"std::vector<bool COMMA  std::allocator<bool> >", inheritable.}  = object
type hash* {.header: "spirvcross.hpp", importcpp:"std::hash<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > >", inheritable.}  = object
type equalto* {.header: "spirvcross.hpp", importcpp:"std::equal_to<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > >", inheritable.}  = object
type stdunorderedset_stdstring* {.header: "spirvcross.hpp", importcpp:"std::unordered_set<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > COMMA  std::hash<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > COMMA  std::equal_to<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > COMMA  std::allocator<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > >", inheritable.}  = object
type allocator00000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::Instruction>", inheritable.}  = object
type stdvector_Instruction* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::Instruction COMMA  std::allocator<spirv_cross::Instruction> >", inheritable.}  = object
type allocator0000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::SPIRBlock::Phi>", inheritable.}  = object
type stdvector_Phi* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::SPIRBlock::Phi COMMA  std::allocator<spirv_cross::SPIRBlock::Phi> >", inheritable.}  = object
type pair* {.header: "spirvcross.hpp", importcpp:"std::pair<unsigned int COMMA  unsigned int>", inheritable.}  = object
type allocator000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<std::pair<unsigned int COMMA  unsigned int> >", inheritable.}  = object
type stdvector_stdpair_uint32t_uint32t* {.header: "spirvcross.hpp", importcpp:"std::vector<std::pair<unsigned int COMMA  unsigned int> COMMA  std::allocator<std::pair<unsigned int COMMA  unsigned int> > >", inheritable.}  = object
type allocator00000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::SPIRBlock::Case>", inheritable.}  = object
type stdvector_Case* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::SPIRBlock::Case COMMA  std::allocator<spirv_cross::SPIRBlock::Case> >", inheritable.}  = object
type allocator0000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::SPIRFunction::Parameter>", inheritable.}  = object
type stdvector_Parameter* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::SPIRFunction::Parameter COMMA  std::allocator<spirv_cross::SPIRFunction::Parameter> >", inheritable.}  = object
type allocator000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::SPIRFunction::CombinedImageSamplerParameter>", inheritable.}  = object
type stdvector_CombinedImageSamplerParameter* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::SPIRFunction::CombinedImageSamplerParameter COMMA  std::allocator<spirv_cross::SPIRFunction::CombinedImageSamplerParameter> >", inheritable.}  = object
type defaultdelete* {.header: "spirvcross.hpp", importcpp:"std::default_delete<spirv_cross::IVariant>", inheritable.}  = object
type stduniquecptr_IVariant* {.header: "spirvcross.hpp", importcpp:"std::unique_ptr<spirv_cross::IVariant COMMA  std::default_delete<spirv_cross::IVariant> >", inheritable.}  = object
type allocator00000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::Meta::Decoration>", inheritable.}  = object
type stdvector_Decoration* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::Meta::Decoration COMMA  std::allocator<spirv_cross::Meta::Decoration> >", inheritable.}  = object
type hash00* {.header: "spirvcross.hpp", importcpp:"std::hash<unsigned int>", inheritable.}  = object
type equalto00* {.header: "spirvcross.hpp", importcpp:"std::equal_to<unsigned int>", inheritable.}  = object
type pair00* {.header: "spirvcross.hpp", importcpp:"std::pair<const unsigned int COMMA  unsigned int>", inheritable.}  = object
type allocator0000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<std::pair<const unsigned int COMMA  unsigned int> >", inheritable.}  = object
type stdunorderedmap_uint32t_uint32t* {.header: "spirvcross.hpp", importcpp:"std::unordered_map<unsigned int COMMA  unsigned int COMMA  std::hash<unsigned int> COMMA  std::equal_to<unsigned int> COMMA  std::allocator<std::pair<const unsigned int COMMA  unsigned int> > >", inheritable.}  = object
type allocator000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::Resource>", inheritable.}  = object
type stdvector_Resource* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::Resource COMMA  std::allocator<spirv_cross::Resource> >", inheritable.}  = object
type allocator00000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::BufferRange>", inheritable.}  = object
type vector0* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::BufferRange COMMA  std::allocator<spirv_cross::BufferRange> >", inheritable.}  = object
type stdunorderedset_uint32t* {.header: "spirvcross.hpp", importcpp:"std::unordered_set<unsigned int COMMA  std::hash<unsigned int> COMMA  std::equal_to<unsigned int> COMMA  std::allocator<unsigned int> >", inheritable.}  = object
type allocator0000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::CombinedImageSampler>", inheritable.}  = object
type stdvector_CombinedImageSampler* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::CombinedImageSampler COMMA  std::allocator<spirv_cross::CombinedImageSampler> >", inheritable.}  = object
type a000000000000* {.header: "spirvcross.hpp", importcpp:"", inheritable.}  = object
type VariableTypeRemapCallback* {.header: "spirvcross.hpp", importcpp:"std::function<void (const spirv_cross::SPIRType & COMMA  const std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > & COMMA  std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > &)>", inheritable.}  = object
type a00000000000000* {.header: "spirvcross.hpp", importcpp:"", inheritable.}  = object
type a0000000000000000* {.header: "spirvcross.hpp", importcpp:"", inheritable.}  = object
type allocator000000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::SpecializationConstant>", inheritable.}  = object
type vector000* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::SpecializationConstant COMMA  std::allocator<spirv_cross::SpecializationConstant> >", inheritable.}  = object
type allocator00000000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spv::Capability>", inheritable.}  = object
type stdvector_spvCapability* {.header: "spirvcross.hpp", importcpp:"std::vector<spv::Capability COMMA  std::allocator<spv::Capability> >", inheritable.}  = object
type allocator0000000000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::PlsRemap>", inheritable.}  = object
type stdvector_PlsRemap* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::PlsRemap COMMA  std::allocator<spirv_cross::PlsRemap> >", inheritable.}  = object
type allocator000000000000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::HLSLVertexAttributeRemap>", inheritable.}  = object
type stdvector_HLSLVertexAttributeRemap* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::HLSLVertexAttributeRemap COMMA  std::allocator<spirv_cross::HLSLVertexAttributeRemap> >", inheritable.}  = object
type allocator00000000000000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::MSLVertexAttr>", inheritable.}  = object
type vector00000* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::MSLVertexAttr COMMA  std::allocator<spirv_cross::MSLVertexAttr> >", inheritable.}  = object
type allocator0000000000000000000000000000000000000000* {.header: "spirvcross.hpp", importcpp:"std::allocator<spirv_cross::MSLResourceBinding>", inheritable.}  = object
type vector0000000* {.header: "spirvcross.hpp", importcpp:"std::vector<spirv_cross::MSLResourceBinding COMMA  std::allocator<spirv_cross::MSLResourceBinding> >", inheritable.}  = object
proc AsIVariant*(self: ptr SPIRUndef): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRCombinedImageSampler): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRConstantOp): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRType): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRExtension): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRExpression): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRFunctionPrototype): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRBlock): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRFunction): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRAccessChain): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRVariable): ptr IVariant = cast[ptr IVariant](self)
proc AsIVariant*(self: ptr SPIRConstant): ptr IVariant = cast[ptr IVariant](self)
proc AsCompiler*(self: ptr CompilerGLSL): ptr Compiler = cast[ptr Compiler](self)
proc AsCompilerGLSL*(self: ptr CompilerHLSL): ptr CompilerGLSL = cast[ptr CompilerGLSL](self)
proc AsCompilerGLSL*(self: ptr CompilerMSL): ptr CompilerGLSL = cast[ptr CompilerGLSL](self)
proc AsCompilerGLSL*(self: ptr CompilerCPP): ptr CompilerGLSL = cast[ptr CompilerGLSL](self)
# Procs:
proc merge*(list: var constType[stdvector_stdstring]): astring {.header: "spirvcross.hpp", importcpp: "::spirv_cross::merge(@)".}
proc converttostring*(t: cfloat): astring {.header: "spirvcross.hpp", importcpp: "::spirv_cross::convert_to_string(@)".}
proc converttostring*(t: cdouble): astring {.header: "spirvcross.hpp", importcpp: "::spirv_cross::convert_to_string(@)".}
proc op*(self: Instruction): uint16 {.header: "spirvcross.hpp", importcpp: "#.op".} #o
proc `op=`*(self: Instruction, value: uint16) {.header: "spirvcross.hpp", importcpp: "#.op = #".}
proc count*(self: Instruction): uint16 {.header: "spirvcross.hpp", importcpp: "#.count".} #o
proc `count=`*(self: Instruction, value: uint16) {.header: "spirvcross.hpp", importcpp: "#.count = #".}
proc offset*(self: Instruction): uint32 {.header: "spirvcross.hpp", importcpp: "#.offset".} #o
proc `offset=`*(self: Instruction, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.offset = #".}
proc length*(self: Instruction): uint32 {.header: "spirvcross.hpp", importcpp: "#.length".} #o
proc `length=`*(self: Instruction, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.length = #".}
proc self*(self: IVariant): uint32 {.header: "spirvcross.hpp", importcpp: "#.self".} #o
proc `self=`*(self: IVariant, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.self = #".}
proc basetype*(self: SPIRUndef): uint32 {.header: "spirvcross.hpp", importcpp: "#.basetype".} #o
proc `basetype=`*(self: SPIRUndef, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.basetype = #".}
proc combinedtype*(self: SPIRCombinedImageSampler): uint32 {.header: "spirvcross.hpp", importcpp: "#.combined_type".} #o
proc `combinedtype=`*(self: SPIRCombinedImageSampler, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.combined_type = #".}
proc image*(self: SPIRCombinedImageSampler): uint32 {.header: "spirvcross.hpp", importcpp: "#.image".} #o
proc `image=`*(self: SPIRCombinedImageSampler, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.image = #".}
proc sampler*(self: SPIRCombinedImageSampler): uint32 {.header: "spirvcross.hpp", importcpp: "#.sampler".} #o
proc `sampler=`*(self: SPIRCombinedImageSampler, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.sampler = #".}
proc opcode*(self: SPIRConstantOp): spvOp {.header: "spirvcross.hpp", importcpp: "#.opcode".} #i
proc `opcode=`*(self: SPIRConstantOp, value: spvOp) {.header: "spirvcross.hpp", importcpp: "#.opcode = #".}
proc arguments*(self: SPIRConstantOp): spirv {.header: "spirvcross.hpp", importcpp: "#.arguments".} #i
proc `arguments=`*(self: SPIRConstantOp, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.arguments = #".}
proc basetype*(self: SPIRConstantOp): uint32 {.header: "spirvcross.hpp", importcpp: "#.basetype".} #o
proc `basetype=`*(self: SPIRConstantOp, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.basetype = #".}
proc basetype*(self: SPIRType): SPIRTypeBaseType {.header: "spirvcross.hpp", importcpp: "#.basetype".} #i
proc `basetype=`*(self: SPIRType, value: SPIRTypeBaseType) {.header: "spirvcross.hpp", importcpp: "#.basetype = #".}
proc width*(self: SPIRType): uint32 {.header: "spirvcross.hpp", importcpp: "#.width".} #o
proc `width=`*(self: SPIRType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.width = #".}
proc vecsize*(self: SPIRType): uint32 {.header: "spirvcross.hpp", importcpp: "#.vecsize".} #o
proc `vecsize=`*(self: SPIRType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.vecsize = #".}
proc columns*(self: SPIRType): uint32 {.header: "spirvcross.hpp", importcpp: "#.columns".} #o
proc `columns=`*(self: SPIRType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.columns = #".}
proc array*(self: SPIRType): spirv {.header: "spirvcross.hpp", importcpp: "#.array".} #i
proc `array=`*(self: SPIRType, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.array = #".}
proc arraysizeliteral*(self: SPIRType): stdvector_bool {.header: "spirvcross.hpp", importcpp: "#.array_size_literal".} #i
proc `arraysizeliteral=`*(self: SPIRType, value: stdvector_bool) {.header: "spirvcross.hpp", importcpp: "#.array_size_literal = #".}
proc pointer*(self: SPIRType): bool {.header: "spirvcross.hpp", importcpp: "#.pointer".} #o
proc `pointer=`*(self: SPIRType, value: bool) {.header: "spirvcross.hpp", importcpp: "#.pointer = #".}
proc storage*(self: SPIRType): spvStorageClass {.header: "spirvcross.hpp", importcpp: "#.storage".} #i
proc `storage=`*(self: SPIRType, value: spvStorageClass) {.header: "spirvcross.hpp", importcpp: "#.storage = #".}
proc membertypes*(self: SPIRType): spirv {.header: "spirvcross.hpp", importcpp: "#.member_types".} #i
proc `membertypes=`*(self: SPIRType, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.member_types = #".}
proc ctype*(self: ImageType): uint32 {.header: "spirvcross.hpp", importcpp: "#.type".} #o
proc `ctype=`*(self: ImageType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.type = #".}
proc dim*(self: ImageType): spvDim {.header: "spirvcross.hpp", importcpp: "#.dim".} #i
proc `dim=`*(self: ImageType, value: spvDim) {.header: "spirvcross.hpp", importcpp: "#.dim = #".}
proc depth*(self: ImageType): bool {.header: "spirvcross.hpp", importcpp: "#.depth".} #o
proc `depth=`*(self: ImageType, value: bool) {.header: "spirvcross.hpp", importcpp: "#.depth = #".}
proc arrayed*(self: ImageType): bool {.header: "spirvcross.hpp", importcpp: "#.arrayed".} #o
proc `arrayed=`*(self: ImageType, value: bool) {.header: "spirvcross.hpp", importcpp: "#.arrayed = #".}
proc ms*(self: ImageType): bool {.header: "spirvcross.hpp", importcpp: "#.ms".} #o
proc `ms=`*(self: ImageType, value: bool) {.header: "spirvcross.hpp", importcpp: "#.ms = #".}
proc sampled*(self: ImageType): uint32 {.header: "spirvcross.hpp", importcpp: "#.sampled".} #o
proc `sampled=`*(self: ImageType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.sampled = #".}
proc format*(self: ImageType): spvImageFormat {.header: "spirvcross.hpp", importcpp: "#.format".} #i
proc `format=`*(self: ImageType, value: spvImageFormat) {.header: "spirvcross.hpp", importcpp: "#.format = #".}
proc access*(self: ImageType): spvAccessQualifier {.header: "spirvcross.hpp", importcpp: "#.access".} #i
proc `access=`*(self: ImageType, value: spvAccessQualifier) {.header: "spirvcross.hpp", importcpp: "#.access = #".}
proc image*(self: SPIRType): ImageType00 {.header: "spirvcross.hpp", importcpp: "#.image".} #i
proc `image=`*(self: SPIRType, value: ImageType00) {.header: "spirvcross.hpp", importcpp: "#.image = #".}
proc ctype*(self: ImageType00): uint32 {.header: "spirvcross.hpp", importcpp: "#.type".} #o
proc `ctype=`*(self: ImageType00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.type = #".}
proc dim*(self: ImageType00): spvDim {.header: "spirvcross.hpp", importcpp: "#.dim".} #i
proc `dim=`*(self: ImageType00, value: spvDim) {.header: "spirvcross.hpp", importcpp: "#.dim = #".}
proc depth*(self: ImageType00): bool {.header: "spirvcross.hpp", importcpp: "#.depth".} #o
proc `depth=`*(self: ImageType00, value: bool) {.header: "spirvcross.hpp", importcpp: "#.depth = #".}
proc arrayed*(self: ImageType00): bool {.header: "spirvcross.hpp", importcpp: "#.arrayed".} #o
proc `arrayed=`*(self: ImageType00, value: bool) {.header: "spirvcross.hpp", importcpp: "#.arrayed = #".}
proc ms*(self: ImageType00): bool {.header: "spirvcross.hpp", importcpp: "#.ms".} #o
proc `ms=`*(self: ImageType00, value: bool) {.header: "spirvcross.hpp", importcpp: "#.ms = #".}
proc sampled*(self: ImageType00): uint32 {.header: "spirvcross.hpp", importcpp: "#.sampled".} #o
proc `sampled=`*(self: ImageType00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.sampled = #".}
proc format*(self: ImageType00): spvImageFormat {.header: "spirvcross.hpp", importcpp: "#.format".} #i
proc `format=`*(self: ImageType00, value: spvImageFormat) {.header: "spirvcross.hpp", importcpp: "#.format = #".}
proc access*(self: ImageType00): spvAccessQualifier {.header: "spirvcross.hpp", importcpp: "#.access".} #i
proc `access=`*(self: ImageType00, value: spvAccessQualifier) {.header: "spirvcross.hpp", importcpp: "#.access = #".}
proc typealias*(self: SPIRType): uint32 {.header: "spirvcross.hpp", importcpp: "#.type_alias".} #o
proc `typealias=`*(self: SPIRType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.type_alias = #".}
proc parenttype*(self: SPIRType): uint32 {.header: "spirvcross.hpp", importcpp: "#.parent_type".} #o
proc `parenttype=`*(self: SPIRType, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.parent_type = #".}
proc membernamecache*(self: SPIRType): stdunorderedset_stdstring {.header: "spirvcross.hpp", importcpp: "#.member_name_cache".} #i
proc `membernamecache=`*(self: SPIRType, value: stdunorderedset_stdstring) {.header: "spirvcross.hpp", importcpp: "#.member_name_cache = #".}
proc ext*(self: SPIRExtension): SPIRExtensionExtension {.header: "spirvcross.hpp", importcpp: "#.ext".} #i
proc `ext=`*(self: SPIRExtension, value: SPIRExtensionExtension) {.header: "spirvcross.hpp", importcpp: "#.ext = #".}
proc self*(self: SPIREntryPoint): uint32 {.header: "spirvcross.hpp", importcpp: "#.self".} #o
proc `self=`*(self: SPIREntryPoint, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.self = #".}
proc name*(self: SPIREntryPoint): astring {.header: "spirvcross.hpp", importcpp: "#.name".} #i
proc `name=`*(self: SPIREntryPoint, value: astring) {.header: "spirvcross.hpp", importcpp: "#.name = #".}
proc origname*(self: SPIREntryPoint): astring {.header: "spirvcross.hpp", importcpp: "#.orig_name".} #i
proc `origname=`*(self: SPIREntryPoint, value: astring) {.header: "spirvcross.hpp", importcpp: "#.orig_name = #".}
proc interfacecvariables*(self: SPIREntryPoint): spirv {.header: "spirvcross.hpp", importcpp: "#.interface_variables".} #i
proc `interfacecvariables=`*(self: SPIREntryPoint, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.interface_variables = #".}
proc flags*(self: SPIREntryPoint): uint64 {.header: "spirvcross.hpp", importcpp: "#.flags".} #o
proc `flags=`*(self: SPIREntryPoint, value: uint64) {.header: "spirvcross.hpp", importcpp: "#.flags = #".}
proc x*(self: a): uint32 {.header: "spirvcross.hpp", importcpp: "#.x".} #o
proc `x=`*(self: a, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.x = #".}
proc y*(self: a): uint32 {.header: "spirvcross.hpp", importcpp: "#.y".} #o
proc `y=`*(self: a, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.y = #".}
proc z*(self: a): uint32 {.header: "spirvcross.hpp", importcpp: "#.z".} #o
proc `z=`*(self: a, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.z = #".}
proc constant0*(self: a): uint32 {.header: "spirvcross.hpp", importcpp: "#.constant".} #o
proc `constant0=`*(self: a, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.constant = #".}
proc workgroupsize*(self: SPIREntryPoint): a00 {.header: "spirvcross.hpp", importcpp: "#.workgroup_size".} #i
proc `workgroupsize=`*(self: SPIREntryPoint, value: a00) {.header: "spirvcross.hpp", importcpp: "#.workgroup_size = #".}
proc x*(self: a00): uint32 {.header: "spirvcross.hpp", importcpp: "#.x".} #o
proc `x=`*(self: a00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.x = #".}
proc y*(self: a00): uint32 {.header: "spirvcross.hpp", importcpp: "#.y".} #o
proc `y=`*(self: a00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.y = #".}
proc z*(self: a00): uint32 {.header: "spirvcross.hpp", importcpp: "#.z".} #o
proc `z=`*(self: a00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.z = #".}
proc constant0*(self: a00): uint32 {.header: "spirvcross.hpp", importcpp: "#.constant".} #o
proc `constant0=`*(self: a00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.constant = #".}
proc invocations*(self: SPIREntryPoint): uint32 {.header: "spirvcross.hpp", importcpp: "#.invocations".} #o
proc `invocations=`*(self: SPIREntryPoint, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.invocations = #".}
proc outputvertices*(self: SPIREntryPoint): uint32 {.header: "spirvcross.hpp", importcpp: "#.output_vertices".} #o
proc `outputvertices=`*(self: SPIREntryPoint, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.output_vertices = #".}
proc model*(self: SPIREntryPoint): spvExecutionModel {.header: "spirvcross.hpp", importcpp: "#.model".} #i
proc `model=`*(self: SPIREntryPoint, value: spvExecutionModel) {.header: "spirvcross.hpp", importcpp: "#.model = #".}
proc baseexpression*(self: SPIRExpression): uint32 {.header: "spirvcross.hpp", importcpp: "#.base_expression".} #o
proc `baseexpression=`*(self: SPIRExpression, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.base_expression = #".}
proc expression*(self: SPIRExpression): astring {.header: "spirvcross.hpp", importcpp: "#.expression".} #i
proc `expression=`*(self: SPIRExpression, value: astring) {.header: "spirvcross.hpp", importcpp: "#.expression = #".}
proc expressiontype*(self: SPIRExpression): uint32 {.header: "spirvcross.hpp", importcpp: "#.expression_type".} #o
proc `expressiontype=`*(self: SPIRExpression, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.expression_type = #".}
proc loadedcfrom*(self: SPIRExpression): uint32 {.header: "spirvcross.hpp", importcpp: "#.loaded_from".} #o
proc `loadedcfrom=`*(self: SPIRExpression, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.loaded_from = #".}
proc immutable*(self: SPIRExpression): bool {.header: "spirvcross.hpp", importcpp: "#.immutable".} #o
proc `immutable=`*(self: SPIRExpression, value: bool) {.header: "spirvcross.hpp", importcpp: "#.immutable = #".}
proc needtranspose*(self: SPIRExpression): bool {.header: "spirvcross.hpp", importcpp: "#.need_transpose".} #o
proc `needtranspose=`*(self: SPIRExpression, value: bool) {.header: "spirvcross.hpp", importcpp: "#.need_transpose = #".}
proc expressiondependencies*(self: SPIRExpression): spirv {.header: "spirvcross.hpp", importcpp: "#.expression_dependencies".} #i
proc `expressiondependencies=`*(self: SPIRExpression, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.expression_dependencies = #".}
proc returntype*(self: SPIRFunctionPrototype): uint32 {.header: "spirvcross.hpp", importcpp: "#.return_type".} #o
proc `returntype=`*(self: SPIRFunctionPrototype, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.return_type = #".}
proc parametertypes*(self: SPIRFunctionPrototype): spirv {.header: "spirvcross.hpp", importcpp: "#.parameter_types".} #i
proc `parametertypes=`*(self: SPIRFunctionPrototype, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.parameter_types = #".}
proc terminator*(self: SPIRBlock): SPIRBlockTerminator {.header: "spirvcross.hpp", importcpp: "#.terminator".} #i
proc `terminator=`*(self: SPIRBlock, value: SPIRBlockTerminator) {.header: "spirvcross.hpp", importcpp: "#.terminator = #".}
proc merge*(self: SPIRBlock): SPIRBlockMerge {.header: "spirvcross.hpp", importcpp: "#.merge".} #i
proc `merge=`*(self: SPIRBlock, value: SPIRBlockMerge) {.header: "spirvcross.hpp", importcpp: "#.merge = #".}
proc nextblock*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.next_block".} #o
proc `nextblock=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.next_block = #".}
proc mergeblock*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.merge_block".} #o
proc `mergeblock=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.merge_block = #".}
proc continueblock*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.continue_block".} #o
proc `continueblock=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.continue_block = #".}
proc returnvalue*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.return_value".} #o
proc `returnvalue=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.return_value = #".}
proc condition*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.condition".} #o
proc `condition=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.condition = #".}
proc trueblock*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.true_block".} #o
proc `trueblock=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.true_block = #".}
proc falseblock*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.false_block".} #o
proc `falseblock=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.false_block = #".}
proc defaultblock*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.default_block".} #o
proc `defaultblock=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.default_block = #".}
proc ops*(self: SPIRBlock): stdvector_Instruction {.header: "spirvcross.hpp", importcpp: "#.ops".} #i
proc `ops=`*(self: SPIRBlock, value: stdvector_Instruction) {.header: "spirvcross.hpp", importcpp: "#.ops = #".}
proc localcvariable*(self: Phi): uint32 {.header: "spirvcross.hpp", importcpp: "#.local_variable".} #o
proc `localcvariable=`*(self: Phi, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.local_variable = #".}
proc parent*(self: Phi): uint32 {.header: "spirvcross.hpp", importcpp: "#.parent".} #o
proc `parent=`*(self: Phi, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.parent = #".}
proc cfunctioncvariable*(self: Phi): uint32 {.header: "spirvcross.hpp", importcpp: "#.function_variable".} #o
proc `cfunctioncvariable=`*(self: Phi, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.function_variable = #".}
proc phicvariables*(self: SPIRBlock): stdvector_Phi {.header: "spirvcross.hpp", importcpp: "#.phi_variables".} #i
proc `phicvariables=`*(self: SPIRBlock, value: stdvector_Phi) {.header: "spirvcross.hpp", importcpp: "#.phi_variables = #".}
proc declaretemporary*(self: SPIRBlock): stdvector_stdpair_uint32t_uint32t {.header: "spirvcross.hpp", importcpp: "#.declare_temporary".} #i
proc `declaretemporary=`*(self: SPIRBlock, value: stdvector_stdpair_uint32t_uint32t) {.header: "spirvcross.hpp", importcpp: "#.declare_temporary = #".}
proc value*(self: Case): uint32 {.header: "spirvcross.hpp", importcpp: "#.value".} #o
proc `value=`*(self: Case, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.value = #".}
proc ablock*(self: Case): uint32 {.header: "spirvcross.hpp", importcpp: "#.block".} #o
proc `ablock=`*(self: Case, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.block = #".}
proc cases*(self: SPIRBlock): stdvector_Case {.header: "spirvcross.hpp", importcpp: "#.cases".} #i
proc `cases=`*(self: SPIRBlock, value: stdvector_Case) {.header: "spirvcross.hpp", importcpp: "#.cases = #".}
proc disableblockoptimization*(self: SPIRBlock): bool {.header: "spirvcross.hpp", importcpp: "#.disable_block_optimization".} #o
proc `disableblockoptimization=`*(self: SPIRBlock, value: bool) {.header: "spirvcross.hpp", importcpp: "#.disable_block_optimization = #".}
proc complexcontinue*(self: SPIRBlock): bool {.header: "spirvcross.hpp", importcpp: "#.complex_continue".} #o
proc `complexcontinue=`*(self: SPIRBlock, value: bool) {.header: "spirvcross.hpp", importcpp: "#.complex_continue = #".}
proc loopdominator*(self: SPIRBlock): uint32 {.header: "spirvcross.hpp", importcpp: "#.loop_dominator".} #o
proc `loopdominator=`*(self: SPIRBlock, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.loop_dominator = #".}
proc dominatedcvariables*(self: SPIRBlock): spirv {.header: "spirvcross.hpp", importcpp: "#.dominated_variables".} #i
proc `dominatedcvariables=`*(self: SPIRBlock, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.dominated_variables = #".}
proc loopcvariables*(self: SPIRBlock): spirv {.header: "spirvcross.hpp", importcpp: "#.loop_variables".} #i
proc `loopcvariables=`*(self: SPIRBlock, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.loop_variables = #".}
proc ctype*(self: Parameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.type".} #o
proc `ctype=`*(self: Parameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.type = #".}
proc id*(self: Parameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: Parameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.id = #".}
proc readcount*(self: Parameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.read_count".} #o
proc `readcount=`*(self: Parameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.read_count = #".}
proc writecount*(self: Parameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.write_count".} #o
proc `writecount=`*(self: Parameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.write_count = #".}
proc aliasglobalcvariable*(self: Parameter): bool {.header: "spirvcross.hpp", importcpp: "#.alias_global_variable".} #o
proc `aliasglobalcvariable=`*(self: Parameter, value: bool) {.header: "spirvcross.hpp", importcpp: "#.alias_global_variable = #".}
proc id*(self: CombinedImageSamplerParameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: CombinedImageSamplerParameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.id = #".}
proc imageid*(self: CombinedImageSamplerParameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.image_id".} #o
proc `imageid=`*(self: CombinedImageSamplerParameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.image_id = #".}
proc samplerid*(self: CombinedImageSamplerParameter): uint32 {.header: "spirvcross.hpp", importcpp: "#.sampler_id".} #o
proc `samplerid=`*(self: CombinedImageSamplerParameter, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.sampler_id = #".}
proc globalimage*(self: CombinedImageSamplerParameter): bool {.header: "spirvcross.hpp", importcpp: "#.global_image".} #o
proc `globalimage=`*(self: CombinedImageSamplerParameter, value: bool) {.header: "spirvcross.hpp", importcpp: "#.global_image = #".}
proc globalsampler*(self: CombinedImageSamplerParameter): bool {.header: "spirvcross.hpp", importcpp: "#.global_sampler".} #o
proc `globalsampler=`*(self: CombinedImageSamplerParameter, value: bool) {.header: "spirvcross.hpp", importcpp: "#.global_sampler = #".}
proc depth*(self: CombinedImageSamplerParameter): bool {.header: "spirvcross.hpp", importcpp: "#.depth".} #o
proc `depth=`*(self: CombinedImageSamplerParameter, value: bool) {.header: "spirvcross.hpp", importcpp: "#.depth = #".}
proc returntype*(self: SPIRFunction): uint32 {.header: "spirvcross.hpp", importcpp: "#.return_type".} #o
proc `returntype=`*(self: SPIRFunction, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.return_type = #".}
proc cfunctiontype*(self: SPIRFunction): uint32 {.header: "spirvcross.hpp", importcpp: "#.function_type".} #o
proc `cfunctiontype=`*(self: SPIRFunction, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.function_type = #".}
proc arguments*(self: SPIRFunction): stdvector_Parameter {.header: "spirvcross.hpp", importcpp: "#.arguments".} #i
proc `arguments=`*(self: SPIRFunction, value: stdvector_Parameter) {.header: "spirvcross.hpp", importcpp: "#.arguments = #".}
proc shadowarguments*(self: SPIRFunction): stdvector_Parameter {.header: "spirvcross.hpp", importcpp: "#.shadow_arguments".} #i
proc `shadowarguments=`*(self: SPIRFunction, value: stdvector_Parameter) {.header: "spirvcross.hpp", importcpp: "#.shadow_arguments = #".}
proc localcvariables*(self: SPIRFunction): spirv {.header: "spirvcross.hpp", importcpp: "#.local_variables".} #i
proc `localcvariables=`*(self: SPIRFunction, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.local_variables = #".}
proc entryblock*(self: SPIRFunction): uint32 {.header: "spirvcross.hpp", importcpp: "#.entry_block".} #o
proc `entryblock=`*(self: SPIRFunction, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.entry_block = #".}
proc blocks*(self: SPIRFunction): spirv {.header: "spirvcross.hpp", importcpp: "#.blocks".} #i
proc `blocks=`*(self: SPIRFunction, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.blocks = #".}
proc combinedparameters*(self: SPIRFunction): stdvector_CombinedImageSamplerParameter {.header: "spirvcross.hpp", importcpp: "#.combined_parameters".} #i
proc `combinedparameters=`*(self: SPIRFunction, value: stdvector_CombinedImageSamplerParameter) {.header: "spirvcross.hpp", importcpp: "#.combined_parameters = #".}
proc addlocalcvariable*(self: SPIRFunction, id: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.add_local_variable(@)".}
proc addparameter*(self: SPIRFunction, parametertype: uint32, id: uint32, aliasglobalcvariable: bool) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.add_parameter(@)".}
proc active*(self: SPIRFunction): bool {.header: "spirvcross.hpp", importcpp: "#.active".} #o
proc `active=`*(self: SPIRFunction, value: bool) {.header: "spirvcross.hpp", importcpp: "#.active = #".}
proc flushundeclared*(self: SPIRFunction): bool {.header: "spirvcross.hpp", importcpp: "#.flush_undeclared".} #o
proc `flushundeclared=`*(self: SPIRFunction, value: bool) {.header: "spirvcross.hpp", importcpp: "#.flush_undeclared = #".}
proc docombinedparameters*(self: SPIRFunction): bool {.header: "spirvcross.hpp", importcpp: "#.do_combined_parameters".} #o
proc `docombinedparameters=`*(self: SPIRFunction, value: bool) {.header: "spirvcross.hpp", importcpp: "#.do_combined_parameters = #".}
proc analyzedcvariablescope*(self: SPIRFunction): bool {.header: "spirvcross.hpp", importcpp: "#.analyzed_variable_scope".} #o
proc `analyzedcvariablescope=`*(self: SPIRFunction, value: bool) {.header: "spirvcross.hpp", importcpp: "#.analyzed_variable_scope = #".}
proc basetype*(self: SPIRAccessChain): uint32 {.header: "spirvcross.hpp", importcpp: "#.basetype".} #o
proc `basetype=`*(self: SPIRAccessChain, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.basetype = #".}
proc storage*(self: SPIRAccessChain): spvStorageClass {.header: "spirvcross.hpp", importcpp: "#.storage".} #i
proc `storage=`*(self: SPIRAccessChain, value: spvStorageClass) {.header: "spirvcross.hpp", importcpp: "#.storage = #".}
proc base*(self: SPIRAccessChain): astring {.header: "spirvcross.hpp", importcpp: "#.base".} #i
proc `base=`*(self: SPIRAccessChain, value: astring) {.header: "spirvcross.hpp", importcpp: "#.base = #".}
proc dynamicindex*(self: SPIRAccessChain): astring {.header: "spirvcross.hpp", importcpp: "#.dynamic_index".} #i
proc `dynamicindex=`*(self: SPIRAccessChain, value: astring) {.header: "spirvcross.hpp", importcpp: "#.dynamic_index = #".}
proc staticindex*(self: SPIRAccessChain): int32 {.header: "spirvcross.hpp", importcpp: "#.static_index".} #o
proc `staticindex=`*(self: SPIRAccessChain, value: int32) {.header: "spirvcross.hpp", importcpp: "#.static_index = #".}
proc loadedcfrom*(self: SPIRAccessChain): uint32 {.header: "spirvcross.hpp", importcpp: "#.loaded_from".} #o
proc `loadedcfrom=`*(self: SPIRAccessChain, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.loaded_from = #".}
proc matrixstride*(self: SPIRAccessChain): uint32 {.header: "spirvcross.hpp", importcpp: "#.matrix_stride".} #o
proc `matrixstride=`*(self: SPIRAccessChain, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.matrix_stride = #".}
proc rowmajormatrix*(self: SPIRAccessChain): bool {.header: "spirvcross.hpp", importcpp: "#.row_major_matrix".} #o
proc `rowmajormatrix=`*(self: SPIRAccessChain, value: bool) {.header: "spirvcross.hpp", importcpp: "#.row_major_matrix = #".}
proc immutable*(self: SPIRAccessChain): bool {.header: "spirvcross.hpp", importcpp: "#.immutable".} #o
proc `immutable=`*(self: SPIRAccessChain, value: bool) {.header: "spirvcross.hpp", importcpp: "#.immutable = #".}
proc basetype*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.basetype".} #o
proc `basetype=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.basetype = #".}
proc storage*(self: SPIRVariable): spvStorageClass {.header: "spirvcross.hpp", importcpp: "#.storage".} #i
proc `storage=`*(self: SPIRVariable, value: spvStorageClass) {.header: "spirvcross.hpp", importcpp: "#.storage = #".}
proc decoration0*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.decoration".} #o
proc `decoration0=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.decoration = #".}
proc initializer*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.initializer".} #o
proc `initializer=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.initializer = #".}
proc basecvariable*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.basevariable".} #o
proc `basecvariable=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.basevariable = #".}
proc dereferencechain*(self: SPIRVariable): spirv {.header: "spirvcross.hpp", importcpp: "#.dereference_chain".} #i
proc `dereferencechain=`*(self: SPIRVariable, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.dereference_chain = #".}
proc compatbuiltin*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.compat_builtin".} #o
proc `compatbuiltin=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.compat_builtin = #".}
proc staticallyassigned*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.statically_assigned".} #o
proc `staticallyassigned=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.statically_assigned = #".}
proc staticexpression*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.static_expression".} #o
proc `staticexpression=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.static_expression = #".}
proc dependees*(self: SPIRVariable): spirv {.header: "spirvcross.hpp", importcpp: "#.dependees".} #i
proc `dependees=`*(self: SPIRVariable, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.dependees = #".}
proc forwardable*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.forwardable".} #o
proc `forwardable=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.forwardable = #".}
proc deferreddeclaration*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.deferred_declaration".} #o
proc `deferreddeclaration=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.deferred_declaration = #".}
proc phicvariable*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.phi_variable".} #o
proc `phicvariable=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.phi_variable = #".}
proc remappedcvariable*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.remapped_variable".} #o
proc `remappedcvariable=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.remapped_variable = #".}
proc remappedcomponents*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.remapped_components".} #o
proc `remappedcomponents=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.remapped_components = #".}
proc dominator*(self: SPIRVariable): uint32 {.header: "spirvcross.hpp", importcpp: "#.dominator".} #o
proc `dominator=`*(self: SPIRVariable, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.dominator = #".}
proc loopcvariable*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.loop_variable".} #o
proc `loopcvariable=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.loop_variable = #".}
proc loopcvariableenable*(self: SPIRVariable): bool {.header: "spirvcross.hpp", importcpp: "#.loop_variable_enable".} #o
proc `loopcvariableenable=`*(self: SPIRVariable, value: bool) {.header: "spirvcross.hpp", importcpp: "#.loop_variable_enable = #".}
proc parameter0*(self: SPIRVariable): ptr Parameter {.header: "spirvcross.hpp", importcpp: "#.parameter".} #i
proc `parameter0=`*(self: SPIRVariable, value: ptr Parameter) {.header: "spirvcross.hpp", importcpp: "#.parameter = #".}
proc u32*(self: Constant): uint32 {.header: "spirvcross.hpp", importcpp: "#.u32".} #o
proc `u32=`*(self: Constant, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.u32 = #".}
proc i32*(self: Constant): int32 {.header: "spirvcross.hpp", importcpp: "#.i32".} #o
proc `i32=`*(self: Constant, value: int32) {.header: "spirvcross.hpp", importcpp: "#.i32 = #".}
proc f32*(self: Constant): cfloat {.header: "spirvcross.hpp", importcpp: "#.f32".} #o
proc `f32=`*(self: Constant, value: cfloat) {.header: "spirvcross.hpp", importcpp: "#.f32 = #".}
proc u64*(self: Constant): uint64 {.header: "spirvcross.hpp", importcpp: "#.u64".} #o
proc `u64=`*(self: Constant, value: uint64) {.header: "spirvcross.hpp", importcpp: "#.u64 = #".}
proc i64*(self: Constant): int64 {.header: "spirvcross.hpp", importcpp: "#.i64".} #o
proc `i64=`*(self: Constant, value: int64) {.header: "spirvcross.hpp", importcpp: "#.i64 = #".}
proc f64*(self: Constant): cdouble {.header: "spirvcross.hpp", importcpp: "#.f64".} #o
proc `f64=`*(self: Constant, value: cdouble) {.header: "spirvcross.hpp", importcpp: "#.f64 = #".}
proc r*(self: ConstantVector): array[0..3, Constant] {.header: "spirvcross.hpp", importcpp: "#.r".} #i
proc `r=`*(self: ConstantVector, value: array[0..3, Constant]) {.header: "spirvcross.hpp", importcpp: "memcpy(#.r, #, sizeof(array[0..3, Constant]))".}
proc id*(self: ConstantVector): array[0..3, uint32] {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: ConstantVector, value: array[0..3, uint32]) {.header: "spirvcross.hpp", importcpp: "memcpy(#.id, #, sizeof(array[0..3, uint32]))".}
proc vecsize*(self: ConstantVector): uint32 {.header: "spirvcross.hpp", importcpp: "#.vecsize".} #o
proc `vecsize=`*(self: ConstantVector, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.vecsize = #".}
proc c*(self: ConstantMatrix): array[0..3, ConstantVector] {.header: "spirvcross.hpp", importcpp: "#.c".} #i
proc `c=`*(self: ConstantMatrix, value: array[0..3, ConstantVector]) {.header: "spirvcross.hpp", importcpp: "memcpy(#.c, #, sizeof(array[0..3, ConstantVector]))".}
proc id*(self: ConstantMatrix): array[0..3, uint32] {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: ConstantMatrix, value: array[0..3, uint32]) {.header: "spirvcross.hpp", importcpp: "memcpy(#.id, #, sizeof(array[0..3, uint32]))".}
proc columns*(self: ConstantMatrix): uint32 {.header: "spirvcross.hpp", importcpp: "#.columns".} #o
proc `columns=`*(self: ConstantMatrix, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.columns = #".}
proc specializationconstantid*(self: SPIRConstant, col: uint32, row: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.specialization_constant_id(@)".}
proc specializationconstantid*(self: SPIRConstant, col: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.specialization_constant_id(@)".}
proc scalar*(self: SPIRConstant, col: uint32, row: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.scalar(@)".}
proc scalarf32*(self: SPIRConstant, col: uint32, row: uint32): cfloat {.header: "spirvcross.hpp", importcpp: "#.scalar_f32(@)".}
proc scalari32*(self: SPIRConstant, col: uint32, row: uint32): int32 {.header: "spirvcross.hpp", importcpp: "#.scalar_i32(@)".}
proc scalarf64*(self: SPIRConstant, col: uint32, row: uint32): cdouble {.header: "spirvcross.hpp", importcpp: "#.scalar_f64(@)".}
proc scalari64*(self: SPIRConstant, col: uint32, row: uint32): int64 {.header: "spirvcross.hpp", importcpp: "#.scalar_i64(@)".}
proc scalaru64*(self: SPIRConstant, col: uint32, row: uint32): uint64 {.header: "spirvcross.hpp", importcpp: "#.scalar_u64(@)".}
proc vector*(self: SPIRConstant): var constType[ConstantVector] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.vector(@))".}
proc vectorsize*(self: SPIRConstant): uint32 {.header: "spirvcross.hpp", importcpp: "#.vector_size(@)".}
proc columns*(self: SPIRConstant): uint32 {.header: "spirvcross.hpp", importcpp: "#.columns(@)".}
proc makenull*(self: SPIRConstant, constanttype: var constType[SPIRType]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.make_null(@)".}
proc constanttype*(self: SPIRConstant): uint32 {.header: "spirvcross.hpp", importcpp: "#.constant_type".} #o
proc `constanttype=`*(self: SPIRConstant, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.constant_type = #".}
proc m*(self: SPIRConstant): ConstantMatrix {.header: "spirvcross.hpp", importcpp: "#.m".} #i
proc `m=`*(self: SPIRConstant, value: ConstantMatrix) {.header: "spirvcross.hpp", importcpp: "#.m = #".}
proc specialization*(self: SPIRConstant): bool {.header: "spirvcross.hpp", importcpp: "#.specialization".} #o
proc `specialization=`*(self: SPIRConstant, value: bool) {.header: "spirvcross.hpp", importcpp: "#.specialization = #".}
proc isusedasarraylength*(self: SPIRConstant): bool {.header: "spirvcross.hpp", importcpp: "#.is_used_as_array_length".} #o
proc `isusedasarraylength=`*(self: SPIRConstant, value: bool) {.header: "spirvcross.hpp", importcpp: "#.is_used_as_array_length = #".}
proc subconstants*(self: SPIRConstant): spirv {.header: "spirvcross.hpp", importcpp: "#.subconstants".} #i
proc `subconstants=`*(self: SPIRConstant, value: spirv) {.header: "spirvcross.hpp", importcpp: "#.subconstants = #".}
proc set*(self: Variant, val: stduniquecptr_IVariant, newtype: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set(@)".}
proc gettype*(self: Variant): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_type(@)".}
proc getid*(self: Variant): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_id(@)".}
proc empty*(self: Variant): bool {.header: "spirvcross.hpp", importcpp: "#.empty(@)".}
proc reset*(self: Variant) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.reset(@)".}
proc alias*(self: Decoration): astring {.header: "spirvcross.hpp", importcpp: "#.alias".} #i
proc `alias=`*(self: Decoration, value: astring) {.header: "spirvcross.hpp", importcpp: "#.alias = #".}
proc qualifiedalias*(self: Decoration): astring {.header: "spirvcross.hpp", importcpp: "#.qualified_alias".} #i
proc `qualifiedalias=`*(self: Decoration, value: astring) {.header: "spirvcross.hpp", importcpp: "#.qualified_alias = #".}
proc decorationflags*(self: Decoration): uint64 {.header: "spirvcross.hpp", importcpp: "#.decoration_flags".} #o
proc `decorationflags=`*(self: Decoration, value: uint64) {.header: "spirvcross.hpp", importcpp: "#.decoration_flags = #".}
proc builtintype*(self: Decoration): spvBuiltIn {.header: "spirvcross.hpp", importcpp: "#.builtin_type".} #i
proc `builtintype=`*(self: Decoration, value: spvBuiltIn) {.header: "spirvcross.hpp", importcpp: "#.builtin_type = #".}
proc location*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.location".} #o
proc `location=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.location = #".}
proc set*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.set".} #o
proc `set=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.set = #".}
proc binding*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.binding".} #o
proc `binding=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.binding = #".}
proc offset*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.offset".} #o
proc `offset=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.offset = #".}
proc arraystride*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.array_stride".} #o
proc `arraystride=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.array_stride = #".}
proc matrixstride*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.matrix_stride".} #o
proc `matrixstride=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.matrix_stride = #".}
proc inputattachment*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.input_attachment".} #o
proc `inputattachment=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.input_attachment = #".}
proc specid*(self: Decoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.spec_id".} #o
proc `specid=`*(self: Decoration, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.spec_id = #".}
proc builtin*(self: Decoration): bool {.header: "spirvcross.hpp", importcpp: "#.builtin".} #o
proc `builtin=`*(self: Decoration, value: bool) {.header: "spirvcross.hpp", importcpp: "#.builtin = #".}
proc decoration0*(self: Meta): Decoration {.header: "spirvcross.hpp", importcpp: "#.decoration".} #i
proc `decoration0=`*(self: Meta, value: Decoration) {.header: "spirvcross.hpp", importcpp: "#.decoration = #".}
proc members*(self: Meta): stdvector_Decoration {.header: "spirvcross.hpp", importcpp: "#.members".} #i
proc `members=`*(self: Meta, value: stdvector_Decoration) {.header: "spirvcross.hpp", importcpp: "#.members = #".}
proc sampler*(self: Meta): uint32 {.header: "spirvcross.hpp", importcpp: "#.sampler".} #o
proc `sampler=`*(self: Meta, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.sampler = #".}
proc decorationwordoffset*(self: Meta): stdunorderedmap_uint32t_uint32t {.header: "spirvcross.hpp", importcpp: "#.decoration_word_offset".} #i
proc `decorationwordoffset=`*(self: Meta, value: stdunorderedmap_uint32t_uint32t) {.header: "spirvcross.hpp", importcpp: "#.decoration_word_offset = #".}
proc hlslmagiccounterbuffername*(self: Meta): astring {.header: "spirvcross.hpp", importcpp: "#.hlsl_magic_counter_buffer_name".} #i
proc `hlslmagiccounterbuffername=`*(self: Meta, value: astring) {.header: "spirvcross.hpp", importcpp: "#.hlsl_magic_counter_buffer_name = #".}
proc hlslmagiccounterbuffercandidate*(self: Meta): bool {.header: "spirvcross.hpp", importcpp: "#.hlsl_magic_counter_buffer_candidate".} #o
proc `hlslmagiccounterbuffercandidate=`*(self: Meta, value: bool) {.header: "spirvcross.hpp", importcpp: "#.hlsl_magic_counter_buffer_candidate = #".}
proc id*(self: Resource): uint32 {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: Resource, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.id = #".}
proc typeid*(self: Resource): uint32 {.header: "spirvcross.hpp", importcpp: "#.type_id".} #o
proc `typeid=`*(self: Resource, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.type_id = #".}
proc basetypeid*(self: Resource): uint32 {.header: "spirvcross.hpp", importcpp: "#.base_type_id".} #o
proc `basetypeid=`*(self: Resource, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.base_type_id = #".}
proc name*(self: Resource): astring {.header: "spirvcross.hpp", importcpp: "#.name".} #i
proc `name=`*(self: Resource, value: astring) {.header: "spirvcross.hpp", importcpp: "#.name = #".}
proc uniformbuffers*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.uniform_buffers".} #i
proc `uniformbuffers=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.uniform_buffers = #".}
proc storagebuffers*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.storage_buffers".} #i
proc `storagebuffers=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.storage_buffers = #".}
proc stageinputs*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.stage_inputs".} #i
proc `stageinputs=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.stage_inputs = #".}
proc stageoutputs*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.stage_outputs".} #i
proc `stageoutputs=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.stage_outputs = #".}
proc subpassinputs*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.subpass_inputs".} #i
proc `subpassinputs=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.subpass_inputs = #".}
proc storageimages*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.storage_images".} #i
proc `storageimages=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.storage_images = #".}
proc sampledimages*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.sampled_images".} #i
proc `sampledimages=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.sampled_images = #".}
proc atomiccounters*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.atomic_counters".} #i
proc `atomiccounters=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.atomic_counters = #".}
proc pushconstantbuffers*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.push_constant_buffers".} #i
proc `pushconstantbuffers=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.push_constant_buffers = #".}
proc separateimages*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.separate_images".} #i
proc `separateimages=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.separate_images = #".}
proc separatesamplers*(self: ShaderResources): stdvector_Resource {.header: "spirvcross.hpp", importcpp: "#.separate_samplers".} #i
proc `separatesamplers=`*(self: ShaderResources, value: stdvector_Resource) {.header: "spirvcross.hpp", importcpp: "#.separate_samplers = #".}
proc combinedid*(self: CombinedImageSampler): uint32 {.header: "spirvcross.hpp", importcpp: "#.combined_id".} #o
proc `combinedid=`*(self: CombinedImageSampler, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.combined_id = #".}
proc imageid*(self: CombinedImageSampler): uint32 {.header: "spirvcross.hpp", importcpp: "#.image_id".} #o
proc `imageid=`*(self: CombinedImageSampler, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.image_id = #".}
proc samplerid*(self: CombinedImageSampler): uint32 {.header: "spirvcross.hpp", importcpp: "#.sampler_id".} #o
proc `samplerid=`*(self: CombinedImageSampler, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.sampler_id = #".}
proc id*(self: SpecializationConstant): uint32 {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: SpecializationConstant, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.id = #".}
proc constantid*(self: SpecializationConstant): uint32 {.header: "spirvcross.hpp", importcpp: "#.constant_id".} #o
proc `constantid=`*(self: SpecializationConstant, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.constant_id = #".}
proc index*(self: BufferRange): cuint {.header: "spirvcross.hpp", importcpp: "#.index".} #o
proc `index=`*(self: BufferRange, value: cuint) {.header: "spirvcross.hpp", importcpp: "#.index = #".}
proc offset*(self: BufferRange): csize {.header: "spirvcross.hpp", importcpp: "#.offset".} #o
proc `offset=`*(self: BufferRange, value: csize) {.header: "spirvcross.hpp", importcpp: "#.offset = #".}
proc range*(self: BufferRange): csize {.header: "spirvcross.hpp", importcpp: "#.range".} #o
proc `range=`*(self: BufferRange, value: csize) {.header: "spirvcross.hpp", importcpp: "#.range = #".}
proc compile*(self: Compiler): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc getname*(self: Compiler, id: uint32): var constType[astring] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_name(@))".}
proc setdecoration*(self: Compiler, id: uint32, decoration: spvDecoration, argument: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_decoration(@)".}
proc setname*(self: Compiler, id: uint32, name: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_name(@)".}
proc getdecorationmask*(self: Compiler, id: uint32): uint64 {.header: "spirvcross.hpp", importcpp: "#.get_decoration_mask(@)".}
proc hasdecoration*(self: Compiler, id: uint32, decoration: spvDecoration): bool {.header: "spirvcross.hpp", importcpp: "#.has_decoration(@)".}
proc getdecoration*(self: Compiler, id: uint32, decoration: spvDecoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_decoration(@)".}
proc unsetdecoration*(self: Compiler, id: uint32, decoration: spvDecoration) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.unset_decoration(@)".}
proc gettype*(self: Compiler, id: uint32): var constType[SPIRType] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_type(@))".}
proc gettypecfromcvariable*(self: Compiler, id: uint32): var constType[SPIRType] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_type_from_variable(@))".}
proc getstorageclass*(self: Compiler, id: uint32): spvStorageClass {.header: "spirvcross.hpp", importcpp: "#.get_storage_class(@)".}
proc getfallbackname*(self: Compiler, id: uint32): constType[astring] {.header: "spirvcross.hpp", importcpp: "#.get_fallback_name(@)".}
proc getblockfallbackname*(self: Compiler, id: uint32): constType[astring] {.header: "spirvcross.hpp", importcpp: "#.get_block_fallback_name(@)".}
proc getmembername*(self: Compiler, id: uint32, index: uint32): var constType[astring] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_member_name(@))".}
proc getmemberdecoration*(self: Compiler, id: uint32, index: uint32, decoration: spvDecoration): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_member_decoration(@)".}
proc setmembername*(self: Compiler, id: uint32, index: uint32, name: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_member_name(@)".}
proc getmemberqualifiedname*(self: Compiler, typeid: uint32, index: uint32): var constType[astring] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_member_qualified_name(@))".}
proc setmemberqualifiedname*(self: Compiler, typeid: uint32, index: uint32, name: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_member_qualified_name(@)".}
proc getmemberdecorationmask*(self: Compiler, id: uint32, index: uint32): uint64 {.header: "spirvcross.hpp", importcpp: "#.get_member_decoration_mask(@)".}
proc hasmemberdecoration*(self: Compiler, id: uint32, index: uint32, decoration: spvDecoration): bool {.header: "spirvcross.hpp", importcpp: "#.has_member_decoration(@)".}
proc setmemberdecoration*(self: Compiler, id: uint32, index: uint32, decoration: spvDecoration, argument: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_member_decoration(@)".}
proc unsetmemberdecoration*(self: Compiler, id: uint32, index: uint32, decoration: spvDecoration) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.unset_member_decoration(@)".}
proc getfallbackmembername*(self: Compiler, index: uint32): constType[astring] {.header: "spirvcross.hpp", importcpp: "#.get_fallback_member_name(@)".}
proc getactivebufferranges*(self: Compiler, id: uint32): vector0 {.header: "spirvcross.hpp", importcpp: "#.get_active_buffer_ranges(@)".}
proc getdeclaredstructsize*(self: Compiler, structtype: var constType[SPIRType]): csize {.header: "spirvcross.hpp", importcpp: "#.get_declared_struct_size(@)".}
proc getdeclaredstructmembersize*(self: Compiler, structtype: var constType[SPIRType], index: uint32): csize {.header: "spirvcross.hpp", importcpp: "#.get_declared_struct_member_size(@)".}
proc flatteninterfaceblock*(self: Compiler, id: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.flatten_interface_block(@)".}
proc getactiveinterfacecvariables*(self: Compiler): stdunorderedset_uint32t {.header: "spirvcross.hpp", importcpp: "#.get_active_interface_variables(@)".}
proc setenabledinterfacecvariables*(self: Compiler, activecvariables: stdunorderedset_uint32t) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_enabled_interface_variables(@)".}
proc getshaderresources*(self: Compiler): ShaderResources {.header: "spirvcross.hpp", importcpp: "#.get_shader_resources(@)".}
proc getshaderresources*(self: Compiler, activecvariables: var constType[stdunorderedset_uint32t]): ShaderResources {.header: "spirvcross.hpp", importcpp: "#.get_shader_resources(@)".}
proc setremappedcvariablestate*(self: Compiler, id: uint32, remapenable: bool) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_remapped_variable_state(@)".}
proc getremappedcvariablestate*(self: Compiler, id: uint32): bool {.header: "spirvcross.hpp", importcpp: "#.get_remapped_variable_state(@)".}
proc setsubpassinputremappedcomponents*(self: Compiler, id: uint32, components: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_subpass_input_remapped_components(@)".}
proc getsubpassinputremappedcomponents*(self: Compiler, id: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_subpass_input_remapped_components(@)".}
proc getentrypoints*(self: Compiler): stdvector_stdstring {.header: "spirvcross.hpp", importcpp: "#.get_entry_points(@)".}
proc setentrypoint*(self: Compiler, name: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_entry_point(@)".}
proc renameentrypoint*(self: Compiler, oldname: var constType[astring], newname: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.rename_entry_point(@)".}
proc getentrypoint*(self: Compiler, name: var constType[astring]): var constType[SPIREntryPoint] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_entry_point(@))".}
proc getcleansedentrypointname*(self: Compiler, name: var constType[astring]): var constType[astring] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_cleansed_entry_point_name(@))".}
proc getexecutionmodemask*(self: Compiler): uint64 {.header: "spirvcross.hpp", importcpp: "#.get_execution_mode_mask(@)".}
proc unsetexecutionmode*(self: Compiler, mode: spvExecutionMode) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.unset_execution_mode(@)".}
proc setexecutionmode*(self: Compiler, mode: spvExecutionMode, arg0: uint32, arg1: uint32, arg2: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_execution_mode(@)".}
proc getexecutionmodeargument*(self: Compiler, mode: spvExecutionMode, index: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_execution_mode_argument(@)".}
proc getexecutionmodel*(self: Compiler): spvExecutionModel {.header: "spirvcross.hpp", importcpp: "#.get_execution_model(@)".}
proc getworkgroupsizespecializationconstants*(self: Compiler, x: var SpecializationConstant, y: var SpecializationConstant, z: var SpecializationConstant): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_work_group_size_specialization_constants(@)".}
proc buildcombinedimagesamplers*(self: Compiler) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.build_combined_image_samplers(@)".}
proc getcombinedimagesamplers*(self: Compiler): var constType[stdvector_CombinedImageSampler] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_combined_image_samplers(@))".}
proc setcvariabletyperemapcallback*(self: Compiler, cb: VariableTypeRemapCallback) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_variable_type_remap_callback(@)".}
proc getspecializationconstants*(self: Compiler): vector000 {.header: "spirvcross.hpp", importcpp: "#.get_specialization_constants(@)".}
proc getconstant*(self: Compiler, id: uint32): var SPIRConstant {.header: "spirvcross.hpp", importcpp: "#.get_constant(@)".}
proc getcurrentidbound*(self: Compiler): uint32 {.header: "spirvcross.hpp", importcpp: "#.get_current_id_bound(@)".}
proc typestructmemberoffset*(self: Compiler, ctype: var constType[SPIRType], index: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.type_struct_member_offset(@)".}
proc typestructmemberarraystride*(self: Compiler, ctype: var constType[SPIRType], index: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.type_struct_member_array_stride(@)".}
proc typestructmembermatrixstride*(self: Compiler, ctype: var constType[SPIRType], index: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "#.type_struct_member_matrix_stride(@)".}
proc getbinaryoffsetfordecoration*(self: Compiler, id: uint32, decoration: spvDecoration, wordoffset: var uint32): bool {.header: "spirvcross.hpp", importcpp: "#.get_binary_offset_for_decoration(@)".}
proc bufferishlslcounterbuffer*(self: Compiler, id: uint32): bool {.header: "spirvcross.hpp", importcpp: "#.buffer_is_hlsl_counter_buffer(@)".}
proc buffergethlslcounterbuffer*(self: Compiler, id: uint32, counterid: var uint32): bool {.header: "spirvcross.hpp", importcpp: "#.buffer_get_hlsl_counter_buffer(@)".}
proc getdeclaredcapabilities*(self: Compiler): var constType[stdvector_spvCapability] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_declared_capabilities(@))".}
proc getdeclaredextensions*(self: Compiler): var constType[stdvector_stdstring] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_declared_extensions(@))".}
proc getremappeddeclaredblockname*(self: Compiler, id: uint32): astring {.header: "spirvcross.hpp", importcpp: "#.get_remapped_declared_block_name(@)".}
proc id*(self: PlsRemap): uint32 {.header: "spirvcross.hpp", importcpp: "#.id".} #o
proc `id=`*(self: PlsRemap, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.id = #".}
proc format*(self: PlsRemap): spirv_crossPlsFormat {.header: "spirvcross.hpp", importcpp: "#.format".} #i
proc `format=`*(self: PlsRemap, value: spirv_crossPlsFormat) {.header: "spirvcross.hpp", importcpp: "#.format = #".}
proc version*(self: Options): uint32 {.header: "spirvcross.hpp", importcpp: "#.version".} #o
proc `version=`*(self: Options, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.version = #".}
proc es*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.es".} #o
proc `es=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.es = #".}
proc forcetemporary*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.force_temporary".} #o
proc `forcetemporary=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.force_temporary = #".}
proc cfganalysis*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.cfg_analysis".} #o
proc `cfganalysis=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.cfg_analysis = #".}
proc vulkansemantics*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.vulkan_semantics".} #o
proc `vulkansemantics=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.vulkan_semantics = #".}
proc separateshaderobjects*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.separate_shader_objects".} #o
proc `separateshaderobjects=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.separate_shader_objects = #".}
proc flattenmultidimensionalarrays*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.flatten_multidimensional_arrays".} #o
proc `flattenmultidimensionalarrays=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.flatten_multidimensional_arrays = #".}
proc enable420packextension*(self: Options): bool {.header: "spirvcross.hpp", importcpp: "#.enable_420pack_extension".} #o
proc `enable420packextension=`*(self: Options, value: bool) {.header: "spirvcross.hpp", importcpp: "#.enable_420pack_extension = #".}
proc fixupclipspace*(self: a0000): bool {.header: "spirvcross.hpp", importcpp: "#.fixup_clipspace".} #o
proc `fixupclipspace=`*(self: a0000, value: bool) {.header: "spirvcross.hpp", importcpp: "#.fixup_clipspace = #".}
proc flipverty*(self: a0000): bool {.header: "spirvcross.hpp", importcpp: "#.flip_vert_y".} #o
proc `flipverty=`*(self: a0000, value: bool) {.header: "spirvcross.hpp", importcpp: "#.flip_vert_y = #".}
proc vertex*(self: Options): a000000 {.header: "spirvcross.hpp", importcpp: "#.vertex".} #i
proc `vertex=`*(self: Options, value: a000000) {.header: "spirvcross.hpp", importcpp: "#.vertex = #".}
proc fixupclipspace*(self: a000000): bool {.header: "spirvcross.hpp", importcpp: "#.fixup_clipspace".} #o
proc `fixupclipspace=`*(self: a000000, value: bool) {.header: "spirvcross.hpp", importcpp: "#.fixup_clipspace = #".}
proc flipverty*(self: a000000): bool {.header: "spirvcross.hpp", importcpp: "#.flip_vert_y".} #o
proc `flipverty=`*(self: a000000, value: bool) {.header: "spirvcross.hpp", importcpp: "#.flip_vert_y = #".}
proc defaultfloatprecision*(self: a00000000): OptionsPrecision {.header: "spirvcross.hpp", importcpp: "#.default_float_precision".} #i
proc `defaultfloatprecision=`*(self: a00000000, value: OptionsPrecision) {.header: "spirvcross.hpp", importcpp: "#.default_float_precision = #".}
proc defaultintprecision*(self: a00000000): OptionsPrecision {.header: "spirvcross.hpp", importcpp: "#.default_int_precision".} #i
proc `defaultintprecision=`*(self: a00000000, value: OptionsPrecision) {.header: "spirvcross.hpp", importcpp: "#.default_int_precision = #".}
proc fragment*(self: Options): a0000000000 {.header: "spirvcross.hpp", importcpp: "#.fragment".} #i
proc `fragment=`*(self: Options, value: a0000000000) {.header: "spirvcross.hpp", importcpp: "#.fragment = #".}
proc defaultfloatprecision*(self: a0000000000): OptionsPrecision {.header: "spirvcross.hpp", importcpp: "#.default_float_precision".} #i
proc `defaultfloatprecision=`*(self: a0000000000, value: OptionsPrecision) {.header: "spirvcross.hpp", importcpp: "#.default_float_precision = #".}
proc defaultintprecision*(self: a0000000000): OptionsPrecision {.header: "spirvcross.hpp", importcpp: "#.default_int_precision".} #i
proc `defaultintprecision=`*(self: a0000000000, value: OptionsPrecision) {.header: "spirvcross.hpp", importcpp: "#.default_int_precision = #".}
proc remappixellocalstorage*(self: CompilerGLSL, inputs: stdvector_PlsRemap, outputs: stdvector_PlsRemap) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.remap_pixel_local_storage(@)".}
proc getoptions*(self: CompilerGLSL): var constType[Options] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_options(@))".}
proc setoptions*(self: CompilerGLSL, opts: var Options) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_options(@)".}
proc compile*(self: CompilerGLSL): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc getpartialsource*(self: CompilerGLSL): astring {.header: "spirvcross.hpp", importcpp: "#.get_partial_source(@)".}
proc addheaderline*(self: CompilerGLSL, str: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.add_header_line(@)".}
proc requireextension*(self: CompilerGLSL, ext: var constType[astring]) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.require_extension(@)".}
proc flattenbufferblock*(self: CompilerGLSL, id: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.flatten_buffer_block(@)".}
proc location*(self: HLSLVertexAttributeRemap): uint32 {.header: "spirvcross.hpp", importcpp: "#.location".} #o
proc `location=`*(self: HLSLVertexAttributeRemap, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.location = #".}
proc semantic*(self: HLSLVertexAttributeRemap): astring {.header: "spirvcross.hpp", importcpp: "#.semantic".} #i
proc `semantic=`*(self: HLSLVertexAttributeRemap, value: astring) {.header: "spirvcross.hpp", importcpp: "#.semantic = #".}
proc shadermodel*(self: Options00): uint32 {.header: "spirvcross.hpp", importcpp: "#.shader_model".} #o
proc `shadermodel=`*(self: Options00, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.shader_model = #".}
proc pointsizecompat*(self: Options00): bool {.header: "spirvcross.hpp", importcpp: "#.point_size_compat".} #o
proc `pointsizecompat=`*(self: Options00, value: bool) {.header: "spirvcross.hpp", importcpp: "#.point_size_compat = #".}
proc getoptions*(self: CompilerHLSL): var constType[Options00] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_options(@))".}
proc setoptions*(self: CompilerHLSL, opts: var Options00) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_options(@)".}
proc compile*(self: CompilerHLSL, vertexattributes: stdvector_HLSLVertexAttributeRemap): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc compile*(self: CompilerHLSL): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc location*(self: MSLVertexAttr): uint32 {.header: "spirvcross.hpp", importcpp: "#.location".} #o
proc `location=`*(self: MSLVertexAttr, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.location = #".}
proc mslbuffer*(self: MSLVertexAttr): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_buffer".} #o
proc `mslbuffer=`*(self: MSLVertexAttr, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_buffer = #".}
proc msloffset*(self: MSLVertexAttr): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_offset".} #o
proc `msloffset=`*(self: MSLVertexAttr, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_offset = #".}
proc mslstride*(self: MSLVertexAttr): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_stride".} #o
proc `mslstride=`*(self: MSLVertexAttr, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_stride = #".}
proc perinstance*(self: MSLVertexAttr): bool {.header: "spirvcross.hpp", importcpp: "#.per_instance".} #o
proc `perinstance=`*(self: MSLVertexAttr, value: bool) {.header: "spirvcross.hpp", importcpp: "#.per_instance = #".}
proc usedbyshader*(self: MSLVertexAttr): bool {.header: "spirvcross.hpp", importcpp: "#.used_by_shader".} #o
proc `usedbyshader=`*(self: MSLVertexAttr, value: bool) {.header: "spirvcross.hpp", importcpp: "#.used_by_shader = #".}
proc stage*(self: MSLResourceBinding): spvExecutionModel {.header: "spirvcross.hpp", importcpp: "#.stage".} #i
proc `stage=`*(self: MSLResourceBinding, value: spvExecutionModel) {.header: "spirvcross.hpp", importcpp: "#.stage = #".}
proc descset*(self: MSLResourceBinding): uint32 {.header: "spirvcross.hpp", importcpp: "#.desc_set".} #o
proc `descset=`*(self: MSLResourceBinding, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.desc_set = #".}
proc binding*(self: MSLResourceBinding): uint32 {.header: "spirvcross.hpp", importcpp: "#.binding".} #o
proc `binding=`*(self: MSLResourceBinding, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.binding = #".}
proc mslbuffer*(self: MSLResourceBinding): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_buffer".} #o
proc `mslbuffer=`*(self: MSLResourceBinding, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_buffer = #".}
proc msltexture*(self: MSLResourceBinding): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_texture".} #o
proc `msltexture=`*(self: MSLResourceBinding, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_texture = #".}
proc mslsampler*(self: MSLResourceBinding): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_sampler".} #o
proc `mslsampler=`*(self: MSLResourceBinding, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_sampler = #".}
proc usedbyshader*(self: MSLResourceBinding): bool {.header: "spirvcross.hpp", importcpp: "#.used_by_shader".} #o
proc `usedbyshader=`*(self: MSLResourceBinding, value: bool) {.header: "spirvcross.hpp", importcpp: "#.used_by_shader = #".}
proc platform*(self: Options0000): Options000000 {.header: "spirvcross.hpp", importcpp: "#.platform".} #i
proc `platform=`*(self: Options0000, value: Options000000) {.header: "spirvcross.hpp", importcpp: "#.platform = #".}
proc mslversion*(self: Options0000): uint32 {.header: "spirvcross.hpp", importcpp: "#.msl_version".} #o
proc `mslversion=`*(self: Options0000, value: uint32) {.header: "spirvcross.hpp", importcpp: "#.msl_version = #".}
proc enablepointsizebuiltin*(self: Options0000): bool {.header: "spirvcross.hpp", importcpp: "#.enable_point_size_builtin".} #o
proc `enablepointsizebuiltin=`*(self: Options0000, value: bool) {.header: "spirvcross.hpp", importcpp: "#.enable_point_size_builtin = #".}
proc resolvespecializedarraylengths*(self: Options0000): bool {.header: "spirvcross.hpp", importcpp: "#.resolve_specialized_array_lengths".} #o
proc `resolvespecializedarraylengths=`*(self: Options0000, value: bool) {.header: "spirvcross.hpp", importcpp: "#.resolve_specialized_array_lengths = #".}
proc isios*(self: Options0000): bool {.header: "spirvcross.hpp", importcpp: "#.is_ios(@)".}
proc ismacos*(self: Options0000): bool {.header: "spirvcross.hpp", importcpp: "#.is_macos(@)".}
proc setmslversion*(self: Options0000, major: uint32, minor: uint32, patch: uint32) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_msl_version(@)".}
proc supportsmslversion*(self: Options0000, major: uint32, minor: uint32, patch: uint32): bool {.header: "spirvcross.hpp", importcpp: "#.supports_msl_version(@)".}
proc makemslversion*(major: uint32, minor: uint32, patch: uint32): uint32 {.header: "spirvcross.hpp", importcpp: "::spirv_cross::CompilerMSL::Options::make_msl_version(@)".}
proc getoptions*(self: CompilerMSL): var constType[Options0000] {.header: "spirvcross.hpp", importcpp: "const_cast<'0>(#.get_options(@))".}
proc setoptions*(self: CompilerMSL, opts: var Options0000) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_options(@)".}
proc compile*(self: CompilerMSL): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc compile*(self: CompilerMSL, pvtxattrs: ptr vector00000, presbindings: ptr vector0000000): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc compile*(self: CompilerMSL, mslcfg: var Options0000, pvtxattrs: ptr vector00000, presbindings: ptr vector0000000): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc compile*(self: CompilerCPP): astring {.header: "spirvcross.hpp", importcpp: "#.compile(@)".}
proc setinterfacename*(self: CompilerCPP, name: astring) {.cdecl, exportc, dynlib, header: "spirvcross.hpp", importcpp: "#.set_interface_name(@)".}
# Lifetime:
proc initCompilerError*(str: var constType[astring]): CompilerError {.importcpp: "spirv_cross::CompilerError(@)".}
proc deleteCompilerError*(self: ptr CompilerError) {.importcpp: "delete #".}
proc initInstruction*(spirv: var constType[spirv], index: var uint32): Instruction {.importcpp: "spirv_cross::Instruction(@)".}
proc deleteInstruction*(self: ptr Instruction) {.importcpp: "delete #".}
proc initIVariant*(): IVariant {.importcpp: "spirv_cross::IVariant(@)".}
proc deleteIVariant*(self: ptr IVariant) {.importcpp: "delete #".}
proc initSPIRUndef*(basetype: uint32): SPIRUndef {.importcpp: "spirv_cross::SPIRUndef(@)".}
proc deleteSPIRUndef*(self: ptr SPIRUndef) {.importcpp: "delete #".}
proc initSPIRCombinedImageSampler*(ctype: uint32, image: uint32, sampler: uint32): SPIRCombinedImageSampler {.importcpp: "spirv_cross::SPIRCombinedImageSampler(@)".}
proc deleteSPIRCombinedImageSampler*(self: ptr SPIRCombinedImageSampler) {.importcpp: "delete #".}
proc initSPIRConstantOp*(resulttype: uint32, op: spvOp, args: ptr constType[cuint], length: uint32): SPIRConstantOp {.importcpp: "spirv_cross::SPIRConstantOp(@)".}
proc deleteSPIRConstantOp*(self: ptr SPIRConstantOp) {.importcpp: "delete #".}
proc initSPIRType*(): SPIRType {.importcpp: "spirv_cross::SPIRType(@)".}
proc deleteSPIRType*(self: ptr SPIRType) {.importcpp: "delete #".}
proc initImageType*(): ImageType {.importcpp: "spirv_cross::SPIRType::ImageType(@)".}
proc deleteImageType*(self: ptr ImageType) {.importcpp: "delete #".}
proc initImageType00*(): ImageType00 {.importcpp: "spirv_cross::SPIRType::ImageType(@)".}
proc deleteImageType00*(self: ptr ImageType00) {.importcpp: "delete #".}
proc initSPIRExtension*(ext: SPIRExtensionExtension): SPIRExtension {.importcpp: "spirv_cross::SPIRExtension(@)".}
proc deleteSPIRExtension*(self: ptr SPIRExtension) {.importcpp: "delete #".}
proc initSPIREntryPoint*(self: uint32, executionmodel: spvExecutionModel, entryname: var constType[astring]): SPIREntryPoint {.importcpp: "spirv_cross::SPIREntryPoint(@)".}
proc initSPIREntryPoint*(): SPIREntryPoint {.importcpp: "spirv_cross::SPIREntryPoint(@)".}
proc deleteSPIREntryPoint*(self: ptr SPIREntryPoint) {.importcpp: "delete #".}
proc initSPIRExpression*(expr: astring, expressiontype: uint32, immutable: bool): SPIRExpression {.importcpp: "spirv_cross::SPIRExpression(@)".}
proc deleteSPIRExpression*(self: ptr SPIRExpression) {.importcpp: "delete #".}
proc initSPIRFunctionPrototype*(returntype: uint32): SPIRFunctionPrototype {.importcpp: "spirv_cross::SPIRFunctionPrototype(@)".}
proc deleteSPIRFunctionPrototype*(self: ptr SPIRFunctionPrototype) {.importcpp: "delete #".}
proc initSPIRBlock*(): SPIRBlock {.importcpp: "spirv_cross::SPIRBlock(@)".}
proc deleteSPIRBlock*(self: ptr SPIRBlock) {.importcpp: "delete #".}
proc initPhi*(): Phi {.importcpp: "spirv_cross::SPIRBlock::Phi(@)".}
proc deletePhi*(self: ptr Phi) {.importcpp: "delete #".}
proc initCase*(): Case {.importcpp: "spirv_cross::SPIRBlock::Case(@)".}
proc deleteCase*(self: ptr Case) {.importcpp: "delete #".}
proc initSPIRFunction*(returntype: uint32, cfunctiontype: uint32): SPIRFunction {.importcpp: "spirv_cross::SPIRFunction(@)".}
proc deleteSPIRFunction*(self: ptr SPIRFunction) {.importcpp: "delete #".}
proc initParameter*(): Parameter {.importcpp: "spirv_cross::SPIRFunction::Parameter(@)".}
proc deleteParameter*(self: ptr Parameter) {.importcpp: "delete #".}
proc initCombinedImageSamplerParameter*(): CombinedImageSamplerParameter {.importcpp: "spirv_cross::SPIRFunction::CombinedImageSamplerParameter(@)".}
proc deleteCombinedImageSamplerParameter*(self: ptr CombinedImageSamplerParameter) {.importcpp: "delete #".}
proc initSPIRAccessChain*(basetype: uint32, storage: spvStorageClass, base: astring, dynamicindex: astring, staticindex: int32): SPIRAccessChain {.importcpp: "spirv_cross::SPIRAccessChain(@)".}
proc deleteSPIRAccessChain*(self: ptr SPIRAccessChain) {.importcpp: "delete #".}
proc initSPIRVariable*(): SPIRVariable {.importcpp: "spirv_cross::SPIRVariable(@)".}
proc initSPIRVariable*(basetype: uint32, storage: spvStorageClass, initializer: uint32, basecvariable: uint32): SPIRVariable {.importcpp: "spirv_cross::SPIRVariable(@)".}
proc deleteSPIRVariable*(self: ptr SPIRVariable) {.importcpp: "delete #".}
proc initSPIRConstant*(constanttype: uint32): SPIRConstant {.importcpp: "spirv_cross::SPIRConstant(@)".}
proc initSPIRConstant*(constanttype: uint32, elements: ptr constType[cuint], numelements: uint32, specialized: bool): SPIRConstant {.importcpp: "spirv_cross::SPIRConstant(@)".}
proc initSPIRConstant*(constanttype: uint32, v0: uint32, specialized: bool): SPIRConstant {.importcpp: "spirv_cross::SPIRConstant(@)".}
proc initSPIRConstant*(constanttype: uint32, v0: uint64, specialized: bool): SPIRConstant {.importcpp: "spirv_cross::SPIRConstant(@)".}
proc initSPIRConstant*(constanttype: uint32, vectorelements: ptr constType[ptr constType[SPIRConstant]], numelements: uint32, specialized: bool): SPIRConstant {.importcpp: "spirv_cross::SPIRConstant(@)".}
proc deleteSPIRConstant*(self: ptr SPIRConstant) {.importcpp: "delete #".}
proc initConstant*(): Constant {.importcpp: "spirv_cross::SPIRConstant::Constant(@)".}
proc deleteConstant*(self: ptr Constant) {.importcpp: "delete #".}
proc initConstantVector*(): ConstantVector {.importcpp: "spirv_cross::SPIRConstant::ConstantVector(@)".}
proc deleteConstantVector*(self: ptr ConstantVector) {.importcpp: "delete #".}
proc initConstantMatrix*(): ConstantMatrix {.importcpp: "spirv_cross::SPIRConstant::ConstantMatrix(@)".}
proc deleteConstantMatrix*(self: ptr ConstantMatrix) {.importcpp: "delete #".}
proc initVariant*(): Variant {.importcpp: "spirv_cross::Variant(@)".}
proc initVariant*(other: var Variant): Variant {.importcpp: "spirv_cross::Variant(@)".}
proc deleteVariant*(self: ptr Variant) {.importcpp: "delete #".}
proc initMeta*(): Meta {.importcpp: "spirv_cross::Meta(@)".}
proc deleteMeta*(self: ptr Meta) {.importcpp: "delete #".}
proc initDecoration*(): Decoration {.importcpp: "spirv_cross::Meta::Decoration(@)".}
proc deleteDecoration*(self: ptr Decoration) {.importcpp: "delete #".}
proc initClassicLocale*(): ClassicLocale {.importcpp: "spirv_cross::ClassicLocale(@)".}
proc deleteClassicLocale*(self: ptr ClassicLocale) {.importcpp: "delete #".}
proc initResource*(): Resource {.importcpp: "spirv_cross::Resource(@)".}
proc deleteResource*(self: ptr Resource) {.importcpp: "delete #".}
proc initShaderResources*(): ShaderResources {.importcpp: "spirv_cross::ShaderResources(@)".}
proc deleteShaderResources*(self: ptr ShaderResources) {.importcpp: "delete #".}
proc initCombinedImageSampler*(): CombinedImageSampler {.importcpp: "spirv_cross::CombinedImageSampler(@)".}
proc deleteCombinedImageSampler*(self: ptr CombinedImageSampler) {.importcpp: "delete #".}
proc initSpecializationConstant*(): SpecializationConstant {.importcpp: "spirv_cross::SpecializationConstant(@)".}
proc deleteSpecializationConstant*(self: ptr SpecializationConstant) {.importcpp: "delete #".}
proc initBufferRange*(): BufferRange {.importcpp: "spirv_cross::BufferRange(@)".}
proc deleteBufferRange*(self: ptr BufferRange) {.importcpp: "delete #".}
proc initCompiler*(ir: spirv): Compiler {.importcpp: "spirv_cross::Compiler(@)".}
proc initCompiler*(ir: ptr constType[cuint], wordcount: csize): Compiler {.importcpp: "spirv_cross::Compiler(@)".}
proc deleteCompiler*(self: ptr Compiler) {.importcpp: "delete #".}
proc initPlsRemap*(): PlsRemap {.importcpp: "spirv_cross::PlsRemap(@)".}
proc deletePlsRemap*(self: ptr PlsRemap) {.importcpp: "delete #".}
proc initCompilerGLSL*(spirv: spirv): CompilerGLSL {.importcpp: "spirv_cross::CompilerGLSL(@)".}
proc initCompilerGLSL*(ir: ptr constType[cuint], wordcount: csize): CompilerGLSL {.importcpp: "spirv_cross::CompilerGLSL(@)".}
proc deleteCompilerGLSL*(self: ptr CompilerGLSL) {.importcpp: "delete #".}
proc initOptions*(): Options {.importcpp: "spirv_cross::CompilerGLSL::Options(@)".}
proc deleteOptions*(self: ptr Options) {.importcpp: "delete #".}
proc initHLSLVertexAttributeRemap*(): HLSLVertexAttributeRemap {.importcpp: "spirv_cross::HLSLVertexAttributeRemap(@)".}
proc deleteHLSLVertexAttributeRemap*(self: ptr HLSLVertexAttributeRemap) {.importcpp: "delete #".}
proc initCompilerHLSL*(spirv: spirv): CompilerHLSL {.importcpp: "spirv_cross::CompilerHLSL(@)".}
proc initCompilerHLSL*(ir: ptr constType[cuint], size: csize): CompilerHLSL {.importcpp: "spirv_cross::CompilerHLSL(@)".}
proc deleteCompilerHLSL*(self: ptr CompilerHLSL) {.importcpp: "delete #".}
proc initOptions00*(): Options00 {.importcpp: "spirv_cross::CompilerHLSL::Options(@)".}
proc deleteOptions00*(self: ptr Options00) {.importcpp: "delete #".}
proc initMSLVertexAttr*(): MSLVertexAttr {.importcpp: "spirv_cross::MSLVertexAttr(@)".}
proc deleteMSLVertexAttr*(self: ptr MSLVertexAttr) {.importcpp: "delete #".}
proc initMSLResourceBinding*(): MSLResourceBinding {.importcpp: "spirv_cross::MSLResourceBinding(@)".}
proc deleteMSLResourceBinding*(self: ptr MSLResourceBinding) {.importcpp: "delete #".}
proc initCompilerMSL*(spirv: spirv, pvtxattrs: ptr vector00000, presbindings: ptr vector0000000): CompilerMSL {.importcpp: "spirv_cross::CompilerMSL(@)".}
proc initCompilerMSL*(ir: ptr constType[cuint], wordcount: csize, pvtxattrs: ptr MSLVertexAttr, vtxattrscount: csize, presbindings: ptr MSLResourceBinding, resbindingscount: csize): CompilerMSL {.importcpp: "spirv_cross::CompilerMSL(@)".}
proc deleteCompilerMSL*(self: ptr CompilerMSL) {.importcpp: "delete #".}
proc initOptions0000*(): Options0000 {.importcpp: "spirv_cross::CompilerMSL::Options(@)".}
proc deleteOptions0000*(self: ptr Options0000) {.importcpp: "delete #".}
proc initCompilerCPP*(spirv: spirv): CompilerCPP {.importcpp: "spirv_cross::CompilerCPP(@)".}
proc initCompilerCPP*(ir: ptr constType[cuint], wordcount: csize): CompilerCPP {.importcpp: "spirv_cross::CompilerCPP(@)".}
proc deleteCompilerCPP*(self: ptr CompilerCPP) {.importcpp: "delete #".}
proc initBytetraits*(): Bytetraits {.importcpp: "std::char_traits<char>(@)".}
proc deleteBytetraits*(self: ptr Bytetraits) {.importcpp: "delete #".}
proc initallocator*(): allocator {.importcpp: "std::allocator<char>(@)".}
proc deleteallocator*(self: ptr allocator) {.importcpp: "delete #".}
proc initastring*(): astring {.importcpp: "std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> >(@)".}
proc deleteastring*(self: ptr astring) {.importcpp: "delete #".}
proc initallocator00*(): allocator00 {.importcpp: "std::allocator<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > >(@)".}
proc deleteallocator00*(self: ptr allocator00) {.importcpp: "delete #".}
proc initstdvector_stdstring*(): stdvector_stdstring {.importcpp: "std::vector<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > COMMA  std::allocator<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > >(@)".}
proc deletestdvector_stdstring*(self: ptr stdvector_stdstring) {.importcpp: "delete #".}
proc initallocator0000*(): allocator0000 {.importcpp: "std::allocator<unsigned int>(@)".}
proc deleteallocator0000*(self: ptr allocator0000) {.importcpp: "delete #".}
proc initspirv*(): spirv {.importcpp: "std::vector<unsigned int COMMA  std::allocator<unsigned int> >(@)".}
proc deletespirv*(self: ptr spirv) {.importcpp: "delete #".}
proc initallocator000000*(): allocator000000 {.importcpp: "std::allocator<bool>(@)".}
proc deleteallocator000000*(self: ptr allocator000000) {.importcpp: "delete #".}
proc initstdvector_bool*(): stdvector_bool {.importcpp: "std::vector<bool COMMA  std::allocator<bool> >(@)".}
proc deletestdvector_bool*(self: ptr stdvector_bool) {.importcpp: "delete #".}
proc inithash*(): hash {.importcpp: "std::hash<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > >(@)".}
proc deletehash*(self: ptr hash) {.importcpp: "delete #".}
proc initequalto*(): equalto {.importcpp: "std::equal_to<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > >(@)".}
proc deleteequalto*(self: ptr equalto) {.importcpp: "delete #".}
proc initstdunorderedset_stdstring*(): stdunorderedset_stdstring {.importcpp: "std::unordered_set<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > COMMA  std::hash<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > COMMA  std::equal_to<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > COMMA  std::allocator<std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > > >(@)".}
proc deletestdunorderedset_stdstring*(self: ptr stdunorderedset_stdstring) {.importcpp: "delete #".}
proc initallocator00000000*(): allocator00000000 {.importcpp: "std::allocator<spirv_cross::Instruction>(@)".}
proc deleteallocator00000000*(self: ptr allocator00000000) {.importcpp: "delete #".}
proc initstdvector_Instruction*(): stdvector_Instruction {.importcpp: "std::vector<spirv_cross::Instruction COMMA  std::allocator<spirv_cross::Instruction> >(@)".}
proc deletestdvector_Instruction*(self: ptr stdvector_Instruction) {.importcpp: "delete #".}
proc initallocator0000000000*(): allocator0000000000 {.importcpp: "std::allocator<spirv_cross::SPIRBlock::Phi>(@)".}
proc deleteallocator0000000000*(self: ptr allocator0000000000) {.importcpp: "delete #".}
proc initstdvector_Phi*(): stdvector_Phi {.importcpp: "std::vector<spirv_cross::SPIRBlock::Phi COMMA  std::allocator<spirv_cross::SPIRBlock::Phi> >(@)".}
proc deletestdvector_Phi*(self: ptr stdvector_Phi) {.importcpp: "delete #".}
proc initpair*(): pair {.importcpp: "std::pair<unsigned int COMMA  unsigned int>(@)".}
proc deletepair*(self: ptr pair) {.importcpp: "delete #".}
proc initallocator000000000000*(): allocator000000000000 {.importcpp: "std::allocator<std::pair<unsigned int COMMA  unsigned int> >(@)".}
proc deleteallocator000000000000*(self: ptr allocator000000000000) {.importcpp: "delete #".}
proc initstdvector_stdpair_uint32t_uint32t*(): stdvector_stdpair_uint32t_uint32t {.importcpp: "std::vector<std::pair<unsigned int COMMA  unsigned int> COMMA  std::allocator<std::pair<unsigned int COMMA  unsigned int> > >(@)".}
proc deletestdvector_stdpair_uint32t_uint32t*(self: ptr stdvector_stdpair_uint32t_uint32t) {.importcpp: "delete #".}
proc initallocator00000000000000*(): allocator00000000000000 {.importcpp: "std::allocator<spirv_cross::SPIRBlock::Case>(@)".}
proc deleteallocator00000000000000*(self: ptr allocator00000000000000) {.importcpp: "delete #".}
proc initstdvector_Case*(): stdvector_Case {.importcpp: "std::vector<spirv_cross::SPIRBlock::Case COMMA  std::allocator<spirv_cross::SPIRBlock::Case> >(@)".}
proc deletestdvector_Case*(self: ptr stdvector_Case) {.importcpp: "delete #".}
proc initallocator0000000000000000*(): allocator0000000000000000 {.importcpp: "std::allocator<spirv_cross::SPIRFunction::Parameter>(@)".}
proc deleteallocator0000000000000000*(self: ptr allocator0000000000000000) {.importcpp: "delete #".}
proc initstdvector_Parameter*(): stdvector_Parameter {.importcpp: "std::vector<spirv_cross::SPIRFunction::Parameter COMMA  std::allocator<spirv_cross::SPIRFunction::Parameter> >(@)".}
proc deletestdvector_Parameter*(self: ptr stdvector_Parameter) {.importcpp: "delete #".}
proc initallocator000000000000000000*(): allocator000000000000000000 {.importcpp: "std::allocator<spirv_cross::SPIRFunction::CombinedImageSamplerParameter>(@)".}
proc deleteallocator000000000000000000*(self: ptr allocator000000000000000000) {.importcpp: "delete #".}
proc initstdvector_CombinedImageSamplerParameter*(): stdvector_CombinedImageSamplerParameter {.importcpp: "std::vector<spirv_cross::SPIRFunction::CombinedImageSamplerParameter COMMA  std::allocator<spirv_cross::SPIRFunction::CombinedImageSamplerParameter> >(@)".}
proc deletestdvector_CombinedImageSamplerParameter*(self: ptr stdvector_CombinedImageSamplerParameter) {.importcpp: "delete #".}
proc initdefaultdelete*(): defaultdelete {.importcpp: "std::default_delete<spirv_cross::IVariant>(@)".}
proc deletedefaultdelete*(self: ptr defaultdelete) {.importcpp: "delete #".}
proc initstduniquecptr_IVariant*(): stduniquecptr_IVariant {.importcpp: "std::unique_ptr<spirv_cross::IVariant COMMA  std::default_delete<spirv_cross::IVariant> >(@)".}
proc deletestduniquecptr_IVariant*(self: ptr stduniquecptr_IVariant) {.importcpp: "delete #".}
proc initallocator00000000000000000000*(): allocator00000000000000000000 {.importcpp: "std::allocator<spirv_cross::Meta::Decoration>(@)".}
proc deleteallocator00000000000000000000*(self: ptr allocator00000000000000000000) {.importcpp: "delete #".}
proc initstdvector_Decoration*(): stdvector_Decoration {.importcpp: "std::vector<spirv_cross::Meta::Decoration COMMA  std::allocator<spirv_cross::Meta::Decoration> >(@)".}
proc deletestdvector_Decoration*(self: ptr stdvector_Decoration) {.importcpp: "delete #".}
proc inithash00*(): hash00 {.importcpp: "std::hash<unsigned int>(@)".}
proc deletehash00*(self: ptr hash00) {.importcpp: "delete #".}
proc initequalto00*(): equalto00 {.importcpp: "std::equal_to<unsigned int>(@)".}
proc deleteequalto00*(self: ptr equalto00) {.importcpp: "delete #".}
proc initpair00*(): pair00 {.importcpp: "std::pair<const unsigned int COMMA  unsigned int>(@)".}
proc deletepair00*(self: ptr pair00) {.importcpp: "delete #".}
proc initallocator0000000000000000000000*(): allocator0000000000000000000000 {.importcpp: "std::allocator<std::pair<const unsigned int COMMA  unsigned int> >(@)".}
proc deleteallocator0000000000000000000000*(self: ptr allocator0000000000000000000000) {.importcpp: "delete #".}
proc initstdunorderedmap_uint32t_uint32t*(): stdunorderedmap_uint32t_uint32t {.importcpp: "std::unordered_map<unsigned int COMMA  unsigned int COMMA  std::hash<unsigned int> COMMA  std::equal_to<unsigned int> COMMA  std::allocator<std::pair<const unsigned int COMMA  unsigned int> > >(@)".}
proc deletestdunorderedmap_uint32t_uint32t*(self: ptr stdunorderedmap_uint32t_uint32t) {.importcpp: "delete #".}
proc initallocator000000000000000000000000*(): allocator000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::Resource>(@)".}
proc deleteallocator000000000000000000000000*(self: ptr allocator000000000000000000000000) {.importcpp: "delete #".}
proc initstdvector_Resource*(): stdvector_Resource {.importcpp: "std::vector<spirv_cross::Resource COMMA  std::allocator<spirv_cross::Resource> >(@)".}
proc deletestdvector_Resource*(self: ptr stdvector_Resource) {.importcpp: "delete #".}
proc initallocator00000000000000000000000000*(): allocator00000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::BufferRange>(@)".}
proc deleteallocator00000000000000000000000000*(self: ptr allocator00000000000000000000000000) {.importcpp: "delete #".}
proc initvector0*(): vector0 {.importcpp: "std::vector<spirv_cross::BufferRange COMMA  std::allocator<spirv_cross::BufferRange> >(@)".}
proc deletevector0*(self: ptr vector0) {.importcpp: "delete #".}
proc initstdunorderedset_uint32t*(): stdunorderedset_uint32t {.importcpp: "std::unordered_set<unsigned int COMMA  std::hash<unsigned int> COMMA  std::equal_to<unsigned int> COMMA  std::allocator<unsigned int> >(@)".}
proc deletestdunorderedset_uint32t*(self: ptr stdunorderedset_uint32t) {.importcpp: "delete #".}
proc initallocator0000000000000000000000000000*(): allocator0000000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::CombinedImageSampler>(@)".}
proc deleteallocator0000000000000000000000000000*(self: ptr allocator0000000000000000000000000000) {.importcpp: "delete #".}
proc initstdvector_CombinedImageSampler*(): stdvector_CombinedImageSampler {.importcpp: "std::vector<spirv_cross::CombinedImageSampler COMMA  std::allocator<spirv_cross::CombinedImageSampler> >(@)".}
proc deletestdvector_CombinedImageSampler*(self: ptr stdvector_CombinedImageSampler) {.importcpp: "delete #".}
proc inita000000000000*(): a000000000000 {.importcpp: "(@)".}
proc deletea000000000000*(self: ptr a000000000000) {.importcpp: "delete #".}
proc initVariableTypeRemapCallback*(): VariableTypeRemapCallback {.importcpp: "std::function<void (const spirv_cross::SPIRType & COMMA  const std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > & COMMA  std::basic_string<char COMMA  std::char_traits<char> COMMA  std::allocator<char> > &)>(@)".}
proc deleteVariableTypeRemapCallback*(self: ptr VariableTypeRemapCallback) {.importcpp: "delete #".}
proc inita00000000000000*(): a00000000000000 {.importcpp: "(@)".}
proc deletea00000000000000*(self: ptr a00000000000000) {.importcpp: "delete #".}
proc inita0000000000000000*(): a0000000000000000 {.importcpp: "(@)".}
proc deletea0000000000000000*(self: ptr a0000000000000000) {.importcpp: "delete #".}
proc initallocator000000000000000000000000000000*(): allocator000000000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::SpecializationConstant>(@)".}
proc deleteallocator000000000000000000000000000000*(self: ptr allocator000000000000000000000000000000) {.importcpp: "delete #".}
proc initvector000*(): vector000 {.importcpp: "std::vector<spirv_cross::SpecializationConstant COMMA  std::allocator<spirv_cross::SpecializationConstant> >(@)".}
proc deletevector000*(self: ptr vector000) {.importcpp: "delete #".}
proc initallocator00000000000000000000000000000000*(): allocator00000000000000000000000000000000 {.importcpp: "std::allocator<spv::Capability>(@)".}
proc deleteallocator00000000000000000000000000000000*(self: ptr allocator00000000000000000000000000000000) {.importcpp: "delete #".}
proc initstdvector_spvCapability*(): stdvector_spvCapability {.importcpp: "std::vector<spv::Capability COMMA  std::allocator<spv::Capability> >(@)".}
proc deletestdvector_spvCapability*(self: ptr stdvector_spvCapability) {.importcpp: "delete #".}
proc initallocator0000000000000000000000000000000000*(): allocator0000000000000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::PlsRemap>(@)".}
proc deleteallocator0000000000000000000000000000000000*(self: ptr allocator0000000000000000000000000000000000) {.importcpp: "delete #".}
proc initstdvector_PlsRemap*(): stdvector_PlsRemap {.importcpp: "std::vector<spirv_cross::PlsRemap COMMA  std::allocator<spirv_cross::PlsRemap> >(@)".}
proc deletestdvector_PlsRemap*(self: ptr stdvector_PlsRemap) {.importcpp: "delete #".}
proc initallocator000000000000000000000000000000000000*(): allocator000000000000000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::HLSLVertexAttributeRemap>(@)".}
proc deleteallocator000000000000000000000000000000000000*(self: ptr allocator000000000000000000000000000000000000) {.importcpp: "delete #".}
proc initstdvector_HLSLVertexAttributeRemap*(): stdvector_HLSLVertexAttributeRemap {.importcpp: "std::vector<spirv_cross::HLSLVertexAttributeRemap COMMA  std::allocator<spirv_cross::HLSLVertexAttributeRemap> >(@)".}
proc deletestdvector_HLSLVertexAttributeRemap*(self: ptr stdvector_HLSLVertexAttributeRemap) {.importcpp: "delete #".}
proc initallocator00000000000000000000000000000000000000*(): allocator00000000000000000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::MSLVertexAttr>(@)".}
proc deleteallocator00000000000000000000000000000000000000*(self: ptr allocator00000000000000000000000000000000000000) {.importcpp: "delete #".}
proc initvector00000*(): vector00000 {.importcpp: "std::vector<spirv_cross::MSLVertexAttr COMMA  std::allocator<spirv_cross::MSLVertexAttr> >(@)".}
proc deletevector00000*(self: ptr vector00000) {.importcpp: "delete #".}
proc initallocator0000000000000000000000000000000000000000*(): allocator0000000000000000000000000000000000000000 {.importcpp: "std::allocator<spirv_cross::MSLResourceBinding>(@)".}
proc deleteallocator0000000000000000000000000000000000000000*(self: ptr allocator0000000000000000000000000000000000000000) {.importcpp: "delete #".}
proc initvector0000000*(): vector0000000 {.importcpp: "std::vector<spirv_cross::MSLResourceBinding COMMA  std::allocator<spirv_cross::MSLResourceBinding> >(@)".}
proc deletevector0000000*(self: ptr vector0000000) {.importcpp: "delete #".}
