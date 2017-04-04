import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item{

        Button
        {
            x: 281;y: 203; text: "Hello World"
            onClicked: { inputManager.output("hallo " + this.text + "! geklickt: " + inputTextID.text) }
        }
        TextField {
            id: inputTextID
            x: 132
            y: 202
            width: 97
            height: 41
            text: qsTr("text")
            font.pointSize: 24
            horizontalAlignment: Text.AlignHCenter
        }

    }

}
