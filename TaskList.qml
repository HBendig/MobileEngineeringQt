import QtQuick 2.7
import QtQuick.Controls 2.1

Item {
    id:mainItem
    Rectangle{
        id:mainRect
        anchors.fill: parent
        onVisibleChanged:  {
            listModel.update(mainRect.visible);

        }

        ComboBox{
            id:categoryFilter
            model: ["All", "Other" , "Shopping" , "Study" , "Work" , "Reminder"]
            onCurrentTextChanged: {
                listModel.update(false);
                listModel.update(true);

            }

        }

        Component {
             id: listDelegate
             Item {
                 id: listItem
                 width: mainRect.width; height: mainRect.height * 0.2

                  Column {
                      CheckBox{
                          id:chBox
                          onPressed: {
                              input.removeElement(idElement)
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
                          visible: false
                      }

                 }
             }
         }

         ListModel {
                  id: listModel

                  function update(visible){

                      var f= input.getSize();
                      console.log("updating" + visible)

                      if (visible){
                          for (var i = 0; i < f; i++) {
                              append(createListElement(i));
                          }
                      }else if (!visible){
                          listModel.clear();

                      }
                  }
                  function createListElement(index) {
                      var string = input.getData(index,"category")
                      var allString = "All"
                      console.log("same?" + string.localeCompare(categoryFilter.currentText));
                      console.log("same?" + string + categoryFilter.currentText);
                      if(string.localeCompare(categoryFilter.currentText )== 0 || allString.localeCompare(categoryFilter.currentText )== 0){
                          console.log("same")
                      return {

                                task: input.getData(index,"task"),category:input.getData(index,"category"),idElement: input.getData(index,"id"),

                          }
                      }

                  }
                  function removeListElement(index) {

                      return {
                                task: input.getData(index,"task"),category:input.getData(index,"category"),idElement: input.getData(index,"id"),

                          }

                  }







          }

         ListView {
               id: listView
               anchors.fill: parent
               anchors.topMargin:  parent.height * 0.10
               model:listModel
               delegate: listDelegate
               focus: true
         }
     }

}


