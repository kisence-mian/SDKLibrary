package sdkInterface.module;

import org.json.JSONObject;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.GoodsType;

public class PayInfo
{
    public String userID= "";
    public String goodsID= "";
    public String goodsName= "";
    public String goodsDescription= "";
    public GoodsType goodsType ;
    public String orderID = "";
    public float price ;
    public String currency = "";   //货币类型

    public String tag = "";

    public static PayInfo FromJson(JSONObject json)
    {
        try
        {
            PayInfo info = new PayInfo();

            info.goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            info.goodsName = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsName);
            info.goodsType = GoodsType.valueOf(json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsType));
            info.orderID = json.getString(SDKInterfaceDefine.Pay_ParameterName_OrderID);
            info.price =  Float.parseFloat(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            info.currency = json.getString(SDKInterfaceDefine.Pay_ParameterName_Currency);

            info.tag = json.getString(SDKInterfaceDefine.Tag);

            info.userID = json.getString(SDKInterfaceDefine.ParameterName_UserID);

            return info;
        }
        catch (Exception e)
        {
            SdkInterface.SendError("PayInfo FromJson Error " + e + " json:" + json.toString(),e);
            return null;
        }
    }

    public void ToJson(JSONObject json)
    {
        try
        {
            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_GoodsID))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,goodsID);
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_GoodsName))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_GoodsName,goodsName);
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_GoodsType))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_GoodsType,goodsType);
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_OrderID))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,orderID);
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_Price))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_Price,price);
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_Currency))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_Currency,currency);
            }

            //防止出错
            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_Receipt))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,"Null");
            }
        }
        catch (Exception e)
        {
            SdkInterface.SendError("PayInfo ToJson Error " + e + " json:" + json.toString(),e);
        }
    }
}
