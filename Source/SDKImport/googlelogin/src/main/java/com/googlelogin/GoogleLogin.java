package com.googlelogin;

import android.content.Intent;
import android.util.Log;

import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import org.json.JSONObject;
import java.io.IOException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import sdkInterface.ILogin;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;

public class GoogleLogin extends SDKBase implements ILogin  {

    private static String WebClientID = ""; //从 google API Console 中获得 （web 类型）
    public static int RC_SIGN_IN = 9001;

    @Override
    public void Init(JSONObject jsonObject)
    {
        SendLog("Google Init");
        try {

            WebClientID = GetProperties().getProperty("WebClientID");
            SendLog("Google Init WebClientID >" + WebClientID + "<");

            InitGoogleSignIn(WebClientID);
        } catch (IOException e) {
            SignResultResultCallBack(false,"","GetWebClientID Error");
            SendError("GoogleLogin Init Error " +  e,e);
        }
    }

    @Override
    public void Login(JSONObject jsonObject) {
        GoogleSignIn();
    }

    @Override
    public void LoginOut(JSONObject jsonObject) {
        GoogleSignOut();
    }

    private GoogleSignInClient mGoogleSignInClient = null;

    //初始化谷歌登陆
    public void InitGoogleSignIn( String requestIdToken)
    {
        SendLog("InitGoogleSignIn ====== start");
        GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN);
        SendLog("InitGoogleSignIn ======"+ requestIdToken);
        GoogleSignInOptions gso = builder
                .requestIdToken(requestIdToken)
                .requestEmail()
                .build();

        mGoogleSignInClient = com.google.android.gms.auth.api.signin.GoogleSignIn.getClient(GetCurrentActivity(), gso);
    }

    //谷歌登录
    public void GoogleSignIn()
    {
        if(mGoogleSignInClient == null)
        {
            SendLog("InitGoogleSignIn fail == mGoogleSignInClient is null ");
            SignResultResultCallBack(false,"","mGoogleSignInClient is null ");
        }
        else
        {
            Intent signInIntent = mGoogleSignInClient.getSignInIntent();
            GetCurrentActivity().startActivityForResult(signInIntent, RC_SIGN_IN);
        }

    }

    //谷歌登出
    public  void GoogleSignOut()
    {
        SendLog("GoogleSignOut Start ");
        if(mGoogleSignInClient == null)
        {
            SendLog("InitGoogleSignOut fail == mGoogleSignInClient is null ");
            SignOutResultResultCallBack(false,"mGoogleSignInClient is null");
        }
        else
        {
            mGoogleSignInClient.signOut()
                    .addOnCompleteListener(GetCurrentActivity(), new OnCompleteListener<Void>() {
                        @Override
                        public void onComplete(@NonNull Task<Void> task) {
                            //成功登出
                            SendLog("GoogleSignOut Success ");
                            SignOutResultResultCallBack(true,"0");
                        }
                    });

        }
    }

    //监听结果
    @Override
    public void OnActivityResult(int requestCode, int resultCode,@Nullable Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);
        SendLog("InitGoogleSignIn onActivityResult" + requestCode + "=resultCode=" + resultCode);
        // Result returned from launching the Intent from GoogleSignInClient.getSignInIntent(...);
        if (requestCode == RC_SIGN_IN) {
            // The Task returned from this call is always completed, no need to attach
            // a listener.
            SendLog("InitGoogleSignIn result==" + resultCode);
            Task<GoogleSignInAccount> task = GoogleSignIn.getSignedInAccountFromIntent(data);
            handleSignInResult(task);
        }
    }

    //处理登陆结果
    private void handleSignInResult(Task<GoogleSignInAccount> completedTask) {
        try {
            GoogleSignInAccount account = completedTask.getResult(ApiException.class);
            String id = account.getId();
            String EMail = account.getEmail();
            String IdToken = account.getIdToken();
            SendLog("InitGoogleSignIn result is success ==id==" + id + "==EMail=="+ EMail+ "==IdToken==" +IdToken );
            SignResultResultCallBack(true,IdToken,"0");
            // Signed in successfully, show authenticated UI.

        } catch (ApiException e) {
            // The ApiException status code indicates the detailed failure reason.
            // Please refer to the GoogleSignInStatusCodes class reference for more information.
            SendLog( "signInResult:failed code=" + e.getStatusCode());
            SignResultResultCallBack(false,"",e.getStatusCode()+"");
        }
    }



    //登陆结果回调
    private void SignResultResultCallBack(Boolean isSuccess, String IDToken ,String ErrorCode)
    {
        try {
            String typeKey = IDToken;
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, isSuccess);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.Google.toString());
            jo.put(SDKInterfaceDefine.ParameterName_Error, ErrorCode);

            SendLog("SignResultResultCallBack" + jo);
            CallBack(jo);
        }
        catch (Exception e) {
            e.printStackTrace();
            SendError("Google onLogin Error", e);
        }

    }

    //登出结果回调
    private void SignOutResultResultCallBack(Boolean isSuccess ,String ErrorCode)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.Login_FunctionName_LoginOut);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, "");
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, isSuccess);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.Google.toString());
            jo.put(SDKInterfaceDefine.ParameterName_Error, ErrorCode);

            CallBack(jo);
        }
        catch (Exception e) {
            e.printStackTrace();
            SendError("Google onLogin Error", e);
        }
    }
}
