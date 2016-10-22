import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQml.Models 2.2
import "colorPicker"

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 1000
    height: 700
    color: "#222222"
    title: "Palette Maker"

      flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window | Qt.WindowStaysOnTopHint

    Rectangle {
        id: topBar
        height: 40
        color: "#191818"
        radius: 2
        border.width: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        Text {
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

        Rectangle {
            id: exitButton
            x: 1407
            width: 20
            height: 20
            color: "#191818"
            radius: 3
            z: 1
            anchors.verticalCenterOffset: 2
            border.width: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 14

            Rectangle {
                id: rectangle3
                x: 5
                y: 10
                width: 10
                height: 1
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                rotation: 45
            }

            Rectangle {
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

            MouseArea {
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

        Rectangle {
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

            MouseArea {
                id: mouseArea2
                anchors.fill: parent

                // this makes the app more responsible
                property int maximized: 0
                anchors.topMargin: -2
                anchors.bottomMargin: -2
                anchors.leftMargin: -2
                anchors.rightMargin: -2
                onPressed:
                {
                    // let's find out if we should maxime or only change the size and position of the window
                    if (maximized == 0)
                    {
                        applicationWindow1.showMaximized()
                        maximized = 1
                    }
                    else
                    {
                        applicationWindow1.width = 1000
                        applicationWindow1.height = 700

                        applicationWindow1.x = 0
                        applicationWindow1.y =0
                        maximized = 0
                    }
                }

            }
        }

        Rectangle {
            id: minimizeButton
            x: 1376
            y: 16
            width: 10
            height: 10
            color: "#191818"
            z: 1
            anchors.right: maximizeButton.left
            anchors.rightMargin: 12

            Rectangle {
                id: rectangle5
                x: 7
                y: 24
                width: 8
                height: 1
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }

            MouseArea {
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
        MouseArea {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
                onMouseXChanged: applicationWindow1.x += (mouseX - lastMousePos.x)
                onMouseYChanged: applicationWindow1.y += (mouseY - lastMousePos.y)
        }
    }

    Rectangle {
        id: leftSide
        width: 10
        height: 660
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 0

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            property point lastMousePos: Qt.point(0, 0)
            width: 1
           onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
           onMouseXChanged: applicationWindow1.width += (mouseX + lastMousePos.x)
        }
    }

    Rectangle {
        id: rightSide
        x: 0
        y: 4
        width: 10
        height: 660
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.topMargin: 40

        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            property point lastMousePos: Qt.point(0, 0)
            width: 0
            onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
            onMouseXChanged: applicationWindow1.width += (mouseX - lastMousePos.x)

        }
    }

    Rectangle {
        id: bottomSide
        y: 4
        height: 10
        color: "#ffffff"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottomMargin: 0
        anchors.bottom: parent.bottom
        MouseArea {
                anchors.fill: parent
                property point lastMousePos: Qt.point(0, 0)
                onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
                onMouseYChanged: applicationWindow1.height += (mouseY - lastMousePos.y)
        }
    }
}
