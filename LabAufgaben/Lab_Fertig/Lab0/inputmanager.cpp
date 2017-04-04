#include "inputmanager.h"
#include <QDebug>

InputManager::InputManager(QObject *parent) : QObject(parent)
{

}

void InputManager::output(QString ouputtext)
{
    qDebug() << ouputtext;
}
