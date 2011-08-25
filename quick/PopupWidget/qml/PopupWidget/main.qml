import QtQuick 1.0
import com.code.qmlcomponents 1.0

Rectangle {
    width: 360
    height: 360

	opacity: 0.5
	color: "red"

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
		onClicked: {
			popup.show();
        }
    }

	PopupWidget {
		id: popup
		delegate: PopupPanel {

		}
	}
}
