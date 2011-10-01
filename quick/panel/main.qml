import QtQuick 1.0
import QtDesktop 0.1

Item {
    id: root

    width: 300
    height: 400

    QStyleItem {
        anchors.fill: parent
        anchors.margins: 10

		elementType: "tabframe"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("trying to show popup");
                menu.x = mouse.x;
                menu.y = mouse.y;
                menu.visible = true;
                console.log("Success");
            }
        }
    }

    ListModel {
        id: menuItems
        ListElement { text: "Banana"; color: "Yellow" }
        ListElement { text: "Apple"; color: "Green" }
        ListElement { text: "Coconut"; color: "Brown" }
    }
    Menu {
        id: menu

        model: menuItems
        width: 200
        onSelectedIndexChanged: console.debug(selectedText + ", " + menuItems.get(selectedIndex).color)
    }
}
