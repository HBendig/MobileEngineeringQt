#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <Inputmanager.h>
#include <sqlmanager.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    inputManager input;

    sqlManager sql;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("input",&input);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}
