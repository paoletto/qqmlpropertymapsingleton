/*
 * Copyright 2014 ImaginativeThinking
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma Singleton
import QtQuick 2.0

Item {
    Component.onCompleted: {
        console.log("MySingletonObject completed")
    }

    readonly property string colourBlue: "blue"
    readonly property string colourRed: "red"
    readonly property string colourWhite: "white"
    readonly property int fontPointSize: 16
    readonly property int borderSize: 4
}
