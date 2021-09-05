#ifndef CARREGAARQUIVO_H
#define CARREGAARQUIVO_H

#include <QObject>
#include <QString>

class backRead : public QObject{
    Q_OBJECT

signals:
    void textRead(QString readText);

public slots:
    void readFile(QString filePath);

};

#endif // CARREGAARQUIVO_H
