import com.unity3d.player.UnityPlayer;

import org.json.JSONException;
import org.json.JSONObject;

import javax.security.auth.callback.Callback;

import SdkInterface.IPay;
import SdkInterface.SDKBase;
import SdkInterface.SdkInterface;
import SdkInterface.SDKInterfaceDefine;
import SdkInterface.IOther;
import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface;
import cn.cmgame.billing.api.GameInterface.ILoginCallback;
import cn.cmgame.billing.api.LoginResult;
import  cn.cmgame.billing.api.GameInterface.IPayCallback;
import  cn.cmgame.billing.api.GameInterface.GameExitCallback;

/**
 * Created by GaiKai on 2018/4/10.
 */

public class MiGuPay extends SDKBase implements IPay , IOther
{
    ILoginCallback loginCallback;
    {
        loginCallback = new ILoginCallback() {
            @Override
            public void onResult(int resultCode, String userId, Object obj) {
                try {

                    JSONObject jo = new JSONObject();

                    jo.put(SDKInterfaceDefine.ParameterName_FunctionName,SDKInterfaceDefine.FunctionName_Login);
                    jo.put("userId" ,userId);

                    // 游戏业务收到登录结果后的处理逻辑
                    switch (resultCode) {
                        case LoginResult.UNKOWN:
                            //未发起登录或无法获取登录结果
                            jo.put("IsSuccess",false);
                            jo.put("Info","未发起登录或无法获取登录结果");
                            break;
                        case LoginResult.SUCCESS_IMPLICIT:
                            //隐式登录成功
                            jo.put("IsSuccess",true);
                            jo.put("Info","隐式登录成功");
                            break;
                        case LoginResult.FAILED_IMPLICIT:
                            //隐式登录失败
                            jo.put("IsSuccess",false);
                            jo.put("Info","隐式登录失败");
                            break;
                        case LoginResult.SUCCESS_EXPLICIT:
                            //显式登录成功
                            jo.put("IsSuccess",true);
                            jo.put("Info","显式登录成功");
                            break;
                        case LoginResult.FAILED_EXPLICIT:
                            //显式登录失败
                            jo.put("IsSuccess",false);
                            jo.put("Info","显式登录失败");
                            break;
                    }

                    CallBack(jo.toString());

                } catch (Exception e) {
                }
            }
        };
    }


    @Override
    public void Init(JSONObject json)  {
        System.loadLibrary("megjb");

        String loginNo = null;

        if(json.has("loginNo"))
        {
            try {
                loginNo = json.getString("loginNo");
            } catch (JSONException e){SendError(e.toString(),e);}
        }

        GameInterface.initializeApp(UnityPlayer.currentActivity,loginNo, loginCallback);

//        //延迟1秒切Activity
//        new Handler().postDelayed(new Runnable() {
//            public void run() {
//                Intent intent = new Intent(FirstActivity.this,
//                        cn.cmgame.billing.api.GameOpenActivity.class);
//                startActivity(intent);
//                finish();
//            }
//        }, 1000);
    }

    IPayCallback billingCallback = new IPayCallback() {
        @Override
        public void onResult(int resultCode, String billingIndex, Object arg) {
            try {
                JSONObject jo = new JSONObject();
                jo.put(SDKInterfaceDefine.ParameterName_FunctionName,SDKInterfaceDefine.FunctionName_OnPay);
                jo.put("billingIndex",billingIndex);
                jo.put("arg",arg.toString());

                // 游戏业务收到付费结果后的处理逻辑
                switch (resultCode) {
                    case BillingResult.SUCCESS:
                        //成功
                        jo.put("IsSuccess",true);
                        break;
                    case BillingResult.FAILED:
                        //失败
                        jo.put("IsSuccess",false);
                        break;
                }
                CallBack(jo.toString());
            }catch (Exception e)
            {
                SendError(e.toString(),e);
            }
        }
    };


    @Override
    public void Pay(JSONObject json)
    {
        try
        {
            String GoodsId = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            String GoodsType = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsType);
            String cpParam = null;
            if(json.has(SDKInterfaceDefine.Pay_ParameterName_CpOrderID))
            {
                cpParam = json.getString(SDKInterfaceDefine.Pay_ParameterName_CpOrderID);
            }
            int typeid = 1;

            switch (GoodsType)
            {
                case SDKInterfaceDefine.Pay_GoodsTypeEnum_ONCE_ONLY: typeid = 1;break;
                case SDKInterfaceDefine.Pay_GoodsTypeEnum_NORMAL: typeid = 2;break;
                case SDKInterfaceDefine.Pay_GoodsTypeEnum_RIGHTS: typeid = 4;break;
            }

            GameInterface.doBilling(SdkInterface.GetContext(), typeid, GoodsId, cpParam, billingCallback);

        }catch (Exception e)
        {
            SendError("Pay Exception " + json.toString(),e);
        }

    }

    //在这里实现退出接口
    @Override
    public void Other(JSONObject json)
    {
        try {
            String otherFunction = json.getString(SDKInterfaceDefine.Other_FunctionName);

            if(otherFunction == SDKInterfaceDefine.Other_FunctionName_Exit)
            {
                GameInterface.exit(SdkInterface.GetContext(), new GameExitCallback() {
                    @Override
                    public void onConfirmExit() {
                    //确认退出逻辑
                        JSONObject jo = new JSONObject();
                        try {
                            jo.put(SDKInterfaceDefine.ParameterName_FunctionName,SDKInterfaceDefine.FunctionName_OnOther);
                            jo.put(SDKInterfaceDefine.Other_FunctionName,SDKInterfaceDefine.Other_FunctionName_Exit);
                            jo.put("IsSuccess",true);

                            CallBack(jo.toString());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        System.exit(0);
                    }
                    @Override
                    public void onCancelExit() {
                    //取消退出逻辑

                        JSONObject jo = new JSONObject();
                        try {
                            jo.put(SDKInterfaceDefine.ParameterName_FunctionName,SDKInterfaceDefine.FunctionName_OnOther);
                            jo.put(SDKInterfaceDefine.Other_FunctionName,SDKInterfaceDefine.Other_FunctionName_Exit);
                            jo.put("IsSuccess",false);

                            CallBack(jo.toString());

                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

    }
}
