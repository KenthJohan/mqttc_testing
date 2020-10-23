message("PWD" $$PWD)

TEMPLATE = app
CONFIG += console
CONFIG += c11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += simple_subscriber.c
SOURCES += mqtt.c
SOURCES += mqtt_pal.c

HEADERS += mqtt.h
HEADERS += mqtt_pal.h

DEFINES += __USE_MINGW_ANSI_STDIO
DEFINES += _MSC_VER

QMAKE_CFLAGS_WARN_ON += -Wno-unused-function
