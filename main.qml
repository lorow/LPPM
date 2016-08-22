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
            x: -566
            y: 198
            anchors.topMargin: 48
            anchors.rightMargin: 20
            anchors.leftMargin: 20
        }

        ColorClickableButton {
            id: colorClickableButton2
            x: -557
            y: 203
            anchors.top: colorClickableButton1.bottom
            anchors.topMargin: 50
            anchors.rightMargin: 20
            anchors.leftMargin: 20
        }

        ColorClickableButton {
            id: colorClickableButton3
            x: -562
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
            y: 688
            height: 169
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 43
            anchors.right: parent.right
            anchors.rightMargin: 29
            anchors.left: parent.left
            anchors.leftMargin: 29
            spacing: 10
            rows: 2
            columns: 2


            Rectangle {
                id: rectangle5
                width: 86
                height: 80
                color: "#b04b4b"
                radius: 15
                border.width: 0

                Text {
                    id: text8
                    x: 6
                    y: -9
                    width: 90
                    color: "#ffffff"
                    text: qsTr("Load")
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
                    id: mouseArea6
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle6
                width: 86
                height: 80
                color: "#b04b4b"
                radius: 15
                border.width: 0

                Text {
                    id: text9
                    x: 6
                    y: -9
                    width: 90
                    color: "#ffffff"
                    text: qsTr("Export")
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
                    id: mouseArea8
                    anchors.fill: parent
                }
            }

            Rectangle {
                id: rectangle7
                width: 86
                height: 80
                color: "#b04b4b"
                radius: 20
                border.width: 0

                Text {
                    id: text10
                    x: 6
                    y: -9
                    width: 90
                    color: "#ffffff"
                    text: qsTr("Settings")
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
                    id: mouseArea7
                    x: -96
                    y: -90
                    anchors.fill: parent
                }
            }
        }



    }

    Rectangle {
        id: workspace
        color: "#383939"
        anchors.left: parent.left
        anchors.leftMargin: 260
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
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
        height: 100
        color: "#383939"
        anchors.left: parent.left
        anchors.leftMargin: 260
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Rectangle {
            id: addButton
            x: 588
            y: -56
            width: 80
            height: 80
            color: "#717373"
            radius: 4
            border.color: "#252323"
            border.width: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10

            Rectangle {
                id: rectangle8
                width: 5
                height: 60
                color: "#262727"
                border.color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {
                id: rectangle9
                x: 4
                y: -7
                width: 60
                height: 7
                color: "#262727"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            MouseArea {
                id: mouseArea1
                anchors.fill: parent
            }
        }
    }

}
