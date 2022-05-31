import QtQuick 2.0
import QtQuick.Controls 2.5
Button{
    property string iconUrl: "file:Icons/close.png"
    background:Rectangle{
        color:"transparent"
    }

   contentItem: Image{
       source: iconUrl
       fillMode: Image.PreserveAspectFit
   }
}
