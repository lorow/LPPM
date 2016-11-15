import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

import "utils"
ApplicationWindow
{
    id: windowMain
    visible: true
    width:  1100
    height:  700
    minimumWidth: 900
    minimumHeight: 600

    color: "#222222" // color of the window
    title: "Your Title"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window

    ResizeWindow
    {
        id: resizeWindow1
        anchors.fill: parent
        window: windowMain
        z:2
    }
    TopBar
    {
        id: topbar
        z: 1
        window: windowMain
    }

    LeftSide
    {
        id: leftSide
        width: 61
        z: 1

        Rectangle {
            id: save
            width: 50
            height: 30
            color: "#191919"
            anchors.right: parent.right
            anchors.rightMargin: 6
            anchors.left: parent.left
            anchors.leftMargin: 6
            anchors.top: parent.top
            anchors.topMargin: 107

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
            }

            Image {
                id: image2
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.rightMargin: 15
                anchors.leftMargin: 15
                anchors.fill: parent
                source: "utils/svgIcons/content-save.png"
            }
        }

        Rectangle {
            id: load
            y: -3
            height: 30
            color: "#191919"
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 6
            anchors.top: save.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea2
                anchors.fill: parent
            }

            Image {
                id: image3
                anchors.rightMargin: 13
                anchors.leftMargin: 13
                anchors.bottomMargin: 3
                anchors.topMargin: 3
                anchors.fill: parent
                source: "utils/svgIcons/folder-upload.png"
            }
        }

        Rectangle {
            id: exportMy
            y: 1
            height: 30
            color: "#191919"
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 6
            anchors.top: load.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea3
                anchors.fill: parent
            }

            Image {
                id: image4
                anchors.rightMargin: 13
                anchors.leftMargin: 13
                anchors.bottomMargin: 3
                anchors.topMargin: 3
                anchors.fill: parent
                source: "utils/svgIcons/file-export.png"
            }
        }

        Rectangle {
            id: importMy
            height: 30
            color: "#191919"
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 6
            anchors.top: exportMy.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea4
                anchors.fill: parent
            }

            Image {
                id: image5
                anchors.rightMargin: 13
                anchors.leftMargin: 13
                anchors.bottomMargin: 3
                anchors.topMargin: 3
                anchors.fill: parent
                source: "utils/svgIcons/file-import.png"
            }
        }

    }

    UnderTop
    {
        id: underTop
        anchors.leftMargin: 0
        anchors.left: leftSide.right
        z: 1
        anchors.rightMargin: 220
    }

    BottomSide
    {
        id: bottomSide
        height: 30
        anchors.leftMargin: 0
        anchors.right: rightSide.left
        anchors.left: leftSide.right
        z: 1

        Text {
            id: tilesCounter
            width: 82
            height: 22
            color: "#ffffff"
            text: qsTr("Tiles in whole: ")
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }

        Text {
            id: countedTiles
            x: -4
            y: 6
            width: 15
            height: 22
            color: "#ffffff"
            text: qsTr("0")
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 4
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.left: tilesCounter.right
        }

        Text {
            id: tilesScanedCounter
            x: 6
            y: 6
            width: 82
            height: 22
            color: "#ffffff"
            text: qsTr("Scanned tiles:")
            anchors.leftMargin: 20
            horizontalAlignment: Text.AlignHCenter
            anchors.bottom: parent.bottom
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 4
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.left: countedTiles.right
        }

        Text {
            id: scannedTiles
            y: 12
            width: 15
            height: 22
            color: "#ffffff"
            text: qsTr("0")
            anchors.leftMargin: 0
            horizontalAlignment: Text.AlignHCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 12
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.left: tilesScanedCounter.right
        }
    }

    RightSide
    {
        id: rightSide
        x: 880
        anchors.bottom: parent.bottom
        z: 1
        anchors.top: topbar.bottom

        Rectangle {
            id: rectangle7
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
            id: rectangle8
            height: 40
            color: "#191919"
            radius: 4
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.top: rectangle7.bottom
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
            id: rectangle9
            x: 7
            height: 40
            color: "#191919"
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.top: rectangle8.bottom
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
            id: rectangle10
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
            anchors.top: rectangle9.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.rightMargin: 10
        }
    }

    //just for debugging
    Rectangle {
        id: addButton
        x: 834
        y: 614
        z: 1
        radius: topbar.bestRadius
        width: topbar.bestWidth
        height: topbar.bestHeight
        color: "#e74c3c"

        anchors.bottom: bottomSide.top
        anchors.bottomMargin: 6
        anchors.right: rightSide.left
        anchors.rightMargin: 6
        Image {
            id: image1
            anchors.rightMargin: 12
            anchors.leftMargin: 12
            anchors.bottomMargin: 12
            anchors.topMargin: 12
            fillMode: Image.Stretch
            anchors.fill: parent
            source: "utils/svgIcons/add.svg"
        }
        MouseArea
        {
            id: addTile
            anchors.fill: parent
            onPressed:
            {
                addButton.color = "#d35400"
            }
            onReleased: addButton.color = "#e74c3c"
        }
    }

    GridView {
        id: gridView1
        anchors.top: underTop.bottom
        anchors.right: rightSide.left
        anchors.bottom: bottomSide.top
        anchors.left: leftSide.right
        // delegate:

        cellHeight: 100
        model: ListModel
        {

    }
    cellWidth: 100
}
}
