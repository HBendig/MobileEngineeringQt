#ifndef SQLMANAGER_H
#define SQLMANAGER_H
#include <QObject>
#include <QSqlDatabase>
#include <QStringList>


class sqlManager: public QObject
{
    Q_OBJECT
public:
    sqlManager();

public slots:
     void connectToDatabase();

     void getQueryNull(QString query);
     QStringList getQuery(QString query);
private:
    QSqlDatabase database;
public:
    int idIndex;
};

#endif // SQLMANAGER_H
