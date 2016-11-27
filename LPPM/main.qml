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

    GridView {
        id: gridView1
        x: 880
        y: 40
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

    LeftSideButtons {
        id: leftSideButtons1
        anchors.fill: parent
    }
    //to standalone component from:
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
}

}
