import QtQuick 1.1
import QtDesktop 0.1

Rectangle {
	id: background
	width: 1024
	height: 600

	Grid {
		anchors.fill: parent
		anchors.margins: 5

		spacing: 10

		ListModel {
			id: model
			ListElement {
				name: "1"
			}
			ListElement {
				name: "2"
			}
			ListElement {
				name: "3"
			}
			ListElement {
				name: "4"
			}
			ListElement {
				name: "5"
			}
			ListElement {
				name: "6"
			}
			ListElement {
				name: "7"
			}
			ListElement {
				name: "8"
			}
		}

		Panel {
			width: 250

			ButtonRow {
				anchors.fill: parent
				spacing: 10

				ToolButton {
					text: "first"
				}
				ToolButton {
					text: "second"
				}
				ToolButton {
					text: "third"
				}
				ToolButton {
					text: "fourteen"
				}
				ToolButton {
					text: "fifteen"
				}
			}
		}

		Panel {
			id: panel
			width: 200
			title: "Прямоугольник"

			GridView {
				id: grid

				width: panel.width
				height: panel.height

				cellWidth: 48
				cellHeight: 48

				model: model
				delegate: ToolButton {
					text: name
					checkable: true
					checked: false
				}
			}

		}

		Panel {
			width: 300
			title: "Вторая строчка"

			Button {
				text: "Кнопочка"
			}
		}
	}

}
