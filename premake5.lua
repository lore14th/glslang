project "glslang"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "On"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		-- OSDependent files --
		"glslang/OSDependent/osinclude.h",

		-- OGLCompiler files --
		"OGLCompilersDLL/InitializeDll.h",
		"OGLCompilersDLL/InitializeDll.cpp",

		-- glslang-default-resource-limits files --
		"StandAlone/ResourceLimits.cpp",
		"StandAlone/ResourceLimits.h",
		"StandAlone/resource_limits_c.cpp",
		"StandAlone/resource_limits_c.h",

		-- SPVRemapper files --
		"SPIRV/doc.cpp",
		"SPIRV/doc.h",
		"SPIRV/SPVRemapper.cpp",
		"SPIRV/SPVRemapper.h",

		-- HLSL files --
		"hlsl/hlslAttributes.cpp",
		"hlsl/hlslParseHelper.cpp",
		"hlsl/hlslScanContext.cpp",
		"hlsl/hlslOpMap.cpp",
		"hlsl/hlslTokenStream.cpp",
		"hlsl/hlslGrammar.cpp",
		"hlsl/hlslParseables.cpp",
		"hlsl/hlslAttributes.h",
		"hlsl/hlslParseHelper.h",
		"hlsl/hlslTokens.h",
		"hlsl/hlslScanContext.h",
		"hlsl/hlslOpMap.h",
		"hlsl/hlslTokenStream.h",
		"hlsl/hlslGrammar.h",
		"hlsl/hlslParseables.h",
		"hlsl/pch.h",
		"hlsl/pch.cpp",

		-- glslang files --
		"glslang/MachineIndependent/glslang.m4",
		"glslang/MachineIndependent/glslang.y",
		"glslang/MachineIndependent/glslang_tab.cpp",
		"glslang/MachineIndependent/attribute.cpp",
		"glslang/MachineIndependent/Constant.cpp",
		"glslang/MachineIndependent/iomapper.cpp",
		"glslang/MachineIndependent/InfoSink.cpp",
		"glslang/MachineIndependent/Initialize.cpp",
		"glslang/MachineIndependent/IntermTraverse.cpp",
		"glslang/MachineIndependent/Intermediate.cpp",
		"glslang/MachineIndependent/ParseContextBase.cpp",
		"glslang/MachineIndependent/ParseHelper.cpp",
		"glslang/MachineIndependent/PoolAlloc.cpp",
		"glslang/MachineIndependent/RemoveTree.cpp",
		"glslang/MachineIndependent/Scan.cpp",
		"glslang/MachineIndependent/ShaderLang.cpp",
		"glslang/MachineIndependent/SymbolTable.cpp",
		"glslang/MachineIndependent/Versions.cpp",
		"glslang/MachineIndependent/intermOut.cpp",
		"glslang/MachineIndependent/limits.cpp",
		"glslang/MachineIndependent/linkValidate.cpp",
		"glslang/MachineIndependent/parseConst.cpp",
		"glslang/MachineIndependent/reflection.cpp",
		"glslang/MachineIndependent/preprocessor/Pp.cpp",
		"glslang/MachineIndependent/preprocessor/PpAtom.cpp",
		"glslang/MachineIndependent/preprocessor/PpContext.cpp",
		"glslang/MachineIndependent/preprocessor/PpScanner.cpp",
		"glslang/MachineIndependent/preprocessor/PpTokens.cpp",
		"glslang/MachineIndependent/propagateNoContraction.cpp",
		"glslang/GenericCodeGen/CodeGen.cpp",
		"glslang/GenericCodeGen/Link.cpp",
		"glslang/CInterface/glslang_c_interface.cpp",
		"glslang/Public/ShaderLang.h",
		"glslang/Include/arrays.h",
		"glslang/Include/BaseTypes.h",
		"glslang/Include/Common.h",
		"glslang/Include/ConstantUnion.h",
		"glslang/Include/glslang_c_interface.h",
		"glslang/Include/glslang_c_shader_types.h",
		"glslang/Include/InfoSink.h",
		"glslang/Include/InitializeGlobals.h",
		"glslang/Include/intermediate.h",
		"glslang/Include/PoolAlloc.h",
		"glslang/Include/ResourceLimits.h",
		"glslang/Include/revision.h",
		"glslang/Include/ShHandle.h",
		"glslang/Include/Types.h",
		"glslang/MachineIndependent/attribute.h",
		"glslang/MachineIndependent/glslang_tab.cpp.h",
		"glslang/MachineIndependent/gl_types.h",
		"glslang/MachineIndependent/Initialize.h",
		"glslang/MachineIndependent/iomapper.h",
		"glslang/MachineIndependent/LiveTraverser.h",
		"glslang/MachineIndependent/localintermediate.h",
		"glslang/MachineIndependent/ParseHelper.h",
		"glslang/MachineIndependent/reflection.h",
		"glslang/MachineIndependent/RemoveTree.h",
		"glslang/MachineIndependent/Scan.h",
		"glslang/MachineIndependent/ScanContext.h",
		"glslang/MachineIndependent/SymbolTable.h",
		"glslang/MachineIndependent/Versions.h",
		"glslang/MachineIndependent/parseVersions.h",
		"glslang/MachineIndependent/propagateNoContraction.h",
		"glslang/MachineIndependent/preprocessor/PpContext.h",
		"glslang/MachineIndependent/preprocessor/PpTokens.h",

		-- SPIRV files --
		"SPIRV/GlslangToSpv.cpp",
		"SPIRV/InReadableOrder.cpp",
		"SPIRV/Logger.cpp",
		"SPIRV/SpvBuilder.cpp",
		"SPIRV/SpvPostProcess.cpp",
		"SPIRV/doc.cpp",
		"SPIRV/SpvTools.cpp",
		"SPIRV/disassemble.cpp",
		"SPIRV/bitutils.h",
		"SPIRV/spirv.hpp",
		"SPIRV/GLSL.std.450.h",
		"SPIRV/GLSL.ext.EXT.h",
		"SPIRV/GLSL.ext.KHR.h",
		"SPIRV/GlslangToSpv.h",
		"SPIRV/hex_float.h",
		"SPIRV/Logger.h",
		"SPIRV/SpvBuilder.h",
		"SPIRV/spvIR.h",
		"SPIRV/doc.h",
		"SPIRV/SpvTools.h",
		"SPIRV/disassemble.h",
		"SPIRV/GLSL.ext.AMD.h",
		"SPIRV/GLSL.ext.NV.h",
		"SPIRV/NonSemanticDebugPrintf.h",

		-- glslangValidator files --
		"StandAlone/DirStackFileIncluder.h"
		--"StandAlone/StandAlone.cpp", 
	}

	includedirs
	{
		""
	}

	defines 
	{
		"ENABLE_HLSL", -- this is used to compile HLSL
	}

	filter "system:windows"
		systemversion "latest"
		files
		{
			-- OSDependent files
			"glslang/OSDependent/Windows/ossource.cpp",
		
		}

	filter "system:macosx"
		files
		{
			-- OSDependent files
			"glslang/OSDependent/Unix/ossource.cpp",
		
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"	-- debug version --

	filter "configurations:Release"
		runtime "Release"
		optimize "on"	-- release version --