#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "inputmanager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    InputManager inputMgr;
    engine.rootContext()->setContextProperty("inputManager", &inputMgr);

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
