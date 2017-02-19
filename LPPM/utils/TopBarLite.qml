import QtQuick 2.0
import "./svgIcons"
Item {
    id: root
    property var window

    property int bestWidth: 40
    property int bestHeight: 40
    property int bestRadius: 20
    property string color: "#161616"

    property string name: "default"

    height: 40
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    Rectangle
    {
        id: topBar
        color: "#161616"
        anchors.fill: parent
        Text
        {
            id: projectTitle
            width: 300
            height: 30
            color: "#ffffff"
            text: name
            font.italic: false
            font.strikeout: false
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }

        Rectangle
        {
            id: exitButton
            x: 1407
            z: 1
            width: 20
            height: 20
            radius: 3
            color: "#161616"

            anchors.verticalCenterOffset: 2
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 14

            Rectangle
            {
                id: rectangle3
                x: 5
                y: 10
                width: 10
                height: 1
                rotation: 45
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle
            {
                id: rectangle4
                x: 5
                y: 10
                width: 10
                height: 1
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                rotation: -45
            }

            MouseArea
            {
                id: mouseArea1
                anchors.fill: parent
                onPressed:
                {
                    Qt.quit()
                }
            }
        }

        Rectangle
        {
            id: minimizeButton
            x: 589
            width: 11
            height: 10
            color: "#161616"
            z: 1
            anchors.right: parent.right
            anchors.rightMargin: 40
            anchors.verticalCenterOffset: 2
            anchors.verticalCenter: parent.verticalCenter

            Rectangle
            {
                id: rectangle5
                x: 7
                y: 24
                width: 8
                height: 1
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom

            }

            MouseArea
            {
                id: mouseArea3
                width: 10
                height: 10
                anchors.rightMargin: -2
                anchors.leftMargin: -2
                anchors.bottomMargin: -2
                anchors.topMargin: -1
                anchors.fill: parent
                onPressed:
                {
                     root.window.showMinimized()
                }
            }
        }
//moving
        MouseArea
        {
            anchors.fill: parent
            property point lastMousePos: Qt.point(0, 0)
            onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
            onMouseXChanged:  root.window.x += (mouseX - lastMousePos.x)
            onMouseYChanged:  root.window.y += (mouseY - lastMousePos.y)
        }
    }

}
