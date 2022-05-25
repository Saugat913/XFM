import QtQuick 2.0




 Rectangle{
        id:searchBar
        height: 23
        width: 170
        border.width: 1
        radius: 15

        Text {
            id: searchIcon
            anchors{
                top: parent.top
                bottom: parent.bottom
                bottomMargin: 12
                left: parent.left
                leftMargin: 7
            }

            text: "\uE810"   //Unicode of search icon
            verticalAlignment: Text.AlignVCenter
        }
        TextInput{
            anchors{
                top: parent.top
                topMargin: 3
                bottom: parent.bottom

                left: searchIcon.right
                leftMargin: 7
                right: parent.right
                rightMargin: 10
            }
            clip: true

        }
}
