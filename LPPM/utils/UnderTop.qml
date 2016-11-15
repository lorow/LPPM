import QtQuick 2.0

Rectangle {
    id: underTop
    height: 40
    color: "#0d0d0d"
    border.color: "#000000"
    anchors.left: parent.left
    anchors.leftMargin: 70
    anchors.right: parent.right
    anchors.top: topbar.bottom

    Rectangle {
        id: testrec2
        width: 50
        color: "#191919"
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 7
        anchors.left: text2.left
        anchors.leftMargin: 120

        TextInput {
            id: textInput1
            color: "#ffffff"
            text: qsTr("50")

            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 9
            selectionColor: "#ffffff"
            maximumLength: 3
        }
    }

    Rectangle {
        id: rectangle3
        width: 50
        color: "#191919"
        anchors.left: text3.right
        anchors.leftMargin: -12
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 7
        anchors.top: parent.top
        anchors.topMargin: 7

        TextInput {
            id: textInput2
            color: "#ffffff"
            text: "5"
            font.family: "Verdana"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            font.pointSize: 9
            maximumLength: 3
            anchors.right: parent.right
            selectionColor: "#ffffff"
            anchors.left: parent.left
        }
    }

    Text {
        id: text2
        x: 25
        width: 141
        color: "#ffffff"
        text: qsTr("Size of the tile")
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 6
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.left: parent.left
        styleColor: "#ffffff"
        font.pixelSize: 12
    }

    Text {
        id: text3
        x: 20
        y: 5
        width: 115
        color: "#ffffff"
        text: "Tiles in row"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 6
        anchors.top: parent.top
        anchors.topMargin: 5
        verticalAlignment: Text.AlignVCenter
        styleColor: "#ffffff"
        wrapMode: Text.WordWrap
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: 6
        anchors.left: testrec2.right
    }

    Rectangle {
        id: rectangle4
        x: 535
        y: 8
        width: 50
        color: "#e74c3c"
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.topMargin: 7
        anchors.top: parent.top

        MouseArea {
            id: mouseArea1
            anchors.fill: parent

            onPressed: {
                parent.color = "#c0392b"
            }

            onReleased:
            {
                parent.color = "#F44336"
            }
        }

        Text {
            id: text4
            color: "#ffffff"
            text: qsTr("Delete")
            styleColor: "#ffffff"
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 12
        }
    }
}
