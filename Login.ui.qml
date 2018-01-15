import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.1

Page {
    id: page
    anchors.fill: parent
    title: qsTr("ورود")
    property int fontSize: 20

    ColumnLayout {
        width: parent.width

        Image {
            id: image
            scale: 2
            Layout.fillHeight: true
            Layout.fillWidth: false
            anchors.topMargin: 7
            anchors.horizontalCenter: parent.horizontalCenter
            source: "Images/logo.png"
        }

        Text {
            id: text1
            height: 40
            text: qsTr("نام کاربری")
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.family: "Tahoma"
            font.pointSize: fontSize
        }

        Rectangle {
            border.color: "#000000"
            border.width: 1
            height: 80
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            TextInput {
                id: txUsername
                width: parent.width
                height: 80
                selectionColor: "#308000"
                renderType: Text.QtRendering
                horizontalAlignment: Text.AlignRight
                font.family: "Tahoma"
                font.pointSize: fontSize
                padding: 15
            }
        }

        Text {
            id: text2
            height: 40
            text: qsTr("رمزعبور")
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.family: "Tahoma"
            font.pointSize: fontSize
        }

        Rectangle {
            border.color: "#000000"
            border.width: 1
            height: 80
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            TextInput {
                id: txPassword
                width: parent.width
                height: 80
                echoMode: TextInput.Password
                selectionColor: "#000000"
                renderType: Text.QtRendering
                horizontalAlignment: Text.AlignRight
                font.family: "Tahoma"
                font.pointSize: fontSize
                padding: 15
            }
        }

        Button {
            id: btnLogin
            width: parent.width / 2
            x: parent.width / 4
            text: "ورود"
            Layout.fillWidth: true
            Layout.fillHeight: true
            height: 120
            font.pointSize: fontSize
            font.family: "Tahoma"
            onClicked: {
                if (txUsername.text == "user" && txPassword.text == "1234") {
                    window.type = "user"
                    window.changePage("Map.ui.qml")
                } else if (txUsername.text == "guard"
                           && txPassword.text == "1234") {
                    window.type = "guard"
                    window.changePage("Map.ui.qml")
                } else {
                    messageDialog.open()
                }
            }
        }

        Button {
            id: btnForgot
            width: parent.width / 2
            x: parent.width / 4
            text: "رمزعبور را فراموش کرده‌ام"
            Layout.fillWidth: true
            Layout.fillHeight: true
            height: 120
            font.pointSize: fontSize
            font.family: "Tahoma"
            onClicked: window.changePage("Forgot.ui.qml")
        }

        Button {
            id: btnRegister
            width: parent.width / 2
            x: parent.width / 4
            text: "کاربر جدید هستم"
            spacing: 5
            focusPolicy: Qt.NoFocus
            Layout.fillWidth: true
            Layout.fillHeight: true
            height: 120
            font.pointSize: fontSize
            font.family: "Tahoma"
            onClicked: window.changePage("Register.ui.qml")
        }
    }

    MessageDialog {
        id: messageDialog
        title: "خطا!"
        text: "نام کاربری و یا رمزعبور اشتباه می‌باشد!"
        icon: "Critical"
    }
}
