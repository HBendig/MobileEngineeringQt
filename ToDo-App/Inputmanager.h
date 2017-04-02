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
    QString getData(int index,QString type);
    int getSize();
    void removeElement(int index);
    void getfilteredData(QString type,QString category);
};

#endif // INPUTMANAGER_H
