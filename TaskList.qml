import QtQuick 2.0
import QtQuick.Controls 2.1

Item {
    Rectangle{
        id:mainRect
        anchors.fill: parent
        Component {
             id: listDelegate
             Item {
             width: mainRect.width; height: mainRect.height * 0.1

                 Row {
                  Column {
                      width: 200
                      CheckBox{
                          id:chBox
                          width:10
                          onClicked: {
                              listModel.remove(this)
                          }

                      }

                      Text {
                          text: 'Name: ' + name

                      }
                      Text {
                          text: 'Cost:' + cost
                      //anchors.left: chBox.right
                      }
                     }
                 }
             }
         }

         ListModel {
                  id: listModel
                  ListElement {
                      name: "Apple"; cost: 2.45
                  }
                  ListElement {
                      name: "f"; cost: 2.45
                  }
          }

         ListView {
               id: listView
               anchors.fill: parent; anchors.margins: 5
               model:listModel
               delegate: listDelegate
               focus: true
         }
     }

}


