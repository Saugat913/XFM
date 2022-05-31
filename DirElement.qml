import QtQuick 2.0

Rectangle{
    property string iconUrl: "Icons/home.png"
    property string iconDescription:"Home"
Row{
    anchors.fill:parent
    spacing: 8
    Image{
        width: 30
        height: 30
        source: iconUrl
        fillMode: Image.PreserveAspectFit
    }
    Text {
        text: qsTr(iconDescription)
        anchors.verticalCenter: parent.verticalCenter
    }
}
}
