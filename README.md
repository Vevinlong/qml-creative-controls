 <h1> <img src="logo.png" width="100" align="center"> QML Creative Controls  </h1>

Controls useful in a creative coding context.

Requirements:

* Qt >= 5.7
* Tested on Windows, Linux, macOS, Android. Should work everywhere.

[![Build Status](https://travis-ci.org/jcelerier/qml-creative-controls.svg)](https://travis-ci.org/jcelerier/qml-creative-controls)
[![Build status](https://ci.appveyor.com/api/projects/status/j07ij1y6tf6awey5?svg=true)](https://ci.appveyor.com/project/JeanMichalCelerier/qml-creative-controls)

## Building

    cd qml-creative-controls
    qmake
    make -j

## Using

Put the `CreativeControls` folder in your Qt installation, so that it looks like:

```
    ~/Qt/5.8/gcc_64/qml/CreativeControls/libqml-creative-controls.so
                                        /Foo.qml
                                      # /etc...
```

If you do not wish to pollute your path, you will have to add the parent folder (the git repostiory)
to your QML2_IMPORT_PATH, either through qmake, an environment variable, code...

To try an example, run for instance : 

    ~/Qt/5.8/gcc_64/bin/qmlscene --multisample examples/Gallery.qml
    
## Notes

This library can be useful in conjunction with [libossia](https://github.com/OSSIA/libossia).
See [OssiaClientExample.qml](examples/OssiaClientExample.qml) and [OssiaServerExample.qml](examples/OssiaServerExample.qml)
This allows to build pretty control interfaces for MIDI or OSC-able software.

## Gallery

![Gallery video](https://media.giphy.com/media/xUPGcIekebnYNZhBnO/giphy.gif)

![QtDesigner](http://i.imgur.com/t0OTkcJ.png)

## Inspiration

* [Lemur](https://liine.net)
* [HOALibrary](https://cycling74.com/toolbox/hoalibrary-v2/)
* [Musinekit](http://www.sensomusic.org/musinekit/en)
* [TouchOSC](https://hexler.net/software/touchosc)
* [Audiomulch](http://www.audiomulch.com/)
* [ofxDatGui](https://github.com/braitsch/ofxDatGui)
* [Luminosus](https://www.luminosus.org)
* [oui.js](https://github.com/wearekuva/oui)
* [nuklear](https://github.com/vurtun/nuklear)
* [dat.gui](http://workshop.chromeexperiments.com/examples/gui)
* [p5.gui](https://github.com/bitcraftlab/p5.gui)
* [controlp5](https://github.com/sojamo/controlp5)
* [Dear ImGui](https://github.com/ocornut/imgui)
* [nanogui](https://github.com/wjakob/nanogui)
* [Bach](http://www.bachproject.net/) slots
* [Open Stage Control](https://github.com/jean-emmanuel/open-stage-control)
* [ofxMightyUI](https://github.com/kritzikratzi/ofxMightyUI)
* [ofxAVUI](https://github.com/AVUIs/ofxAVUI)
* [ofxCvGui](https://github.com/elliotwoods/ofxCvGui)
* [quickcollider](https://github.com/jleben/quickcollider)
* [QtQuickVcp](https://github.com/qtquickvcp/QtQuickVcp)
* [FlatUI](https://github.com/obeezzy/FlatUI)
* [spatium](https://vimeo.com/52321647)
* [qml-color-picker](https://github.com/astorije/qml-color-picker)


