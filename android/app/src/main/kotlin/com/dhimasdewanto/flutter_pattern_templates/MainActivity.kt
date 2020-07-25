package com.dhimasdewanto.flutter_pattern_templates

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {


    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val batteryChannel = BatteryChannel(flutterEngine, this)
        val newActivityChannel = NewActivityChannel(flutterEngine, this)

        batteryChannel.callChannel()
        newActivityChannel.callChannel()
    }
}
