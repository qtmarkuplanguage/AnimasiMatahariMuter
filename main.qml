import QtQuick 2.6
import QtQuick.Window 2.2

Window
{
 visible : true
 width   : 640
 height  : 480
 title   : qsTr("Patrick lagi coding")

 Image
 {
  height : Screen.height //480
  id     : name
  source : "Hasna Background.png"
 }

 Image
 {
  source : "Patrick.jpg"
  width  : 100
  height : 100

  NumberAnimation on x
  {
   from     :    5
   to       :  500
   duration : 5000
  }

  NumberAnimation on y
  {
   from     :    0
   to       :  375
   duration : 1000
  }

   transform :
    Rotation
    { //object kotak diputer object anak rotation
     origin.x :  5
     origin.y :  5
     angle    : -5
    }

 }

    Image
    {
     id     : contohImage //id untuk dipanggil lagi
     source : "matahari.jpg"
     width  : 200
     height : 200
     anchors.alignWhenCentered : parent
     RotationAnimation on rotation
     {
      loops : Animation.Infinite
      from  :  0
      to    : 25
     }
    }

    Image
    {
     width            : 100
     height           : 100
     fillMode         : Image.Stretch
   //anchors.centerIn : parent   //jadi ga gerak
     source           : "awan.jpg"

     NumberAnimation on x
     {
         from     :  500
         to       :   50
         duration : 5000
     }

     NumberAnimation on y
     {
         from     :   15
         to       :  100
         duration : 1000
     }
    }

    Image
    {
     source    : "rocket.jpg"
     width     : 110
     height    : 110
     transform : Rotation
                 {
                  origin.x : 30; origin.y : 30; axis{x : 0; y : 1; z : 0} angle : 118
                 }

     NumberAnimation on x
     {
         from     :   50
         to       :  500
         duration : 5000
     }

     NumberAnimation on y
     {
         from     :  400
         to       :   50
         duration : 5000
     }

    }

}
