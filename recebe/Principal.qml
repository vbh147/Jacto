import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {

    width: 640
    height: 480

    Button {
        id: receiveBtn
        x: 140
        y: 220
        width: 140
        text: qsTr("Receber")
        onClicked: {
            loadPage("recebePage");
        }
    }

    Button {
        id: quitBtn
        x: 340
        y: 220
        width: 140
        text: qsTr("Sair/Encerrar")
        onClicked: Qt.quit()
    }

}


