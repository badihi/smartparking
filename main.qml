import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    //states: [true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, false, false, true, true]

    property string type: "none"
    property var states: [true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, false, false, true, true]
    property var settings: settings
    property var reserve: null
    property var mapPage: null

    Settings {
        id: settings
        property var states: [true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, false, false, true, true]
    }

    header: ToolBar {
        height: 100

        ToolButton {
            id: toolButton
            text: stackView.depth > 2 ? "\u25C0" : "\u2630"
            font.pointSize: 20
            onClicked: {
                if (stackView.depth > 2) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
            height: 100
            width: 100
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
            font.family: "Tahoma"
            font.pointSize: 20
            height: 100
            verticalAlignment: "AlignVCenter"
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height
        font.family: "Tahoma"

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("ثبت نام")
                width: parent.width
                onClicked: {
                    stackView.push("Register.ui.qml")
                    drawer.close()
                }
                visible: type == "none"
            }
            ItemDelegate {
                text: qsTr("فراموشی رمزعبور")
                width: parent.width
                onClicked: {
                    stackView.push("Forgot.ui.qml")
                    drawer.close()
                }
                visible: type == "none"
            }

            ItemDelegate {
                text: qsTr("رزرو فضای پارک")
                width: parent.width
                onClicked: {
                    stackView.push("Reserve.qml")
                    drawer.close()
                }
                visible: type == "user"
            }

            ItemDelegate {
                text: qsTr("تاییدیه خروج از پارکینگ")
                width: parent.width
                onClicked: {
                    stackView.push("Confirmation.qml")
                    drawer.close()
                }
                visible: type == "guard"
            }

            ItemDelegate {
                text: qsTr("خروج از کاربری")
                width: parent.width
                onClicked: {
                    while(stackView.depth > 1)
                        stackView.pop();
                    window.type = "none"
                    drawer.close()
                }
                visible: type != "none"
            }

            ItemDelegate {
                text: qsTr("خروج")
                onClicked: Qt.quit()
                visible: true
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "Login.ui.qml"
        anchors.fill: parent
        anchors.margins: 20
        anchors.topMargin: 50
    }

    function changePage(page){
        stackView.push(page);
    }

    function back(){
        stackView.pop();
    }
}
