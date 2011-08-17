import QtQuick 1.0

Item {
	id: root

	width: 600
	height: 50

	Flickable {
		id: flickable
		boundsBehavior: Flickable.DragOverBounds

		anchors.fill: parent

		contentHeight: row.height
		contentWidth: row.width

		Row {
			id: row
			Panel {
				id: panel
			}
			Panel {
				id: panel2
			}
		}
	}

	Rectangle {
		id: rectangle
		width: 60
		height: 50
		color: "#ff0000"
		radius: 25
		anchors.right: parent.right
		anchors.rightMargin: 5
		anchors.verticalCenterOffset: 0
		anchors.verticalCenter: parent.verticalCenter
	}
}
