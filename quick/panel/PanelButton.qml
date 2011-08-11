import QtQuick 1.0

BorderImage {
	id: panelButton

	property bool checked: false
	property bool checkable: false
	property string icon: "images/edit-select.png"

	source: "images/background-toolbar-toolbutton.png"
	width: 22
	height: 22

	border.left: 5; border.top: 5
	border.right: 5; border.bottom: 5

	Image {
		id: icon
		source: panelButton.icon
		width: 16
		height: 16
		anchors.centerIn: panelButton
	}
}
