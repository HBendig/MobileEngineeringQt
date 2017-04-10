#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>

class Calculator :public QObject
{
    Q_OBJECT
public:
    Calculator();
public slots:
    void setOperator(QString value);
    void setNumber(QString value);
    void reset();
    void calculate();
private:
    QString value1;
    QString value2;
    bool isValue1;
    QString operation;
    float result;
signals:
    calcDone(float calcResult);
};

#endif // CALCULATOR_H
