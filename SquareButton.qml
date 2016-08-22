import QtQuick 2.2


Rectangle {
    id: rectangleButtonClickable
    width: 86
    height: 80
    color: "#b04b4b"
    radius: 15
    border.width: 0
    border.color: "#060606"

    Text {
        id: text7
        width: 90
        color: "#ffffff"
        text: qsTr("Save")
        font.strikeout: false
        verticalAlignment: Text.AlignVCenter
        font.family: "Tahoma"
        anchors.fill: parent
        textFormat: Text.PlainText
        horizontalAlignment: Text.AlignHCenter
        style: Text.Sunken
        font.underline: false
        styleColor: "#ffffff"
        font.pixelSize: 22
        font.italic: false
        font.bold: false
    }

    MouseArea {
        id: mouseArea5
        anchors.fill: parent
    }
}


