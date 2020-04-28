import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Window {
    //    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Manga Reader")
    minimumWidth: 1040
    minimumHeight: 788

    RowLayout {
        id: searchLayout
        width: parent.width
        height: 40
        spacing: 2

        Rectangle {
            id: searchText
            Layout.minimumWidth: parent.width * 0.8
            Layout.minimumHeight: 40
            border.color: "lightsteelblue"
            border.width: 4
            radius: 8

            TextInput {
                width: parent.width
                anchors.left: searchText.left
                anchors.leftMargin: 15
                height: 40
                focus: true
                font.pixelSize: 28
            }
        }

        Button {
            id:searchButton
            Layout.minimumWidth: parent.width * 0.2
            Layout.minimumHeight: 40
            text: "Search"
            onClicked:  {
                console.log("Search button Clicked!")
            }
        }
    }

    Home {
        anchors.top:searchLayout.bottom
        anchors.topMargin:50

    }
}

