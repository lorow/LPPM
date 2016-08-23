import QtQuick 2.0

Rectangle {
    id: addButton
    x: 1137
    y: 10
    width: 65
    height: 55
    color: "#b04b4b"
    radius: 0
    border.color: "#252323"
    border.width: 0
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 10
    anchors.right: parent.right
    anchors.rightMargin: 8

    MouseArea {
        id: mouseArea1
        anchors.fill: parent
    }

    Image {
        id: image1
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.leftMargin: 20
        anchors.bottomMargin: 10
        anchors.fill: parent
        source: "svgIcons/add.svg"
    }
}
