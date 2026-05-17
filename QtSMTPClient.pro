CONFIG	+= c++11

QT = core network

VERSION = 2.0.0
VER_MAJ = 2
VER_MIN = 0
VER_PAT = 0

TARGET = QtSMTPClient
TEMPLATE = lib

DEFINES += SMTP_MIME_LIBRARY
DEFINES += BUILD_SHARED_LIBS

CONFIG(debug, debug|release) {
        DESTDIR = Debug
} else {
        DESTDIR = Release
}
OBJECTS_DIR = $$DESTDIR/obj
MOC_DIR = $$DESTDIR/moc

include(QtSMTPClient.pri)

OTHER_FILES += \
    LICENSE \
    README.md

FORMS +=
