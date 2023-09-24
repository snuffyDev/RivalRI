QT       += core gui multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    SEPushButton.cpp \
    main.cpp \
    FrontPage.cpp

HEADERS += \
    FrontPage.h \
    SEPushButton.h

FORMS += \
    FrontPage.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../RivalInterface/release/ -lRivalInterface
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../RivalInterface/debug/ -lRivalInterface
else:unix: LIBS += -L$$OUT_PWD/../RivalInterface/ -lRivalInterface

INCLUDEPATH += $$PWD/../RivalInterface
DEPENDPATH += $$PWD/../RivalInterface

DISTFILES += \
	README.md
