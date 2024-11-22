package com.taptap;

import android.os.Looper;
import android.widget.Toast;

import com.tapsdk.bootstrap.Callback;
import com.tapsdk.bootstrap.TapBootstrap;
import com.tapsdk.bootstrap.account.TDSUser;
import com.tapsdk.bootstrap.exceptions.TapError;
import com.taptap.sdk.AccountGlobalError;
import com.taptap.sdk.TapLoginHelper;
import com.taptap.sdk.wrapper.TDSLoginService;
import com.tds.common.entities.AccessToken;
import com.tds.common.entities.TapConfig;
import com.tds.common.models.TapRegionType;

import org.json.JSONObject;

import java.io.IOException;

import sdkInterface.ILogin;
import sdkInterface.SDKBase;

public class TapTapSDK extends SDKBase implements ILogin {

    String Client_id;
    String Client_token;
    String Server_url;
    int tapRegionType = TapRegionType.CN;

    @Override
    public void Init(JSONObject json) {

        try {
            Client_id = GetProperties().getProperty("Client_ID");
//            Client_token = GetProperties().getProperty("Client_token");
            Server_url = GetProperties().getProperty("Server_Url");

            if(GetProperties().getProperty("RegionType").equals(("IO")))
            {
                tapRegionType = TapRegionType.IO;
            }
            else
            {
                tapRegionType = TapRegionType.CN;
            }

            SendLog("Client_id >" + Client_id + "<");
            SendLog("Client_token >" + Client_token + "<");
            SendLog("Server_url >" + Server_url + "<");
            SendLog("RegionType >" + tapRegionType + "<");

            SendLog("Init pid >" + android.os.Process.myTid() );
            SendLog("Init thread id >"+ Thread.currentThread().getId() + " name=" + Thread.currentThread().getName());
            SendLog("Init main thread id= "+ (Looper.getMainLooper()).getThread().getId() + " name="+(Looper.getMainLooper()).getThread().getName());

            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {

                    SendLog("Init run pid >" + android.os.Process.myTid() );
                    SendLog("Init run thread id >"+ Thread.currentThread().getId() + " name=" + Thread.currentThread().getName());
                    SendLog("Init run main thread id= "+ (Looper.getMainLooper()).getThread().getId() + " name="+(Looper.getMainLooper()).getThread().getName());

                    TapLoginHelper.init(GetCurrentActivity(), Client_id);

                    // 实例化监听
                    TapLoginHelper.TapLoginResultCallback loginCallback = new TapLoginHelper.TapLoginResultCallback() {

                        @Override
                        public void onLoginSuccess(com.taptap.sdk.AccessToken accessToken) {

                            SendLog("TapTapSDK Log  onLoginSuccess " + accessToken);
                            String typeString = accessToken.kid+ "|" + accessToken.access_token + "|" + accessToken.mac_key;
                            CallBackLoginResult("TapTap",true,typeString,"");
                        }

                        @Override
                        public void onLoginCancel() {
                            SendLog("TapTapSDK Log  onLoginCancel " );
                            CallBackLoginResult("TapTap",false,"","Cancel");
                        }


                        @Override
                        public void onLoginError(AccountGlobalError globalError) {
                            SendLog("TapTapSDK Log  onLoginError " +globalError);
                            CallBackLoginResult("TapTap",false,"",globalError.toString());
                        }
                    };

                    // 注册监听
                    TapLoginHelper.registerLoginCallback(loginCallback);

                    SendLog("TapTapSDK init finish ");
                }
            });
        } catch (Exception e) {
            SendError("TapTapSDK Init Error " + e,e);
        }
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("TapTap login 1 >" + GetCurrentActivity() + "<");

        SendLog("LogLogin pid >" + android.os.Process.myTid() );
        SendLog("LogLogin thread id >"+ Thread.currentThread().getId() + " name=" + Thread.currentThread().getName());
        SendLog("LogLogin main thread id= "+ (Looper.getMainLooper()).getThread().getId() + " name="+(Looper.getMainLooper()).getThread().getName());

        try
        {
            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("UI主线程去执行 " );

                    // 登录
                    TapLoginHelper.startTapLogin(GetCurrentActivity(), TapLoginHelper.SCOPE_PUBLIC_PROFILE);

                    SendLog("TapTap login finish");
                }
            });

        }catch (Exception e)
        {
            SendError("TapTap login error ",e);
        }
    }

    @Override
    public void LoginOut(JSONObject json) {
        TDSUser.logOut();
    }
}
