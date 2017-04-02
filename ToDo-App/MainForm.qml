import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0


Rectangle {
    id:mainForm

    width: 360
    height: 360



    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        property var update: false

        Page{
            clip: false
            visible: true
            title:"TASKLIST"

            TaskList{
                id:taskList
                anchors.fill:parent

            }
        }
        Page{
            title:"ADD TASK"
            AddTask{
                id:addTask
                anchors.fill:parent

            }
        }
    }
}
