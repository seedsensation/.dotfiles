
import Quickshell
import QtQuick // for text

Scope {
    id: root
    property string time

    Time { id: timeSource }

    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }

            implicitHeight: 30

            TimeWidget {
                anchors.centerIn: parent
                time: timeSource.time
            }
        }

    }
}
