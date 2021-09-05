import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {

    width: 640
    height: 480

    Button {
        id: openFileBtn
        x: 90
        y: 220
        width: 140
        text: qsTr("Abrir arquivo")
        onClicked: {
            loadPage("abreArquivoPage");
        }
    }

    Button {
        id: quitBtn
        x: 410
        y: 220
        width: 140
        text: qsTr("Sair/Encerrar")
        onClicked: Qt.quit()

    }

    Button {
        id: sendCommandBtn
        x: 250
        y: 220
        width: 140
        text: qsTr("Enviar comando")
        onClicked: {
            loadPage("transmiteComandoPage");
        }
    }

}


