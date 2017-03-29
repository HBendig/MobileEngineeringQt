import QtQuick 2.0
import QtQuick.Controls 2.1

Item {
    id:mainItem
    Rectangle{
        id:mainRect
        anchors.fill: parent
        onVisibleChanged: {
            listModel.update(mainRect.visible);
        }

        Component {
             id: listDelegate
             Item {
                 id: listItem
                width: mainRect.width; height: mainRect.height * 0.3

                 Row {
                  Column {

                      width: 200

                      CheckBox{
                          id:chBox
                          width:10
                          onClicked: {
                              console.log("od" + idElement.objectName)
                              input.removeElement(idElement)
                              listModel.remove(this)





                          }

                      }

                      Text {
                          text: 'Task: ' + task


                      }
                      Text {
                          text: 'Category: ' + category
                      }
                      Text{
                          text: idElement
                      }

                      /*MouseArea{
                          width: listItem.width
                          height: listItem.height
                          anchors.fill: listItem
                          onClicked: {
                             listModel.remove(this);
                              console.log ("onClicked");
                          }
                      }*/
                     }
                 }
             }
         }

         ListModel {
                  id: listModel
                  function update(visible){

                      var f= input.getSize();
                      if (visible){
                          for (var i = 0; i < f; i++) {
                              append(createListElement(i));
                          }
                      }else if (!visible){
                          for (var i = 0; i < f; i++) {
                              remove(createListElement(i));
                          }

                      }
                  }

                  function createListElement(index) {
                      console.log("was passiert"+input.getData(index,"task")+input.getData(index,"id"));
                      return {
                          task: input.getData(index,"task"),category:input.getData(index,"category"), idElement:input.getData(index,"id")

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


