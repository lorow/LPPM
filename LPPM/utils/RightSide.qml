import QtQuick 2.0
import "../colorPicker"
Rectangle {
    property var pickerColor: colorpicker1.colorValue

    id: rightSide
    x: 0
    width: 220
    color: "#0d0d0d"
    anchors.bottom: bottomSide.top
    anchors.bottomMargin: 0
    anchors.top: underTop.bottom
    anchors.topMargin: 0
    border.width: 0
    border.color: "#000000"
    anchors.rightMargin: 0
    anchors.right: parent.right

    Colorpicker
    {
        id: colorpicker1
        height: 162
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 25
        anchors.right: parent.right
        anchors.rightMargin: 33
        anchors.verticalCenter: windowMain.verticalCenter
    }
    Rectangle {
        id: red
        height: 40
        color: "#191919"
        radius: 4
        anchors.top: parent.top
        anchors.topMargin: 202
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10

        Text {
            id: text6
            color: "#ffffff"
            text: qsTr("Red:")
            anchors.rightMargin: 100
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 12
        }

        TextInput {
            id: textInput1
            x: 100
            y: 0
            color: "#ffffff"
            text: qsTr("255")
            echoMode: TextInput.Normal
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            maximumLength: 3
            anchors.leftMargin: 100
            anchors.fill: parent
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: green
        height: 40
        color: "#191919"
        radius: 4
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.top: red.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.rightMargin: 10

        Text {
            id: text7
            color: "#ffffff"
            text: qsTr("Green:")
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
            anchors.rightMargin: 100
        }

        TextInput {
            id: textInput2
            x: -2
            y: -9
            color: "#ffffff"
            text: qsTr("255")
            anchors.leftMargin: 100
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            maximumLength: 3
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: blue
        x: 7
        height: 40
        color: "#191919"
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.top: green.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.rightMargin: 10

        Text {
            id: text8
            color: "#ffffff"
            text: qsTr("Blue:")
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
            anchors.rightMargin: 101
        }

        TextInput {
            id: textInput3
            x: -8
            y: -8
            color: "#ffffff"
            text: qsTr("255")
            anchors.leftMargin: 100
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            maximumLength: 3
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: hex
        x: 15
        height: 40
        color: "#191919"
        radius: 4
        anchors.leftMargin: 10
        Text {
            id: text9
            color: "#ffffff"
            text: qsTr("HEX:")
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
            anchors.rightMargin: 101
        }

        TextInput {
            id: textInput4
            x: 2
            y: -2
            color: "#ffffff"
            text: qsTr("#ffffff")
            anchors.leftMargin: 100
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            maximumLength: 7
            font.pixelSize: 12
        }
        anchors.right: parent.right
        anchors.top: blue.bottom
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.rightMargin: 10
    }
}

