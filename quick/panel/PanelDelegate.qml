import QtQuick 1.0

Component {
	id: panelDelegate

	Panel {
		id: panel
		title: modelData.group

		width: 250
		height: 50

		GridView {
			id: grid

			anchors.fill: parent

			cellWidth: 24
			cellHeight: 24

			model: modelData.actions
			delegate: PanelButton {
				iconSource: icon
				checked: checked
			}
		}
	}
}
