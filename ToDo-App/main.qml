import QtQuick 2.7
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

ApplicationWindow {
    id:applicationWindowMain
    visible: true
    width: 640
    height: 480
    title: qsTr("ToDo")

    signal updateList()

    header:TabBar{

        id: tabBar
        width: parent.width
        TabButton{
            text:qsTr("Tasklist")
            onClicked: {
                applicationWindowMain.updateList();

            }
        }
        TabButton{
            text:qsTr("Add Task")
            onClicked: {
                applicationWindowMain.updateList();

            }
        }
    }
    MainForm {
        anchors.fill: parent

    }
}
