import QtQuick 2.4
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Item {
            id: itemDisplay
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true

            DisplaySmartphone {
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
