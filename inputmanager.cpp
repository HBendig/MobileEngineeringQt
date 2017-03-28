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
    sql.getQuery(tmpString);
}

QString inputManager::getData(int index){


    QString tmpString = "select * from task;";
    QStringList task = sql.getQuery(tmpString,"task");
    return task.at(index);

}

int inputManager::getSize(){
    QString tmpString = "select count (task) from task;";
    QStringList task = sql.getQuery(tmpString,"task");
    qDebug() << "Zahl===" << task.value(0);
    return  task.value(0).toInt();
}
