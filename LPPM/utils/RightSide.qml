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
}
