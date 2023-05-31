
package com.m360.utils;

import android.content.Context;
import android.util.Log;

/***
 * 此类使用Access Token，请求您的应用服务器，获取QihooUserInfo。
 * （注：应用服务器由360SDK使用方自行搭建，用于和360服务器进行安全交互，具体协议请查看文档中，服务器端接口）。
 */
public class QihooUserInfoTask {

    private static final String TAG = "QihooUserInfoTask";

    /**
     * 应用服务器为应用客户端提供的接口Url，用于通过AccessToken获取QihooUserInfo
     * (这是DEMO专用的URL，请使用方自己搭建自己的应用服务器，此服务器只认DEMO的AppKey。)
     */
    private static final String DEMO_APP_SERVER_URL_GET_USER = "http://sdbxapp.msdk.mobilem.360.cn/mobileSDK/api.php?type=get_userinfo_by_token&debug=1&token=";


    private SdkHttpTask sSdkHttpTask;

    public static QihooUserInfoTask newInstance(){
        return new QihooUserInfoTask();
     }

    public void doRequest(Context context, String accessToken, String appKey,
            final QihooUserInfoListener listener) {

        // DEMO使用的应用服务器url仅限DEMO示范使用，禁止正式上线游戏把DEMO应用服务器当做正式应用服务器使用，请使用方自己搭建自己的应用服务器。
        String url = DEMO_APP_SERVER_URL_GET_USER + accessToken + "&appkey=" + appKey;

        // 如果存在，取消上一次请求
        if (sSdkHttpTask != null) {
            sSdkHttpTask.cancel(true);
        }

        // 新请求
        sSdkHttpTask = new SdkHttpTask(context);
        sSdkHttpTask.doGetOnExecutor(new SdkHttpListener() {

            @Override
            public void onResponse(String response) {
                Log.d(TAG, "onResponse=" + response);

                // QihooUserInfo.parseJson这个解析的是demo测试服务器返回的数据格式。
                // 游戏更换url后需要按新的格式解析response字符串。不能直接用这个。
                QihooUserInfo userInfo = QihooUserInfo.parseJson(response);
                listener.onGotUserInfo(userInfo);
                sSdkHttpTask = null;
            }

            @Override
            public void onCancelled() {
                listener.onGotUserInfo(null);
                sSdkHttpTask = null;
            }

        }, url);

//        Log.d(TAG, "url=" + url);
    }

    public boolean doCancel() {
        return (sSdkHttpTask != null) ? sSdkHttpTask.cancel(true) : false;
    }

}
