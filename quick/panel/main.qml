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
				checked: true
			}
			ListElement {
				name: "2"
				checked: false
			}
			ListElement {
				name: "3"
				checked: false
			}
			ListElement {
				name: "4"
				checked: false
			}
			ListElement {
				name: "5"
				checked: false
			}
			ListElement {
				name: "6"
				checked: false
			}
			ListElement {
				name: "7"
				checked: false
			}
			ListElement {
				name: "8"
				checked: false
			}

			function checkModel(currentIndex) {
				console.log("model" + count);
				for (var i = 0; i != count; i++) {
					setProperty(1, "name", "foo");
					//if (i != index)
					//	model.setProperty(i, "name", false);
					//else
					//	model.setProperty(i, "name", true);
				}
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
					id: button
					text: name
					checkable: true
					checked: checked
					onCheckedChanged: {
						model.checkModel(index);
					}
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