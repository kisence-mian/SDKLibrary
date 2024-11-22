package WeiXin;

import android.widget.Toast;

import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.modelpay.PayReq;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.unity3d.player.UnityPlayer;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.IOException;
import sdkInterface.*;
import sdkInterface.define.LoginPlatform;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.module.PayInfo;

public class WeiXinSDK extends SDKBase implements ILogin,IPay,IShare,IOther
{
    public static PayInfo payInfo;
    public static  String AppID = "";
    public static  String AppSecret ="";
    public static  String MchID ="";
    public static String orderID;

    public static IWXAPI api;

    @Override
    public void Init(JSONObject json) {

        try {
            AppID = GetProperties().getProperty("AppID");
            AppSecret = GetProperties().getProperty("AppSecret");
            MchID = GetProperties().getProperty("MchID");

            api = WXAPIFactory.createWXAPI(UnityPlayer.currentActivity, WeiXinSDK.AppID);
            api.registerApp(AppID);
            SdkInterface.SendLog("WeiXinSDK Init: AppID " + AppID + " AppSecret " + AppSecret);

        } catch (IOException e)
        {
            SdkInterface.SendError("WeiXinSDK Init Error" + e.toString(),e);
        }
    }

    @Override
    public void Login(JSONObject json)
    {
        SdkInterface.SendLog("WeiXinSDK LogLogin 1 AppID " + AppID + " AppSecret " + AppSecret);

        if(api.isWXAppInstalled())
        {
            SendAuth.Req req = new SendAuth.Req();
            req.scope = "snsapi_userinfo";
            req.state = "wechat_sdk_demo_test";
            api.sendReq(req);
        }
        else
        {
            Toast.makeText(GetCurrentActivity(), "WeChat Not Install~", Toast.LENGTH_LONG).show();

            SdkInterface.SendLog("Not Install WeChat !");
            JSONObject jo = new JSONObject();
            try {
                jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.WeiXin.toString());
                jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,"");
                jo.put(SDKInterfaceDefine.ParameterName_Error,"Not Install WeChat");

                SdkInterface.SendMessage(jo);
            }
            catch (JSONException e) {
                SdkInterface.SendError("LogLogin error:" + e.toString(),e);
            }
        }
        SdkInterface.SendLog("WeiXinSDK LogLogin 3 ");
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    // region pay

    @Override
    public void Pay(JSONObject json)  {
        SendLog("WX Pay " + json.toString());
        try {
            //
            if(!api.isWXAppInstalled())
            {
                Toast.makeText(GetCurrentActivity(), "WeChat Not Install~", Toast.LENGTH_LONG).show();

                SdkInterface.SendLog("Not Install WeChat !");
                JSONObject jo = new JSONObject();
                try {
                    jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Pay);
                    jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnPay);
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                    jo.put(SDKInterfaceDefine.ParameterName_Error,"Not Install WeChat");

                    SdkInterface.SendMessage(jo);
                }
                catch (JSONException e) {
                    SdkInterface.SendError("LogLogin error:" + e.toString(),e);
                }
            }
            else {
                payInfo = PayInfo.FromJson(json);
                orderID = payInfo.orderID;

                SendLog("WX Pay PrepayID :" + orderID);

                PayReq request = new PayReq();
                request.appId = WeiXinSDK.AppID;
                request.partnerId = MchID;
                request.prepayId = orderID;
                request.packageValue = "Sign=WXPay";
                request.nonceStr = "111";
                request.timeStamp = "222";
                request.sign = "333";
                api.sendReq(request);
            }

        } catch (Exception e) {
            SendError("WX Pay Error " + e.toString(),e);
        }
    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    @Override
    public boolean IsReSendPay() {
        return false;
    }

    @Override
    public void GetGoodsInfo(JSONObject json) {

    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    // endregion

    @Override
    public void Share(JSONObject json,String thumbImage,String image) {

    }

    @Override
    public void Other(JSONObject json) {

    }

    @Override
    public String[] GetFunctionName() {
        return new String[]{};
    }


}
