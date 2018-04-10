package sdk.funycat.com.migusdk;

import android.app.ListActivity;
import android.util.Log;
import com.unity3d.player.UnityPlayer;
import cn.cmgame.billing.api.GameInterface;

/**
 * Created by GaiKai on 2018/4/9.
 */

public class MiGuSDK
{
    public static void exit_game()
    {
        Log.d("Unity","recevice exit_game");

        GameInterface.exit(UnityPlayer.currentActivity.getApplicationContext(), new GameInterface.GameExitCallback() {

            @Override
            public void onConfirmExit() {
                Log.d("Unity","recevice onConfirmExit");
                UnityPlayer.UnitySendMessage("ApplicationManager","GameExit","");
//                this.finish();
                System.exit(0);
            }

            @Override
            public void onCancelExit() {
                Log.d("Unity","recevice onCancelExit");
                UnityPlayer.UnitySendMessage("ApplicationManager","GameCancel","");
            }
        });

    }

}
