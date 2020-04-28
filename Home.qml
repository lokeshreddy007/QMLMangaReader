import QtQuick 2.0

Item {
    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        MouseArea {
            anchors.fill: parent
            onClicked:  {
                console.log("clicked");
            }
        }
    }
}
