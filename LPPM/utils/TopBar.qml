import QtQuick 2.0
import "./svgIcons"
Rectangle
{
    property var window

    property int bestWidth: 40
    property int bestHeight: 40
    property int bestRadius: 20
    id: topBar
    height: 40
    color: "#000000"
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
        color: "#000000"

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
                    window.showMaximized()
                    maximized = true

                    bestHeight = 50
                    bestWidth = 50
                    bestRadius = 25
                    console.log(maximized)
                }
                else if (maximized == true)
                {

                    window.showNormal()
                    maximized = false

                    bestWidth = 40
                    bestHeight = 40
                    bestRadius = 20
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
        color: "#000000"
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
                window.showMinimized()
            }
        }
    }

    Rectangle
    {
        id: settingsButton
        y: 4
        z: 1
        width: 17
        height: 16
        color: "#000000"
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
            source: "./svgIcons/settings1.png"
        }
    }

    MouseArea
    {
        anchors.fill: parent
        property point lastMousePos: Qt.point(0, 0)
        onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
        onMouseXChanged: window.x += (mouseX - lastMousePos.x)
        onMouseYChanged: window.y += (mouseY - lastMousePos.y)
    }
}
