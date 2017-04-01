import QtQuick 2.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4

Item {
    anchors.fill: parent

    property alias button0: buttonNumber0
    property alias button1: buttonNumber1
    property alias button2: buttonNumber2
    property alias button3: buttonNumber3
    property alias button4: buttonNumber4
    property alias button5: buttonNumber5
    property alias button6: buttonNumber6
    property alias button7: buttonNumber7
    property alias button8: buttonNumber8
    property alias button9: buttonNumber9
    property alias buttonPlus: buttonOperatorPlus
    property alias buttonMinus: buttonOperatorMinus
    property alias buttonDivide: buttonOperatorDivide
    property alias buttonMultiply: buttonOperatorMultiply
    property alias buttonEqual: buttonOperatorEqual
    property alias buttonSeperator: buttonOperatorSeperator



    GridLayout {
        id: gridLayout
        rows: 4
        columns: 4
        anchors.fill: parent

        Button {
            id: buttonNumber7
            text: qsTr("7")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber8
            text: qsTr("8")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber9
            text: qsTr("9")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonOperatorDivide
            text: qsTr("/")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber4
            text: qsTr("4")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber5
            text: qsTr("5")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber6
            text: qsTr("6")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonOperatorMultiply
            text: qsTr("*")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber1
            text: qsTr("1")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber2
            text: qsTr("2")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber3
            text: qsTr("3")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonOperatorMinus
            text: qsTr("-")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonNumber0
            text: qsTr("0")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonOperatorSeperator
            text: qsTr(",")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonOperatorEqual
            text: qsTr("=")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: buttonOperatorPlus
            text: qsTr("+")
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
