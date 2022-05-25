import QtQuick 2.0

Item {
    property alias length: hline.width
    property alias color: hline.color
    Rectangle{
        id:hline
        width: 100
        height: 1
        color: "black"
        border.width: 1
    }
}
