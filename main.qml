import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

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

        ColorClickableButton {
            id: colorClickableButton1
            coloText: "#ffffff"
            anchors.topMargin: 48
            anchors.rightMargin: 20
            anchors.leftMargin: 20
        }

        ColorClickableButton {
            id: colorClickableButton2
            coloText: "ffffff"
            anchors.top: colorClickableButton1.bottom
            anchors.topMargin: 50
            anchors.rightMargin: 20
            anchors.leftMargin: 20
        }

        ColorClickableButton {
            coloText: "(255,255,255)"
            id: colorClickableButton3
            anchors.top: colorClickableButton2.bottom
            anchors.topMargin: 50
            anchors.rightMargin: 20
            anchors.leftMargin: 20
        }

        Rectangle {
            id: colorPicerBackground
            height: 240
            color: "#3b3a3a"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        Grid {
            id: grid1
            y: 668
            height: 169
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 63
            anchors.right: parent.right
            anchors.rightMargin: 29
            anchors.left: parent.left
            anchors.leftMargin: 29
            spacing: 10
            rows: 2
            columns: 2

            SquareButtonMy {
                id: squareButtonMy1
                radius: 5
                iconLocation: "svgIcons/save.svg"
            }

            SquareButtonMy {
                id: squareButtonMy2
                radius: 5
                iconLocation: "svgIcons/load.svg"
            }

            SquareButtonMy {
                id: squareButtonMy3
                radius: 5
                iconLocation: "svgIcons/export.svg"
            }

            SquareButtonMy {
                id: squareButtonMy4
                radius: 5
                iconLocation: "svgIcons/settings.svg"
            }
        }
    }

    Rectangle {
        id: workspace
        color: "#404040"
        border.width: 0
        anchors.left: parent.left
        anchors.leftMargin: 250
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: workspace2.top
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 10

        GridView {
            id: gridView1
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 5
            anchors.topMargin: 10
            anchors.fill: parent
            cellHeight: 70
            cellWidth: 70
            delegate: Item {
                x: 5
                height: 50
                Column {
                    spacing: 5
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Text {
                        x: 5
                        text: name
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
            model: ListModel {
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                }
            }
        }
    }
    Rectangle {
        id: workspace2
        y: 770
        height: 75
        color: "#4b4b4b"
        border.width: 0
        anchors.left: parent.left
        anchors.leftMargin: 240
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Rectangle {
            id: addButton
            x: 1137
            y: 10
            width: 65
            height: 55
            color: "#b04b4b"
            radius: 0
            border.color: "#252323"
            border.width: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 8

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
            }

            Image {
                id: image1
                anchors.rightMargin: 15
                anchors.leftMargin: 15
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                anchors.fill: parent
                source: "svgIcons/add.svg"
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
        z: 1
    }
}
