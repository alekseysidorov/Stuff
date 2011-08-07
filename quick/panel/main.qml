import QtQuick 1.1
import QtDesktop 0.1

Row {

	spacing: 10

	Panel {
		title: "Прямоугольник"

		Grid {
			ToolButton {
				text: "1"
			}
			ToolButton {
				text: "2"
			}
			ToolButton {
				text: "3"
			}
			ToolButton {
				text: "4"
			}
			ToolButton {
				text: "5"
			}
			ToolButton {
				text: "6"
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
