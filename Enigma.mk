##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Enigma
ConfigurationName      :=Debug
WorkspacePath          :=/Users/cankoc/Desktop/cplusplus/enigma/Enigma
ProjectPath            :=/Users/cankoc/Desktop/cplusplus/enigma/Enigma
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Can Koc
Date                   :=26/02/2017
CodeLitePath           :="/Users/cankoc/Library/Application Support/codelite"
LinkerName             :=/usr/bin/clang++
SharedObjectLinkerName :=/usr/bin/clang++ -dynamiclib -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Enigma.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/clang++
CC       := /usr/bin/clang
CXXFLAGS :=  -g -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=   $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/private/var/folders/pl/b232rphj05dchvrth20wld1w0000gn/T/AppTranslocation/CD58D397-70C1-4BA1-923A-5CF75EDF2EF3/d/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/FixedRotor.cpp$(ObjectSuffix) $(IntermediateDirectory)/Machine.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Rotor.cpp$(ObjectSuffix) $(IntermediateDirectory)/Test.cpp$(ObjectSuffix) $(IntermediateDirectory)/PermutationData.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/FixedRotor.cpp$(ObjectSuffix): FixedRotor.cpp $(IntermediateDirectory)/FixedRotor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/cankoc/Desktop/cplusplus/enigma/Enigma/FixedRotor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/FixedRotor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/FixedRotor.cpp$(DependSuffix): FixedRotor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/FixedRotor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/FixedRotor.cpp$(DependSuffix) -MM FixedRotor.cpp

$(IntermediateDirectory)/FixedRotor.cpp$(PreprocessSuffix): FixedRotor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/FixedRotor.cpp$(PreprocessSuffix) FixedRotor.cpp

$(IntermediateDirectory)/Machine.cpp$(ObjectSuffix): Machine.cpp $(IntermediateDirectory)/Machine.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/cankoc/Desktop/cplusplus/enigma/Enigma/Machine.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Machine.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Machine.cpp$(DependSuffix): Machine.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Machine.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Machine.cpp$(DependSuffix) -MM Machine.cpp

$(IntermediateDirectory)/Machine.cpp$(PreprocessSuffix): Machine.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Machine.cpp$(PreprocessSuffix) Machine.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/cankoc/Desktop/cplusplus/enigma/Enigma/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Rotor.cpp$(ObjectSuffix): Rotor.cpp $(IntermediateDirectory)/Rotor.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/cankoc/Desktop/cplusplus/enigma/Enigma/Rotor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Rotor.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Rotor.cpp$(DependSuffix): Rotor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Rotor.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Rotor.cpp$(DependSuffix) -MM Rotor.cpp

$(IntermediateDirectory)/Rotor.cpp$(PreprocessSuffix): Rotor.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Rotor.cpp$(PreprocessSuffix) Rotor.cpp

$(IntermediateDirectory)/Test.cpp$(ObjectSuffix): Test.cpp $(IntermediateDirectory)/Test.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/cankoc/Desktop/cplusplus/enigma/Enigma/Test.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Test.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Test.cpp$(DependSuffix): Test.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Test.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Test.cpp$(DependSuffix) -MM Test.cpp

$(IntermediateDirectory)/Test.cpp$(PreprocessSuffix): Test.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Test.cpp$(PreprocessSuffix) Test.cpp

$(IntermediateDirectory)/PermutationData.cpp$(ObjectSuffix): PermutationData.cpp $(IntermediateDirectory)/PermutationData.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/cankoc/Desktop/cplusplus/enigma/Enigma/PermutationData.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/PermutationData.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/PermutationData.cpp$(DependSuffix): PermutationData.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/PermutationData.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/PermutationData.cpp$(DependSuffix) -MM PermutationData.cpp

$(IntermediateDirectory)/PermutationData.cpp$(PreprocessSuffix): PermutationData.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/PermutationData.cpp$(PreprocessSuffix) PermutationData.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


