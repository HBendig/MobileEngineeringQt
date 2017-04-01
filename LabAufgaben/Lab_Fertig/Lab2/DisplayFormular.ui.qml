import QtQuick 2.4
import QtQuick.Layouts 1.1

Item {
    anchors.fill: parent

    property alias inputText: inputText
    property alias outputText: outputText
    Rectangle {
        id: background
        color: "#ffffff"
        anchors.fill: parent
    }
    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Text {
            id: inputText
            color: "#000000"
            text: qsTr("Eingabe")
            Layout.fillWidth: true
            Layout.fillHeight: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: false
            styleColor: "#ffffff"
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            font.pixelSize: 22
        }

        Text {
            id: outputText
            text: qsTr("Ergebnis")
            Layout.fillHeight: true
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            font.pixelSize: 22
        }
    }
}
