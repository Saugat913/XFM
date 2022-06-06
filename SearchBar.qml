import QtQuick 2.0

Rectangle {
    id: searchOutline
    width: 200
    height: 91
    color: "#ffffff"
    radius: 44
    border.width: 1

    TextInput {
        id: currentDirectory
        height: 20
        font.pixelSize: 12
        verticalAlignment: Text.AlignBottom
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: searchIcon.left
        anchors.rightMargin: 5
        anchors.leftMargin: 7
        clip: true
    }

    Image {
        id: searchIcon
        width: searchOutline.height * .6
        height: searchOutline.height * .6
        anchors.right: parent.right
        anchors.verticalCenter: searchOutline.verticalCenter
        source: "file:Icons/search.png"
        smooth: true
        anchors.rightMargin: 9
        fillMode: Image.PreserveAspectFit
    }
}
