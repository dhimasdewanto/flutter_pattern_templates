package com.dhimasdewanto.flutter_pattern_templates

import android.content.Context
import android.content.Intent
import android.os.BatteryManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    companion object {
        private const val BATTERY_CHANNEL = "com.dhimasdewanto.flutter_pattern_templates/battery"
        private const val BATTERY_METHOD = "get_battery_level"

        private const val ACTIVITY_CHANNEL = "com.dhimasdewanto.flutter_pattern_templates/activity"
        private const val ACTIVITY_METHOD = "new_activity"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        callBatteryChannel()
        callNewActivityChannel()
    }

    private fun callNewActivityChannel() {
        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, ACTIVITY_CHANNEL).setMethodCallHandler { call, result ->

            if (call.method == ACTIVITY_METHOD) {
                val intent = Intent(this, SecondActivity::class.java)
                startActivity(intent)
                result.success(true)
                return@setMethodCallHandler
            }

            result.notImplemented()
        }
    }

    private fun callBatteryChannel() {
        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, BATTERY_CHANNEL).setMethodCallHandler { call, result ->

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
        val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
    }
}
