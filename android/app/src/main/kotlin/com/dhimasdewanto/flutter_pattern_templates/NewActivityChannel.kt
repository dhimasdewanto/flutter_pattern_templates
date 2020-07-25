package com.dhimasdewanto.flutter_pattern_templates

import android.content.Intent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class NewActivityChannel(
        private val flutterEngine: FlutterEngine,
        private val flutterActivity: FlutterActivity
) {
    companion object {
        private const val ACTIVITY_CHANNEL = "com.dhimasdewanto.flutter_pattern_templates/activity"
        private const val ACTIVITY_METHOD = "new_activity"
    }

    fun callChannel() {
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, ACTIVITY_CHANNEL).setMethodCallHandler { call, result ->

            if (call.method == ACTIVITY_METHOD) {
                val intent = Intent(flutterActivity, SecondActivity::class.java)
                flutterActivity.startActivity(intent)
                result.success(true)
                return@setMethodCallHandler
            }

            result.notImplemented()
        }
    }
}