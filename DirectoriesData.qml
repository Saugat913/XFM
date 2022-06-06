import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    ListModel {
        id: contactModel
        ListElement {
            name: "Jim Williams"
            portrait: "file:Icons/folder.png"
        }
        ListElement {
            name: "John Brown"
            portrait: "file:Icons/folder.png"
        }
        ListElement {
            name: "Bill Smyth"
            portrait: "file:Icons/folder.png"
        }
        ListElement {
            name: "Sam Wise"
            portrait: "file:Icons/folder.png"
        }
    }

    GridView {
        anchors.fill: parent
        anchors.leftMargin: 50
        model: contactModel
        focus: true
        clip: true

        delegate: Rectangle {
            width: 80
            height: 80
            color: "transparent"
            focus: true
            Column {
                Image {
                    source: portrait
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: name
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
