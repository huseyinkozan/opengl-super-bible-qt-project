#-------------------------------------------------
#
# Project created by QtCreator 2012-01-09T23:12:54
#
#-------------------------------------------------

QT       -= core gui

TARGET = GLTools
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += $$quote(../../Src/GLTools/include)
INCLUDEPATH += $$quote(../../Src/GLTools/include/GL)

LIBS += -lX11 -lglut -lGL -lGLU -lm

SOURCES += \
    ../../Src/GLTools/src/GLBatch.cpp \
    ../../Src/GLTools/src/glew.c \
    ../../Src/GLTools/src/GLShaderManager.cpp \
    ../../Src/GLTools/src/GLTools.cpp \
    ../../Src/GLTools/src/GLTriangleBatch.cpp \
    ../../Src/GLTools/src/math3d.cpp

HEADERS +=\
    ../../Src/GLTools/include/GL/glew.h \
    ../../Src/GLTools/include/GL/glxew.h \
    ../../Src/GLTools/include/GL/wglew.h \
    ../../Src/GLTools/include/GLBatchBase.h \
    ../../Src/GLTools/include/GLBatch.h \
    ../../Src/GLTools/include/GLFrame.h \
    ../../Src/GLTools/include/GLFrustum.h \
    ../../Src/GLTools/include/GLGeometryTransform.h \
    ../../Src/GLTools/include/GLMatrixStack.h \
    ../../Src/GLTools/include/GLShaderManager.h \
    ../../Src/GLTools/include/GLTools.h \
    ../../Src/GLTools/include/GLTriangleBatch.h \
    ../../Src/GLTools/include/math3d.h \
    ../../Src/GLTools/include/StopWatch.h
