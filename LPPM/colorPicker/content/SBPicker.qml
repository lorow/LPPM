//  Saturation/brightness picking box
import QtQuick 2.2

Item {
    id: rooT
    property color hueColor : "red"
    property real saturation : pickerCursor.x/width
    property real brightness : 1 - pickerCursor.y/height
    width: 200; height: 200
    Rectangle {
        anchors.fill: parent;
        rotation: -90
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#FFFFFF" }
            GradientStop { position: 1.0; color: rooT.hueColor }
        }
    }
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 1.0; color: "#FF000000" }
            GradientStop { position: 0.0; color: "#00000000" }
        }
    }
    Item {
        id: pickerCursor
        property int r : 8
        Rectangle {
            x: -parent.r; y: -parent.r
            width: 14
            height: 14
            border.color: "black"; border.width: 0
            color: "transparent"
            Rectangle {
                anchors.fill: parent; anchors.margins: 2;
                border.color: "white"; border.width: 2
                radius: width/2
                color: "transparent"
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        function handleMouse(mouse) {
            if (mouse.buttons & Qt.LeftButton) {
                pickerCursor.x = Math.max(0, Math.min(width,  mouse.x));
                pickerCursor.y = Math.max(0, Math.min(height, mouse.y));
            }
        }
        onPositionChanged: handleMouse(mouse)
        onPressed: handleMouse(mouse)
    }
}

