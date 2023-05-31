import android.util.Log;

import com.unity3d.player.UnityPlayer;
import org.json.JSONException;
import org.json.JSONObject;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.IOther;
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

                Log.d("Unity","Migu loginCallback");
                try {

                    JSONObject jo = new JSONObject();

                    jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                    jo.put(SDKInterfaceDefine.Log_ParameterName_AccountId ,userId);

                    // 游戏业务收到登录结果后的处理逻辑
                    switch (resultCode) {
                        case LoginResult.UNKOWN:
                            //未发起登录或无法获取登录结果
                            Log.d("Unity","Migu loginCallback UNKOWN");
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                            jo.put(SDKInterfaceDefine.ParameterName_Content,"未发起登录或无法获取登录结果");
                            break;
                        case LoginResult.SUCCESS_IMPLICIT:
                            //隐式登录成功
                            Log.d("Unity","Migu loginCallback SUCCESS_IMPLICIT");
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                            jo.put(SDKInterfaceDefine.ParameterName_Content,"隐式登录成功");
                            break;
                        case LoginResult.FAILED_IMPLICIT:
                            //隐式登录失败
                            Log.d("Unity","Migu loginCallback FAILED_IMPLICIT");
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                            jo.put(SDKInterfaceDefine.ParameterName_Content,"隐式登录失败");
                            break;
                        case LoginResult.SUCCESS_EXPLICIT:
                            //显式登录成功
                            Log.d("Unity","Migu loginCallback SUCCESS_EXPLICIT");
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                            jo.put(SDKInterfaceDefine.ParameterName_Content,"显式登录成功");
                            break;
                        case LoginResult.FAILED_EXPLICIT:
                            //显式登录失败
                            Log.d("Unity","Migu loginCallback FAILED_EXPLICIT");
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                            jo.put(SDKInterfaceDefine.ParameterName_Content,"显式登录失败");
                            break;
                    }

                    CallBack(jo.toString());

                } catch (Exception e) {
                    SendError(e.toString(),e);
                }

                Log.d("Unity","Migu loginCallback Finish");
            }
        };
    }


    @Override
    public void Init(JSONObject json)  {

        Log.d("Unity","Migu Init " + json.toString());

        String loginNo = null;

        if(json.has("loginNo"))
        {
            try {
                loginNo = json.getString("loginNo");
            } catch (JSONException e)
            {
                SendError(e.toString(),e);
            }
        }

        GameInterface.initializeApp(UnityPlayer.currentActivity);

        Log.d("Unity","Migu Init Finish");
    }

    IPayCallback billingCallback = new IPayCallback() {
        @Override
        public void onResult(int resultCode, String billingIndex, Object arg) {

            Log.d("Unity","Migu billingCallback");

            try {
                JSONObject jo = new JSONObject();
                jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Pay);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,billingIndex);

                // 游戏业务收到付费结果后的处理逻辑
                switch (resultCode) {
                    case BillingResult.SUCCESS:
                        Log.d("Unity","Migu billingCallback  SUCCESS" );
                        //成功
                        jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                        break;
                    case BillingResult.FAILED:
                        Log.d("Unity","Migu billingCallback  FAILED" );
                        //失败
                        jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                        break;
                }
                CallBack(jo.toString());
            }catch (Exception e)
            {
                SendError(e.toString(),e);
            }

            Log.d("Unity","Migu billingCallback Finish " );
        }
    };


    @Override
    public void Pay(JSONObject json)
    {

        Log.d("Unity","Migu Pay " + json.toString());
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

            GameInterface.doBilling(sdkInterface.GetContext(), typeid, GoodsId, cpParam, billingCallback);

        }catch (Exception e)
        {
            SendError("Pay Exception " + json.toString(),e);
        }

        Log.d("Unity","Migu Pay Finsih");
    }

    //在这里实现退出接口
    @Override
    public void Other(JSONObject json)
    {
        try {
            String otherFunction = json.getString(SDKInterfaceDefine.FunctionName);

            if(otherFunction == SDKInterfaceDefine.Other_FunctionName_Exit)
            {
                GameInterface.exit(sdkInterface.GetContext(), new GameExitCallback() {
                    @Override
                    public void onConfirmExit() {
                    //确认退出逻辑
                        JSONObject jo = new JSONObject();
                        try {
                            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Other);
                            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.Other_FunctionName_Exit);
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);

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
                            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.FunctionName_OnOther);
                            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.Other_FunctionName_Exit);
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);

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
