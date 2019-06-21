package pay;

import com.iapppay.interfaces.callback.IPayResultCallback;
import com.iapppay.sdk.main.IAppPay;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.net.URLDecoder;

import sdkInterface.SDKBase;
import sdkInterface.IPay;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.StoreName;

public class IAppPaySDK extends SDKBase implements IPay
{
    String AppID = "";
    int ScreenType = 0;
    String Acid = "";

    PayCallBack callBack = new PayCallBack();

    @Override
    public void Init(JSONObject json)
    {
        try {
            AppID = GetProperties().getProperty("AppID");
            Acid = SdkInterface.GetProperties(SDKInterfaceDefine.FileName_ChannelProperties,SDKInterfaceDefine.PropertiesKey_ChannelName,"Android");
            ScreenType = StringToScreenType(GetProperties().getProperty("ScreenType","SENSOR_LANDSCAPE"));

            IAppPay.init(GetCurrentActivity(),ScreenType,AppID,Acid);

        } catch (Exception e) {
            SendError("IAppPaySDK Init Error " + e,e);
        }
    }

    int StringToScreenType(String screenType)
    {
        switch(screenType)
        {
            case "PORTRAIT":return IAppPay.PORTRAIT;
            case "LANDSCAPE":return IAppPay.LANDSCAPE;
            case "SENSOR_LANDSCAPE":return IAppPay.SENSOR_LANDSCAPE;
            default: return IAppPay.SENSOR_LANDSCAPE;
        }
    }

    @Override
    public void Pay(JSONObject json)
    {
        try {
            String prepayID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            String post = "transid=" + prepayID + "&appid=" + AppID;

            IAppPay.startPay(GetCurrentActivity(),post,callBack);
        }
        catch (Exception e)
        {
            SendError("IAppPaySDK Pay Error " + e,e);
        }
    }

    class PayCallBack implements IPayResultCallback
    {
        @Override
        public void onPayResult(int resultCode, String signvalue, String resultInfo)
        {
            try
            {
                SendLog("IAppPaySDK onPayResult resultCode ->" + resultCode + "<- sign value->"+signvalue + "<- ->" + resultInfo + "<-");
                if(resultCode == 0)
                {
                    String decode =  URLDecoder.decode(signvalue);
                    String[] json = decode.split("=");

                    SendLog("IAppPaySDK onPayResult decode ->" + decode + "<- ");
                    SendPayCallBack(true,json[1],resultInfo);
                }
            }
            catch (Exception e) {
                SendError("IAppPaySDK PayCallBack Error " + e,e);
            }
        }

        void SendPayCallBack(boolean success,String json,String info)
        {
            try {
                JSONObject result = new JSONObject(json);

                JSONObject jo = new JSONObject();
                jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Pay);

                jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,result.getString("waresid"));
                jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,result.getString("cporderid"));
                jo.put(SDKInterfaceDefine.Pay_ParameterName_Price,result.getString("money"));
                jo.put(SDKInterfaceDefine.Pay_ParameterName_Currency,result.getString("currency"));
                jo.put(SDKInterfaceDefine.Pay_ParameterName_CpOrderID,result.getString("transid"));
                jo.put(SDKInterfaceDefine.ParameterName_Content,info);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.IAppPay.toString());

                SdkInterface.SendMessage(jo);
            } catch (JSONException e)
            {
                SendError("SendPayCallBack Error " + e,e);
            }
        }
    }
}
