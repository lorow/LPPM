import QtQuick 2.0


Item {
    width: 61
    Rectangle {
        id: add
        width: 50
        height: 30
        color: "#0b0b0b"
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.topMargin: 92
        anchors.top: parent.top
        MouseArea {
            id: mouseArea5
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {parent.color = "#191919"}
            onExited:{parent.color = "#0b0b0b"}
        }

        Image {
            id: image6
            anchors.bottomMargin: 5
            anchors.leftMargin: 21
            anchors.fill: parent
            anchors.topMargin: 5
            source: "svgIcons/add.svg"
            anchors.rightMargin: 21
        }
        anchors.rightMargin: 0
    }

    Rectangle {
        id: save
        width: 50
        height: 30
        color: "#0b0b0b"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: add.bottom
        anchors.topMargin: 12

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {parent.color = "#191919"}
            onExited:{parent.color = "#0b0b0b"}
        }

        Image {
            id: image2
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            anchors.rightMargin: 21
            anchors.leftMargin: 21
            anchors.fill: parent
            source: "svgIcons/content-save.png"
        }
    }

    Rectangle {
        id: load
        height: 30
        color: "#0b0b0b"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: save.bottom
        anchors.topMargin: 12

        MouseArea {
            id: mouseArea2
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {parent.color = "#191919"}
            onExited:{parent.color = "#0b0b0b"}
        }
        Image {
            id: image3
            anchors.rightMargin: 19
            anchors.leftMargin: 19
            anchors.bottomMargin: 3
            anchors.topMargin: 3
            anchors.fill: parent
            source: "svgIcons/folder-upload.png"
        }
    }

    Rectangle {
        id: exportMy
        y: 1
        height: 30
        color: "#0b0b0b"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: load.bottom
        anchors.topMargin: 12

        MouseArea {
            id: mouseArea3
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {parent.color = "#191919"}
            onExited:{parent.color = "#0b0b0b"}
        }

        Image {
            id: image4
            anchors.rightMargin: 19
            anchors.leftMargin: 19
            anchors.bottomMargin: 3
            anchors.topMargin: 3
            anchors.fill: parent
            source: "svgIcons/file-export.png"
        }
    }

    Rectangle {
        id: importMy
        height: 30
        color: "#0b0b0b"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: exportMy.bottom
        anchors.topMargin: 12

        MouseArea {
            id: mouseArea4
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {parent.color = "#191919"}
            onExited:{parent.color = "#0b0b0b"}
        }

        Image {
            id: image5
            anchors.rightMargin: 19
            anchors.leftMargin: 19
            anchors.bottomMargin: 3
            anchors.topMargin: 3
            anchors.fill: parent
            source: "svgIcons/file-import.png"
        }
    }
}
