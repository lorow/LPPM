import QtQuick 2.0

Rectangle
{
  color: "#2c2a2a"
  width: parent.width
  height: parent.height
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
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 121
      anchors.top: colorClickableButton3.bottom
      anchors.topMargin: 72
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
