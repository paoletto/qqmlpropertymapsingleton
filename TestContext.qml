pragma Singleton
import QtQml 2.10
import QtQuick 2.10
//import Test 1.0

QmlObj {
    id: pfctx

    //property QmlObj extras: QmlObj { }

    Component.onCompleted: {
//        fontsPath = "qrc:/qmlplugins/QmlPresentationFramework/assets/fonts/"

//        function fontLoader(fontName) {
//            return Qt.createQmlObject ('import QtQuick 2.10; FontLoader { source: "' + fontsPath + fontName + '" }', pfctx)
//        }

        console.log(" ========= CONTEXT COMPLETED ========== ")
        testString = "foobar"
        fooString = "foo"
//        advanceContentInSlide = 0
//        colorQtGreen = "#41CD52"

//        fontTitilliumRegular =  fontLoader("Titillium-Regular.otf")
//        fontTitilliumThin =     fontLoader("Titillium-Thin.otf")
//        fontTitilliumLight =    fontLoader("Titillium-Light.otf")
//        fontTitilliumSemiBold = fontLoader("Titillium-Semibold.otf")
//        fontTitilliumBold =     fontLoader("Titillium-Bold.otf")
//        fontTitilliumBlack =    fontLoader("Titillium-Black.otf")

//        fontTitillium = fontTitilliumRegular
        liveCodeHelp = false
        tabStopSize = 38
    }
}
