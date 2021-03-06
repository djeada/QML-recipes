import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Multitouch")

    MultiPointTouchArea {
        anchors.fill: parent
        minimumTouchPoints: 1
        maximumTouchPoints: 3

        touchPoints: [
            TouchPoint { id: touch_point_1 },
            TouchPoint { id: touch_point_2 },
            TouchPoint { id: touch_point_3 }
        ]
    }

    Rectangle {
        x: touch_point_1.x - width/2
        y: touch_point_1.y - height/2
        width: parent.width/3
        height: parent.height/3
        visible: touch_point_1.pressed
        color: "black"
    }
    Rectangle {
        x: touch_point_2.x - width/2
        y: touch_point_2.y - height/2
        width: parent.width/3
        height: parent.height/3
        visible: touch_point_2.pressed
        color: "gray"
    }
    Rectangle {
        x: touch_point_3.x - width/2
        y: touch_point_3.y - height/2
        width: parent.width/3
        height: parent.height/3
        visible: touch_point_3.pressed
        color: "yellow"
    }
}
