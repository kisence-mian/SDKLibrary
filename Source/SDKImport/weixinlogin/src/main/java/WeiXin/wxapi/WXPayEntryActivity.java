package WeiXin.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import com.tencent.mm.opensdk.constants.ConstantsAPI;
import com.tencent.mm.opensdk.modelbase.BaseReq;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.openapi.IWXAPIEventHandler;

import org.json.JSONObject;

import sdkInterface.SDKInterfaceDefine;
import WeiXin.WeiXinSDK;
import sdkInterface.SdkInterface;
import sdkInterface.define.StoreName;

public class WXPayEntryActivity extends Activity implements IWXAPIEventHandler
{
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if(WeiXinSDK.api != null)
        {
            WeiXinSDK.api.handleIntent(getIntent(), this);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if(WeiXinSDK.api != null) {
            WeiXinSDK.api.handleIntent(intent, this);
        }
    }

    @Override
    public void onReq(BaseReq baseReq) {
        SdkInterface.SendLog("WX Pay onReq :transaction: " + baseReq.transaction + " openId :" + baseReq.openId);
    }

    @Override
    public void onResp(BaseResp baseResp) {

        SdkInterface.SendLog("WXPay onResp getType: " + baseResp.getType() + " transaction : " + baseResp.transaction + " openId " + baseResp.openId);
        try
        {
            if (baseResp.getType() == ConstantsAPI.COMMAND_PAY_BY_WX)
            {
                JSONObject jo = new JSONObject();
                jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Pay);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_InternalOrderID,baseResp.transaction);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,WeiXinSDK.orderID);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.WX.toString());
                jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, WeiXinSDK.payInfo.tag);

                if (baseResp.errCode == 0)
                {
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                }
                else
                {
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                }

                WeiXinSDK.payInfo.ToJson(jo);

                SdkInterface.SendMessage(jo);

                if (baseResp.errCode == 0) {
                    Toast.makeText(this, "WXPay Success!", Toast.LENGTH_SHORT).show();
                    finish();
                } else if (baseResp.errCode == -2) {
                    Toast.makeText(this, "WXPay Cancle!", Toast.LENGTH_SHORT).show();
                    finish();
                } else {
                    Toast.makeText(this, "WXPay Error", Toast.LENGTH_SHORT).show();
                    finish();
                }
            }
            else {
                finish();
            }
        }
        catch (Exception e)
        {
            SdkInterface.SendError("WXPay onResp error: "+e.toString(),e);
            finish();
        }
    }
}
