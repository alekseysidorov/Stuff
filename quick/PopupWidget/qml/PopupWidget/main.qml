import QtQuick 1.0
import com.code.qmlcomponents 1.0

Rectangle {
    width: 360
    height: 360
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

	Text {
		id: text
		text: "foo"
	}

	PopupWidget {
		id: popup
		delegate: text
	}
}
