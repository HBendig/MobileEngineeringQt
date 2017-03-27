#include "Inputmanager.h"
#include <QDebug>
#include <sqlmanager.h>


inputManager::inputManager()
{
    sql.connectToDatabase();
}

void inputManager::addTaskButton(QString taskName, QString toDoCategory){
    qDebug() << taskName;
    qDebug() << toDoCategory;
    QString tmpString = "insert into task values (\"" +taskName +"\" ,\"" + toDoCategory +"\");";
    tmpString = tmpString.remove("");

     sql.getQuery(tmpString);
}
