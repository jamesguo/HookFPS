LOCAL_PATH := $(call my-dir)  
  
include $(CLEAR_VARS)  
LOCAL_MODULE := inject   
LOCAL_SRC_FILES := inject.c   
  
#shellcode.s  
  
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog  
  
#LOCAL_FORCE_STATIC_EXECUTABLE := true  
  
include $(BUILD_EXECUTABLE)  


include $(CLEAR_VARS)  
  
LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog -lEGL
LOCAL_MODULE    := hello  
LOCAL_SRC_FILES := hookfps.c  
include $(BUILD_SHARED_LIBRARY) 