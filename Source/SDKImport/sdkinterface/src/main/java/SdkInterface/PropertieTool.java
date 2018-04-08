package SdkInterface;

import android.content.Context;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class PropertieTool
{
    public static Properties getProperties(Context c,String propertieName) throws IOException {
        Properties urlProps;
        Properties props = new Properties();

        //通过activity中的context攻取setting.properties的FileInputStream
        InputStream in = c.getAssets().open(propertieName + ".properties");
        props.load(in);

        urlProps = props;
        return urlProps;
    }
}
