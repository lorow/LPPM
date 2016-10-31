import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

import "utils"
import "colorPicker"
ApplicationWindow
{
    id: windowMain
    visible: true
    width:  1100
    height:  700
    minimumWidth: 700
    minimumHeight: 500

    color: "#222222" // color of the window
    title: "Your Title"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window

    ResizeWindow
    {
        id: resizeWindow1
        anchors.fill: parent
        window: windowMain
        z:1
    }
    TopBar
    {
        id: topbar
        color: "#100f0f"
        border.color: "#000000"
        window: windowMain
    }

    Rectangle {
        id: leftSide
        width: 70
        color: "#100f0f"
        border.width: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: topbar.bottom
        anchors.topMargin: 0
    }

    Rectangle {
        id: underTop
        y: 140
        height: 40
        color: "#100f0f"
        border.color: "#000000"
        border.width: 0
        anchors.left: parent.left
        anchors.leftMargin: 70
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: topbar.bottom
        anchors.topMargin: 0
    }

    Rectangle {
        id: bottomSide
        x: 6
        y: 179
        height: 40
        color: "#100f0f"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        border.width: 0
        anchors.left: parent.left
        anchors.rightMargin: 0
        border.color: "#000000"
        anchors.right: parent.right
        anchors.leftMargin: 70
    }

    Rectangle {
        id: rightSide
        x: 14
        width: 240
        color: "#100f0f"
        anchors.bottom: bottomSide.top
        anchors.bottomMargin: 0
        anchors.top: underTop.bottom
        anchors.topMargin: 0
        border.width: 0
        border.color: "#000000"
        anchors.rightMargin: 0
        anchors.right: parent.right
    }

    Rectangle {
        id: rectangle1
        x: 450
        y: 477
        width: 200
        height: 40
        color: colorpicker1.colorValue
        anchors.horizontalCenter: colorpicker1.horizontalCenter

        Text {
            id: text1
            color: "#000000"
            text: qsTr("example color")
            style: Text.Sunken
            font.italic: false
            font.bold: false
            styleColor: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }
    }

    Colorpicker
    {
        id: colorpicker1
        x: 456
        y: 308
        width: 155
        height: 155
    }


}

