import QtQuick 2.0

Item {
    //this function makes your window resizable
    property point startMousePos
    property point startWindowPos
    property size startWindowSize

    property var window

       function absoluteMousePos(mouseArea)
       {
        var windowAbs = mouseArea.mapToItem(null, mouseArea.mouseX, mouseArea.mouseY)
        return Qt.point(windowAbs.x + window.x,windowAbs.y + window.y)
       }
       //rect for visualizing resizing from top, you can delete
       //it but rember about changing anchors for MouseArea!
       Rectangle
       {
           id: topSide
           width: 5
           height: 10
           color: "#ffffff"
           anchors.right: parent.right
           anchors.left: parent.left
           anchors.top: parent.top

           //here we will handle resizing from top
           MouseArea
           {
               id: topArea
               anchors.fill: parent
               onPressed:
               {
                   //getting position of the mouse...
                 startMousePos = absoluteMousePos(topArea)
                   //...getting position of the position..
                 startWindowPos = Qt.point(window.x, window.y)
                   //..and the mouse
                 startWindowSize = Qt.size(window.width, window.height)
                }
               onMouseYChanged:
               {
                   //our mouse position will change so we will have to calculate it again
                var abs = absoluteMousePos(topArea)
                   //let's calculate the height too
                var newHeight = Math.max(window.minimumHeight, startWindowSize.height - (abs.y - startMousePos.y))
                   //now new position of the window
                var newY = startWindowPos.y - (newHeight - startWindowSize.height)
                   //and here we will apply it
                window.y = newY
                window.height = newHeight
               }
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
           //for resizing from bottom we will have to use another method
           MouseArea
           {
               id:bottomArea
               anchors.fill: parent
               onPressed:
               {
                   //getting position of the mouse...
                 startMousePos = absoluteMousePos(bottomArea)
                   //...getting position of the position..
                   //..and the mouse
                 startWindowSize = Qt.size(window.width, window.height)
                }
               onMouseYChanged:
               {
                   //our mouse position will change so we will have to calculate it again
                var abs = absoluteMousePos(bottomArea)
                   //let's calculate the height too
                var newHeight = Math.max(window.minimumHeight, startWindowSize.height + (abs.y - startMousePos.y))
                   //now new position of the window
                window.height = newHeight
               }
           }
       }

       Rectangle
       {
           id: leftSide
           width: 10
           color: "#ffffff"

           anchors.bottom: parent.bottom
           anchors.top: parent.top
           anchors.left: parent.left
           anchors.bottomMargin: 10
           anchors.topMargin: 10

           MouseArea
           {
               id: leftArea
               anchors.fill: parent
               //same as in the topArea but with changed direction
               onPressed:
               {
                 startMousePos = absoluteMousePos(leftArea)
                 startWindowPos = Qt.point(window.x, window.y)
                 startWindowSize = Qt.size(window.width, window.height)
                }
               onMouseYChanged:
               {
                var abs = absoluteMousePos(leftArea)
                var newWidth = Math.max(window.minimumWidth, startWindowSize.width - (abs.x - startMousePos.x))
                var newX = startWindowPos.x - (newWidth - startWindowSize.width)
                window.x = newX
                window.width = newWidth
               }
           }
       }

       Rectangle
       {
           id: rightSide
           width: 10
           color: "#ffffff"

           anchors.top: parent.top
           anchors.right: parent.right
           anchors.bottom: parent.bottom
           anchors.topMargin: 9
           anchors.bottomMargin: 11

           MouseArea
           {
               id: rightArea
               anchors.fill: parent
               //same as in the topArea but with changed direction
               onPressed:
               {
                 startMousePos = absoluteMousePos(rightArea)
                 startWindowSize = Qt.size(window.width, window.height)
                }
               onMouseYChanged:
               {
                var abs = absoluteMousePos(rightArea)
                var newWidth = Math.max(window.minimumWidth, startWindowSize.width + (abs.x - startMousePos.x))
                window.width = newWidth
               }
           }
      }
}
