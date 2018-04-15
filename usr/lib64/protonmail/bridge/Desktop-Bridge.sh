#!/bin/bash
    dirname=/usr/lib/protonmail/bridge
    export LD_LIBRARY_PATH=$dirname/lib
    export QT_PLUGIN_PATH=$dirname/plugins
    export QML_IMPORT_PATH=$dirname/qml
    export QML2_IMPORT_PATH=$dirname/qml
    $dirname/Desktop-Bridge "$@"
    
