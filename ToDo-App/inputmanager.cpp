#include "Inputmanager.h"
#include <QDebug>
#include <sqlmanager.h>


inputManager::inputManager()
{
    sql.connectToDatabase();
}

void inputManager::addTaskButton(QString taskName, QString toDoCategory){
    QString tmp =QString::number(sql.idIndex);
    QString tmpString = "insert into task values (\"" +taskName +"\" ,\"" + toDoCategory +"\","+ tmp +");";
    sql.idIndex++;
    sql.getQuery(tmpString);
}

QString inputManager::getData(int index, QString type){
    QString tmpString = "select "+type+" from task;";
    QStringList task = sql.getQuery(tmpString);
    return task.at(index);
}

int inputManager::getSize(){
    QString tmpString = "select count (task) from task;";
    QStringList task = sql.getQuery(tmpString);
    return  task.value(0).toInt();
}

void inputManager::removeElement(int index){
    QString tmpString = "delete from task where id = " +  QString::number(index)+ ";";
    sql.getQuery(tmpString);
}
void inputManager::getfilteredData(QString type, QString category){
    QString tmpString = "select " + type + " from task where category =" + category +";";
    sql.getQuery(tmpString);
}

