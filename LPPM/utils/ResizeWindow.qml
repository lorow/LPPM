import QtQuick 2.0

Item {
    anchors.fill: parent
    property point startMousePos
    property point startWindowPos
    property size startWindowSize

    property var window

    function absoluteMousePos(mouseArea) {
        var windowAbs = mouseArea.mapToItem(null, mouseArea.mouseX, mouseArea.mouseY)
        return Qt.point(windowAbs.x + window.x,windowAbs.y + window.y)
    }
    //rect for visualizing resizing from top, you can delete
    //it but rember about changing anchors for MouseArea!
    Rectangle {
        id: topSide
        width: 0
        height: 5
        color: "transparent"
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top

        //here we will handle resizing from top
        MouseArea{
            id: topArea
            cursorShape : Qt.SizeVerCursor
            anchors.fill: parent
            onPressed: {
                //getting position of the mouse...
                startMousePos = absoluteMousePos(topArea)
                //...getting position of the position..
                startWindowPos = Qt.point(window.x, window.y)
                //..and the mouse
                startWindowSize = Qt.size(window.width, window.height)
            }
            onMouseYChanged: {
                //our mouse position will change so we will have to calculate it again
                var abs = absoluteMousePos(topArea)
                //let's calculate the height too
                var newHeight = Math.max(window.minimumHeight, startWindowSize.height - (abs.y - startMousePos.y))
                //now new position of the window
                var newY = startWindowPos.y - (newHeight - startWindowSize.height)
                //and here we will apply it

                window.height = newHeight
                window.y = newY
            }
        }
    }

    Rectangle {
        id: bottomSide
        height: 5
        color: "transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        //for resizing from bottom we will have to use another method
        MouseArea {
            id:bottomArea
            cursorShape : Qt.SizeVerCursor
            anchors.fill: parent
            onPressed: {
                //getting position of the mouse...
                startMousePos = absoluteMousePos(bottomArea)
                //...getting position of the position..
                //..and the mouse
                startWindowSize = Qt.size(window.width, window.height)
            }
            onMouseYChanged: {
                //our mouse position will change so we will have to calculate it again
                var abs = absoluteMousePos(bottomArea)
                //let's calculate the height too
                var newHeight = Math.max(window.minimumHeight, startWindowSize.height + (abs.y - startMousePos.y))
                //now new position of the window
                window.height = newHeight
            }
        }
    }

    Rectangle {
        id: leftSide
        width: 5
        color: "transparent"

        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        MouseArea {
            id: leftArea
             cursorShape : Qt.SizeHorCursor
            anchors.fill: parent
            //same as in the topArea but with changed direction
            onPressed: {
                startMousePos = absoluteMousePos(leftArea)
                startWindowPos = Qt.point(window.x, window.y)
                startWindowSize = Qt.size(window.width, window.height)
            }
            onMouseYChanged: {
                var abs = absoluteMousePos(leftArea)
                var newWidth = Math.max(window.minimumWidth, startWindowSize.width - (abs.x - startMousePos.x))
                var newX = startWindowPos.x - (newWidth - startWindowSize.width)

                window.width = newWidth
                window.x = newX
            }
        }
    }

    Rectangle {
        id: rightSide
        width: 5
        color: "transparent"

        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        MouseArea {
            id: rightArea
            cursorShape : Qt.SizeHorCursor
            anchors.fill: parent
            //same as in the topArea but with changed direction
            onPressed: {
                startMousePos = absoluteMousePos(rightArea)
                startWindowSize = Qt.size(window.width, window.height)
            }
            onMouseYChanged: {
                var abs = absoluteMousePos(rightArea)
                var newWidth = Math.max(window.minimumWidth, startWindowSize.width + (abs.x - startMousePos.x))
                window.width = newWidth
            }
        }
    }
}
