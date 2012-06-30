TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter07/SphereMapped/SphereMapped.cpp)

QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/SphereMapped/*.?p $$OUT_PWD/ &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/SphereMapped/*.tga $$OUT_PWD/
QMAKE_CLEAN += $$OUT_PWD/*.?p
QMAKE_CLEAN += $$OUT_PWD/*.tga
