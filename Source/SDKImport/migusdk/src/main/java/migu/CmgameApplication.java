package migu;

import android.app.Application;

/**
 * Created by GaiKai on 2018/4/13.
 */

public class CmgameApplication extends Application
{
    public void onCreate()
    {
        System.loadLibrary("megjb");
        super.onCreate();
    }
}
