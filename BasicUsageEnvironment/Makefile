INCLUDES = -Iinclude -I../UsageEnvironment/include -I../groupsock/include
##### Change the following for your environment: 
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

LIB = libBasicUsageEnvironment.$(LIB_SUFFIX)
ALL = $(LIB)
all:	$(ALL)

OBJS = BasicUsageEnvironment0.$(OBJ) BasicUsageEnvironment.$(OBJ) \
	BasicTaskScheduler0.$(OBJ) BasicTaskScheduler.$(OBJ) \
	DelayQueue.$(OBJ) BasicHashTable.$(OBJ)

libBasicUsageEnvironment.$(LIB_SUFFIX): $(OBJS)
	$(LIBRARY_LINK)$@ $(LIBRARY_LINK_OPTS) \
		$(OBJS)

.$(C).$(OBJ):
	$(C_COMPILER) -c $(C_FLAGS) $<       

.$(CPP).$(OBJ):
	$(CPLUSPLUS_COMPILER) -c $(CPLUSPLUS_FLAGS) $<

BasicUsageEnvironment0.$(CPP):	include/BasicUsageEnvironment0.hh
include/BasicUsageEnvironment0.hh:	include/BasicUsageEnvironment_version.hh include/DelayQueue.hh
BasicUsageEnvironment.$(CPP):	include/BasicUsageEnvironment.hh
include/BasicUsageEnvironment.hh:	include/BasicUsageEnvironment0.hh
BasicTaskScheduler0.$(CPP):	include/BasicUsageEnvironment0.hh include/HandlerSet.hh
BasicTaskScheduler.$(CPP):	include/BasicUsageEnvironment.hh include/HandlerSet.hh
DelayQueue.$(CPP):		include/DelayQueue.hh
BasicHashTable.$(CPP):		include/BasicHashTable.hh

clean:
	-rm -rf *.$(OBJ) $(ALL) core *.core *~ include/*~

##### Any additional, platform-specific rules come here:
