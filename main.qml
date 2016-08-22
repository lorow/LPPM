import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: Screen.width
    height: Screen.height
    color: "#2c2f33"
    title: "Palette Maker"

    RightSideMy {
        id: rightSideMy1
        width: 240
        color: "#26292b"
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
            color: "#232325"
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
                texxt: "Save"
            }

            SquareButtonMy {
                id: squareButtonMy2
                radius: 5
                texxt: "Load"
            }

            SquareButtonMy {
                id: squareButtonMy3
                radius: 5
                texxt: "Export"
            }

            SquareButtonMy {
                id: squareButtonMy4
                radius: 5
                texxt: "Settings"
            }
        }
    }

    Rectangle {
        id: workspace
        color: "#383838"
        border.width: 0
        anchors.left: parent.left
        anchors.leftMargin: 240
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: workspace2.top
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        GridView {
            id: gridView1
            anchors.rightMargin: 10
            snapMode: GridView.NoSnap
            boundsBehavior: Flickable.DragOverBounds
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.fill: parent
            delegate: Item {
                x: 5
                height: 50
            }
            cellWidth: 70
            cellHeight: 70
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
        color: "#424242"
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
            width: 55
            height: 55
            color: "#717373"
            radius: 0
            border.color: "#252323"
            border.width: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 8

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
            }

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("ADD")
                font.family: "Tahoma"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 12
            }
        }
    }
}
