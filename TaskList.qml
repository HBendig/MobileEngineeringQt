import QtQuick 2.0
import QtQuick.Controls 2.1

Item {
    id:mainItem
    Rectangle{
        id:mainRect
        anchors.fill: parent
        onVisibleChanged: {
            listModel.update();

        }

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
                          text: 'Task: ' + task

                      }
                      Text {
                          text: 'Category: ' + category
                      }
                     }
                 }
             }
         }

         ListModel {
                  id: listModel
                  function update(){
                      console.log("ja=?");
                      var f= input.getSize();
                      for (var i = 0; i < f; i++) {
                          append(createListElement(i));
                      }
                  }

                  function createListElement(index) {
                      return {
                          task: input.getData(index),category:"1"
                      }

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


