import QtQuick 2.7
import QtQuick.Controls 1.4

Item {
    Rectangle{
        anchors.fill: parent
        Text{
            text:"ADD NEW TODO"
            color:"black"
            font.pointSize: 24
            x: parent.width * 0.05
            y: parent.height * 0.1

        }
        Text{
            text:"Todo title"
            color:"black"
            font.pointSize: 12
            x: parent.width * 0.05
            y: parent.height * 0.2

        }
        TextField{
            id:taskName
            x: parent.width * 0.05
            y: parent.height * 0.3
            width: parent.width * 0.9
            placeholderText: qsTr("Enter a title here")
            font.pointSize: 24
        }
        Text{
            text:"Todo category"
            color:"black"
            font.pointSize: 12
            x: parent.width * 0.05
            y: parent.height * 0.4

        }
        ComboBox{
            id:toDoCategory
            x: parent.width * 0.05
            y: parent.height * 0.5
            width: parent.width * 0.9
            model: ["Other" , "Shopping" , "Study" , "Work" , "Reminder"]
        }
        Button{
            id:addButton
            x: parent.width * 0.05
            y: parent.height * 0.6
            text:"ADD TODO"
            width: parent.width * 0.9
            onClicked: {
                input.addTaskButton(taskName.text ,toDoCategory.currentText)

            }
        }
    }

}
