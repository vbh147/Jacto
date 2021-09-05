import QtQuick 2.15
import Qt.labs.platform 1.1
import Qt.labs.folderlistmodel 2.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4

Item {
    id: item1
    width: 640
    height: 480

    TextArea {
        id: textArea
        text: qsTr("")
        font.pixelSize: 12
        x: 40
        y: 60
        width: 560
        height: 320
        enabled: false

        Connections {
            target: backRead
            onTextRead: textArea.text = readText;
        }

        style: TextAreaStyle {
            textColor: "#333"
            selectionColor: "steelblue"
            selectedTextColor: "#eee"
            backgroundColor: "#cccccc"
        }

    }

    Button {
        id: fileSelection
        x: 150
        y: 410
        width: 340
        height: 40
        text: qsTr("Selecionar arquivo")

        onClicked: {
            fileDialog.visible = true;
        }

    }

    Button {
        id: backButton
        x: 572
        y: 432
        width: 60
        text: qsTr("Voltar")
        onClicked: {
            loadPage("principalPage");
        }
    }

    FileDialog {
        id: fileDialog
        title: "Escolha um arquivo"
        folder: shortcuts.home
        nameFilters: ["Text files (*.txt)"]
        onAccepted: {
            backRead.readFile(fileDialog.file);
        }
    }

}
