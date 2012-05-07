TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter05/SphereWorld/SphereWorld.cpp)

# todo : remove rename if file name case fixed at the base
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter05/SphereWorld/*.tga $$OUT_PWD && rename 'y/A-Z/a-z/' *.tga
QMAKE_CLEAN += $$OUT_PWD/*.tga
