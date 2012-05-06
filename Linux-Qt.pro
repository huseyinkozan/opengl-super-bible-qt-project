
#
# Required packages for ubuntu :
# freeglut3-dev (or other freeglut)
#
# Dont use "Shadow build" when importing project !
# Disable "Run in terminal" option from run settings !

TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS += \
    GLTools \
    Chapter01 \
    Chapter02 \
    Chapter03 \
    Chapter04 \
    Chapter05
