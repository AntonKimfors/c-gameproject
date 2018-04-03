##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=SDLproject
ConfigurationName      :=Debug
WorkspacePath          :=/Users/akimfors/Desktop/SDLProjekt_Mac_startup
ProjectPath            :=/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Anton Jerger Kimfors
Date                   :=03/04/2018
CodeLitePath           :="/Users/akimfors/Library/Application Support/codelite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.o.i
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
ObjectsFileList        :="SDLproject.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -F./ -framework SDL2_ttf -framework SDL2_image -framework SDL2
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
AR       := /usr/bin/ar rcus
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -std=c99 -F./ $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/private/var/folders/53/csn_32xs049bhw58362_rtpc0000gn/T/AppTranslocation/D7D4A705-D78C-4B00-B08A-9D735AD7307D/d/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/renderer.c$(ObjectSuffix) $(IntermediateDirectory)/player.c$(ObjectSuffix) $(IntermediateDirectory)/background.c$(ObjectSuffix) $(IntermediateDirectory)/gameobject.c$(ObjectSuffix) $(IntermediateDirectory)/alien.c$(ObjectSuffix) 



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
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c 
	$(CC) $(SourceSwitch) "/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/renderer.c$(ObjectSuffix): renderer.c 
	$(CC) $(SourceSwitch) "/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject/renderer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/renderer.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/renderer.c$(PreprocessSuffix): renderer.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/renderer.c$(PreprocessSuffix) renderer.c

$(IntermediateDirectory)/player.c$(ObjectSuffix): player.c 
	$(CC) $(SourceSwitch) "/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject/player.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/player.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/player.c$(PreprocessSuffix): player.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/player.c$(PreprocessSuffix) player.c

$(IntermediateDirectory)/background.c$(ObjectSuffix): background.c 
	$(CC) $(SourceSwitch) "/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject/background.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/background.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/background.c$(PreprocessSuffix): background.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/background.c$(PreprocessSuffix) background.c

$(IntermediateDirectory)/gameobject.c$(ObjectSuffix): gameobject.c 
	$(CC) $(SourceSwitch) "/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject/gameobject.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gameobject.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gameobject.c$(PreprocessSuffix): gameobject.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gameobject.c$(PreprocessSuffix) gameobject.c

$(IntermediateDirectory)/alien.c$(ObjectSuffix): alien.c 
	$(CC) $(SourceSwitch) "/Users/akimfors/Desktop/SDLProjekt_Mac_startup/SDLproject/alien.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/alien.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/alien.c$(PreprocessSuffix): alien.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/alien.c$(PreprocessSuffix) alien.c

##
## Clean
##
clean:
	$(RM) -r ./Debug/


