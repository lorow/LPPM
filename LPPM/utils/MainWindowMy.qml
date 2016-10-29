import QtQuick 2.0
Item {
    id: root
    width: vars.wWidth
    height: vars.wHeight

    Variables
    {
        id: vars
    }

    Rectangle
    {
        id: mainWindow
        color: "#222222"

        width: vars.wWidth
        height: vars.wHeight

        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left


        TopBar
        {
            id: topbar
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
                    mainWindow.anchors.bottom = root.bottom
                    mainWindow.anchors.top = undefined

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
                    mainWindow.anchors.bottom = undefined
                    mainWindow.anchors.top = root.top

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
                    mainWindow.anchors.right = root.right
                    mainWindow.anchors.left = undefined

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
                    mainWindow.anchors.right =  undefined
                    mainWindow.anchors.left = root.left

                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseXChanged: vars.wWidth += (mouseX - lastMousePos.x) //testWindow.width += (mouseX - lastMousePos.x)
            }
        }
    }
}

