import QtQuick 2.0

Item {
    id: root
    width: 600
    height: 400

        property bool changedZIndex: false

    Rectangle {
        id: settingsWindow1
        anchors.fill: parent
        color: "#ffffff"
        MouseArea
        {
            anchors.fill: parent
            property point lastMousePos: Qt.point(0, 0)
            onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
            onMouseXChanged:  root.x += (mouseX - lastMousePos.x)
            onMouseYChanged:  root.y += (mouseY - lastMousePos.y)
        }

    }

    Rectangle {
        id: rectangle1
        height: 20
        color: "#000000"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        Rectangle
        {
            id: exitButton
            x: 567
            z: 1
            width: 20
            radius: 3
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            color: "#000000"

            anchors.right: parent.right
            anchors.rightMargin: 13

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
                    root.z = -4
                    root.changedZIndex = true
                }
            }
        }
    }
    onZChanged:
    {
        if (z == 4)
        {
            changedZIndex = false
        }

    }
}
