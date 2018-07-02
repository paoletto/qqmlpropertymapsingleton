import QtQuick 2.11
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component.onCompleted: {
        console.log("Window Completed")
        TestContext.fooString = "fooo"
        console.log(MySingletonObject.colourBlue)
        console.log(TestContext.testString)
        console.log(TestContext.fooString)
    }

    Item {
        id: foo

        Component.onCompleted: {
            console.log("Foo Completed")
            TestContext.fooString = "barr"
            console.log(MySingletonObject.colourBlue)
            console.log(TestContext.testString)
            console.log(TestContext.fooString)
        }
    }
}
