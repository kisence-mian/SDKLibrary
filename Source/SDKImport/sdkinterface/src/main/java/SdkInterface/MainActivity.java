package SdkInterface;

import android.content.Intent;
import com.unity3d.player.UnityPlayerActivity;

public class MainActivity extends UnityPlayerActivity
{
    @Override  //这段代码非常重要，不加的话无法获取回调
    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        SdkInterface.onActivityResult(requestCode,resultCode,data);
    }
}
