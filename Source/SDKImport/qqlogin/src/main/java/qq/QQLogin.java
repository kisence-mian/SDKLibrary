package qq;

import android.text.TextUtils;

import com.tencent.connect.common.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;

import org.json.JSONObject;

import java.io.IOException;

import SdkInterface.SDKBase;
import SdkInterface.ILogin;
import SdkInterface.SDKInterfaceDefine;

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
        IUiListener listener = new BaseUiListener() {
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
        };

        mTencent.login(GetCurrentActivity(),"get_user_info",listener);
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

            CallBack(jo);
        }
        catch (Exception e)
        {
            SendError("LoginCallBack Error " + e.toString(),e);
        }

    }

}
