import QtQuick 2.1
import QtQuick.Controls 1.0

ApplicationWindow {
    title: "Sensor Bubble"
    id: mainWindow
    width: 320
    height: 480
    visible: true


    Image {
        id: bubble
        source: "content/Bluebubble.svg"
        smooth: true
        property real centerX: mainWindow.width / 2
        property real centerY: mainWindow.height / 2
        property real bubbleCenter: bubble.width / 2
        x: centerX - bubbleCenter
        y: centerY - bubbleCenter

        Behavior on y {
            SmoothedAnimation {
                easing.type: Easing.Linear
                duration: 100
            }
        }
        Behavior on x {
            SmoothedAnimation {
                easing.type: Easing.Linear
                duration: 100
            }
        }
    }
}
