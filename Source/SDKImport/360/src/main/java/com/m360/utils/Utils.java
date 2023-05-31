package com.m360.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class Utils {
    // 判断网络是否可用
    public static boolean isNetAvailable(Context context) {
        try {
            ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (connectivity == null) {
                return false;
            }
            NetworkInfo[] networkInfos = connectivity.getAllNetworkInfo();
            if (networkInfos == null) {
                return false;
            }
            for (NetworkInfo networkInfo : networkInfos) {
                if (networkInfo.isConnectedOrConnecting()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable e) {
            return false;
        }
    }
    
	// 判断是否是横屏模式
	public static boolean isScreenLandscape(Context context) {
		if (context == null)
			return false;

		// 获取设置的配置信息
		Configuration config = context.getResources().getConfiguration();
		if (config == null)
			return false;

		if (config.orientation == Configuration.ORIENTATION_LANDSCAPE) {
			// 横屏
			return true;
		}

		return false;
	}
}
