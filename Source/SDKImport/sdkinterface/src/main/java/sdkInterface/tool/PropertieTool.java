package sdkInterface.tool;

import android.content.Context;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class PropertieTool
{
    public static boolean PropertiesIsExist(Context c,String propertieName) {
        try {
            getProperties(c, propertieName);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static Properties TryGetProperties(Context c,String propertieName) {
        try {
            return getProperties(c, propertieName);
        } catch (Exception e) {
            return null;
        }
    }

    public static Properties getProperties(Context c,String propertieName) throws IOException {
        Properties urlProps;
        Properties props = new Properties();

        //通过activity中的context读取setting.properties的FileInputStream
        InputStream in = c.getAssets().open(propertieName + ".properties");
        props.load(in);

        urlProps = props;
        return urlProps;
    }
}
