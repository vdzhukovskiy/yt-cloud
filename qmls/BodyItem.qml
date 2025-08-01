import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Item {
    id: bodyItem

    // Статус выбранного файла
    Text {
        anchors {
            top: parent.top
            topMargin: 20
            horizontalCenter: parent.horizontalCenter
        }
        text: filePathInput.text ? qsTr("Selected: ") + filePathInput.text : qsTr("No file selected")
        color: filePathInput.text ? Constants.accent : Constants.textSecondary
        font.pixelSize: 12
    }

    FilePathEdit {
        id: filePathInput
        anchors.centerIn: parent
        height: 80
        width: parent.width * 0.8
    }
}
