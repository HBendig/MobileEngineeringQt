import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4

Item {    
    id:mainItem

    Rectangle{
        id:mainRect
        anchors.fill: parent
        Connections{

            target:applicationWindowMain
            onUpdateList:{
                listModel.update(false);
                listModel.update(true);
            }
        }

        ComboBox{
            id:categoryFilter
            x: 512
            y: 48
            anchors.right: parent.right
            anchors.rightMargin: 8
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
                 width: mainRect.width;
                 height: mainRect.height * 0.1
                 Row {
                     CheckBox{
                          id:chBox
                          onPressed: {
                              input.removeElement(idElement)
                          }
                      }

                      Column{
                          Text {
                              text: 'Task: ' + task
                              font.pointSize: 12
                          }

                          Text {
                              text: 'Category: ' + category
                              font.pointSize: 12
                          }

                          Text{
                              text: idElement
                              visible: false
                          }
                      }
                 }
             }
         }

         ListModel {
                  id: listModel
                  function update(visible){

                      var f = input.getSize();

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

                      if(string.localeCompare(categoryFilter.currentText ) === 0 || allString.localeCompare(categoryFilter.currentText ) === 0){
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
