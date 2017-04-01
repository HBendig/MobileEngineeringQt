import QtQuick 2.4


DisplayFormular {
    Connections{
        target:calc
        onCalcDone: outputText.text = calcResult
    }
    Connections{
        target:mainWindowSmartphone
        onClickChanged:{ inputText.text = inputText.text + mainWindowSmartphone.click}
    }
    Connections{
        target:mainWindowSmartphone
        onFirstClickedChanged:{
            if(mainWindowSmartphone.firstClicked){
                inputText.text = ""
            }
        }
    }
    Connections{
        target:mainWindowSmartphone
        onFirstClickedChanged:{
                inputText.text = ""
        }
    }
}
