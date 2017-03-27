#ifndef INPUTMANAGER_H
#define INPUTMANAGER_H
#include <QObject>
#include <sqlmanager.h>

class inputManager : public QObject
{
    Q_OBJECT
public:
    inputManager();

    sqlManager sql;
public slots:
    void addTaskButton(QString a, QString b);
};

#endif // INPUTMANAGER_H
