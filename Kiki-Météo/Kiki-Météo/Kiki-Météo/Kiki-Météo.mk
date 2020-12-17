##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Kiki-Météo
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :="/home/cyril/Documents/Dépôts GitHub/CUBES 2/Kiki-M-t-o/Kiki-Météo/Kiki-Météo"
ProjectPath            :="/home/cyril/Documents/Dépôts GitHub/CUBES 2/Kiki-M-t-o/Kiki-Météo/Kiki-Météo/Kiki-Météo"
IntermediateDirectory  :="/home/cyril/Documents/Dépôts\ GitHub/CUBES\ 2/Kiki-M-t-o/Kiki-Météo/Kiki-Météo"/build-$(ConfigurationName)/__/__/__/__/__/__/__/__/__
OutDir                 :="/home/cyril/Documents/Dépôts\ GitHub/CUBES\ 2/Kiki-M-t-o/Kiki-Météo/Kiki-Météo"/build-$(ConfigurationName)/__/__/__/__/__/__/__/__/__
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Cyril Brun
Date                   :=17/12/20
CodeLitePath           :=/home/cyril/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Kiki-Météo/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Kiki-Météo"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Kiki-Météo"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Kiki-Météo/.d:
	@mkdir -p "../build-$(ConfigurationName)/Kiki-Météo"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/cyril/Documents/Dépôts GitHub/CUBES 2/Kiki-M-t-o/Kiki-Météo/Kiki-Météo/Kiki-Météo/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Kiki-Météo/main.cpp$(PreprocessSuffix) main.cpp


-include ../build-$(ConfigurationName)/Kiki-Météo//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


