package com.taptap;

import android.widget.Toast;

import com.tapsdk.bootstrap.Callback;
import com.tapsdk.bootstrap.TapBootstrap;
import com.tapsdk.bootstrap.account.TDSUser;
import com.tapsdk.bootstrap.exceptions.TapError;
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
            Client_token = GetProperties().getProperty("Client_token");
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


        TapConfig tdsConfig = new TapConfig.Builder()
                .withAppContext(GetCurrentActivity())  // Context 上下文
                .withClientId(Client_id)  // 开发者中心对应 Client ID
                .withClientToken(Client_token)  // 开发者中心对应 Client Token
                .withServerUrl(Server_url)  // 开发者中心 > 你的游戏 > 游戏服务 > 云服务 > 数据存储 > 服务设置 > 自定义域名 绑定域名
                .withRegionType(tapRegionType)  // TapRegionType.CN: 国内  TapRegionType.IO: 国外
                .build();
        TapBootstrap.init(GetCurrentActivity(), tdsConfig);

        } catch (Exception e) {
            SendError("TapTapSDK Init Error " + e,e);
        }
    }

    @Override
    public void Login(JSONObject json) {
        TDSUser.loginWithTapTap(GetCurrentActivity(), new Callback<TDSUser>() {
            @Override
            public void onSuccess(TDSUser resultUser) {
                Toast.makeText(GetCurrentActivity(), "succeed to login with Taptap.", Toast.LENGTH_SHORT).show();
                // 开发者可以调用 resultUser 的方法获取更多属性。
                String userId = resultUser.getObjectId();  // 用户唯一标识
                String avatar = (String) resultUser.get("avatar");  // 头像
                String nickName = (String) resultUser.get("nickname");  // 昵称

                CallBackLoginResult("TapTap",true,userId,"");
            }

            @Override
            public void onFail(TapError error) {
                Toast.makeText(GetCurrentActivity(), error.getMessage(), Toast.LENGTH_SHORT).show();
                CallBackLoginResult("TapTap",false,"",error.toString());
            }
        }, "public_profile");
    }

    @Override
    public void LoginOut(JSONObject json) {
        TDSUser.logOut();
    }
}
