#include "sqlmanager.h"
#include <QFile>
#include <QDebug>
#include <QSqlQuery>
#include <QFile>
#include <QUrl>
#include <QStringList>
QString databaseName;

sqlManager::sqlManager()
{
   databaseName = ":database";
   //databaseName = "/home/qt/MobileEngineering/database";

}

void sqlManager::connectToDatabase(){

    qDebug() << QSqlDatabase::isDriverAvailable("QSQLITE");

    if(QFile (databaseName).exists()){
        qDebug() << "exists";
        database = QSqlDatabase::addDatabase("QSQLITE");
        database.setDatabaseName(databaseName);
        qDebug() << database.open();

        if(database.isOpen()){
            qDebug() << "OpenDatabase success";



            QSqlQuery query(database);
            query.exec("create table task (task string, category string,id integer primary key AUTOINCREMENT);");
            query.exec("select * from task;");

            while (query.next())
            {
               QString name = query.value(0).toString();
               qDebug() << "StartSQL DEbug"<<name;
            }
        }
        else if(!database.isOpen()){
            qDebug() << "OpenDatabase fail";
        }

    }
    else{
        qDebug() << "No Database found";
    }

}

void sqlManager::getQuery(QString queryString){
    QSqlQuery query(queryString);
    qDebug() << queryString;
    qDebug() << database.isOpen();

    QStringList task;
    QStringList category;
        while (query.next())
        {
            task.append(query.value(0).toString());
           qDebug() << task;

        }
}
QStringList sqlManager::getQuery(QString queryString,QString type){
    QSqlQuery query(queryString);
    qDebug() << queryString;
    qDebug() << database.isOpen();

    QStringList task;
    QStringList category;
        while (query.next())
        {
            task.append(query.value(0).toString());
           qDebug() << "task"<<task;
        }
        return task;
}

