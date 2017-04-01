import QtQuick 2.4
import QtQuick.Controls 2.1

ApplicationWindow {
    id:mainWindow
    visible: true
    width: 800
    height: 400

    signal clicked(string clickButtonText)

    property var click : ""
    property var firstClicked : true
    property var awake: true

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

    MainFormular {

        }
}
