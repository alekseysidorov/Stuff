import QtQuick 1.1

Item {
	id: panel

	property string title: "header"
	property bool expanded: true
	property int duration: 300

	default property alias content: body.children

	width: 100
	height: 150

	Text {
		id: header
		z: 1

		horizontalAlignment: Text.Center
		verticalAlignment: Text.Center

		anchors.right: parent.right
		anchors.rightMargin: 5
		anchors.left: parent.left
		anchors.leftMargin: 5
		anchors.top: parent.top
		anchors.topMargin: 5

		text: panel.title

		elide: Text.ElideRight
		style: Text.Outline
		styleColor: "#CCC"
	}

	Rectangle {
		id: bodyRect

		anchors.bottom: parent.bottom
		anchors.bottomMargin: 5
		anchors.right: parent.right
		anchors.rightMargin: 5
		anchors.left: parent.left
		anchors.leftMargin: 5
		anchors.top: header.bottom
		anchors.topMargin: 5

		border.color: "gray"
		color: "transparent"

		Flickable {
			id: flickable

			anchors.fill: bodyRect
			clip: true

			contentWidth: body.width
			contentHeight: body.height

			Item {
				id: body

				width: childrenRect.width
				height: childrenRect.height
			}
		}
	}

	MouseArea {
		id: mouseArea
		anchors.fill: header
		onClicked: {
			panel.expanded = !panel.expanded;
			console.log("Panel: " + panel.state);
		}
	}

	states: [
		State {
			name: "show"
			when: panel.expanded
			PropertyChanges {
				target: bodyRect
			}
		},
		State {
			name: "hide"
			when: !panel.expanded
			PropertyChanges {
				target: bodyRect
				opacity: 0
				height: 0
			}

			PropertyChanges {
				target: panel

				height: childrenRect.height

			}

			AnchorChanges {
				target: bodyRect

				anchors.right: parent.right
				anchors.left: parent.left
				anchors.top: undefined
				anchors.bottom: header.top
			}
		}
	]

	transitions: [
		Transition {
			PropertyAnimation { properties: "opacity, height, y"; easing.type: Easing.InOutQuad; duration: panel.duration; target: bodyRect }
			PropertyAnimation { properties: "opacity, height, y"; easing.type: Easing.InOutQuad; duration: panel.duration; target: panel }
			AnchorAnimation { duration: panel.duration;}
		}
	]
}
