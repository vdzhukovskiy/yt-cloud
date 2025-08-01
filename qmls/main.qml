import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Window {
    id: root
    width: 600
    height: 200
    visible: true
    title: qsTr("File Selector")
    color: Constants.darkBackground

    BodyItem {
        id: bodyItem
    }
}
