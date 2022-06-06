import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainWindow
    visible: true
    color: "#ffffff"
    width: 640
    height: 480

    flags: Qt.Window | Qt.FramelessWindowHint

    title: qsTr("Hello World")
    WindowFrame {
        id: windowFrame
        anchors.fill: parent
    }
    WindowButton {
        id: closeButton
        width: 40
        height: 40
        anchors.right: windowFrame.right
        anchors.rightMargin: 0
        onClicked: mainWindow.close()
    }
    WindowButton {
        id: maximizeButton
        width: 40
        height: 40
        anchors.right: closeButton.left
        anchors.rightMargin: 2
        onClicked: mainWindow.showMaximized()
        iconUrl: "file:Icons/maximize.png"
    }
    WindowButton {
        id: minimizeButton
        width: 40
        height: 40
        anchors.right: maximizeButton.left
        anchors.rightMargin: 0
        iconUrl: "file:Icons/minimize.png"
        onClicked: mainWindow.showMinimized()
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.25;height:480;width:640}
}
##^##*/

