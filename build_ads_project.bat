@echo off
set ADS_PATH=C:\Infineon\AURIX-Studio-1.10.10
set WORKSPACE=C:\Users\admin\AURIX-v1.10.10-workspace
set PROJECT=code_test

"%ADS_PATH%\launch-tool\launch-tool.exe" ^
-vmargs "%ADS_PATH%\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_17.0.11.v20240426-1830\jre\bin\server\jvm.dll" ^
-vmargs-nosplash ^
-vmargs-application org.eclipse.cdt.managedbuilder.core.headlessbuild ^
-data "%WORKSPACE%" ^
-build %PROJECT%/Debug
