import Quickshell
import QtQuick
import QtQuick.Layouts
import qs

ShellRoot {
    PanelWindow {
        id: bar

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 40
        color: Theme.background

        // Bottom hairline
        Rectangle {
            anchors {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: 1
            color: Theme.accent
            opacity: 0.55
        }

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 14
            anchors.rightMargin: 14
            spacing: 18

            // LEFT – Visualizer
            Visualizer {
                Layout.alignment: Qt.AlignVCenter
            }

// Action buttons
Row {
    Layout.alignment: Qt.AlignVCenter
    spacing: 0

    ActionButton { label: "CLIPBOARD"; command: "clipboard" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
      }

    ActionButton { label: "BACKGROUND"; command: "background" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
      }

    ActionButton { label: "LAUNCHER"; command: "launcher" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
    }

    ActionButton { label: "LOCKSCREEN"; command: "lock" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
    }

    ActionButton { label: "RECORD"; command: "recorder" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
    }

    ActionButton { label: "SCREENSHOT"; command: "screenshot" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
    }

    ActionButton { label: "WALLPAPER"; command: "wallpaper" }

    Text {
        text: " | "
        color: Theme.muted
        font.family: Theme.fontFamily
        font.pixelSize: Theme.fontSize
        font.bold: Theme.fontBold
        font.letterSpacing: Theme.fontLetterSpacing
        opacity: 0.55
        anchors.verticalCenter: parent.verticalCenter
    }

    ActionButton { label: "POWER"; command: "power" }
}

            // CENTER
            Item {
                Layout.fillWidth: true

                Clock {
                    anchors.centerIn: parent
                }
            }

            // RIGHT
            Media {
                Layout.alignment: Qt.AlignVCenter
            }
        }
    }
}
