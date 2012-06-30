TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter07/NormalMapped/NormalMapped.cpp)

QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/NormalMapped/*.?p $$OUT_PWD/ &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/NormalMapped/*.tga $$OUT_PWD/
QMAKE_CLEAN += $$OUT_PWD/*.?p
QMAKE_CLEAN += $$OUT_PWD/*.tga
