package tool.clipboard;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

import com.unity3d.player.UnityPlayer;

public class ClipboardTool {

    public static ClipboardManager clipboard = null;
    public static void CopyTextToClipboard(final String content)
    {
        Log.d("Unity","ClipboardTool CopyTextToClipboard " + content);
        new Thread(new Runnable() {
            @Override
            public void run() {
                Looper.prepare();

                Log.d("Unity","ClipboardTool CopyTextToClipboard 2 ->" + content);

                Handler m_handler = new Handler() {
                    public void handleMessage(Message msg) {
                        clipboard = (ClipboardManager) UnityPlayer.currentActivity.getSystemService(Activity.CLIPBOARD_SERVICE);
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
}
