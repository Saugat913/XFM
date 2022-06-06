import QtQuick 2.2
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Rectangle {
    id: windowFrame

    Rectangle {
        id: titleBar
        y: 0
        height: 40
        color: "#6e8f8b8b"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0

        Rectangle {
            id: currentNameHolder
            width: 61
            color: "#ffffff"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 6
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            Text {
                id: currentName
                width: 45
                height: 17
                text: qsTr("Home")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: button
            //text: qsTr("")
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: currentNameHolder.right
            anchors.leftMargin: 3
            background: Rectangle {
                color: "transparent"
            }
            contentItem: Item {
                Row {
                    spacing: 5
                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        width: 25
                        height: 25
                        source: "file:Icons/plus.png"
                    }

                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: qsTr("New Tab")
                    }
                }
            }
        }
    }

    Rectangle {
        id: searchSector
        height: 69
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: titleBar.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        DropShadow {
            anchors.fill: searchSector
            cached: true
            horizontalOffset: 0
            verticalOffset: 3
            radius: 8.0
            samples: 16
            color: "#daeced"
            source: searchSector

            Text {
                id: text1
                x: 13
                y: 20
                width: 133
                height: 30
                text: qsTr("XFM")
                font.pixelSize: 21
                font.italic: true
                font.bold: true
            }
        }
        SearchBar {
            id: searchBar
            anchors.right: searchSector.right
            anchors.rightMargin: 15
            width: searchSector.width * 0.3
            height: 25
            anchors.verticalCenter: searchSector.verticalCenter
        }
    }

    Rectangle {
        id: toolBar
        width: 70
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.topMargin: -8
        anchors.top: searchSector.bottom

        Image {
            id: newDocument
            width: 30
            height: 30
            source: "file:Icons/new-document.png"
            fillMode: Image.PreserveAspectFit
            anchors.topMargin: 24
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: newFolder
            width: 30
            height: 30
            anchors.top: newDocument.bottom
            source: "file:Icons/new-folder.png"
            anchors.topMargin: 24
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: cut
            width: 30
            height: 30
            anchors.top: newFolder.bottom
            source: "file:Icons/cut.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 24
        }
        Image {
            id: copy
            width: 30
            height: 30
            anchors.top: cut.bottom
            source: "file:Icons/copy.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 24
        }

        Image {
            id: paste
            width: 30
            height: 30
            anchors.top: copy.bottom
            source: "file:Icons/paste.png"
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 24
        }

        Image {
            id: settingButton
            y: 435
            width: 30
            height: 30
            anchors.bottom: parent.bottom
            source: "file:Icons/settings.png"
            anchors.bottomMargin: 15
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: theme
            width: 30
            height: 30
            anchors.bottom: settingButton.top
            source: "file:Icons/theme.png"
            anchors.bottomMargin: 24
            fillMode: Image.PreserveAspectFit
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    VerticalLine {
        anchors.top: searchSector.bottom
        anchors.bottom: parent.bottom
        anchors.left: toolBar.right
    }

    Rectangle {
        id: dirList
        width: 180
        height: windowFrame.height * 0.8
        //color: "#aa3b3b"
        anchors.left: toolBar.right
        anchors.top: searchSector.bottom
        anchors.topMargin: 12
        anchors.leftMargin: 3

        DropShadow {
            anchors.fill: dirList
            cached: true
            horizontalOffset: 1
            verticalOffset: 2
            radius: 8.0
            samples: 16
            color: "#daeced"
            source: dirList
            //anchors.rightMargin: -1
            anchors.bottomMargin: 0
            //anchors.leftMargin: 1
            anchors.topMargin: 0

            Column {
                id: column

                anchors.leftMargin: 20
                anchors.fill: parent
                spacing: 9

                Text {
                    id: placesTopic
                    text: qsTr("Places")
                    anchors.left: parent.left
                    font.pixelSize: 17
                    font.italic: true
                    font.bold: true
                    anchors.leftMargin: 33
                }
                DirElement {
                    id: dirElement
                    iconUrl: "file:Icons/star.png"
                    iconDescription: "Favourate"
                    width: parent.width
                    height: 30
                }

                DirElement {
                    id: dirElement1
                    width: parent.width
                    iconUrl: "file:Icons/home.png"
                    height: 30
                }

                DirElement {
                    id: dirElement2
                    iconUrl: "file:Icons/download-folder.png"
                    iconDescription: "Downloads"
                    width: parent.width
                    height: 30
                }

                DirElement {
                    id: dirElement3
                    iconUrl: "file:Icons/image-gallery.png"
                    iconDescription: "Pictures"
                    width: parent.width
                    height: 30
                }

                DirElement {
                    id: dirElement4
                    width: parent.width
                    iconDescription: "Videos"
                    iconUrl: "file:Icons/video-camera.png"
                    height: 30
                }
            }
        }
    }


    /*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
    DirectoryLocation {
        id: currentDir
        anchors.left: dirList.right
        anchors.leftMargin: 50
        anchors.right: parent.right
        anchors.top: searchSector.bottom
        anchors.topMargin: 25
        height: 30
    }

    DirectoriesData {
        anchors {
            top: currentDir.bottom
            topMargin: 30
            right: windowFrame.right
            left: dirList.right
            bottom: windowFrame.bottom
        }
    }
}
