#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
	// Hier einkommentieren für Lab Aufgabe 1c
    //engine.rootContext()->setContextProperty("calc",&calc);

	// Hier einkommentieren für Lab Aufgabe 1a
	//engine.load(QUrl(QLatin1String("qrc:/Main.qml")));
	

    return app.exec();
}
