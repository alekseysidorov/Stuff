import QtQuick 1.0

Item {
	id: panel

	property QtObject actions: dummy
	property string header: actions.group

	width: childrenRect.width
	height: childrenRect.height

	GridView {
		id: gridView

		width: cellWidth * model.count
		height: contentHeight

		contentHeight: 32
		snapMode: GridView.SnapToRow
		keyNavigationWraps: true
		cellWidth: 26
		cellHeight: 26

		model: ListModel {
			ListElement {
				header: "1"
			}
			ListElement {
				header: "2"
			}
			ListElement {
				header: "3"
			}
			ListElement {
				header: "4"
			}
		}
		delegate: Text {
			text: header
		}
	}

	Text {
		id: header

		text: panel.header
		anchors.right: gridView.right
		anchors.rightMargin: 5
		anchors.left: gridView.left
		anchors.leftMargin: 5
		anchors.top: gridView.bottom
		anchors.topMargin: 5
	}

	QtObject {
		id: dummy
		property string group: qsTr("Заголовок")
	}
}
