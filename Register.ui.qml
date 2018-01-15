import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.1

Page {
    id: page
    anchors.fill: parent
    anchors.margins: 40
    title: qsTr("Home")
    property int fontSize: 20

    ColumnLayout {
        width: parent.width

        Text {
            id: text1
            height: 40
            text: qsTr("نام")
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
            text: qsTr("نام خانوادگی")
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
                selectionColor: "#000000"
                renderType: Text.QtRendering
                horizontalAlignment: Text.AlignRight
                font.family: "Tahoma"
                font.pointSize: fontSize
                padding: 15
            }
        }

        Text {
            id: text3
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
                id: txLastName
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
            id: text4
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
                id: txPwd
                width: parent.width
                height: 80
                selectionColor: "#308000"
                renderType: Text.QtRendering
                horizontalAlignment: Text.AlignRight
                echoMode: TextInput.Password
                font.family: "Tahoma"
                font.pointSize: fontSize
                padding: 15
            }
        }

        Text {
            id: text5
            height: 40
            text: qsTr("ایمیل")
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
                id: txEmail
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

        Button {
            id: btnRegister
            width: parent.width / 2
            x: parent.width / 4
            text: "ثبت نام"
            Layout.fillWidth: true
            Layout.fillHeight: true
            height: 120
            font.pointSize: fontSize
            font.family: "Tahoma"
            onClicked: {
                messageDialog.open()
                window.changePage("Login.ui.qml")
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: "ثبت نام"
        text: "ثبت‌نام شما با موفقیت انجام شد"
    }
}
