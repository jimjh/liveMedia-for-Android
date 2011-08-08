CROSS_COMPILE	?=		arm-linux-androideabi-
SYS_ROOT		=		$(NDK_ROOT)/platforms/android-8/arch-arm
COMPILE_OPTS 	=		$(INCLUDES) -I. -O2 -DSOCKLEN_T=socklen_t -DNO_SSTREAM=1 -D_LARGEFILE_SOURCE=1 -D_FILE_OFFSET_BITS=64 -fPIC --sysroot=$(SYS_ROOT) -DLINUX -DANDROID
C 				=		c
C_COMPILER 		=		$(CROSS_COMPILE)gcc
C_FLAGS 		=		$(COMPILE_OPTS) -lc -lgcc
CPP 			=		cpp
CPLUSPLUS_COMPILER =	$(CROSS_COMPILE)g++
CPLUSPLUS_FLAGS =		$(COMPILE_OPTS) -Wall -DBSD=1 -lstdc++ -lsupc++ \
						-I$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/include \
						-I$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/libs/armeabi/include \
						-L$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/libs/armeabi
OBJ 			=		o
LINK 			=		$(CROSS_COMPILE)g++ --sysroot=$(SYS_ROOT) -o 
LINK_OPTS 		=		-L$(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/libs/armeabi
CONSOLE_LINK_OPTS =		$(LINK_OPTS)
LIBRARY_LINK 	=		$(CROSS_COMPILE)ar cr 
LIBRARY_LINK_OPTS =		$(LINK_OPTS)
LIB_SUFFIX 		=			a
LIBS_FOR_CONSOLE_APPLICATION =
LIBS_FOR_GUI_APPLICATION =
EXE =
##### End of variables to change

LIVEMEDIA_DIR = liveMedia
GROUPSOCK_DIR = groupsock
USAGE_ENVIRONMENT_DIR = UsageEnvironment
BASIC_USAGE_ENVIRONMENT_DIR = BasicUsageEnvironment

TESTPROGS_DIR = testProgs

MEDIA_SERVER_DIR = mediaServer

all:
	cd $(LIVEMEDIA_DIR) ; $(MAKE)
	cd $(GROUPSOCK_DIR) ; $(MAKE)
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE)
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE)
	cd $(TESTPROGS_DIR) ; $(MAKE)
	cd $(MEDIA_SERVER_DIR) ; $(MAKE)

clean:
	cd $(LIVEMEDIA_DIR) ; $(MAKE) clean
	cd $(GROUPSOCK_DIR) ; $(MAKE) clean
	cd $(USAGE_ENVIRONMENT_DIR) ; $(MAKE) clean
	cd $(BASIC_USAGE_ENVIRONMENT_DIR) ; $(MAKE) clean
	cd $(TESTPROGS_DIR) ; $(MAKE) clean
	cd $(MEDIA_SERVER_DIR) ; $(MAKE) clean
