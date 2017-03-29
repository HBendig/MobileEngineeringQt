import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Rectangle {

    width: 360
    height: 360

    TabView {
        id: tabView
        anchors.fill: parent
        Tab{
            active: true
            asynchronous: false
            title:"TASKLIST"
            TaskList{
                id:taskList
                anchors.fill:parent
            }
        }
        Tab{
            active: true
            asynchronous: false
            title:"ADD TASK"
            AddTask{
                id:addTask
                anchors.fill:parent

            }
        }
    }
}
