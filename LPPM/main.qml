import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

import "utils"
ApplicationWindow
{
    property int offset: 45
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
//to standalone component from:
        Rectangle {
            id: add
            width: 50
            height: 30
            color: "#0b0b0b"
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.topMargin: 92
            anchors.top: parent.top
            MouseArea {
                id: mouseArea5
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {parent.color = "#191919"}
                onExited:{parent.color = "#0b0b0b"}
            }

            Image {
                id: image6
                anchors.bottomMargin: 5
                anchors.leftMargin: 21
                anchors.fill: parent
                anchors.topMargin: 5
                source: "utils/svgIcons/add.svg"
                anchors.rightMargin: 21
            }
            anchors.rightMargin: 0
        }

        Rectangle {
            id: save
            width: 50
            height: 30
            color: "#0b0b0b"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: add.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {parent.color = "#191919"}
                onExited:{parent.color = "#0b0b0b"}
            }

            Image {
                id: image2
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                anchors.rightMargin: 21
                anchors.leftMargin: 21
                anchors.fill: parent
                source: "utils/svgIcons/content-save.png"
            }
        }

        Rectangle {
            id: load
            height: 30
            color: "#0b0b0b"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: save.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea2
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {parent.color = "#191919"}
                onExited:{parent.color = "#0b0b0b"}
            }
            Image {
                id: image3
                anchors.rightMargin: 19
                anchors.leftMargin: 19
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
            color: "#0b0b0b"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: load.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea3
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {parent.color = "#191919"}
                onExited:{parent.color = "#0b0b0b"}
            }

            Image {
                id: image4
                anchors.rightMargin: 19
                anchors.leftMargin: 19
                anchors.bottomMargin: 3
                anchors.topMargin: 3
                anchors.fill: parent
                source: "utils/svgIcons/file-export.png"
            }
        }

        Rectangle {
            id: importMy
            height: 30
            color: "#0b0b0b"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: exportMy.bottom
            anchors.topMargin: 12

            MouseArea {
                id: mouseArea4
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {parent.color = "#191919"}
                onExited:{parent.color = "#0b0b0b"}
            }

            Image {
                id: image5
                anchors.rightMargin: 19
                anchors.leftMargin: 19
                anchors.bottomMargin: 3
                anchors.topMargin: 3
                anchors.fill: parent
                source: "utils/svgIcons/file-import.png"
            }
        }
//end

    }

    UnderTop
    {
        id: underTop
        z: 1
        anchors.leftMargin: 0
        anchors.left: leftSide.right
        anchors.rightMargin: 220
        modelList: mod
    }

    BottomSide
    {
        id: bottomSide
        height: 30
        anchors.leftMargin: 0
        anchors.right: rightSide.left
        anchors.left: leftSide.right
        z: 1
//to standalone component from:
        Text {
            id: tilesCounter
            width: 82
            height: 22
            color: "#d3d0d0"
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
            color: "#d3d0d0"
            text: mod.count

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
            color: "#d3d0d0"
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
            color: "#d3d0d0"
            text: qsTr("0");
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
//end
    RightSide
    {
        id: rightSide
        x: 880
        anchors.bottom: parent.bottom
        z: 1
        anchors.top: topbar.bottom
//to standalone component from:
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
    //end

    //to standalone component
    Rectangle {
        id: addButton
        x: 970
        y: 539
        z: 3
        radius: topbar.bestRadius
        width: topbar.bestWidth
        height: topbar.bestHeight
        color: "#e74c3c"

        anchors.bottom: bottomSide.top
        anchors.bottomMargin: 91
        anchors.right: rightSide.left
        anchors.rightMargin: -130
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
                var test = Qt.createComponent(ListView);
                mod.append(test);
            }
            onReleased: addButton.color = "#e74c3c"
        }
    }
//to standalone component
    GridView {
        id: gridView1
        z: -1
        layoutDirection: Qt.RightToLeft
        anchors.top: underTop.bottom
        anchors.right: rightSide.left
        anchors.bottom: bottomSide.top
        anchors.left: leftSide.right
        cellHeight: underTop.sizeOfTheTile + underTop.spaceBetweenTiles
        cellWidth: underTop.sizeOfTheTile + underTop.spaceBetweenTiles

        delegate:
            Item {
            id: test22
            height: underTop.sizeOfTheTile + underTop.spaceBetweenTiles
            Rectangle {
                width: underTop.sizeOfTheTile
                height: underTop.sizeOfTheTile
                color: rightSide.pickerColor
                anchors.horizontalCenterOffset: windowMain.offset
                anchors.horizontalCenter: parent.horizontalCenter // "#191919" // here you must add color from picker
                Text {
                    text: index
                    anchors.rightMargin: -23
                    anchors.bottomMargin: -19
                    anchors.leftMargin: 23
                    anchors.topMargin: 19
                    anchors.fill: parent
                    color:"white"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
        model: ListModel
        {
        id: mod
        ListElement{}
        ListElement{}
        ListElement{}
    }
  }
}
