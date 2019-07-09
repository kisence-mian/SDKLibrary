package sdkInterface.activity;

import android.content.Intent;
import com.unity3d.player.UnityPlayerActivity;

import sdkInterface.SdkInterface;

public class MainActivity extends UnityPlayerActivity
{
    @Override
    //获取回调并派发给SDKInterface
    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        SdkInterface.onActivityResult(requestCode,resultCode,data);
    }

    @Override
    protected void onDestroy() {

        SdkInterface.OnDestroy();
        super.onDestroy();
    }
}
