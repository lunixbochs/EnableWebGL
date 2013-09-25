include $(THEOS)/makefiles/common.mk

# use latest SDK but use iOS 3.0 as deployment target
# export TARGET=iphone:latest:3.0

TWEAK_NAME = EnableWebGL
EnableWebGL_FILES = tweak.xm
# EnableWebGL_CFLAGS = -I../hid-support -I./3rdParty
EnableWebGL_FRAMEWORKS = UIKit
# EnableWebGL_PRIVATE_FRAMEWORKS = CoreGraphics QuartzCore GraphicsServices
include $(THEOS_MAKE_PATH)/tweak.mk
