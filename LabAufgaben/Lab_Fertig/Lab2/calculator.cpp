#include "calculator.h"
#include <QDebug>

Calculator::Calculator()
{
    reset();
}
void Calculator::setNumber(QString value){

    qDebug() << "incoming value: "<< value;
    if(isValue1){
        value1 += value;
        qDebug() << "value1: "<< value1;
    }else{
        value2 += value;
        qDebug() << "value2: "<< value2;
    }

}
void Calculator::setOperator(QString value){
    operation = value;
    isValue1 = false;
}
void Calculator::reset(){

    value1 = "";
    value2 = "";
    operation = "";
    isValue1 = true;

}
void Calculator::calculate(){

    if(operation == "+"){
        result = value1.toFloat() + value2.toFloat();

    }else if(operation == "-"){
         result = value1.toFloat() - value2.toFloat();

    }else if(operation == "*"){
         result = value1.toFloat() * value2.toFloat();

    }else if(operation == "/"){
         result = value1.toFloat() / value2.toFloat();
    }
    qDebug() << result;
    emit calcDone(result);
    reset();
}

