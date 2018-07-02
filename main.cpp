#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml/qqmlpropertymap.h>
#include <QtQml/qqmlparserstatus.h>
#include <QDebug>

class MyPropertyMap : public QQmlPropertyMap, public QQmlParserStatus
{
    Q_OBJECT
    Q_INTERFACES(QQmlParserStatus)
public:
    MyPropertyMap(QObject *parent = nullptr) : QQmlPropertyMap(this, parent)
    {

    }
    ~MyPropertyMap()
    {

    }

    virtual void classBegin();
    virtual void componentComplete();
};

void MyPropertyMap::classBegin()
{
    qDebug() << "MyPropertyMap::classBegin";
}

void MyPropertyMap::componentComplete()
{
    qDebug() << "MyPropertyMap::componentComplete";
}

#include "main.moc"

int main(int argc, char *argv[])
{
    if (qEnvironmentVariableIsEmpty("QTGLESSTREAM_DISPLAY")) {
        qputenv("QT_QPA_EGLFS_PHYSICAL_WIDTH", QByteArray("213"));
        qputenv("QT_QPA_EGLFS_PHYSICAL_HEIGHT", QByteArray("120"));

        QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    }

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<MyPropertyMap>("Test", 1, 0, "QmlObject");
    qmlRegisterSingletonType(QUrl("qrc:/TestContext.qml"), "Test", 1, 0, "TestContext");
//    qmlRegisterSingletonType(QUrl("file:///tmp/untitled/TestContext.qml"), "Test", 1, 0, "TestContext");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}


