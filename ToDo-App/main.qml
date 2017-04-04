import QtQuick 2.7
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.1

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
            currentIndex: swipeView.currentIndex
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



    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        property bool update: false

        Page{
            title:"TASKLIST"
            font.pointSize: 12
            TaskList{
                id:taskList
                anchors.fill:parent
            }
        }
        Page{
            title:"ADD TASK"
            font.pointSize: 12
            AddTask{
                id:addTask
                anchors.fill:parent
            }
        }
    }
}
