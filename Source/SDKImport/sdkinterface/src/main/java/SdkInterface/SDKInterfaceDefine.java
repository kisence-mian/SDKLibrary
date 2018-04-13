package SdkInterface;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKInterfaceDefine
{
    public static final String ParameterName_FunctionName = "FunctionName";
    public static final String ParameterName_ListenerName = "ListenerName";

    public static final String ParameterName_IsSuccess = "IsSuccess";
    public static final String ParameterName_Error = "Error";
    public static final String ParameterName_Content = "Content";
    public static final String ParameterName_SDKName = "SDKName";
    public static final String ParameterName_SDKIndex = "SDKIndex";

    public static final String FunctionName_Init = "Init";
    public static final String FunctionName_Login = "Login";
    public static final String FunctionName_Logout = "Logout";
    public static final String FunctionName_Pay = "Pay";
    public static final String FunctionName_AD = "AD";
    public static final String FunctionName_Other = "Other";
    public static final String FunctionName_Log = "Log";

    public static final String FunctionName_Error = "Error";

    //回调方法
    public static final String FunctionName_OnInit = "OnInit";
    public static final String FunctionName_OnLogin = "OnLogin";
    public static final String FunctionName_OnLogout = "OnLogout";
    public static final String FunctionName_OnPay = "OnPay";
    public static final String FunctionName_OnOther = "OnOther";

    //Login相关参数

    //Pay相关参数
    public static final String Pay_ParameterName_GoodsID = "goodsID";
    public static final String Pay_ParameterName_GoodsType = "propType";
    public static final String Pay_ParameterName_Count = "count";
    public static final String Pay_ParameterName_GoodsName = "goodsName";
    public static final String Pay_ParameterName_CallBackUrl = "CallBackUrl";
    public static final String Pay_ParameterName_CpOrderID = "cpOrderID";

    public static final String Pay_GoodsTypeEnum_ONCE_ONLY = "ONCE_ONLY";
    public static final String Pay_GoodsTypeEnum_NORMAL = "NORMAL";
    public static final String Pay_GoodsTypeEnum_RIGHTS = "RIGHTS";

    //AD相关参数

    //Log相关参数
    public static final String Log_FunctionName = "LogFunctionName";
    public static final String Log_FunctionName_Login = "Login";
    public static final String Log_FunctionName_LoginOut = "LoginOut";
    public static final String Log_FunctionName_Event = "Event";

    //Log Login相关
    public static final String Log_ParameterName_AccountId  = "AccountId";

    //Log Event相关
    public static final String Log_ParameterName_EventID  = "EventID";
    public static final String Log_ParameterName_EventLabel = "EventLabel";
    public static final String Log_ParameterName_EventMap   = "EventMap";

    //Other相关参数
    public static final String Other_FunctionName = "OtherFunctionName";
    public static final String Other_FunctionName_Exit = "Exit";
}
