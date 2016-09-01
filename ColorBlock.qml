import QtQuick 2.0

Rectangle {
    Variables
    {
        id:vars
    }


    property  var colorR
    id: namE
    width: 100
    height: 100
    color: colorR

    MouseArea {
        id: mouseArea1
        anchors.fill: parent
        onClicked:
        {

        }
    }
}
