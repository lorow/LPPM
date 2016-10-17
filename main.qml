import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0
import QtQml.Models 2.2
import "colorPicker"

ApplicationWindow {
    Variables
    {
        id: vars
    }

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
        anchors.rightMargin: 10
        anchors.bottomMargin: -9
        anchors.leftMargin: 250
        anchors.topMargin: 19
        GridView {
            id: gridView1
            anchors.rightMargin: 8
            anchors.leftMargin: -8
            anchors.bottomMargin: 20
            anchors.topMargin: -20
            anchors.fill: parent
            flickableDirection: Flickable.VerticalFlick
            snapMode: GridView.NoSnap
            highlightRangeMode: GridView.NoHighlightRange
            highlightMoveDuration: 148
            flow: GridView.FlowLeftToRight
            layoutDirection: Qt.RightToLeft

            model: ListModel {id: listModelMy}
            delegate: Column {ColorBlock{id: test; tEXT: index}

            }

            cellHeight: 100
            cellWidth: 100

            Colorpicker {
                id: colorpicker1
                x: 155
                y: 162
            }
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
        Rectangle {
            id: addButton
            width: 65
            height: 55
            color: "#b04b4b"
            border.color: "#252323"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 8
            Image {
                id: image1
                anchors.topMargin: 12
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 18
                anchors.right: parent.right
                anchors.rightMargin: 18
                anchors.top: parent.top
                source: "svgIcons/add.svg"
                MouseArea {
                    id: mouseArea1
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.fill: parent
                    onClicked:
                    {
                        var test = listModelMy.append(ListElement);
                    }
                }
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

        Rectangle {

            id: debuger1
            height: 10
            color: "#4b4b4b"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: -825
            z: 11
        }
    }
}
