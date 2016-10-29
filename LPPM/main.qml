import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQml.Models 2.2

import "utils"
import "colorPicker"

ApplicationWindow
{
    id: window

    //setting the width and height of the window
    visible: true

    width:  1000//vars.wWidth
    height:  700//vars.wHeight
    title: "Palette Maker"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window


    property point startMousePos
    property point startWindowPos
    property size startWindowSize

       function absoluteMousePos(mouseArea)
       {
        var windowAbs = mouseArea.mapToItem(null, mouseArea.mouseX, mouseArea.mouseY)
        return Qt.point(windowAbs.x + window.x,windowAbs.y + window.y)
       }

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
                id: topArea
                anchors.fill: parent
                onPressed:
                {
                  startMousePos = absoluteMousePos(topArea)
                  startWindowPos = Qt.point(window.x, window.y)
                  startWindowSize = Qt.size(window.width, window.height)
                 }
                onMouseYChanged:
                {
                 var abs = absoluteMousePos(topArea)
                 var newHeight = Math.max(window.minimumHeight, startWindowSize.height - (abs.y - startMousePos.y))
                 var newY = startWindowPos.y - (newHeight - startWindowSize.height)
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
            MouseArea
            {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed:
                {
                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseYChanged: window.height += (mouseY - lastMousePos.y) //testWindow.height += (mouseY - lastMousePos.y)
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
                    lastMousePos = Qt.point(mouseX, mouseY);
                }
                onMouseXChanged: window.width+= (mouseX - lastMousePos.x) //testWindow.width += (mouseX - lastMousePos.x)
            }
        }
    }
}
