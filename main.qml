import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: Screen.width
    height: Screen.height
    color: "#393636"
    title: "Pallete Maker"

    RightSideMy {
        id: rightSideMy1
        width: 240
        color: "#2980b9"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Rectangle {
            id: colorPicerBackground
            height: 240
            color: "#2c3e50"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        Rectangle {
            id: button
            height: 50
            color: "#3498db"
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: colorPicerBackground.bottom
            anchors.topMargin: 30

            Rectangle {
                id: rectangle1
                height: 20
                color: "#2c3e50"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -20
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
            }
        }

        Rectangle {
            id: button1
            height: 50
            color: "#3498db"
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: button.bottom
            anchors.topMargin: 40
            Rectangle {
                id: rectangle2
                height: 20
                color: "#2c3e50"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: -20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.left: parent.left
            }
        }

        Rectangle {
            id: button2
            height: 50
            color: "#3498db"
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: button1.bottom
            anchors.topMargin: 40
            Rectangle {
                id: rectangle3
                height: 20
                color: "#2c3e50"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.bottomMargin: -20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.left: parent.left
            }
        }
    }

    Rectangle {
        id: workspace
        color: "#bdc3c7"
        anchors.left: parent.left
        anchors.leftMargin: 260
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }

}
