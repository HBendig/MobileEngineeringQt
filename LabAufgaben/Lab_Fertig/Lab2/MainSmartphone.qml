import QtQuick 2.4
import QtQuick.Controls 2.1

ApplicationWindow {
    id: mainWindowSmartphone
    visible: true

    signal clicked(string clickButtonText)

    property string click : ""
    property bool firstClicked : true
    property bool awake: true

    function wasClicked(clicked){
        if(awake){
            awake = false
        }

        if(firstClicked){
            firstClicked = false
        }

        click = clicked
        console.log(click)
    }

    MainSmartphoneFormular {

        }
}
