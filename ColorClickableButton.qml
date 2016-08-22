import QtQuick 2.2

Rectangle {
    id: colorButtonClickable
    height: 50
    color: "#1f2225"
    anchors.right: parent.right
    anchors.rightMargin: 20
    anchors.left: parent.left
    anchors.leftMargin: 20
    anchors.top: colorPicerBackground.bottom
    anchors.topMargin: 30

    Rectangle {
        id: rectangle1
        height: 20
        color: "#b04b4b"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -20
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("COPY")
            anchors.fill: parent
            textFormat: Text.PlainText
            style: Text.Sunken
            font.italic: false
            font.strikeout: false
            font.underline: false
            font.pixelSize: 15
            font.bold: false
            font.family: "Tahoma"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#ffffff"
        }
    }

    Text {
        id: text4
        color: "#ffffff"
        text: qsTr("ffffff")
        verticalAlignment: Text.AlignVCenter
        textFormat: Text.PlainText
        font.italic: false
        style: Text.Sunken
        anchors.fill: parent
        font.family: "Tahoma"
        font.pixelSize: 22
        font.underline: false
        font.strikeout: false
        font.bold: false
        styleColor: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
    }

    MouseArea {
        id: mouseArea2
        anchors.fill: parent
    }
}
