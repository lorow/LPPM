import QtQuick 2.0

Rectangle {
    id: variables
    color: "#333030"
    antialiasing: true
    Text {
        id: text5
        color: "#ffffff"
        text: qsTr("Inspector")
        wrapMode: Text.WrapAnywhere
        anchors.fill: parent
        transformOrigin: Item.Center
        textFormat: Text.RichText
        font.family: "Tahoma"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }
}
