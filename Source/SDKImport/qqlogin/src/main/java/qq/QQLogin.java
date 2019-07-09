package qq;

import android.content.Intent;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import org.json.JSONObject;
import sdkInterface.define.LoginPlatform;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.tool.ActResultRequest;

public class QQLogin extends SDKBase implements ILogin {

    String AppID;
    private Tencent mTencent;

    @Override
    public void Init(JSONObject json)
    {
        super.Init(json);

        try
        {
            AppID = GetProperties().getProperty("AppID");
            mTencent = Tencent.createInstance(AppID, GetCurrentActivity());

            SendLog("QQLogin Init AppID >" + AppID + "< success is " + (mTencent != null));
        } catch (Exception e) {
            SendError("QQLogin Init Error " + e.toString(),e);
        }
    }

    @Override
    public void Login(JSONObject json)
    {
        SendLog("QQ Login  start " + json);
        //添加回调监听
        SdkInterface.SetActivityCallBack(Constants.REQUEST_LOGIN ,new ActResultRequest.Callback() {
            @Override
            public void onActivityResult(int requestCode,int resultCode, Intent data) {

                SendLog("SetFragmentCallBack onActivityResult ");

                Tencent.onActivityResultData(requestCode,resultCode,data,loginListener);
            }
        });

        mTencent.login(GetCurrentActivity(),"all",loginListener);

        SendLog("QQ Login finish " + json);
    }

    public void initOpenidAndToken(JSONObject jsonObject) {
        try {
            String token = jsonObject.getString(Constants.PARAM_ACCESS_TOKEN);
            String expires = jsonObject.getString(Constants.PARAM_EXPIRES_IN);
            String openId = jsonObject.getString(Constants.PARAM_OPEN_ID);
            if (!TextUtils.isEmpty(token) && !TextUtils.isEmpty(expires)
                    && !TextUtils.isEmpty(openId)) {
                mTencent.setAccessToken(token, expires);
                mTencent.setOpenId(openId);

                LoginCallBack(openId,true);
            }
            else
            {
                LoginCallBack(openId,false);
            }
        } catch(Exception e) {
            SendError("initOpenidAndToken Error " + e.toString(),e);
        }
    }

    void LoginCallBack(String id,boolean success)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,id);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.QQ.toString());

            CallBack(jo);
        }
        catch (Exception e)
        {
            SendError("LoginCallBack Error " + e.toString(),e);
        }
    }

    IUiListener loginListener = new BaseUiListener() {
        @Override
        protected void doComplete(JSONObject values) {
            try
            {
                SendLog("Login doComplete " + values);
                initOpenidAndToken(values);
            }catch (Exception e)
            {
                SendError("Login onComplete Error " + e,e);
            }
        }

        @Override
        public void onComplete(Object o) {

            try
            {
                SendLog("Login onComplete " + o);
                initOpenidAndToken((JSONObject) o);
            }catch (Exception e)
            {
                SendError("Login onComplete Error " + e,e);
            }
        }

        @Override
        public void onError(UiError e) {

            SendLog("Login onError " + e.toString());

            LoginCallBack("",false);
        }

        @Override
        public void onCancel() {

            SendLog("Login onCancel");
            LoginCallBack("",false);
        }
    };
}
