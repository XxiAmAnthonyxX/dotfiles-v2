import QtQuick
import qs

Item {
    id: root

    property string label: ""
    property string command: ""
    property bool hovered: mouse.containsMouse
    property bool pressed: mouse.pressed

    // Width adapts to the text
    width: labelText.implicitWidth + 4
    height: 28

    Text {
        id: labelText
        anchors.centerIn: parent
        text: root.label

        color: root.pressed ? Theme.accentBright
             : root.hovered ? Theme.accent
             : Theme.foreground

        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing

        Behavior on color { ColorAnimation { duration: 70 } }
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onClicked: {
            if (root.command.length > 0)
                Quickshell.execDetached(["qs", "-c", root.command])
        }
    }
}
