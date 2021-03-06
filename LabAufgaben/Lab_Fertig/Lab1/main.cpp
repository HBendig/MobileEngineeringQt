#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <calculator.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    Calculator calc;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("calc",&calc);
    engine.load(QUrl(QLatin1String("qrc:/Main.qml")));


    return app.exec();
}
