import QtQuick
import qs

Text {
    id: clock

    property date now: new Date()

    // Example output:  SAT  10.03  00:15
    text: {
        const days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
        const day = days[now.getDay()]
        const date = Qt.formatDate(now, "MM.dd")
        const time = Qt.formatTime(now, "HH:mm")
        return `${day}  ${date}  ${time}`
    }

    color: Theme.foreground
    font.family: Theme.fontFamily
    font.pixelSize: Theme.fontSize
    font.bold: Theme.fontBold
    font.letterSpacing: Theme.fontLetterSpacing

    Timer {
        interval: 1000
        running: true
        repeat: true
        triggeredOnStart: true
        onTriggered: clock.now = new Date()
    }
}
