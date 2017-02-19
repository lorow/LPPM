import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

import "utils"
import "utils/settingsWindow"
ApplicationWindow
{
    property int offset: 45
    id: windowMain
    visible: true
    width:  800
    height:  500
    minimumWidth: 900
    minimumHeight: 600

    color: "#222222"
    opacity: 1 // color of the window
    title: "Welcome!"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window

    TopBarLite
    {
        id: topbar
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z: 1
        color: "#161616"
        name: windowMain.title
        window: windowMain
    }

    Rectangle {
        id: newMenu
        x: 0
        width: 800
        height: 200
        color: "#161616"
        z: 2
        anchors.top: parent.top
        anchors.topMargin: 40

        Rectangle {
            id: arrowPointer
            x: 375
            y: 156
            width: 40
            height: 40
            color: "#ff4d09"
            radius: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -20
            anchors.horizontalCenterOffset: -20
            anchors.horizontalCenter: parent.horizontalCenter

            NumberAnimation {
                id: rotateImage
                target: image1
                property: "rotation"
                duration: 300
                easing.type: Easing.InOutQuad
                from: image1.rotation
                to: image1.rotation + 180
            }

            Image {
                id: image1
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.bottomMargin: 8
                anchors.topMargin: 8
                anchors.fill: parent
                source: "utils/svgIcons/down-arrow.svg"

            }

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
                onClicked:
                {
                    rotateImage.start()
                }
            }
        }
    }


    Rectangle {
        id: rectangle1
        color: "#292929"
        z: 0
        anchors.top: newMenu.bottom
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }
}
