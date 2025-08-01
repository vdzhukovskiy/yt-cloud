import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Item {
    id: bodyItem
    anchors.fill: parent

    // Диалог выбора файла
    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        currentFolder: filePathInput.text
        onAccepted: {
            filePathInput.text = selectedFile
        }
    }


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

    Rectangle {
        anchors.centerIn: parent
        width: parent.width * 0.8
        height: 80
        color: Constants.panelBackground
        radius: 8
        border.color: Constants.borderColor
        border.width: 1

        Row {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            // Поле для ввода пути
            TextField {
                id: filePathInput
                width: parent.width * 0.8 - parent.spacing
                height: parent.height
                placeholderText: qsTr("Select or enter file path...")
                color: Constants.textColor
                font.pixelSize: 14
                background: Rectangle {
                    color: Constants.darkBackground
                    radius: 4
                    border.color: Constants.borderColor
                    border.width: 1
                }
            }

            // Кнопка выбора файла
            Button {
                width: parent.width * 0.2 - parent.spacing
                height: parent.height
                text: "..."
                font.pixelSize: 16
                font.bold: true

                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: Constants.textColor
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                background: Rectangle {
                    color: parent.down ? Constants.pressedColor :
                                         parent.hovered ? Constants.hoverColor : Constants.primary
                    radius: 4
                }

                onClicked: {
                    fileDialog.open()
                }
            }
        }
    }
}
