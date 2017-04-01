import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.1

Rectangle {

    width: 360
    height: 360

    TabView {
        id: tabView
        anchors.fill: parent
        style:touchStyle
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
    Component {
        id: touchStyle
        TabViewStyle {
            tabsAlignment: Qt.AlignVCenter
            tabOverlap: 0
            frame: Item { }
            tab: Item {
                implicitWidth: control.width/control.count
                implicitHeight: 50
                BorderImage {
                    anchors.fill: parent
                    border.bottom: 8
                    border.top: 8
                    source: styleData.selected ? "../images/tab_selected.png":"../images/tabs_standard.png"
                    Text {
                        anchors.centerIn: parent
                        color: "white"
                        text: styleData.title.toUpperCase()
                        font.pixelSize: 16
                    }
                    Rectangle {
                        visible: index > 0
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.margins: 10
                        width:1
                        color: "#3a3a3a"
                    }
                }
            }
        }
    }
}
