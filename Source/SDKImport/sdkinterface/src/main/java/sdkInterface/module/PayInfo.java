package sdkInterface.module;

import org.json.JSONException;
import org.json.JSONObject;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.GoodsType;
import sdkInterface.define.StoreName;

public class PayInfo
{
    public String userID= "";
    public  String prepayID ="";
    public String goodsID= "";
    public String goodsName= "";
    public String goodsDescription= "";
    public GoodsType goodsType = GoodsType.NORMAL;
    public String orderID = "";
    public String internalOrderID = "";
    public float price = 0 ;
    public String currency = "";   //货币类型
    public String regionID = ""; //大区ID

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

            if(json.has(SDKInterfaceDefine.Pay_ParameterName_InternalOrderID))
            {
                info.internalOrderID = json.getString(SDKInterfaceDefine.Pay_ParameterName_InternalOrderID);
            }

            info.price =  Float.parseFloat(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            info.currency = json.getString(SDKInterfaceDefine.Pay_ParameterName_Currency);

            info.tag = json.getString(SDKInterfaceDefine.Tag);

            info.userID = json.getString(SDKInterfaceDefine.ParameterName_UserID);

            if(json.has(SDKInterfaceDefine.Pay_ParameterName_PrepayID)) {
                info.prepayID = json.getString(SDKInterfaceDefine.Pay_ParameterName_PrepayID);
            }

            if(json.has(SDKInterfaceDefine.Pay_ParameterName_RegionID))
            {
                info.regionID = json.getString(SDKInterfaceDefine.Pay_ParameterName_RegionID);
            }

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

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_PrepayID))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_PrepayID,prepayID);
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_InternalOrderID))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_InternalOrderID,internalOrderID);
            }

            //防止出错
            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_Receipt))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,"Null");
            }

            if(!json.has(SDKInterfaceDefine.Pay_ParameterName_RegionID))
            {
                json.put(SDKInterfaceDefine.Pay_ParameterName_RegionID,regionID);
            }
        }
        catch (Exception e)
        {
            SdkInterface.SendError("PayInfo ToJson Error " + e + " json:" + json.toString(),e);
        }
    }

    public JSONObject GenJSONObject()
    {
        JSONObject jo = new JSONObject();

        try {
            jo.put(SDKInterfaceDefine.ParameterName_UserID,userID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_PrepayID,prepayID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,goodsID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsName,goodsName);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsDescription,goodsDescription);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsType,goodsType);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_PrepayID,prepayID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,orderID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_InternalOrderID,internalOrderID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Currency,currency);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_RegionID,regionID);

            jo.put(SDKInterfaceDefine.Tag,tag);

        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jo;
    }

    ///自己创造一个订单号
    public static String CreateSelfReceipt(String playerID, StoreName storeName)
    {
       String result = playerID + "_" + storeName +"_"+ System.currentTimeMillis();
       return result;
    }

}
