TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter07/TextureArrays/TextureArrays.cpp)

# todo : remove rename if file name case fixed at the base
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureArrays/*.?p $$OUT_PWD/ &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureArrays/m*.tga $$OUT_PWD/ &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureArrays/star.tga $$OUT_PWD/Star.tga
QMAKE_CLEAN += $$OUT_PWD/*.?p
QMAKE_CLEAN += $$OUT_PWD/*.tga
