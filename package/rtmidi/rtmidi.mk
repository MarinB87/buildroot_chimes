################################################################################
#
# RTMIDI
#
################################################################################

RTMIDI_VERSION:= 4.0.0
RTMIDI_SITE:= http://www.music.mcgill.ca/~gary/rtmidi/release
RTMIDI_SOURCE:= rtmidi-4.0.0.tar.gz
RTMIDI_INSTALL_STAGING:= YES
RTMIDI_INSTALL_TARGET:= YES


$(eval $(autotools-package))
