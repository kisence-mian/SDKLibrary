package sdkInterface;

import android.app.Activity;
import android.content.Intent;

import com.unity3d.player.UnityPlayer;

import org.json.JSONObject;

import java.io.IOException;
import java.util.Properties;

import sdkInterface.tool.ActResultRequest;
import sdkInterface.tool.PropertieTool;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKBase {
    public String SDKName = "";

    public void Init(JSONObject json) {

    }

    public void OnAppplicationQuit(JSONObject json) { }

    public void OnCreate() { }

    public void OnStart() { }

    public void OnRestart() { }

    public void OnResume() { }

    public void OnPause() { }

    public void OnStop() { }

    public void OnNewIntent(Intent intent) { }

    public void OnDestory() { }

    public void OnActivityResult(int requestCode, int resultCode, Intent data){}

    public void CallBack(String content) {
        SdkInterface.SendMessage(content);
    }
    public void CallBack(JSONObject jo) {
        SdkInterface.SendMessage(jo);
    }

    public void SendLog(String content) {
        SdkInterface.SendLog(content);
    }

    public void SendError(String content, Exception e) {
        SdkInterface.SendError(content, e);
    }

    public Properties GetProperties() throws IOException {
        return PropertieTool.getProperties(SdkInterface.GetContext(),SDKName);
    }
    public Activity GetCurrentActivity()
    {
        return UnityPlayer.currentActivity;
    }

    public void StartForResult(Intent intent, ActResultRequest.Callback callback)
    {
        try
        {
            SdkInterface.actResultRequest.startForResult(intent,callback);
        }catch (Exception e)
        {
            SendError("StartForResult" + e.toString(),e);
        }
    }
}
