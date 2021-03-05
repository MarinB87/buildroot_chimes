################################################################################
#
# midichimes
#
################################################################################

MIDICHIMES_VERSION:= v0.5
MIDICHIMES_SITE:= https://github.com/MarinB87/MidiChimes
MIDICHIMES_SITE_METHOD:= git
MIDICHIMES_DEPENDENCIES+= rtmidi

define MIDICHIMES_BUILD_CMDS
    $(MAKE) -C $(@D) CROSS_COMPILE=$(TARGET_CROSS)
endef

define MIDICHIMES_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/build/apps/miditest $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
