package sdkInterface.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;


import com.unity3d.player.UnityPlayerActivity;

import androidx.multidex.MultiDex;
import sdkInterface.SdkInterface;

public class MainActivity extends UnityPlayerActivity
{
    public static Context instance;
    @Override
    //获取回调并派发给SDKInterface
    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        SdkInterface.onActivityResult(requestCode,resultCode,data);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        instance = this;
        SdkInterface.OnCreate();
        MultiDex.install(this);
    }

    @Override
    protected void onStart() {
        super.onStart();
        SdkInterface.OnStart();
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        SdkInterface.OnRestart();
    }

    @Override
    protected void onStop() {
        super.onStop();
        SdkInterface.OnStop();
    }

    @Override
    protected void onPause() {
        super.onPause();
        SdkInterface.OnPause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        SdkInterface.OnResume();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        SdkInterface.OnDestroy();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    //适配安卓6.0动态权限的生命周期方法
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode,permissions,grantResults);
        SdkInterface.OnRequestPermissionsResult(requestCode,permissions,grantResults);
    }
}
