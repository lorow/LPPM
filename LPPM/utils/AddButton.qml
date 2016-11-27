import QtQuick 2.0

Rectangle
{
    property var mod
    id: addButton
    width: 40
    height: 40
    z: 3
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 87
    anchors.left: parent.left
    anchors.leftMargin: 90
    anchors.right: parent.right
    anchors.rightMargin: 90
    color: "#e74c3c"
    radius: 20
    border.width: 0

    Image
    {
        id: image1
        anchors.rightMargin: 12
        anchors.leftMargin: 12
        anchors.bottomMargin: 12
        anchors.topMargin: 12
        fillMode: Image.Stretch
        anchors.fill: parent
        source: "svgIcons/add.svg"
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
