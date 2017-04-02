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
            query.exec("create table task (task string, category string,id integer primary key autoincrement);");

            query.exec("select id from task where id = (select max(id) from task)order by id desc limit 1");

              while (query.next()){
                  idIndex =query.value(0).toInt() + 1;
             qDebug() << query.value(0).toString();
              }
             qDebug() << "idIndex" <<idIndex ;
        }
        else if(!database.isOpen()){
            qDebug() << "OpenDatabase fail";
        }
    }
    else{
        qDebug() << "No Database found";
    }
}

void sqlManager::getQueryNull(QString queryString){
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
QStringList sqlManager::getQuery(QString queryString){
    QSqlQuery query(queryString);
    qDebug() << queryString;
    qDebug() << database.isOpen();

    QStringList list;
        while (query.next())
        {
            list.append(query.value(0).toString());
        }
        return list;
}

