import QtQuick 2.0
Rectangle {

    property var mod

    id: bottomSide
    x: 6
    y: 179
    height: 40
    color: "#0d0d0d"
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 0
    border.width: 0
    anchors.left: parent.left
    anchors.rightMargin: 0
    border.color: "#000000"
    anchors.right: parent.right
    anchors.leftMargin: 70
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
