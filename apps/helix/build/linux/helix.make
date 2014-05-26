# C++ Console Executable Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Debug
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../../bin
  LIBDIR := ../../../../bin
  OBJDIR := ../../../../bin/intermediate_linux/helixDebug
  OUTDIR := ../../../../bin
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -g -O0 -g -Wall
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -L"../../../../bin" -L"/usr/X11R6/lib/" -L"/usr/lib/" -lfreetype -lpthread -lrt -lX11 -lXext -lasound -ljuce_debug
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  TARGET := helix_debug
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Release)
  BINDIR := ../../../../bin
  LIBDIR := ../../../../bin
  OBJDIR := ../../../../bin/intermediate_linux/helixRelease
  OUTDIR := ../../../../bin
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -O3 -fomit-frame-pointer -pipe -fvisibility=hidden -Wall
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -s -L"../../../../bin" -L"/usr/X11R6/lib/" -L"/usr/lib/" -lfreetype -lpthread -lrt -lX11 -lXext -lasound -ljuce
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "JUCE_USE_XSHM=1" -D "JUCE_ALSA=1" -D "JUCE_JACK=1" -D "JUCE_USE_VSTSDK_2_4=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2" -I "../../../../juce" -I "../../../../juce/src" -I "../../../../juce/extras/audio plugins" -I "../../src" -I "../../../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vst/vstsdk2.4" -I "../../../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../../../vstsdk2.4" -I "../../vst/vstsdk2.4/public.sdk/source/vst2.x" -I "../../vst/vstsdk2.4" -I "../../vstsdk2.4/public.sdk/source/vst2.x" -I "../../vstsdk2.4" -I "/usr/include/vstsdk2.4/public.sdk/source/vst2.x" -I "/usr/include/vst/public.sdk/source/vst2.x"
  TARGET := helix
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/StandardLibrary.o \
	$(OBJDIR)/HelixComponent.o \
	$(OBJDIR)/Main.o \
	$(OBJDIR)/HelixPlugin.o \
	$(OBJDIR)/NativeEditor.o \
	$(OBJDIR)/synth.o \
	$(OBJDIR)/seq.o \
	$(OBJDIR)/midicc.o \
	$(OBJDIR)/reverb.o \
	$(OBJDIR)/amppan.o \
	$(OBJDIR)/delay.o \
	$(OBJDIR)/kbd.o \
	$(OBJDIR)/lfo.o \
	$(OBJDIR)/osc.o \
	$(OBJDIR)/eg.o \
	$(OBJDIR)/filter.o \
	$(OBJDIR)/params.o \
	$(OBJDIR)/shaper.o \
	$(OBJDIR)/voice.o \
	$(OBJDIR)/wavegroup.o \
	$(OBJDIR)/dynamics.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking helix
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning helix
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/StandardLibrary.o: ../../src/StandardLibrary.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HelixComponent.o: ../../src/HelixComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Main.o: ../../src/Main.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/HelixPlugin.o: ../../src/HelixPlugin.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/NativeEditor.o: ../../src/Components/NativeEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/synth.o: ../../src/Synth/synth.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/seq.o: ../../src/Synth/seq.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/midicc.o: ../../src/Synth/midicc.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/reverb.o: ../../src/Synth/reverb.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/amppan.o: ../../src/Synth/amppan.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/delay.o: ../../src/Synth/delay.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/kbd.o: ../../src/Synth/kbd.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/lfo.o: ../../src/Synth/lfo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/osc.o: ../../src/Synth/osc.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/eg.o: ../../src/Synth/eg.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/filter.o: ../../src/Synth/filter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/params.o: ../../src/Synth/params.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/shaper.o: ../../src/Synth/shaper.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/voice.o: ../../src/Synth/voice.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/wavegroup.o: ../../src/Synth/wavegroup.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dynamics.o: ../../src/Synth/dynamics.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
