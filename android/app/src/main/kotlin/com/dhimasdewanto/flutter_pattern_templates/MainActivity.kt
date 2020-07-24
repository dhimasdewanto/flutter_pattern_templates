package com.dhimasdewanto.flutter_pattern_templates

import android.content.Context
import android.os.BatteryManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.dhimasdewanto.flutter_pattern_templates/battery"
    private val METHOD = "get_battery_level"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        callBatteryChannel()
    }

    private fun callBatteryChannel() {
        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->

            if (call.method == METHOD) {
                val batteryLevel = getBatteryLevel()

                if (batteryLevel == -1) {
                    result.error("UNAVAILABLE", "Battery level not available.", null)
                    return@setMethodCallHandler
                }

                result.success(batteryLevel)
                return@setMethodCallHandler
            }

            result.notImplemented()
        }
    }

    private fun getBatteryLevel(): Int {
        val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    }
}
