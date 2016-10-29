import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0


import "utils"
import "colorPicker"

ApplicationWindow
{
    id: window
    visible: true
    width:  1000
    height:  700
    color: "#222222" // color of the window
    title: "Your Title"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window


    //this function makes your window resizable
    property point startMousePos
    property point startWindowPos
    property size startWindowSize

       function absoluteMousePos(mouseArea)
       {
        var windowAbs = mouseArea.mapToItem(null, mouseArea.mouseX, mouseArea.mouseY)
        return Qt.point(windowAbs.x + window.x,windowAbs.y + window.y)
       }
        //just my topbar
       TopBar
       {
           id: topbar
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
               anchors.fill: parent
               property point lastMousePos: Qt.point(0, 0)
               onPressed:
               {
                    //first let's get the last mouse position..
                   lastMousePos = Qt.point(mouseX, mouseY);
               }
               //.. and change the height of the window
               onMouseYChanged: window.height += (mouseY - lastMousePos.y)
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
           anchors.topMargin: 9
           anchors.bottom: parent.bottom
           anchors.bottomMargin: 11
           anchors.right: parent.right
           MouseArea
           {
               anchors.fill: parent
               //same as in bottomSide but with again changed direction
               property point lastMousePos: Qt.point(0, 0)
               onPressed:
               {
                   lastMousePos = Qt.point(mouseX, mouseY);
               }
               onMouseXChanged: window.width+= (mouseX - lastMousePos.x)
           }
       }
}
