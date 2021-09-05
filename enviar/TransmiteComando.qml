import QtQuick 2.15
import Qt.labs.platform 1.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4

Item {
    width: 640
    height: 480
    opacity: 1

    Text {
        id: text1
        x: 90
        y: 20
        text: qsTr("Tópico:")
        font.pixelSize: 12
    }

    TextArea {
        id: topicoTextInput
        x: 90
        y: 40
        width: 465
        height: 35
        text: qsTr("")
        font.pixelSize: 12
        selectByMouse: true

        style: TextAreaStyle {
            textColor: "#333"
            selectionColor: "steelblue"
            selectedTextColor: "#eee"
            backgroundColor: "#cccccc"
        }
    }

    Text {
        id: text2
        x: 90
        y: 98
        text: qsTr("Conteúdo:")
        font.pixelSize: 12
    }

    TextArea {
        id: msgTextInput
        text: qsTr("")
        font.pixelSize: 12
        x: 90
        y: 120
        width: 465
        height: 270
        selectByMouse: true

        style: TextAreaStyle {
            textColor: "#333"
            selectionColor: "steelblue"
            selectedTextColor: "#eee"
            backgroundColor: "#cccccc"
        }

    }

    Button {
        id: sendBtn
        x: 219
        y: 397
        width: 202
        height: 47
        text: qsTr("Enviar")

        onClicked: {
            console.log("Tópico: " + topicoTextInput.text +"\nMensagem: " + msgTextInput.text);
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

}
