TEMPLATE = app
CONFIG += console
CONFIG -= qt

INCLUDEPATH += ../../../Src/GLTools/include
INCLUDEPATH += ../../../Src/GLTools/include/GL

LIBS += -lglut -lGL -lGLU
LIBS += -L$$quote($$PWD/../../GLTools) -lGLTools

SOURCES += \
    $$quote(../../../Src/Chapter07/TextureRect/SphereWorld.cpp)

# TODO : fix after tga file cases.
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureRect/*.?p $$OUT_PWD/ &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureRect/Marble.tga $$OUT_PWD/marble.tga &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureRect/Marslike.tga $$OUT_PWD/marslike.tga &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureRect/MoonLike.tga $$OUT_PWD/moonlike.tga &&
QMAKE_POST_LINK += cp $$PWD/../../../Src/Chapter07/TextureRect/OpenGL-Logo.tga $$OUT_PWD/OpenGL-Logo.tga
QMAKE_CLEAN += $$OUT_PWD/*.?p
QMAKE_CLEAN += $$OUT_PWD/*.tga
