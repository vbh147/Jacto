import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Jacto challenge")

    StackView {
        id: stackView
        initialItem: "Principal.qml"
        anchors.fill: parent
    }

    Component {
        id: principalPage
        Principal {}
    }

    Component {
        id: abreArquivoPage
        AbreArquivo {}
    }

    Component {
        id: transmiteComandoPage
        TransmiteComando {}
    }

    function loadPage(page){
        switch(page){
        case 'principalPage':
            stackView.push(principalPage)
            break;
        case 'abreArquivoPage':
            stackView.push(abreArquivoPage)
            break;
        case 'transmiteComandoPage':
            stackView.push(transmiteComandoPage)
            break;
        }
    }

}
