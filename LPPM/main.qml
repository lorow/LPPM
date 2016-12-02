import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

import "utils"
import "utils/settingsWindow"
ApplicationWindow
{
    property int offset: 45
    id: windowMain
    visible: true
    width:  1100
    height:  700
    minimumWidth: 900
    minimumHeight: 600

    color: "#222222" // color of the window
    title: "Your Title"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window

    ResizeWindow
    {
        id: resizeWindow1
        anchors.fill: parent
        window: windowMain
        z:2
    }
    TopBar
    {
        id: topbar
        z: 1
        window: windowMain
        settingsWindow: settingsWindow1
        wasClosedManually: settingsWindow1.changedZIndex
    }
    UnderTop
    {
        id: underTop
        anchors.right: rightSide.left
        anchors.top: topbar.bottom
        anchors.topMargin: 0
        z: 1
        anchors.leftMargin: 0
        anchors.left: leftSide.right
        anchors.rightMargin: 0
        modelList: mod
    }

    LeftSide
    {
        id: leftSide
        width: 61

        LeftSideButtons
        {
            id: leftSideButtons1
            anchors.fill: parent
        }
    }
    RightSide
    {
        id: rightSide
        x: 880
        y: 670
        anchors.bottom: parent.bottom
        z: 1
        anchors.top: topbar.bottom
        AddButton
        {
            y: 538
            anchors.rightMargin: 90
            anchors.bottomMargin: 82
            anchors.leftMargin: 90
            mod: mod
        }
    }

    BottomSide
    {
        id: bottomSide
        height: 30
        anchors.leftMargin: 0
        anchors.right: rightSide.left
        anchors.left: leftSide.right
        z: 1
        mod: mod
    }

    Rectangle {
        id: gridrect
        color: "#222222"
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.top: underTop.bottom
        anchors.right: rightSide.left
        anchors.bottom: bottomSide.top
        anchors.left: leftSide.right

        GridView {
            id: gridView1
            layoutDirection: Qt.RightToLeft
            anchors.fill: parent
            cellHeight: underTop.sizeOfTheTile + 1
            cellWidth: underTop.sizeOfTheTile + 1
            delegate:
                Item {
                id: test22
                height: underTop.sizeOfTheTile
                Rectangle {
                    id: rect
                    width: underTop.sizeOfTheTile
                    height: underTop.sizeOfTheTile
                    color: rightSide.pickerColor
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: console.log(rect.x, rect.y)
                    }

                    Text {
                        text: index
                        anchors.fill: parent
                        color:"white"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
            }
            model: ListModel
            {
            id: mod
            ListElement{}
        }
    }
  }
    SettingsWindow
    {
        id: settingsWindow1
    }
}
