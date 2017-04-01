import QtQuick 2.4


DisplayFormular {

    Connections{
        target:calc
        onCalcDone: outputText.text = calcResult
    }
    Connections{
        target:mainWindow
        onClickChanged:{ inputText.text = inputText.text + mainWindow.click}
    }
    Connections{
        target:mainWindow
        onFirstClickedChanged:{
            if(mainWindow.firstClicked){
                inputText.text = ""
            }
        }
    }
    Connections{
        target:mainWindow
        onFirstClickedChanged:{
                inputText.text = ""
        }
    }
}
