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

     void getQuery(QString query);
     QStringList getQuery(QString query, QString type);
private:

    QSqlDatabase database;
};

#endif // SQLMANAGER_H
