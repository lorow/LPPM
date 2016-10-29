import QtQuick 2.0

Item {
    id: root
    width: 100
    height: 100

    Rectangle
    {
        id: testWindow
        color: "#e11e1e"
        anchors.fill: parent

        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                console.log(root.x)
                console.log(root.y)
            }
        }

        Rectangle
        {
            id: topSide
            width: 5
            height: 10
            color: "#ffffff"
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top

            //you HAVE to change the WINDOW anchors, NOT the scaler anchors motherfucker!
            MouseArea
            {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed:
                {
                    testWindow.anchors.bottom = mainWindow.bottom
                    testWindow.anchors.top = undefined

                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseYChanged: vars.wHeight -= (mouseY - lastMousePos.y) //testWindow.height -= (mouseY - lastMousePos.y)
            }
        }

        Rectangle
        {
            id: bottomSide
            height: 10
            color: "#ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            MouseArea
            {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed:
                {
                    testWindow.anchors.bottom = undefined
                    testWindow.anchors.top = mainWindow.top

                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseYChanged: vars.wHeight += (mouseY - lastMousePos.y) //testWindow.height += (mouseY - lastMousePos.y)
            }
        }

        Rectangle
        {
            id: leftSide
            width: 10
            color: "#ffffff"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            MouseArea
            {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed:
                {
                    testWindow.anchors.right = mainWindow.right
                    testWindow.anchors.left = undefined

                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseXChanged: vars.wWidth -= (mouseX - lastMousePos.x) //testWindow.width -= (mouseX - lastMousePos.x)
            }
        }

        Rectangle
        {
            id: rightSide
            x: 6
            width: 10
            color: "#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 9
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 11
            anchors.right: parent.right
            MouseArea
            {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed:
                {
                    testWindow.anchors.right =  undefined
                    testWindow.anchors.left = mainWindow.left

                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseXChanged: vars.wWidth += (mouseX - lastMousePos.x) //testWindow.width += (mouseX - lastMousePos.x)
            }
        }
    }

}
