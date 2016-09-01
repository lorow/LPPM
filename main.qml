import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQml.Models 2.2

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: Screen.width
    height: Screen.height
    color: "#4b4b4b"
    title: "Palette Maker"
    RightSideMy {
        id: rightSideMy1
        width: 240
        color: "#303030"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }
    WORKSPACEMY{
        id: workspace
        GridView {
            id: gridView1
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 5
            anchors.topMargin: 10
            anchors.fill: parent
            flickableDirection: Flickable.VerticalFlick
            snapMode: GridView.NoSnap
            highlightRangeMode: GridView.NoHighlightRange
            highlightMoveDuration: 148
            flow: GridView.FlowLeftToRight
            layoutDirection: Qt.RightToLeft

            model: ListModel {id: listModelMy}
            delegate: Column {ColorBlock{id :colorBlockMy}}

            cellHeight: 100
            cellWidth: 100
        }
    }
    Rectangle {
        id: workspace2
        height: 75
        color: "#4b4b4b"
        anchors.left: parent.left
        anchors.leftMargin: 240
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        ADDDBUTTON {
            id: aDDDBUTTON1
        }

    }
    Rectangle {
        id: debuger
        height: 15
        color: "#4b4b4b"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 240
        anchors.top: parent.top
        anchors.topMargin: 0
    }
}
