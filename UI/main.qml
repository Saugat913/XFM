import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.3
import QtQuick.Window 2.3
import"qrc:/components"
import"qrc:/assests"


Window {
    property string  appName: "XFM"



    id:iWindow
    width: 640
    height: 480
    visible: true

    //onWidthChanged: searchBar.width= iWindow.width * 0.3

    flags: Qt.Window |
           Qt.FramelessWindowHint


    // Make frameless window movable
    MouseArea{
            id: iMouseArea
            property int prevX: 0
            property int prevY: 0
            anchors.fill: titleBar
            onPressed: {prevX=mouse.x; prevY=mouse.y}
            onPositionChanged:{
                var deltaX = mouse.x - prevX;
                iWindow.x += deltaX;
                prevX = mouse.x - deltaX;

                var deltaY = mouse.y - prevY
                iWindow.y += deltaY;
                prevY = mouse.y - deltaY;
           }
    }

    //Load the material font
   FontLoader{
   id:fontLoader
   source: "qrc:/assests/fontello.ttf"
   }

//title bar containing app name and new tab button
 Rectangle{
       id:titleBar
       anchors{
           top:parent.top
           left: parent.left
           right: parent.right
       }
       height: 40
       color: "#CBD9CE"
   }


 Rectangle{
       id:appName
       height: 40
       width:60
   anchors{
       left:parent.left
       top:parent.top
       leftMargin: 6
   }
   color: "white"

   Text{
       text: "XFM"
       font.bold: true
       font.italic: true
       font.pixelSize: 14
       verticalAlignment: Text.AlignVCenter
       horizontalAlignment: Text.AlignHCenter
       anchors.fill:parent
   }
 }

    ListModel{
        id:listmodel
        ListElement{
        icon:"\uE800"
        minimize:true
        }
        ListElement{icon:"\uF096"
        maximize:true
            //clicked: new iWindow.Maximized()
        }
        ListElement{icon:"\uE801"
        close:true
        }
    }
Component{
    id:minmaxclose
    Text{
     font.family: fontLoader.name
     font.pixelSize: 17
     text: icon

     MouseArea{
         anchors.fill: parent
         onClicked: {
             if(model.minimize){
                 iWindow.showMinimized()
             }else if(model.maximize){
                  iWindow.showMaximized()
             }else{
                 iWindow.close()
             }
         }

     }
    }
}

NewTab{
    id:newTab
    anchors{
       left: appName.right
       leftMargin: 4
       top: titleBar.top
       bottom: titleBar.bottom
   }
}

   ListView{

       anchors.top: parent.top
       anchors.topMargin: 10
       anchors.right: parent.right
       anchors.rightMargin: 10

       width:50
       height: 40
     orientation: ListView.Horizontal
     spacing:10
     delegate: minmaxclose
     model: listmodel
     }

Rectangle{
    id:searchSector
    anchors.top: titleBar.bottom
    anchors.right: parent.right
    anchors.left: parent.left
    height: 70
    border.width: 1
    border.color: "#8BA181"    

    SearchBar{
    id:searchBar
    anchors.centerIn: parent
    width:iWindow.width * 0.3
    }


    Item {
        id: sideTools
        height: 30
        width: 80
        anchors{
            right: parent.right
            top: parent.top
            topMargin: 10
        }

        RowLayout{
            spacing: 20
            Text {
                id: theme
                text: "\uE80F"   //Unicode for theme
                font.pixelSize: 20
                MouseArea{
                    anchors.fill: parent
                    onClicked: ()=>{
                                   console.log("Theme is clicked")
                               }
                }
            }
            Text {
                id: setting
                text: "\uE811"
                font.pixelSize: 20
                MouseArea{
                    anchors.fill: parent
                    onClicked: ()=>{
                                   console.log("Setting is clicked")
                               }
                }
            }
        }
    }
}


Component{
    id:toolsBarElement
   Rectangle{
         width: parent.width
         height: 80
         MouseArea{
         anchors.fill:parent
         hoverEnabled: true
         onEntered: ()=>{
                        parent.color="#EFEFEF"
                        //"#EFEFEF"

                    }
         onExited: ()=>{
                       parent.color="transparent"
                   }
         }
         Column{
             spacing: 3
             anchors.fill: parent
         Text {
               id: icon
               text: iconCode
               font.pixelSize: 28
               color: "grey"
               anchors.horizontalCenter: parent.horizontalCenter
           }
           Text {
               text: description
               font.pixelSize: 10
               clip: true
                anchors.horizontalCenter: parent.horizontalCenter
           }
         }
      }
}

ListModel{
    id:toolBarModel
    ListElement{
        iconCode:"\uE814"
        description:"New Docu.."
    }
    ListElement{
        iconCode:"\uE813"
        description:"New Folder"
    }
}

ListView{
    id:toolsBar
        anchors.left: parent.left
        anchors.top: searchSector.bottom
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        width: 90
        spacing: 15
        delegate: toolsBarElement
        model:toolBarModel
}

Rectangle{
    id:directoriesList
    anchors.left: toolsBar.right
    anchors.top: searchSector.bottom
    anchors.bottom: parent.bottom
    width: 140

//ListModel{
//   id:directoriesModel
//   ListElement{}
//   ListElement{}
//}
//Component{
//id:directoriesElement
// DirectoriesElement{height:50}
//}
// ListView{
//      anchors.fill: parent
//      model:directoriesModel
//      delegate:directoriesElement
//      spacing: 35
//    }
}
Rectangle{
    anchors.left:directoriesList.right
    anchors.top: searchSector.bottom
    anchors.bottom: parent.bottom
    width: 4
    color: "red"
MouseArea{

                cursorShape: Qt.SizeHorCursor
                 anchors.fill: parent
                property point lastMousePos: Qt.point(0,0)
                onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
                onMouseXChanged: directoriesList.width += (mouseX + lastMousePos.x)
}
}
VerticalLine{
    anchors.left: directoriesList.right
    anchors.top:searchSector.bottom
    anchors.bottom: parent.bottom
    color: "#8BA181"
}
VerticalLine{
    anchors.left: toolsBar.right
    anchors.top:searchSector.bottom
    anchors.bottom: parent.bottom
    color: "#8BA181"
}

}
