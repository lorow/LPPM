import QtQuick 2.0

Rectangle {
    property string namE: namEE.normalName
    property  var colorR
    id: namE
    width: 70
    height: 70
    color: colorR
    Variables {id: namEE}

    MouseArea {
        id: mouseArea1
        anchors.fill: parent

        onClicked:
        {
            console.log("test")
            console.log(namE)
        }
    }
}
