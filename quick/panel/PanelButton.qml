import QtQuick 1.0

BorderImage {
	id: panelButton

	signal clicked
	property bool pressed: false    // Can't be alias of mouseArea.pressed because the latter is read-only
	property alias containsMouse: mouseArea.containsMouse
	property bool checkable: true
	property bool checked: false
	property bool triState: false
	signal mouseMoved

	property string iconSource: "images/edit-select.png"

	source: checked || pressed ? "images/background-toolbar-toolbutton-pressed.png" : "images/background-toolbar-toolbutton.png"

	width: 22
	height: 22

	border.left: 5; border.top: 5
	border.right: 5; border.bottom: 5

	Image {
		id: icon
		source: panelButton.iconSource
		width: 16
		height: 16
		anchors.centerIn: panelButton
	}

	MouseArea {
		id: mouseArea
		anchors.fill: parent
		hoverEnabled: true
		onPositionChanged: panelButton.mouseMoved()
		onPressed: panelButton.pressed = true  // needed when hover is enabled
		onEntered: if(pressed && enabled) panelButton.pressed = true
		onExited: panelButton.pressed = false
		onCanceled: panelButton.pressed = false    // mouse stolen e.g. by Flickable
		onReleased: {
			if(panelButton.pressed && panelButton.enabled) { // No click if release outside area
				panelButton.pressed = false
				if(panelButton.checkable)
					panelButton.checked = !panelButton.checked;
				panelButton.clicked()
			}
		}
	}


}
