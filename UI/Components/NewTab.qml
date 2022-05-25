import QtQuick 2.0

Item {

    Rectangle{
         id:newTab
         width: 100
         color: Qt.rgba(0,0,0,0)
        anchors.fill: parent
        MouseArea{
            anchors.fill: parent
            onClicked: ()=>{
                   console.log("new tab is clicked!!")
                 }
        }

        // Add the plus Icon
        Text{
            id:plus
            text: "\uE804"
            color: "grey"
            font.pixelSize: 17
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 9
            verticalAlignment: Text.AlignVCenter
        }

        Text{
            text: "New tab"
            color: "grey"
            font.pixelSize: 14
            anchors.left: plus.right
            anchors.leftMargin: 13
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 9
            verticalAlignment: Text.AlignVCenter
        }
    }


}
