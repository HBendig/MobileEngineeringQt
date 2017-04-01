import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.1

ButtonFormular{

    button0.onClicked: {
         calc.setNumber(button0.text)
        wasClicked(button0.text)
    }
    button1.onClicked: {
         calc.setNumber(button1.text)
                wasClicked(button1.text)
    }
    button2.onClicked: {
         calc.setNumber(button2.text)
                wasClicked(button2.text)
    }
    button3.onClicked: {
         calc.setNumber(button3.text)
                wasClicked(button3.text)
    }
    button4.onClicked: {
         calc.setNumber(button4.text)
                wasClicked(button4.text)
    }
    button5.onClicked: {
         calc.setNumber(button5.text)
                wasClicked(button5.text)
    }
    button6.onClicked: {
         calc.setNumber(button6.text)
                wasClicked(button6.text)
    }
    button7.onClicked: {
         calc.setNumber(button7.text)
                wasClicked(button7.text)
    }
    button8.onClicked: {
         calc.setNumber(button8.text)
                wasClicked(button8.text)
    }
    button9.onClicked: {
         calc.setNumber(button9.text)
            wasClicked(button9.text)
    }
    buttonSeperator.onClicked: {
         calc.setNumber(".")
    }
    buttonDivide.onClicked: {
         calc.setOperator(buttonDivide.text)
         wasClicked(buttonDivide.text)
    }
    buttonMultiply.onClicked: {
         calc.setOperator(buttonMultiply.text)
        wasClicked(buttonMultiply.text)
    }
    buttonPlus.onClicked: {
         calc.setOperator(buttonPlus.text)
        wasClicked(buttonPlus.text)
    }
    buttonMinus.onClicked: {
         calc.setOperator(buttonMinus.text)
        wasClicked(buttonMinus.text)
    }
    buttonEqual.onClicked:  {
        calc.calculate()
        mainWindow.click = ""
        mainWindow.firstClicked = true
   }








}
