import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.1

Page {
    id: page
    anchors.fill: parent
    width: parent.width
    title: qsTr("انتخاب درگاه پرداخت")
    property int fontSize: 20

    ColumnLayout {
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            source: "Images/bank1.png"
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 2
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.openUrlExternally("https://www.bpi.ir/")
                    window.reserve.saveReserve();
                    window.mapPage.loadStates();
                    window.back();
                    window.back();
                }
            }
        }

        Image {
            source: "Images/bank2.png"
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 2
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.openUrlExternally("https://www.bmi.ir/")
                    window.reserve.saveReserve();
                    window.mapPage.loadStates();
                    window.back();
                    window.back();
                }
            }
        }

        Image {
            source: "Images/bank3.png"
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 2
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.openUrlExternally("https://www.bankmellat.ir/")
                    window.reserve.saveReserve();
                    window.mapPage.loadStates();
                    window.back();
                    window.back();
                }
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: "بازیابی رمز"
        text: "یک ایمیل حاوی رمزعبور جدید برای شما ارسال خواهدشد."
    }
}
