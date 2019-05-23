package SdkInterface;

import android.app.Activity;

import com.unity3d.player.UnityPlayer;

import org.json.JSONObject;

import java.io.IOException;
import java.util.Properties;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKBase {
    public String SDKName = "";

    public void Init(JSONObject json) {

    }

    public void CallBack(String content) {
        SdkInterface.SendMessage(content);
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
}
