message("PWD" $$PWD)

TEMPLATE = app
CONFIG += console
CONFIG += c11
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += static

SOURCES += simple_subscriber.c

DEFINES += __USE_MINGW_ANSI_STDIO

QMAKE_CFLAGS_WARN_ON += -Wno-unused-function

QMAKE_LIBDIR += "C:/msys64/mingw64/lib"
INCLUDEPATH += "C:/msys64/mingw64/include"

#LIBS += -L"C:/msys64/mingw64/lib"
#LIBS += -lpaho-mqtt3a-static
#LIBS += -lwsock32
#LIBS += -lws2_32

QMAKE_LFLAGS = -static -static-libgcc

LIBS += -lpaho-mqtt3a-static
LIBS += -lpaho-mqtt3c-static
LIBS += -lpthread
LIBS += -lmingw32
LIBS += -lrpcrt4
LIBS += -lCrypt32
LIBS += -lwsock32 -lws2_32 -lssl -lcrypto -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32


