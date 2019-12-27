package com.ysdk;

import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.module.bugly.BuglyListener;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.UserListener;
import com.tencent.ysdk.module.user.UserLoginRet;
import com.tencent.ysdk.module.user.UserRelationRet;
import com.tencent.ysdk.module.user.WakeupRet;

import java.util.Date;

public class YSDKCallback implements UserListener, BuglyListener,PayListener {

    YSDK ysdk;

    public YSDKCallback(YSDK y)
    {
        ysdk = y;
    }

    @Override
    public String OnCrashExtMessageNotify() {
//        // 此处游戏补充crash时上报的额外信息
//        Log.d(MainActivity.LOG_TAG,String.format(Locale.CHINA, "OnCrashExtMessageNotify called"));
//        Date nowTime = new Date();
//        SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//        return "new Upload extra crashing message for bugly on " + time.format(nowTime);
        return null;
    }

    @Override
    public byte[] OnCrashExtDataNotify() {
        return new byte[0];
    }

    @Override
    public void OnPayNotify(PayRet payRet) {
        PayRet ret = payRet;
        if(PayRet.RET_SUCC == ret.ret){
            //支付流程成功
            switch (ret.payState){
                //支付成功
                case PayRet.PAYSTATE_PAYSUCC:
                    ysdk.SendLog(
                            "用户支付成功，支付金额"+ret.realSaveNum+";" +
                                    "使用渠道："+ret.payChannel+";" +
                                    "发货状态："+ret.provideState+";" +
                                    "业务类型："+ret.extendInfo+";建议查询余额："+ret.toString());
                    ysdk.PayCallBack(true,GenerateOrderID(),payRet.payState+"");
                    break;
                //取消支付
                case PayRet.PAYSTATE_PAYCANCEL:
                    ysdk.SendLog("用户取消支付："+ret.toString());
                    ysdk.PayCallBack(false,"", payRet.payState+"");
                    break;
                //支付结果未知
                case PayRet.PAYSTATE_PAYUNKOWN:
                    ysdk.SendLog("用户支付结果未知，建议查询余额："+ret.toString());
                    ysdk.PayCallBack(false,"", payRet.payState+"");
                    break;
                //支付失败
                case PayRet.PAYSTATE_PAYERROR:
                    ysdk.SendLog("支付异常"+ret.toString());
                    ysdk.PayCallBack(false,"", payRet.payState+"");
                    break;
            }
        }else{
            switch (ret.flag){
                case eFlag.Login_TokenInvalid:
                    ysdk.SendLog("登录态过期，请重新登录："+ret.toString());
                    ysdk.PayCallBack(false,"", ret.flag+"");
                    break;
                case eFlag.Pay_User_Cancle:
                    //用户取消支付
                    ysdk.SendLog("用户取消支付："+ret.toString());
                    ysdk.PayCallBack(false,"", ret.flag+"");
                    break;
                case eFlag.Pay_Param_Error:
                    ysdk.SendLog("支付失败，参数错误"+ret.toString());
                    ysdk.PayCallBack(false,"", ret.flag+"");
                    break;
                case eFlag.Error:
                default:
                    ysdk.SendLog("支付异常"+ret.toString());
                    ysdk.PayCallBack(false,"", ret.flag+"");
                    break;
            }
        }


    }
    String GenerateOrderID()
    {
        String orderID = "od_YSDK_" + new Date().getTime() + Math.random()%9000;

        return orderID;
    }
    @Override
    public void OnLoginNotify(UserLoginRet ret) {
        ysdk.SendLog("OnLoginNotify called");
        ysdk.SendLog(ret.getAccessToken());
        ysdk.SendLog(ret.getPayToken());
        ysdk.SendLog("ret.flag" + ret.flag);
        ysdk.SendLog(ret.toString());
//        mainActivity.stopWaiting();
        switch (ret.flag) {
            case eFlag.Succ:
                ysdk.LoginCallBack(true);
                break;
            // 游戏逻辑，对登录失败情况分别进行处理
            case eFlag.QQ_UserCancel:
                ysdk.showToastTips("用户取消授权，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.QQ_LoginFail:
                ysdk.showToastTips("QQ登录失败，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.QQ_NetworkErr:
                ysdk.showToastTips("QQ登录异常，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.QQ_NotInstall:
                ysdk.showToastTips("手机未安装手Q，请安装后重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.QQ_NotSupportApi:
                ysdk.showToastTips("手机手Q版本太低，请升级后重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.WX_NotInstall:
                ysdk.showToastTips("手机未安装微信，请安装后重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.WX_NotSupportApi:
                ysdk.showToastTips("手机微信版本太低，请升级后重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.WX_UserCancel:
                ysdk.showToastTips("用户取消授权，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.WX_UserDeny:
                ysdk.showToastTips("用户拒绝了授权，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.WX_LoginFail:
                ysdk.showToastTips("微信登录失败，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.Login_TokenInvalid:
                ysdk.showToastTips("您尚未登录或者之前的登录已过期，请重试");
                ysdk.LoginCallBack(false);
                break;
            case eFlag.Login_NotRegisterRealName:
                // 显示登录界面
                ysdk.showToastTips("您的账号没有进行实名认证，请实名认证后重试");
                ysdk.LoginCallBack(false);
                break;
            default:
                // 显示登录界面
                ysdk.LoginCallBack(false);
                break;
        }
    }

    @Override
    public void OnWakeupNotify(WakeupRet ret) {
        ysdk.SendLog("called");
        ysdk.SendLog("flag:" + ret.flag);
        ysdk.SendLog("msg:" + ret.msg);
        ysdk.SendLog("platform:" + ret.platform);

        // TODO GAME 游戏需要在这里增加处理异账号的逻辑
        if (eFlag.Wakeup_YSDKLogining == ret.flag) {
            // 用拉起的账号登录，登录结果在OnLoginNotify()中回调
        } else if (ret.flag == eFlag.Wakeup_NeedUserSelectAccount) {
            // 异账号时，游戏需要弹出提示框让用户选择需要登录的账号
            ysdk.SendLog("diff account");
//            mainActivity.showDiffLogin();
        } else if (ret.flag == eFlag.Wakeup_NeedUserLogin) {
            // 没有有效的票据，登出游戏让用户重新登录
            ysdk.SendLog("need login");
//            mainActivity.letUserLogout();
        } else {
            ysdk.SendLog("logout");
//            mainActivity.letUserLogout();
        }
    }

    @Override
    public void OnRelationNotify(UserRelationRet relationRet) {
        String result = "";
        result = result +"flag:" + relationRet.flag + "\n";
        result = result +"msg:" + relationRet.msg + "\n";
        result = result +"platform:" + relationRet.platform + "\n";
//        if (relationRet.persons != null && relationRet.persons.size()>0) {
//            PersonInfo personInfo = (PersonInfo)relationRet.persons.firstElement();
//            StringBuilder builder = new StringBuilder();
//            builder.append("UserInfoResponse json: \n");
//            builder.append("nick_name: " + personInfo.nickName + "\n");
//            builder.append("open_id: " + personInfo.openId + "\n");
//            builder.append("userId: " + personInfo.userId + "\n");
//            builder.append("gender: " + personInfo.gender + "\n");
//            builder.append("picture_small: " + personInfo.pictureSmall + "\n");
//            builder.append("picture_middle: " + personInfo.pictureMiddle + "\n");
//            builder.append("picture_large: " + personInfo.pictureLarge + "\n");
//            builder.append("provice: " + personInfo.province + "\n");
//            builder.append("city: " + personInfo.city + "\n");
//            builder.append("country: " + personInfo.country + "\n");
//            result = result + builder.toString();
//        } else {
//            result = result + "relationRet.persons is bad";
//        }
        ysdk.SendLog("OnRelationNotify" + result);

        // 发送结果到结果展示界面
    }
}
