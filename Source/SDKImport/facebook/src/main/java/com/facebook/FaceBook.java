package com.facebook;

import android.content.Intent;
import android.util.Log;

import androidx.annotation.Nullable;

import com.facebook.appevents.AppEventsLogger;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;

import org.json.JSONObject;

import java.util.Arrays;

import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;

public class FaceBook extends SDKBase implements ILogin {

    public static String LogTag = "FaceBookLogin=====";
    public CallbackManager callbackManager; //回调监听

    @Override
    public void Init(JSONObject jsonObject)
    {
        Log.d(LogTag," Init Start");
        FacebookSdk.sdkInitialize(GetCurrentActivity().getApplicationContext());
        AppEventsLogger.activateApp(GetCurrentActivity());
        callbackManager = CallbackManager.Factory.create();

        LoginManager.getInstance().registerCallback(callbackManager,
                new FacebookCallback<LoginResult>() {
                    @Override
                    public void onSuccess(LoginResult loginResult) {
                        // App code
                        Log.d(LogTag," Login Success");
                        SignResultResultCallBack(true,loginResult.getAccessToken(),"0");
                    }

                    @Override
                    public void onCancel() {
                        // App code
                        Log.d(LogTag," Login Cancel");
                        SignResultResultCallBack(false,null,"Login Cancel");
                    }

                    @Override
                    public void onError(FacebookException exception) {
                        // App code
                        Log.d(LogTag," Login Error" +exception );
                        SignResultResultCallBack(false,null," Login Error" +exception);
                    }
                });
    }

    //监听结果
    @Override
    public void OnActivityResult(int requestCode, int resultCode,@Nullable Intent data) {
        Log.d(LogTag," OnActivityResult requestCode：" + requestCode+ "==resultCode=" + resultCode);
        super.OnActivityResult(requestCode, resultCode, data);
        callbackManager.onActivityResult(requestCode, resultCode, data);
    }
    @Override
    public void Login(JSONObject jsonObject) {
        Log.d(LogTag," Start Login" );
        AccessToken accessToken = AccessToken.getCurrentAccessToken();

        boolean isLoggedIn = accessToken != null && !accessToken.isExpired();

        Log.d(LogTag," Start Login isLoggedIn" + isLoggedIn );
        if(isLoggedIn)
        {
            Log.d(LogTag,"isLoggedIn" + accessToken.getToken() );
            SignResultResultCallBack(true,accessToken,"0");
        }
        else
        {
            LoginManager.getInstance().logInWithReadPermissions(GetCurrentActivity(), Arrays.asList("public_profile"));
        }

    }

    @Override
    public void LoginOut(JSONObject jsonObject) {
        AccessToken accessToken = AccessToken.getCurrentAccessToken();

        if(accessToken== null)
        {
            SignOutResultResultCallBack(true,"no Login");
            return;
        }

        boolean isLoggedIn = accessToken != null && !accessToken.isExpired();
        if(isLoggedIn)
        {
            LoginManager.getInstance().logOut();
        }

        SignOutResultResultCallBack(true,"0");


    }


    //登陆结果回调
    private void SignResultResultCallBack(Boolean isSuccess, AccessToken IDToken ,String ErrorCode)
    {
        Log.d(LogTag," SignResultResultCallBack======" + isSuccess + "==ErrorCode=="+ ErrorCode);
        try {
            String typeKey = "-1";
            if(IDToken !=null)
            {
                typeKey =  IDToken.getUserId() + "|"+IDToken.getToken();
                Log.d(LogTag," SignResultResultCallBack======" + isSuccess + "==Token=="+ typeKey);
            }
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, isSuccess);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.FaceBook.toString()); //要添加一个facebook
            jo.put(SDKInterfaceDefine.ParameterName_Error,ErrorCode);
            SendLog("FaceBook Login ResultResultCallBack" + jo);
            CallBack(jo);
        }
        catch (Exception e) {
            e.printStackTrace();
            SendError("Google onLoginError", e);
        }

    }

    //登出结果回调
    private void SignOutResultResultCallBack(Boolean isSuccess ,String ErrorCode)
    {
        Log.d(LogTag," SignOutResultResultCallBack======" + isSuccess +"==ErrorCode=="+ ErrorCode);
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.Login_FunctionName_LoginOut);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, "");
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, isSuccess);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.FaceBook.toString());
            jo.put(SDKInterfaceDefine.ParameterName_Error,ErrorCode);
            CallBack(jo);
        }
        catch (Exception e) {
            e.printStackTrace();
            SendError("Google onLoginError", e);
        }

    }
}
