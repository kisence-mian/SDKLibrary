package WeiXin.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.opensdk.constants.ConstantsAPI;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendAuth;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;
import org.json.JSONObject;

import SdkInterface.LoginPlatform;
import SdkInterface.SDKInterfaceDefine;
import SdkInterface.SdkInterface;
import WeiXin.WeiXinSDK;

public class WXEntryActivity extends Activity implements IWXAPIEventHandler
{
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        SdkInterface.SendLog("WXEntryActivity onCreate");
        super.onCreate(savedInstanceState);

        Intent myIntent = getIntent();
        myIntent.putExtra("wx_token_key", "com.tencent.mm.openapi.token");
        if(WeiXinSDK.api != null) {
            WeiXinSDK.api.handleIntent(myIntent, this);
        }

        SdkInterface.SendLog("WXEntryActivity onCreate finish");
    }

    public void onReq(BaseReq req) {
        SdkInterface.SendLog("WX onReq " + req.openId);
    }
    //系统中的微信作出相应后会调用这个函数
    public void onResp(BaseResp resp) {

        SdkInterface.SendLog("WX onResp " + resp.getType() + " code: " + resp.errCode);
        try {
            JSONObject jo = new JSONObject();
            if (resp.getType()== ConstantsAPI.COMMAND_SENDAUTH  ) //登录
            {
                SendAuth.Resp r = (SendAuth.Resp)resp;
                String token = r.code;

                //发回给SDKManager

                jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.WeiXin.toString());

                if(resp.errCode==BaseResp.ErrCode.ERR_OK)//成功
                {
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                    jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,token);
                }
                else  //失败
                {
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                    jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,token);
                }

                SdkInterface.SendMessage(jo);
            }
            //分享结果留空
            else if(resp.getType()==ConstantsAPI.COMMAND_SENDMESSAGE_TO_WX  ) //分享
            {
                jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Other);
                SdkInterface.SendMessage(jo);
            }

        } catch (Exception e) {
            SdkInterface.SendError("WX onResp error " + e.toString(),e);
        }
        finish();
    }
}
