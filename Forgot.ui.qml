import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.1

Page {
    id: page
    anchors.fill: parent
    anchors.margins: 40
    title: qsTr("فراموشی رمزعبور")
    property int fontSize: 20

    ColumnLayout {
        width: parent.width

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

        Button {
            id: btnRegister
            width: parent.width / 2
            x: parent.width / 4
            text: "بازیابی رمز"
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
        title: "بازیابی رمز"
        text: "یک ایمیل حاوی رمزعبور جدید برای شما ارسال خواهدشد."
    }
}
