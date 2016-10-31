import QtQuick 2.2
import "content"
import "content/ColorUtils.js" as ColorUtils

Item {
    id: colorPicker

    width: 100
    height: 100
    property color colorValue: ColorUtils.hsba(hueSlider.value, sbPicker.saturation,sbPicker.brightness, 1)
    SBPicker {
        id: sbPicker
        width: parent.width
        height: parent.height
        hueColor : ColorUtils.hsba(hueSlider.value, 1.0, 1.0, 1.0, 1.0)
    }
    Item {
        id: item1
        width: 8
        height: parent.width
        anchors.left: sbPicker.right
        Rectangle {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 1.0;  color: "#FF0000" }
                GradientStop { position: 0.85; color: "#FFFF00" }
                GradientStop { position: 0.76; color: "#00FF00" }
                GradientStop { position: 0.5;  color: "#00FFFF" }
                GradientStop { position: 0.33; color: "#0000FF" }
                GradientStop { position: 0.16; color: "#FF00FF" }
                GradientStop { position: 0.0;  color: "#FF0000" }
            }
        }
        ColorSlider { id: hueSlider; anchors.fill: parent; }
    }
}


