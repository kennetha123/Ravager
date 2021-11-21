workspace "Ravager"
	architecture "x64"
	startproject "Game"
	
	configurations
	{
		"Debug",
		"Release"
	}
	
outputDir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Game"
	location "Project"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	
	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("obj/" .. outputDir .. "/%{prj.name}")
	
	files
	{
		"%{prj.name}/Source/**.h",
		"%{prj.name}/Source/**.cpp"	
	}
	
	filter "configurations:Debug"
		defines "DEBUG"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		defines "RELEASE"
		runtime "Release"
		optimize "on"