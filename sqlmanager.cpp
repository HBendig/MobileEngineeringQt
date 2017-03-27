#include "sqlmanager.h"
#include <QFile>
#include <QDebug>
#include <QSqlQuery>
#include <QFile>
#include <QUrl>
QString databaseName;

sqlManager::sqlManager()
{
    databaseName = ":database";
   // databaseName = "/home/qt/MobileEngineering/database";

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

            QSqlQuery query("SELECT * FROM task");
            while (query.next())
            {
               QString name = query.value(0).toString();
               qDebug() << name;
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
    database.exec(queryString);
    qDebug() << database.isOpen();

    while (query.next())
    {
       QString name = query.value(query.size()).toString();
       qDebug() << name;
    }


}
