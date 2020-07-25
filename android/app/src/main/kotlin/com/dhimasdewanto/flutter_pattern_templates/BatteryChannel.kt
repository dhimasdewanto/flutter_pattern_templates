package com.dhimasdewanto.flutter_pattern_templates

import android.content.Context
import android.os.BatteryManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class BatteryChannel(
        private val flutterEngine: FlutterEngine,
        private val flutterActivity: FlutterActivity
) {
    companion object {
        private const val BATTERY_CHANNEL = "com.dhimasdewanto.flutter_pattern_templates/battery"
        private const val BATTERY_METHOD = "get_battery_level"
    }

    fun callChannel() {
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, BATTERY_CHANNEL).setMethodCallHandler { call, result ->

            if (call.method == BATTERY_METHOD) {
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
        val batteryManager = flutterActivity.getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    }

}