import QtQuick 2.0


Rectangle {
    property  var iconLocation : "svgIcons/settings.svg"
    id: rectangleButtonClickable
    width: 86
    height: 80
    color: "#b04b4b"
    radius: 15
    border.width: 0
    border.color: "#060606"

    MouseArea {
        id: mouseArea5
        anchors.fill: parent
    }

    Image {
        id: image1
        anchors.rightMargin: 25
        anchors.leftMargin: 25
        anchors.bottomMargin: 25
        anchors.topMargin: 25
        anchors.fill: parent
        source: rectangleButtonClickable.iconLocation
    }
}
