#include "CarregaArquivo.h"
#include <QFile>
#include <QDebug>

void backRead::readFile(QString filePath){

    filePath.remove(0,10);

    QFile file(filePath);

    QString allText;

    if (file.open(QIODevice::ReadOnly | QIODevice::Text)){
        QTextStream stream(&file);
        while (!stream.atEnd()){
            allText.append(stream.readLine()+"\n");
        }

    }

    file.close();

    textRead(allText);
}
