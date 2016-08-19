import QtQuick 2.0

Rectangle {
    id: saveButton
    color: "#333030"
    Text {
        id: text2
        color: "#ffffff"
        text: qsTr("Save")
        wrapMode: Text.WrapAnywhere
        anchors.fill: parent
        textFormat: Text.RichText
        font.family: "Tahoma"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }
}
