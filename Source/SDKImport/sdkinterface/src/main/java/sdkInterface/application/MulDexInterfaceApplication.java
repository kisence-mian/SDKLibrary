package sdkInterface.application;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import androidx.multidex.MultiDex;
import androidx.multidex.MultiDexApplication;

public class MulDexInterfaceApplication extends MultiDexApplication {

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        Log.d("UNITY", "MulDexInterfaceApplication attachBaseContext: MultiDex.install start");
        MultiDex.install(this);
        Log.d("UNITY", "MulDexInterfaceApplication attachBaseContext: MultiDex.install end");
    }
}
