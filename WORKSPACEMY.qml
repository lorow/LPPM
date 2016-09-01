import QtQuick 2.0

Rectangle {
    id: workspace
    color: "#404040"
    border.width: 0
    anchors.left: parent.left
    anchors.leftMargin: 250
    anchors.top: parent.top
    anchors.topMargin: 10
    anchors.bottom: workspace2.top
    anchors.bottomMargin: 0
    anchors.right: parent.right
    anchors.rightMargin: 10
}

