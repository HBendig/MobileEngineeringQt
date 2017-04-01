import QtQuick 2.4
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent

    RowLayout {
        id: rowLayout
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        Button {
            id: buttonFormular
            Layout.fillHeight: false
            Layout.fillWidth: false
        }

        Display {
            id: displayFormular
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
