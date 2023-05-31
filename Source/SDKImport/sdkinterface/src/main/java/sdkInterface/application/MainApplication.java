package sdkInterface.application;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import java.util.Properties;
import androidx.multidex.MultiDex;
import sdkInterface.SdkInterface;
import sdkInterface.tool.JavaUtils;

public class MainApplication extends Application
{
    public static MainApplication instance;
    static Properties SdkManifest;

    @Override
    public void onCreate() {
        super.onCreate();
        try {
            instance = this;

            Log.d("Unity","MainApplication onCreate" );

            if (SdkInterface.IsMultiDex())
            {
                Log.d("Unity","MainApplication IsMultiDex able" );
                MultiDex.install(this);
            }
            else
            {
                Log.d("Unity","MainApplication unable" );
            }

//            SdkInterface.InitSdkManifestProperty(this);
//            SdkInterface.Init();

            SdkInterface.OnApplicationCreate();

//            SdkInterface.OnCreate(null);

        } catch (Exception e) {
            Log.e("UNITY", "SdkInterface MainApplication onCreate error " + e);
        }
    }

    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);

        Log.d("Unity","MainApplication attachBaseContext" );

        SdkInterface.InitSdkManifestProperty(this);
        SdkInterface.Init();

        SdkInterface.AttachBaseContext(base);
    }
}
