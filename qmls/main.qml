import QtQuick
import QtQuick.Controls

Window {
    width: 400
    height: 300
    visible: true
    title: qsTr("Hello QML")

    Rectangle {
        anchors.centerIn: parent
        width: 200
        height: 100
        color: Constants.lightBackColor

        Text {
            anchors.centerIn: parent
            text: qsTr("Hello World!")
            font.pixelSize: 24
        }
    }
}
