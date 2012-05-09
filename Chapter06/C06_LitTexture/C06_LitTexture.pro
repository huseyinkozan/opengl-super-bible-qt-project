TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter06/LitTexture/LitTexture.cpp)

QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter06/LitTexture/*.?p $$OUT_PWD && cp $$PWD/../../../Src/Chapter06/LitTexture/*.tga $$OUT_PWD
QMAKE_CLEAN += $$OUT_PWD/*.?p
QMAKE_CLEAN += $$OUT_PWD/*.tga
