package tool;

import android.Manifest;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.support.v4.content.FileProvider;
import android.webkit.URLUtil;

import org.json.JSONObject;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;
import SdkInterface.SDKBase;
import SdkInterface.IOther;
import SdkInterface.SDKInterfaceDefine;
import SdkInterface.SdkInterface;
import SdkInterface.tool.ActResultRequest;

import static android.app.Activity.RESULT_OK;

public class HotUpdate extends SDKBase implements IOther
{
    private String currentFilePath = "" ;
    File file = new File(Environment.getExternalStorageDirectory()+"");
    private final String fileEx = "InstallAPKCache";
    private final String fileNa = ".apk";
    String downLoadURL = "";

    @Override
    public void Other(JSONObject json)
    {
        try {
            SdkInterface.SendLog("HotUpdate Other -> " + json.toString());

            String functionName = json.getString(SDKInterfaceDefine.FunctionName);
            switch (functionName)
            {
                case SDKInterfaceDefine.Other_FunctionName_DownloadAPK:
                    DownloadAPK(json);
                    break;
                case SDKInterfaceDefine.Other_FunctionName_GetAPKSize:
                    GetAPKSize(json);
                    break;
            }
        } catch (Exception e) {
            SdkInterface.SendError("HotUpdate error "+ e.toString(),e);
        }
    }

    void DownloadAPK(JSONObject json) throws Exception {

        //如果传入了值则使用传入值
        if(json.has(SDKInterfaceDefine.Other_ParameterName_DownloadURL))
        {
            downLoadURL = json.getString(SDKInterfaceDefine.Other_ParameterName_DownloadURL);
        }
        //否则读取配置
        else
        {
            downLoadURL = GetProperties().getProperty("DownloadURL");
        }

        SdkInterface.SendLog("DownloadAPK Other -> " + downLoadURL);

        getFile(downLoadURL);
    }

    void GetAPKSize(JSONObject json)throws Exception
    {
        //如果传入了值则使用传入值
        if(json.has(SDKInterfaceDefine.Other_ParameterName_DownloadURL))
        {
            downLoadURL = json.getString(SDKInterfaceDefine.Other_ParameterName_DownloadURL);
        }
        //否则读取配置
        else
        {
            downLoadURL = GetProperties().getProperty("DownloadURL");
        }

        /* 取得URL */
        URL myURL = new URL(downLoadURL);
        /* 创建连接 */
        HttpURLConnection conn = (HttpURLConnection) myURL.openConnection();
        conn.setRequestMethod("GET");
        int total = conn.getContentLength();

        SendAPKSize(total);
    }

    void SendAPKSize(int total)
    {
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Other);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Other_FunctionName_GetAPKSize);
            jo.put(SDKInterfaceDefine.Other_ParameterName_Size, total);
            SdkInterface.SendMessage(jo);

        } catch (Exception e) {
            SdkInterface.SendError("SendAPKSize error: " + e.getMessage(), e);
        }
    }

    /* 处理下载URL文件自定义函数 */
    private void getFile(final String strPath) {
        try {
            if (strPath.equals(currentFilePath)) {
                getDataSource(strPath);
            }
            else
            {
                currentFilePath = strPath;
                Runnable r = new Runnable() {
                    public void run() {
                        try {
                            getDataSource(strPath);
                        } catch (Exception e) {
                            SdkInterface.SendError("getFile Error " + e.toString(),e);
                        }
                    }
                };
                new Thread(r).start();
            }

        } catch (Exception e) {
            SdkInterface.SendError("getFile Error " + e.toString(),e);
        }
    }

    /* 取得远程文件 */
    private void getDataSource(String url) throws Exception {
        if (!URLUtil.isNetworkUrl(url)) {
            SdkInterface.SendLog("错误的URL " + url);
        }
        else {
            InputStream is = null;
            RandomAccessFile savedFile = null;
            File file = null;
            try {

                /* 取得URL */
                URL myURL = new URL(url);
                /* 创建连接 */
                HttpURLConnection conn = (HttpURLConnection) myURL.openConnection();
                conn.setRequestMethod("GET");
                is = conn.getInputStream();

                if (conn == null)
                    throw new RuntimeException("HttpURLConnection is null");

                if (is == null)
                    throw new RuntimeException("stream is null");

                /* 创建临时文件 */
                File myTempFile = File.createTempFile(fileEx, fileNa, file);
                /* 取得临时文件路径 */
                String currentTempFilePath = myTempFile.getAbsolutePath();
                /* 将文件写入暂存盘 */
                FileOutputStream fos = new FileOutputStream(myTempFile);

                int total = conn.getContentLength();
                int current = 0;

                byte buf[] = new byte[1024];
                do {
                    int numbed = is.read(buf);
                    current += numbed;
                    if (numbed <= 0)
                        break;

                    SendProgress(total,current,false);
                    fos.write(buf, 0, numbed);
                } while (true);

                SendProgress(total,current,true);

                /* 打开文件进行安装 */
                openFile(myTempFile);

                is.close();

            } catch (Exception ex) {
                SdkInterface.SendError("error: " + ex.toString(), ex);
            }
        }
    }

    void SendProgress(int total,int current,boolean success)
    {
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Other);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Other_FunctionName_DownloadAPK);
            jo.put(SDKInterfaceDefine.Other_ParameterName_TotalProgress, total);
            jo.put(SDKInterfaceDefine.Other_ParameterName_Progress, current);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            SdkInterface.SendMessage(jo);

        } catch (Exception e) {
            SdkInterface.SendError("error: " + e.getMessage(), e);
        }
    }

    /**
     * 在手机上打开文件
     */
    private void openFile(final File f) {
        if (Build.VERSION.SDK_INT >= 26)
        {
            boolean b = GetCurrentActivity().getPackageManager().canRequestPackageInstalls();
            if (b) {
                InstallAPK(f);
            } else {

                Uri packageURI = Uri.parse("package:"+ GetCurrentActivity().getPackageName());
                Intent intent = new Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,packageURI);

                StartForResult(intent,new ActResultRequest.Callback() {
                    @Override
                    public void onActivityResult(int requestCode,int resultCode, Intent data) {
                        SendLog("申请权限 resultCode " + resultCode);

                        if (resultCode == RESULT_OK ) {
                            InstallAPK(f);
                        }
                    }
                });
            }
        }
        else {
                InstallAPK(f);
        }
    }

    void InstallAPK(File f)
    {
        Intent intent = new Intent(android.content.Intent.ACTION_VIEW);

        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);//临时授权
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {

            SendLog("openFile A");
            /* 设置intent的file与MimeType */
            String type = "application/vnd.android.package-archive";
            Uri contentUri = FileProvider.getUriForFile(GetCurrentActivity(),  GetCurrentActivity().getPackageName() + ".fileprovider",f);
            intent.setDataAndType(contentUri, type);
        } else {
            SendLog("openFile B");
            intent.setDataAndType(Uri.fromFile(f), "application/vnd.android.package-archive");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        }

        StartForResult(intent, new ActResultRequest.Callback() {
            @Override
            public void onActivityResult(int requestCode,int resultCode, Intent data) {
                SendLog("StartForResult resultCode " + resultCode);
            }
        });
    }

    @Override
    public String[] GetFunctionName() {
        return new String[]{SDKInterfaceDefine.Other_FunctionName_DownloadAPK,SDKInterfaceDefine.Other_FunctionName_GetAPKSize};
    }
}
