import QtQuick 2.0

Rectangle
{
    height: parent.height
    width: parent.width
    id: logo
    color: "#333030"

    Image {
        id: setteings
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        fillMode: Image.PreserveAspectFit
        source: "settings.svg"
    }
}
