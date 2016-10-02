import QtQuick 2.0

Rectangle {
    property int tEXT
    property int nameIndex : vars.numberOfIndex
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
         console.log(namE.tEXT)
        }
    }
}
