import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

import "utils"
import "colorPicker"

ApplicationWindow
{
    id: windowMain
    visible: true
    width:  1000
    height:  700
    minimumHeight: 200
    minimumWidth: 300
    color: "#222222" // color of the window
    title: "Your Title"

    flags: Qt.FramelessWindowHint | Qt.WindowMinimizeButtonHint | Qt.Window

    ResizeWindow
    {
        width: windowMain.width
        height: windowMain.height
        window: windowMain
    }
}

