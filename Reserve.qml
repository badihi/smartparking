import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: reserve
    anchors.fill: parent
    title: qsTr("رزرو فضای پارک")

    Component.onCompleted: {
        window.reserve = reserve
    }

    function saveReserve(){
        for (var i = 0; i < map.children.length; i++) {
            if (map.children[i].source == "qrc:/Images/car-blue.png") {
                window.states[i] = true;
            }
        }
    }

    Text {
        id: text1
        text: qsTr("جهت رزرو فضای پارک، یکی از فضاهای خالی را انتخاب کنید.")
        font.family: "Tahoma"
        font.pointSize: 15
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
    }
    Rectangle {
        width: guide.width
        height: guide.height
        border.color: "#000000"
        border.width: 1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50

        Grid {
            columns: 2
            rows: 2
            columnSpacing: 20
            rowSpacing: 20
            padding: 20
            id: guide

            Text {
                text: "جای پارک پرشده"
                font.pointSize: 15
                font.family: "Tahoma"
            }

            Image {
                id: img1
                source: "Images/car-red.png"
                scale: 1.5
            }

            Text {
                text: "جای پارک خالی"
                font.pointSize: 15
                font.family: "Tahoma"
            }

            Image {
                id: img2
                source: "Images/car-green.png"
                scale: 1.5
            }
        }
    }

    Image {
        id: map
        source: "Images/map.png"
        y: 190
        width: parent.width
        height: parent.width / 323 * 276

        property int carWidth: map.width * 20 / 324
        property int carHeight: map.width * 15 / 324

        Component.onCompleted: {
            for (var i = 0; i < map.children.length; i++) {
                if (window.states[i]) {
                    map.children[i].source = "Images/car-red.png"
                }
            }
        }

        function changeCarState(c) {
            if (c.source == "qrc:/Images/car-green.png") {
                for (var i = 0; i < map.children.length; i++) {
                    if (map.children[i].source == "qrc:/Images/car-blue.png") {
                        map.children[i].source = "Images/car-green.png"
                    }
                }
                c.source = "Images/car-blue.png"
                btnReserve.enabled = true
            }
        }

        Image {
            id: car
            x: 32
            y: 18
            source: "Images/car-green.png"
            width: map.carWidth
            height: map.carHeight
            fillMode: Image.Stretch
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car1
            x: 90
            y: 18
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car2
            x: 32
            y: 63
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car3
            x: 90
            y: 63
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car4
            x: 32
            y: 106
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car5
            x: 90
            y: 106
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car6
            x: 182
            y: 8
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car7
            x: 239
            y: 8
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car8
            x: 300
            y: 8
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car9
            x: 182
            y: 53
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car10
            x: 239
            y: 53
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car11
            x: 300
            y: 53
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car12
            x: 182
            y: 99
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car13
            x: 239
            y: 99
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car14
            x: 300
            y: 99
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car15
            x: 376
            y: 8
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car16
            x: 433
            y: 8
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car17
            x: 494
            y: 8
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car18
            x: 376
            y: 53
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car19
            x: 433
            y: 53
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car20
            x: 494
            y: 53
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car21
            x: 8
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car22
            x: 65
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car23
            x: 126
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car24
            x: 8
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car25
            x: 65
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car26
            x: 126
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car27
            x: 8
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car28
            x: 65
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car29
            x: 126
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
            }
        }

        Image {
            id: car30
            x: 203
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car31
            x: 260
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car32
            x: 203
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car33
            x: 260
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car34
            x: 203
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car35
            x: 260
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car36
            x: 333
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car37
            x: 390
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car38
            x: 333
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car39
            x: 390
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car40
            x: 333
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car41
            x: 390
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car42
            x: 463
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car43
            x: 520
            y: 413
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car44
            x: 463
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car45
            x: 520
            y: 458
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car46
            x: 463
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }

        Image {
            id: car47
            x: 520
            y: 504
            width: map.carWidth
            height: map.carHeight
            source: "Images/car-green.png"
            MouseArea {
                anchors.fill: parent
                onClicked: map.changeCarState(parent)
            }
        }
    }

    Button {
        id: btnReserve
        text: "رزرو فضای پارک"
        width: parent.width
        font.family: "Tahoma"
        font.pointSize: 20
        y: map.height + guide.height + text1.height + 50
        x: 0
        enabled: false
        height: 100
        onClicked: {
            window.changePage("Payment.qml")
        }
    }
}
