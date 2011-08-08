import QtQuick 1.1

Rectangle {
	id: rect
	property string title: "header"
	default property alias content: body.children

	width: 100
	height: 150

	border.color: "black"

	Text {
		id: header

		anchors.right: parent.right
		anchors.rightMargin: 5
		anchors.left: parent.left
		anchors.leftMargin: 5
		anchors.top: parent.top
		anchors.topMargin: 5

		text: rect.title
		elide: Text.ElideRight
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


}
