import QtQuick 2.0

Rectangle {
    id: rectangle1
    TextInput {
        id: currentDirectory
        height: 20
        width: parent.width * 0.6
        text: qsTr("/home/user/")
        anchors.bottom: directoryLine.top
        font.pixelSize: 12
        verticalAlignment: Text.AlignBottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        clip: true
    }
    Rectangle {
        id: directoryLine
        width: parent.width * 0.6
        height: 2
        color: "#ffffff"
        border.width: 1
        anchors.left: parent.left
        anchors.top: currentDirectory.bottom
        anchors.leftMargin: 0
    }

    Image {
        id: favourite
        width: 20
        height: 20
        anchors.right: moreOption.left
        source: "file:Icons/star.png"
        anchors.rightMargin: 15
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: addPanel
        width: 20
        height: 20
        anchors.right: favourite.left
        source: "file:Icons/plus.png"
        anchors.rightMargin: 19
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: moreOption
        width: 20
        height: 20
        anchors.right: parent.right
        source: "file:Icons/dot-menu-vertical.png"
        anchors.rightMargin: 8
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1}
}
##^##*/

