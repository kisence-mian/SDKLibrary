import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

import sdkInterface.SDKBase;
import sdkInterface.IPay;
import cn.m4399.operate.OperateCenterConfig;
import cn.m4399.operate.SingleOperateCenter;
import cn.m4399.operate.SingleOperateCenter.SingleRechargeListener;
import cn.m4399.recharge.RechargeOrder;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.StoreName;

public class Activity4399single extends SDKBase implements IPay
{
    public static final String TAG = "4399SDK-GameActivity";

    private static String AppID = "7001";
    private static String GameName = "测试游戏";
    private static boolean isDebug = true;

    SingleOperateCenter mOpeCenter;

    @Override
    public void Init(JSONObject json)
    {
        try {
            AppID = GetProperties().getProperty("AppID");
            GameName = GetProperties().getProperty("GameName");
            isDebug = GetProperties().getProperty("isDebug") == "1";
            initSKUList();
            initSDK();

        } catch (Exception e) {
            SendError("4399 Init Error " + e,e);
        }
    }

    @Override
    public void Pay(JSONObject json) {
        SendLog("4399 Pay " + json.toString());
        try {
            String productName = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsName);
            String price =(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            mOpeCenter.recharge(GetCurrentActivity(), price, productName);

        } catch (JSONException e) {
            SendError("4399 Pay Error " + e.toString(),e);
        }


    }

    private ArrayList<String> mSKUList; //临时存储购买成功的物品，当activity在活动时显示出来

    private void initSKUList() {
        mSKUList = new ArrayList<String>();
    }

    private void initSDK() {
        mOpeCenter = SingleOperateCenter.getInstance();
        new OperateCenterConfig.Builder(GetCurrentActivity())
                .setDebugEnabled(isDebug)  //发布游戏时，要设为false
                .setOrientation(getOrientation()) //设置SDK界面方向，应与游戏设置一直
                .setSupportExcess(true) //设置是否支持超出金额充值
                .setGameKey(AppID) 	//换成实际游戏的game key
                .setGameName(GameName)	//换成实际游戏的名字，原则上与游戏名字匹配
                .build();

        SingleRechargeListener singleRechargeListener = new SingleRechargeListener() {

            /*
             * 充值过程结束时SDK回调此方法
             *
             * 充值过程结束并不代表订单生命周期全部完成，SDK还需要查询订单状态，游戏
             * 要根据订单状态决定是否发放物品等
             *
             * @param msg 表示充值结果的友好的文本说明
             *
             */
            @Override
            public void onRechargeFinished(boolean success, String msg) {
                Log.d(TAG, "4399 Pay: [" + success + ", " + msg + "]");

            }

            /*
             * 充值过程成功完成后，SDK会查询订单状态，根据订单状态状态正常则通知游戏发放物品
             *
             * @param shouldDeliver
             *  是否要发放物品
             * @param o
             *  封装了最后提交的订单信息的对象，主要包含以下成员，各成员都有getter方法
             *  payChannel：   充值渠道
             *  orderId：      	充值订单号
             *  je：			充值金额
             *  goods：        	购买的物品
             *
             * @return
             *  物品发放过程是否成功
             */

            @Override
            public boolean notifyDeliverGoods(boolean shouldDeliver, RechargeOrder o) {

                SendPayCallBack(shouldDeliver,o);

                if (shouldDeliver) {
                    Log.d(TAG, "4399 单机充值发放物品, [" + o + "]");
//					showInToast("发放物品, " + o);
                    mSKUList.add("您花费 " + o.getJe() + "元， 购买了 " + o.getGoods());

                    return true;
                } else {
                    Log.d(TAG, "单机充值查询到的订单状态不正常，建议不要发放物品");
                    return false;
                }
            }
        };
        mOpeCenter.init(GetCurrentActivity(), singleRechargeListener);
    }

    //获取屏幕朝向
    private int getOrientation() {
        int orientation = 0;// 0，横屏   1，竖屏    6，横屏180度旋转    7，竖屏180度旋转
        return orientation;
    }

    void SendPayCallBack(boolean success,RechargeOrder info)
    {
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);

            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,info.getGoods());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Price,info.getJe());
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,info.getOrderId());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.m4399.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }
}

