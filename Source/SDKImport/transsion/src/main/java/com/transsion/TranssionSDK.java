package com.transsion;

import com.transsion.gamead.AdHelper;
import com.transsion.gamead.AdInitializer;
import com.transsion.gamead.GameAdDisplayCallback;
import com.transsion.gamead.GameRewardItem;
import com.transsion.gamead.GameRewardedAdCallback;
import com.transsion.gamead.GameRewardedAdLoadCallback;
import com.transsion.gamepay.core.ConfigCallback;
import com.transsion.gamepay.core.PayCallback;
import com.transsion.gamepay.core.PayHelper;
import com.transsion.gamepay.core.PayInitializer;
import com.transsion.gamepay.core.PayParams;
import com.transsion.gamepay.core.SupplementCallback;
import com.transsion.gamepay.core.bean.OrderInfo;
import com.transsion.gamepay.core.bean.ProductConfig;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import androidx.annotation.NonNull;
import androidx.multidex.MultiDex;
import sdkInterface.IAD;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class TranssionSDK extends SDKBase implements  IPay , IAD {
    List<ProductConfig> m_Result;
    PayInfo m_PayInfo;

    String PayIDKey;
    HashMap<String,String> payIDDict;
    HashMap<String,String> productIDDict;

    HashMap<String,String> priceDict;
    private String goodsIDCache;

    @Override
    public void OnCreate() {
        super.OnCreate();
//        MultiDex.install(GetCurrentActivity());

        try {
            String appKey = GetProperties().getProperty("AppKey", "");// "7位数的appId";
            PayIDKey =  GetProperties().getProperty("PayIDKey");

            boolean debuggable = GetProperties().getProperty("DebugAble").equals("true");//BuildConfig.DEBUG;
            String testMccMnc = GetProperties().getProperty("TestMccMnc");
//            String BannerUnitId = GetProperties().getProperty("BannerUnitId");
//            String InterstitialUnitId = GetProperties().getProperty("InterstitialUnitId");
            String RewardUnitId = GetProperties().getProperty("RewardUnitId");

            PayInitializer.init(
                    new PayInitializer.Builder(GetCurrentActivity(), appKey)
                            //sdk内部需要用到子线程，你可以传入你全局统一构建的线程池，
                            //否则内部默认使用AsyncTask.THREAD_POOL_EXECUTOR
//                        .setExecutor(executor)
                            //sdk内部需要用到主线程，你可以传入你全局统一构建的Handler,
                            //否则内部默认创建一个新的handler
//                        .setMainThreadHandler(handler)
                            //如果你需要开启测试环境，测试环境影响服务器接口地址
                            .setDebuggable(debuggable)
                            //如果你需要模拟某个国家的支付测试，
                            //你需要开启Debug模式，并传入对应的MccMnc
                            .setTestMccMnc(testMccMnc)
                            //订单补充回调
                            .setSupplementCallback(new SupplementCallback() {

                                                       @Override
                                                       public void reissueProduct(PayParams payParams, OrderInfo orderInfo) {
                                                           //在线支付当用户付完钱后，没等回调结果就退出应用，那么当实际结果是扣款成功的时候，
                                                           //游戏还未给用户发放道具或权益，在下次进入应用，检测到支付成功时，将通知游戏
                                                           //在这里补发道具
                                                           SendPayCallBack(true, orderInfo.orderId, "");
                                                       }

                                                       @Override
                                                       public void supplementOrderSuccess(PayParams payParams, OrderInfo orderInfo) {
                                                           //短代支付，支付成功后，优先通知游戏发放道具，后续将自动验证这笔订单的扣款情况
                                                           //如果是失败的情况，那么会提示用户进行补单，这里将告诉你补单情况的结果是成功。
                                                           //这里不需要再发放道具
                                                       }

                                                       @Override
                                                       public void supplementOrderFail(PayParams payParams, OrderInfo orderInfo, int errorCode) {
                                                           //短代支付，支付成功后，优先通知游戏发放道具，后续将自动验证这笔订单的扣款情况
                                                           //如果是失败的情况，那么会提示用户进行补单，这里将告诉你补单情况的结果是失败。
                                                           //这里不需要再发放道具
                                                       }
                                                   }
                            ));

            AdInitializer.init(
                    //appKey是我们提供给您的一串数值
                    new AdInitializer.Builder(GetCurrentActivity().getApplication(), appKey)
                    //设置banner广告的单元ID
//                    .setBannerUnitId("ca-app-pub3940256099942544/6300978111")
                    //设置插屏广告的单元ID
//                    .setInterstitialUnitId("ca-app-pub3940256099942544/1033173712")
                    //设置激励视频广告的单元ID
                    .setRewardUnitId(RewardUnitId)
                    //开启debuggable 展示测试广告
                    //请在正式上线环境下，设为false
                    .setDebuggable(debuggable)
                    //开启debug，展示的是admob的测试服务器广告
                    //如果你需要调试线上真实广告，你需要把debuggable设为false
                    //并输入你的设备ID，如何获取设备ID见 第6点广告测试的问题QA
                    //sdk内部需要用到子线程，你可以传入你全局统一构建的线程池，
                    //否则内部默认使用AsyncTask.THREAD_POOL_EXECUTOR
//                    .setExecutor(executor)
                    //sdk内部需要用到主线程，你可以传入你全局统一构建的Handler,
                    //否则内部默认创建一个新的handler
//                    .setMainThreadHandler(handler)
                    //广告开关，不传默认开启
                    .setTotalSwitch(true)
                );

            SendLog("Transsion onCreate Complete " + appKey);

        } catch (IOException e) {
            SendError("Transsion Init Error",e);
        }

        payIDDict = GenerateHashMapBySqlitContent(PayIDKey,"-");
        productIDDict = new HashMap<String, String>();
        for (String key : payIDDict.keySet()) {
            productIDDict.put(payIDDict.get(key),key);
        }

        GetProductConfig();

        LoadAD(null);
    }

    //返回支付结果 （OkJoy sdk 的回调不准确,必然成功）
    void SendPayCallBack(boolean success,String token,String errorCode) {
        try {
            JSONObject jo = new JSONObject();
            String goodsID = "";
            if(m_PayInfo != null)
            {
                goodsID = m_PayInfo.goodsID;
            }

            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, goodsID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, token);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.OKJOY.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, token);

            SendLog( "PayInfo is null" + (m_PayInfo == null) + " josn is null" + (jo == null));

            if (m_PayInfo == null) {
                m_PayInfo = new PayInfo();
            }
            m_PayInfo.ToJson(jo);

            SendLog( jo.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

        @Override
    public void Init(JSONObject json) {
        super.Init(json);
        SendLog("Transsion Inited , " + json);
    }

    void GetProductConfig(){
        PayHelper.getProductConfig(new ConfigCallback() {
            @Override
            public void response(List<ProductConfig> result) {
                SendLog("Transsion read config,count="+result.size());
                m_Result = result;

                priceDict = new HashMap<>();

                for(int i =0;i<m_Result.size();++i)
                {
                    SendLog("m_Result  i " + i + " " + m_Result.get(i).name  +" " + m_Result.get(i).id + " " + m_Result.get(i).amount);

                    priceDict.put(m_Result.get(i).id,m_Result.get(i).amount);
                }
            }
        });
    }

    ProductConfig GetConfig(String productName)
    {
        for(int i =0;i<m_Result.size();++i)
        {
            if(m_Result.get(i).id.equals(productName))
            {
                return m_Result.get(i);
            }
        }

        SendError("GetConfig not find " + productName);
        return null;
    }

    @Override
    public void Pay(JSONObject json) {
        if (null == m_Result) {
            String e = "TranssionSDK m_Result Need init";
            SendError(e, new Exception());
            SendPayCallBack(false, "", e);
            return;
        }

        m_PayInfo = PayInfo.FromJson(json);
        goodsIDCache = payIDDict.get(m_PayInfo.goodsID);

        JSONArray map = new JSONArray();

        try {
            JSONObject productID = new JSONObject();
            productID.put("productId",m_PayInfo.goodsID);
            map.put(productID);

//            JSONObject productName = new JSONObject();
//            productID.put("productName",m_PayInfo.goodsName);
//            map.put(productName);

            JSONObject userID = new JSONObject();
            productID.put("userId",m_PayInfo.userID);
            map.put(userID);

        } catch (JSONException e) {
            SendError("Pay Error ",e);
        }

        m_PayInfo = PayInfo.FromJson(json);
        ProductConfig currentProduct = GetConfig(goodsIDCache);
        SendLog("Transsion Pay , " + json);
        PayHelper.pay(GetCurrentActivity(),
                new PayParams.Builder(currentProduct.id)
                        //如果你有自有的订单号需要传入，可通过这个方法传入
//                        .setCustomizeOrderId()
                        //如果你需要传递额外参数，你可以通过这个方法传入
                       .setExtra(map.toString())
                ,
                //支付回调
                new PayCallback() {
                    @Override
                    public void paySuccess(PayParams params, OrderInfo orderInfo) {
                        SendLog("Transsion paySuccess , " + orderInfo.orderId);
                        //支付成功
                        SendPayCallBack(true, orderInfo.orderId, "");
                    }

                    @Override
                    public void payFailure(PayParams params, OrderInfo orderInfo, int errorCode) {
                        SendLog("Transsion payFailure , " + orderInfo.orderId + " " + errorCode);
                        //支付失败
                        SendPayCallBack(false, orderInfo.orderId, "" + errorCode);
                    }
                }
        );
    }

        @Override
    public boolean IsPrePay() {
//        SendLog("Transsion IsPrePay ");
        return false;
    }

    @Override
    public boolean IsReSendPay() {
//        SendLog("Transsion IsReSendPay ");
        return false;
    }

    @Override
    public void GetGoodsInfo(JSONObject json) {
//        SendLog("Transsion GetGoodsInfo , " + json);

        try {
            String goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            goodsID = payIDDict.get(goodsID);

            if(priceDict.containsKey(goodsID))
            {
                CallBackGoodsInfo(goodsID,priceDict.get(goodsID));
            }
            else {

                SendError("GetGoodsInfo Error not find goodsID " + goodsID);
            }

        } catch (JSONException e) {
            SendError("GetGoodsInfo error " + e.toString(),e );
        }
    }

    @Override
    public void ClearPurchase(JSONObject json) {
//        SendLog("Transsion ClearPurchase , " + json);
    }

    @Override
    public void LoadAD(JSONObject json) {

        SendLog("TranssionSDK LoadAD");

        AdHelper.loadReward(GetCurrentActivity(), new GameRewardedAdLoadCallback() {
            @Override
            public void onRewardedAdLoaded() {
                super.onRewardedAdLoaded();
                SendLog("TranssionSDK LoadAD onRewardedAdLoaded");
                CallBackADReward(ADType.Reward, ADResult.Load_Success,"");
            }
            @Override
            public void onRewardedAdFailedToLoad(int i) {
                super.onRewardedAdFailedToLoad(i);
                SendLog("TranssionSDK LoadAD onRewardedAdFailedToLoad " + i);
                CallBackADReward(ADType.Reward, ADResult.Load_Failure,"");
            }
        }, new GameRewardedAdCallback(){
            @Override
            public void onRewardedAdOpened() {
                //激励广告被打开
                SendLog("TranssionSDK onRewardedAdOpened");
            }
            public void onRewardedAdClosed() {
                //激励广告被关闭
                SendLog("TranssionSDK onRewardedAdClosed");
            }
            public void onUserEarnedReward(@NonNull GameRewardItem gameRewardItem){
                //激励广告播放完成
                SendLog("TranssionSDK onUserEarnedReward " + gameRewardItem);
            }
            public void onRewardedAdFailedToShow(int reason) {
                //激励广告展示失败
                SendLog("TranssionSDK onRewardedAdFailedToShow");
            }
        });
    }

    @Override
    public void PlayAD(JSONObject json) {
        //当您需要展示广告，如果此时广告未加载完成，您愿意等待广告的加载结果
//        AdHelper.showReward(GetCurrentActivity());
        //或者
        AdHelper.showReward(GetCurrentActivity(), new GameAdDisplayCallback() {

            @Override
            public void successful() {
                super.successful();
                SendLog("TranssionSDK PlayAD successful");
                CallBackADReward(ADType.Reward, ADResult.Show_Finished,"");
            }

            @Override
            public void failure(int var1) {
                SendLog("TranssionSDK PlayAD failure " + var1);
                CallBackADReward(ADType.Reward, ADResult.Show_Failed,"");
            }
        //您可以点击进入GameAdDisplayCallback类，查看更多您需要的回调，并重写对应的方法
        });

//        //当您仅在广告加载完成时展示广告，如果未加载完成，则跳过此次展示时机
//        AdHelper.showRewardWhenLoaded(GetCurrentActivity());
//        //或者
//        AdHelper.showRewardWhenLoaded(GetCurrentActivity(), new GameAdDisplayCallback() {
//            @Override
//            public void failure(int var1) {
//            }
//
//        //您可以点击进入GameAdDisplayCallback类，查看更多您需要的回调，并重写对应的方法
//        });
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return true;
    }
}
