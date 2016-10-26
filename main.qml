import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQml.Models 2.2

import "utils"
import "colorPicker"

ApplicationWindow
{
    id: applicationWindow1
    visible: true
    width: 1000
    height: 700
    title: "Palette Maker"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window

    Rectangle
    {
        id: mainWindow
        color: "#222222"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width:  applicationWindow1.width
        anchors.right: parent.right
        anchors.left: parent.left

        Rectangle
        {
            id: topBar
            height: 40
            color: "#191818"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            Text
            {
                id: projectTitle
                width: 300
                height: 30
                color: "#ffffff"
                text: qsTr("Untitled")
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
                color: "#191818"

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
                    anchors.topMargin: -2
                    anchors.bottomMargin: -2
                    anchors.leftMargin: -2
                    anchors.rightMargin: -2
                    anchors.fill: parent
                    onPressed:
                    {
                        Qt.quit()
                    }
                }
            }

            Rectangle
            {
                id: maximizeButton
                x: 1380
                width: 8
                height: 8
                color: "#000000"
                radius: 1
                z: 1
                border.width: 1
                border.color: "#d9d9d9"
                anchors.verticalCenterOffset: 2
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: exitButton.left
                anchors.rightMargin: 6

                MouseArea
                {
                    id: mouseArea2
                    anchors.fill: parent

                    // this makes the app more responsible
                    property bool maximized: false
                    anchors.topMargin: -2
                    anchors.bottomMargin: -2
                    anchors.leftMargin: -2
                    anchors.rightMargin: -2
                    onPressed:
                    {
                        // let's find out if we should maxime the window or not

                        if (maximized == false)
                        {
                            applicationWindow1.showMaximized()
                            maximized = true
                            console.log(maximized)
                        }
                        else if (maximized == true)
                        {

                            applicationWindow1.showNormal()
                            maximized = false
                            console.log(maximized)
                        }
                    }

                }
            }

            Rectangle
            {
                id: minimizeButton
                x: 1376
                y: 16
                z: 1
                width: 10
                height: 10
                color: "#191818"
                anchors.right: maximizeButton.left
                anchors.rightMargin: 12

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
                        applicationWindow1.showMinimized()
                    }
                }
            }
            MouseArea
            {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
                onMouseXChanged: applicationWindow1.x += (mouseX - lastMousePos.x)
                onMouseYChanged: applicationWindow1.y += (mouseY - lastMousePos.y)
            }

            Rectangle
            {
                id: settingsButton
                y: 4               
                z: 1
                width: 17
                height: 16
                color: "#191818"
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.verticalCenter: parent.verticalCenter

                MouseArea
                {
                    id: mouseArea6
                    anchors.leftMargin: -2
                    anchors.fill: parent
                    anchors.bottomMargin: -2
                    anchors.topMargin: -2
                    anchors.rightMargin: -2
                }

                Image
                {
                    id: image1
                    height: 17
                    fillMode: Image.Stretch
                    anchors.fill: parent
                    source: "svgIcons/settings1.png"
                }
            }

        }

        Rectangle
        {
            id: testWindow
            color: "#e11e1e"
            anchors.top: parent.top
            anchors.topMargin: 250
            anchors.right: parent.right
            anchors.rightMargin: 400
            anchors.left: parent.left
            anchors.leftMargin: 400
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 250

            Rectangle
            {
                id: topSide
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
                    onMouseYChanged: testWindow.height -= (mouseY - lastMousePos.y)
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
                    onMouseYChanged: testWindow.height += (mouseY - lastMousePos.y)
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
                    onMouseXChanged: testWindow.width -= (mouseX - lastMousePos.x)
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
                    onMouseXChanged: testWindow.width += (mouseX - lastMousePos.x)
                }
            }
        }
    }
}
