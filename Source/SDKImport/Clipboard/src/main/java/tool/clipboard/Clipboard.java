package tool;

import org.json.JSONObject;
import android.app.Activity;
import sdkInterface.IOther;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class Clipboard extends SDKBase implements IOther
{
    @Override
    public String[] GetFunctionName() {
        return new String[]{SDKInterfaceDefine.Other_FunctionName_CopyToClipboard,SDKInterfaceDefine.Other_FunctionName_CopyFromClipboard};
    }

    @Override
    public void Other(JSONObject json)
    {

        sdkInterface.SendLog("Clipboard " + json.toString());
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
            sdkInterface.SendError("Clipboard Error " + e.toString(),e);
        }
    }

    public static ClipboardManager clipboard = null;
    // 向剪贴板中添加文本
    public void copyTextToClipboard(final Context activity, final String content) throws Exception{

        sdkInterface.SendLog("Clipboard copyTextToClipboard" + json.toString());
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
        sdkInterface.SendLog("Clipboard getTextFromClipboard" + json.toString());
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

        sdkInterface.SendMessage(jo);
    }
}