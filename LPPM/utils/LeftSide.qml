import QtQuick 2.0
Rectangle {
    id: leftSide
    width: 70
    color: "#0d0d0d"
    border.width: 0
    anchors.left: parent.left
    anchors.leftMargin: 0
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 0
    anchors.top: topbar.bottom
    anchors.topMargin: 0
}
