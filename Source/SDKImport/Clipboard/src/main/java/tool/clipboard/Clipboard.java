package tool.clipboard;

import org.json.JSONObject;
import android.app.Activity;
import sdkInterface.IOther;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

import com.unity3d.player.UnityPlayer;

public class Clipboard extends SDKBase implements IOther
{
    @Override
    public String[] GetFunctionName() {
        return new String[]{SDKInterfaceDefine.Other_FunctionName_CopyToClipboard,SDKInterfaceDefine.Other_FunctionName_CopyFromClipboard};
    }

    @Override
    public void Other(JSONObject json)
    {
        SdkInterface.SendLog("Clipboard " + json.toString());
        try {
            String functionName = json.getString(SDKInterfaceDefine.FunctionName);
            switch (functionName)
            {
                case SDKInterfaceDefine.Other_FunctionName_CopyToClipboard:
                    copyTextToClipboard(GetCurrentActivity(),json.getString(SDKInterfaceDefine.Other_ParameterName_Content));
                    break;
                case SDKInterfaceDefine.Other_FunctionName_CopyFromClipboard:
                    getTextFromClipboard();
                break;
            }
        }
        catch (Exception e)
        {
            SdkInterface.SendError("Clipboard Error " + e.toString(),e);
        }
    }

    public static ClipboardManager clipboard = null;
    // 向剪贴板中添加文本
    public void copyTextToClipboard(final Context activity, final String content) throws Exception{

        SdkInterface.SendLog("Clipboard copyTextToClipboard " + content);
        new Thread(new Runnable() {
            @Override
            public void run() {
                Looper.prepare();
                Handler m_handler = new Handler() {
                    public void handleMessage(Message msg) {
                        clipboard = (ClipboardManager) activity.getSystemService(Activity.CLIPBOARD_SERVICE);
                        ClipData textCd = ClipData.newPlainText("data", content);
                        clipboard.setPrimaryClip(textCd);
                    }
                };
                Message message = new Message();
                m_handler.sendMessage(message);
                Looper.loop();
            }
        }).start();
    }
    // 从剪贴板中获取文本
    public void getTextFromClipboard() throws Exception {
        SdkInterface.SendLog("Clipboard getTextFromClipboard" );
        String content = "";
        if (clipboard != null && clipboard.hasPrimaryClip() && clipboard.getPrimaryClipDescription().hasMimeType(ClipDescription.MIMETYPE_TEXT_PLAIN)) {
            ClipData cdText = clipboard.getPrimaryClip();
            ClipData.Item item = cdText.getItemAt(0);
            content = item.getText().toString();
        }

        JSONObject jo = new JSONObject();
        jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Other);
        jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.Other_FunctionName_CopyFromClipboard);
        jo.put(SDKInterfaceDefine.Other_ParameterName_Content,content);

        SdkInterface.SendMessage(jo);
    }


}