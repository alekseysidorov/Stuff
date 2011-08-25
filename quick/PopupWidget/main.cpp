#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include "popupwidget.h"
#include <QtDeclarative>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

	qmlRegisterType<PopupWidget>("com.code.qmlcomponents", 1, 0, "PopupWidget");

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/PopupWidget/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
