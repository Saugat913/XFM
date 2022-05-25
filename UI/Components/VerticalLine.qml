import QtQuick 2.0

Item {
    property alias length: line.height
    property alias color: line.color
    Rectangle{
        id:line
        width: 1
        height:parent.height
        color: "black"
        border.width: 1
    }
}
