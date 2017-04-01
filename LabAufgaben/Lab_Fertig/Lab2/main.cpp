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

    int plattformId = 0; // Desktop
    engine.rootContext()->setContextProperty("plattformId", plattformId);


#ifdef Q_OS_ANDROID
    plattformId = 1; // Android
    engine.load(QUrl(QLatin1String("qrc:/MainSmartphone.qml")));
#else
    engine.load(QUrl(QLatin1String("qrc:/MainDesktop.qml")));
#endif

    return app.exec();
}
