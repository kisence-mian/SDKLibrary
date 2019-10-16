package com.huawei;

import android.widget.Toast;

import com.huawei.android.hms.agent.HMSAgent;
import com.huawei.android.hms.agent.common.handler.CheckUpdateHandler;
import com.huawei.android.hms.agent.common.handler.ConnectHandler;
import com.huawei.android.hms.agent.game.GameLoginSignUtil;
import com.huawei.android.hms.agent.game.handler.ICheckLoginSignHandler;
import com.huawei.android.hms.agent.game.handler.LoginHandler;
import com.huawei.hms.support.api.entity.game.GameUserData;
import com.huawei.updatesdk.UpdateSdkAPI;

import org.json.JSONObject;

import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILog;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;

public class HuaWeiSDK extends SDKBase implements ILogin, IPay {

    String AppID;
    String CpID;

    @Override
    public void Init(JSONObject json) {

        try
        {
            AppID = GetProperties().getProperty("AppID");
            CpID = GetProperties().getProperty("cpID");

            HMSAgent.init(GetCurrentActivity().getApplication(),GetCurrentActivity());

            //连接华为移动服务
            HMSAgent.connect(GetCurrentActivity(), new ConnectHandler() {
                @Override
                public void onConnect(int rst) {
                    SendLog ("HMS connect end:" + rst);

                    if(rst == -1001)
                    {
                        Toast.makeText(GetCurrentActivity(), "HuaWei Mobile Service is Not Install~", Toast.LENGTH_LONG).show();
                    }
                }
            });

            //检查应用是否需要更新
            HMSAgent.checkUpdate(GetCurrentActivity(), new CheckUpdateHandler() {
                @Override
                public void onResult(int rst) {
                    SendLog("check app update end:" + rst);
                }
            });
        }
        catch(Exception e)
        {
            SendError("HuaWeiSDK Init Exception" + e.toString(),e);
        }
    }

    @Override
    public void OnDestory() {
        HMSAgent.destroy();
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("game login: begin");
        HMSAgent.Game.login(new LoginHandler() {
            @Override
            public void onResult(int retCode, GameUserData userData) {
                if (retCode == HMSAgent.AgentResultCode.HMSAGENT_SUCCESS && userData != null) {
                    SendLog("game login: onResult: retCode=" + retCode + "  user=" + userData.getDisplayName() + "|" + userData.getPlayerId() + "|" + userData.getIsAuth() + "|" + userData.getPlayerLevel());
                    // 当登录成功时，此方法会回调2次
                    // 第1次：只回调playerId，userData.getIsAuth()为0，在要求快速登录时可以用此playerId登录
                    // 第2次：回调所有信息，userData.getIsAuth()为1，此时需要对登录结果进行验签
                    if (userData.getIsAuth() == 1) {

                        SendLog("HuaWeiSDK onResult getGameAuthSign:" + userData.getGameAuthSign() + " getPlayerId:" + userData.getPlayerId() + " getDisplayName:" + userData.getDisplayName());
                        // 如果需要对登录结果进行验签，建议发送请求到开发者服务器进行。
                        // 下面的示例代码为在客户端验签的示例代码，实际验签建议放在应用的服务端。
//                        GameLoginSignUtil.checkLoginSign(AppID, CpID, game_priv_key, game_public_key, userData, new ICheckLoginSignHandler() {
//                            @Override
//                            public void onCheckResult(String code, String resultDesc, boolean isCheckSuccess) {
//                                SendLog("game login check sign: onResult: retCode=" + code + "  resultDesc=" + resultDesc + "  isCheckSuccess=" + isCheckSuccess);
//                            }
//                        });
                        //返回登陆成功
                        try {
                            JSONObject jo = new JSONObject();
                            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,userData.getGameAuthSign() );
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei.toString());

                            CallBack(jo);
                        } catch (Exception e) {
                            e.printStackTrace();
                            SendError("UCSDK onLoginSucc",e);
                        }
                    }
                } else {
                    SendLog("game login: onResult: retCode=" + retCode);

                    if(retCode == -1001)
                    {
                        Toast.makeText(GetCurrentActivity(), "HuaWei Mobile Service is Not Install~", Toast.LENGTH_LONG).show();
                    }

                    //返回登陆失败
                    try {
                        JSONObject jo = new JSONObject();
                        jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                        jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,"" );
                        jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                        jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei.toString());

                        CallBack(jo);
                    } catch (Exception e) {
                        e.printStackTrace();
                        SendError("UCSDK onLoginSucc",e);
                    }
                }
            }

            @Override
            public void onChange() {
                //主子帐号登录发生变化时，需要重新登录
                SendLog("game login: login changed!");
                Login(null);
            }
        }, 1);
    }

    @Override
    public void Pay(JSONObject json)
    {
    }
}
