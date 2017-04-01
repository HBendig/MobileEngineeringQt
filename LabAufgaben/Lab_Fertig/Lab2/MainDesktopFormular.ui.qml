import QtQuick 2.4
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        antialiasing: false


        Item {
            id: itemDisplay
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true

            Display {
                id: display
            }
        }

        Item {
            id: itemButtons
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true

            Button {
                id: button
            }
        }
    }
}
