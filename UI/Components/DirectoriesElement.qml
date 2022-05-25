import QtQuick 2.0
import QtQuick.Controls 2.5
Item {
    Rectangle{
    anchors.fill: parent
     //hoverEnabled:true
    Text {
        id: icon
        text: "\uE803"
        font.pixelSize: 25
        height: parent.height
        verticalAlignment: Text.AlignVCenter
    }
    Text {
        height: parent.height
        anchors.left: icon.right
        id: iconDescription
        text: qsTr("Home")
        anchors.bottom: parent.bottom
    }
    }
}
