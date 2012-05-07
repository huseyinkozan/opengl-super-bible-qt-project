TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter05/Anisotropic/Tunnel.cpp)

QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter05/Anisotropic/*.tga $$OUT_PWD
QMAKE_CLEAN += $$OUT_PWD/*.tga
