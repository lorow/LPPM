import QtQuick 2.2


Rectangle {
    property var iconLocation: "svgIcons/add.svg"
    id: addButton
    width: 65
    height: 55
    color: "#b04b4b"
    border.color: "#252323"
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 10
    anchors.right: parent.right
    anchors.rightMargin: 8
    Variables {
        id: variables1
    }
    MouseArea {
        id: mouseArea1
        anchors.fill: parent

        onClicked:
        {
             variables1.numbeR++
            console.log(variables1.normalName);
            var test = tEST.append(ListElement);
        }
    }

    Image {
        id: image1
        anchors.rightMargin: 16
        anchors.leftMargin: 16
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        source: addButton.iconLocation
    }


}

