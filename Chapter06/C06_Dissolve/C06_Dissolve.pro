TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter06/Dissolve/Dissolve.cpp)

QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter06/Dissolve/*.?p $$OUT_PWD && cp $$PWD/../../../Src/Chapter06/Dissolve/*.tga $$OUT_PWD
QMAKE_CLEAN += $$OUT_PWD/*.?p
QMAKE_CLEAN += $$OUT_PWD/*.tga
