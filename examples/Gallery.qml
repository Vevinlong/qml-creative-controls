import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import CreativeControls 1.0
Item {

    SwipeView
    {
        id:view

        currentIndex: 0
        anchors.fill: parent
        interactive: false

        Page
        {
            leftPadding: 50
            header: Text
            {
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 30
                text: "Sliders"
            }

            GridLayout
            {
                rowSpacing: 20
                columnSpacing: 10

                AngleSlider {
                    id: angleSlider
                    Layout.column: 0
                    Layout.row: 0
                }
                Text {
                    Layout.column: 1
                    Layout.row: 0
                    font.pointSize: 20
                    text: "Angle slider: " + angleSlider.angle
                }

                HSLSlider {
                    id: hslSlider
                    Layout.column: 0
                    Layout.row: 1
                    width: 100
                    height: 100
                }
                Text {
                    Layout.column: 1
                    Layout.row: 1
                    font.pointSize: 20
                    text: "HSL Slider" + hslSlider.color
                }

                HSVSlider {
                    id: hsvSlider
                    Layout.column: 0
                    Layout.row: 2
                    width: 100
                    height: 100
                }
                Text {
                    Layout.column: 1
                    Layout.row: 2
                    font.pointSize: 20
                    text: "HSV Slider: " + hsvSlider.color
                }

                RGBSlider {
                    id: rgbSlider
                    Layout.column: 0
                    Layout.row: 3
                    width: 100
                    height: 100
                }
                Text {
                    Layout.column: 1
                    Layout.row: 3
                    font.pointSize: 20
                    text: "RGB Slider: " + rgbSlider.color
                }

                MultiSlider {
                    Layout.column: 0
                    Layout.row: 4
                    width: 200
                    height: 100
                    nbSliders: 5
                }
                Text {
                    Layout.column: 1
                    Layout.row: 4
                    font.pointSize: 20
                    text: "Multi Slider"
                }

                LogSlider
                {
                    Layout.column: 0
                    Layout.row: 5
                    width: 50
                    height: 150
                }
                Text {
                    Layout.column: 1
                    Layout.row: 5
                    font.pointSize: 20
                    text: "Log Slider"
                }

                RangeSlider
                {
                    Layout.column: 0
                    Layout.row: 6
                }
                Text {
                    Layout.column: 1
                    Layout.row: 6
                    font.pointSize: 20
                    text: "Range Slider"
                }
            }
        }

        Page
        {
            leftPadding: 50
            header: Text
            {
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 30
                text: "Graphs"
            }

            GridLayout
            {
                rowSpacing: 20
                columnSpacing: 10

                Graph
                {
                    id: graph
                    width: 200
                    height: 100
                    Layout.column: 0
                    Layout.row: 0

                    Timer {
                        id: tm
                        repeat: true
                        onTriggered: { graph.pushValue(Math.random()); }
                        running: true
                        interval: 16
                    }
                }
                Text {
                    Layout.column: 1
                    Layout.row: 0
                    font.pointSize: 20
                    text: "Graph"
                }

                Scope
                {
                    id: scope
                    width: 200
                    height: 100
                    Layout.column: 0
                    Layout.row: 1

                    Timer
                    {
                        interval: 64
                        triggeredOnStart: true
                        repeat: true
                        running: true
                        onTriggered: {
                            var array = [];
                            for(var i = 0; i < 10; i++)
                            {
                                array.push(Math.random() * 2 - 1);
                            }
                            scope.points = array;
                        }
                    }
                }
                Text {
                    Layout.column: 1
                    Layout.row: 1
                    font.pointSize: 20
                    text: "Scope"
                }
            }
        }

        Page
        {
            leftPadding: 50
            header: Text
            {
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 30
                text: "Pads"
            }

            GridLayout
            {
                rowSpacing: 20
                columnSpacing: 10

                Joystick
                {
                    id: joystick
                    width: 200
                    height: 200
                    Layout.column: 0
                    Layout.row: 0
                }
                Text {
                    Layout.column: 1
                    Layout.row: 0
                    font.pointSize: 20
                    text: "Joystick: " + Utils.roundNum(joystick.stickX) + ", " + Utils.roundNum(joystick.stickY)
                }

                XYPad
                {
                    id: xypad
                    width: 200
                    height: 200
                    Layout.column: 0
                    Layout.row: 1
                }
                Text {
                    Layout.column: 1
                    Layout.row: 1
                    font.pointSize: 20
                    text: "X-Y Pad: " + xypad.stickX + ", " + xypad.stickY
                }

                CosInfluence
                {
                    id: cosinfluence
                    width: 200
                    height: 200
                    Layout.column: 0
                    Layout.row: 2
                }
                Text {
                    Layout.column: 1
                    Layout.row: 2
                    font.pointSize: 20
                    text: "Cosine Influence: " + prettyArray(cosinfluence.values)

                    function prettyArray(arr)
                    {
                        var str = "";
                        for(var i = 0; i < arr.length; ++i)
                        {
                            str += Utils.roundNum(arr[i]) + ", ";
                        }
                        if(str.length > 0)
                            str = str.substring(0, str.length - 2)
                        return str;
                    }
                }
            }
        }

        Page
        {
            leftPadding: 50
            header: Text
            {
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 30
                text: "Keys & Matrices"
            }

            GridLayout
            {
                rowSpacing: 20
                columnSpacing: 10

                Keyboard
                {
                    id: kbd
                    Layout.column: 0
                    Layout.row: 0

                    width: 400
                    height: 200

                    firstKey: 36
                    lastKey: 53
                }
                Text {
                    Layout.column: 1
                    Layout.row: 0
                    font.pointSize: 20
                    text:
                    {
                        if(kbd.pressedKeys.length > 0)
                           "Keyboard: " + kbd.pressedKeys[0].key + ", " + kbd.pressedKeys[0].vel
                        else
                            "Keyboard"
                    }
                }

                Matrix
                {
                    Layout.column: 0
                    Layout.row: 1

                    width: 200
                    height: 200
                }
                Text {
                    Layout.column: 1
                    Layout.row: 1
                    font.pointSize: 20
                    text: "Matrix"
                }

                Leds
                {
                    Layout.column: 0
                    Layout.row: 2

                    width: 200
                    height: 200
                }
                Text {
                    Layout.column: 1
                    Layout.row: 2
                    font.pointSize: 20
                    text: "Leds"
                }
            }
        }
    }
    Row{

        Button
        {
            onClicked: view.currentIndex = Math.max(view.currentIndex - 1, 0)
            text: "Previous"
            width: parent.width / 2
        }

        Button
        {
            onClicked: view.currentIndex = Math.min(view.currentIndex + 1, view.count - 1)
            text: "Next"
            width: parent.width / 2
        }

        anchors.bottom: parent.bottom
        width: parent.width
    }
}
