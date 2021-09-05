import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Jacto challenge - App. 2")

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
        id: recebePage
        Recebe {}
    }

    function loadPage(page){
        switch(page){
        case 'principalPage':
            stackView.push(principalPage)
            break;
        case 'recebePage':
            stackView.push(recebePage)
            break;
        }
    }

}



