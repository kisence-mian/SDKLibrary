package com.xindong.antiaddictionkit;
import android.util.Log;
import android.widget.Switch;

import com.antiaddiction.sdk.AntiAddictionKit;
import com.antiaddiction.sdk.utils.LogUtil;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

import sdkInterface.IRealName;
import sdkInterface.SDKBase;
import sdkInterface.SDKCommunication;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.RealNameStatus;


public class RealName extends SDKBase implements IRealName {

    final String Tag = "===xindong RealName==";
    private AntiAddictionKit.AntiAddictionCallback protectCallBack;

    private String userID="";
    private boolean isAdult = true;
    private RealNameStatus realNameStatus = RealNameStatus.NotRealName;

    public void Init(JSONObject json) {
        Log.d(Tag,"init");
        protectCallBack = new AntiAddictionKit.AntiAddictionCallback() {
            @Override
            public void onAntiAddictionResult(int resultCode, String msg) {
                switch (resultCode) {
                    case AntiAddictionKit.CALLBACK_CODE_PAY_NO_LIMIT: SDKCommunication.Send2C_PayLimitResult(RealName.this,false,payAmount,Tag); break; //支付受限制
                    case AntiAddictionKit.CALLBACK_CODE_SWITCH_ACCOUNT: SDKLogout(); break;//切换账号
                    case AntiAddictionKit.CALLBACK_CODE_PAY_LIMIT:SDKCommunication.Send2C_PayLimitResult(RealName.this,true,payAmount,Tag);break;//支付不受限制
                    case AntiAddictionKit.CALLBACK_CODE_REAL_NAME_SUCCESS: OnRealNameCallBack(true);break;//实名成功 （openRealName成功调用后回调）
                    case AntiAddictionKit.CALLBACK_CODE_REAL_NAME_FAIL: OnRealNameCallBack(false);break;//实名失败 （openRealName失败后回调）
                    case AntiAddictionKit.CALLBACK_CODE_USER_TYPE_CHANGED: OnRealNameCallBack(true);break;//实名状态发生变化
                    case AntiAddictionKit.CALLBACK_CODE_TIME_LIMIT:break;//时间受限
                }
            }
        };

        LogUtil.setIsDebug(true);
        AntiAddictionKit.resetFunctionConfig(true,true,true);
        AntiAddictionKit.init(GetCurrentActivity(),protectCallBack);
    }

    @Override
    public RealNameStatus GetRealNameType() {
        RealNameStatus result = RealNameStatus.NotNeed;
        int userType = AntiAddictionKit.getUserType(userID);

        Log.d(Tag,"getUserType: " + userType);
        switch(userType)
        {
            case -1:
            case 0:
                result = RealNameStatus.NotRealName; //未实名制
                isAdult = false;
                break;
            case 4:
                result = RealNameStatus.IsRealName; //实名制 成人
                isAdult = true;
                break;
            default:
                result = RealNameStatus.IsRealName; //实名制 未成年
                isAdult = false;
                break;
        }
        realNameStatus = result;
        return result;

    }

    //通知游戏逻辑退出登录
    public void SDKLogout()
    {
        Log.d(Tag,"SDKLogout");
        SDKCommunication.Send2C_RealNameLogout(RealName.this);
    }

    @Override
    public boolean IsAdult() {
        Log.d(Tag,"IsAdult:"+ isAdult);
        return isAdult;
    }

    @Override
    public void OnLogin(JSONObject json) {
        try {
            userID = json.getString(SDKInterfaceDefine.ParameterName_UserID);
            Log.d(Tag,"OnLogin:"+ userID);
            AntiAddictionKit.login(userID,0);
            OnRealNameCallBack(true);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void OnLogout() {
        Log.d(Tag,"OnLogout:");
        userID = "";
        AntiAddictionKit.logout();
    }

    @Override
    public void StartRealNameAttestation() {
        Log.d(Tag,"StartRealNameAttestation");
        AntiAddictionKit.openRealName();
    }

    @Override
    public int GetTodayOnlineTime() {
        return 0;
    }

    int payAmount = 0; //本次支付金额
    @Override
    public void CheckPayLimit(JSONObject json) {
        try {
            payAmount = Integer.parseInt(json.getString(SDKInterfaceDefine.RealName_ParameterName_PayAmount));
            Log.d(Tag,"CheckPayLimit:" + payAmount);
            AntiAddictionKit.checkPayLimit(payAmount);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void LogPayAmount(JSONObject json) {
        try {
            int l_payAmount = Integer.parseInt(json.getString(SDKInterfaceDefine.RealName_ParameterName_PayAmount));
            Log.d(Tag,"LogPayAmount:" + l_payAmount);
            AntiAddictionKit.paySuccess(l_payAmount);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void OnResume() {
        super.OnResume();
        AntiAddictionKit.onResume();
    }

    @Override
    public void OnStop() {
        super.OnStop();
        AntiAddictionKit.onStop();
    }


    //实名认证完成回调
    private void OnRealNameCallBack(boolean success)
    {
        SDKCommunication.Send2C_RealNameResult(RealName.this,GetRealNameType(),IsAdult());
        Log.d(Tag,"OnRealName: "+ success +" realNameStatus: " + realNameStatus + " isAdult:  " + isAdult);

    }
}
