#ifndef SQLMANAGER_H
#define SQLMANAGER_H
#include <QObject>
#include <QSqlDatabase>


class sqlManager: public QObject
{
    Q_OBJECT
public:
    sqlManager();

public slots:
     void connectToDatabase();
     void getQuery(QString query);
private:

    QSqlDatabase database;
};

#endif // SQLMANAGER_H
