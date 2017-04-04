#ifndef INPUTMANAGER_H
#define INPUTMANAGER_H

#include <QObject>

class InputManager : public QObject
{
    Q_OBJECT
public:
    explicit InputManager(QObject *parent = 0);

signals:

public slots:
    void output(QString ouputtext);
};

#endif // INPUTMANAGER_H
