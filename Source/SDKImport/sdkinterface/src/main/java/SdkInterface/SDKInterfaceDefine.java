package SdkInterface;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKInterfaceDefine
{
    public static final String ModuleName   = "ModuleName";
    public static final String FunctionName = "FunctionName";
    public static final String ListenerName = "ListenerName";

    public static final String SDKName  = "SDKName";
    public static final String SDKIndex = "SDKIndex";

    public static final String ParameterName_IsSuccess = "IsSuccess";
    public static final String ParameterName_Error     = "Error";
    public static final String ParameterName_Content   = "Content";

    public static final String ModuleName_Init     = "Init";
    public static final String ModuleName_Dispose  = "Dispose";
    public static final String ModuleName_Debug    = "Debug";

    public static final String ModuleName_Login = "Login";
    public static final String ModuleName_Pay   = "Pay";
    public static final String ModuleName_AD    = "AD";
    public static final String ModuleName_Other = "Other";
    public static final String ModuleName_Log   = "Log";

    //回调方法
    public static final String FunctionName_OnError = "OnError";
    public static final String FunctionName_OnLog   = "OnLog";

    public static final String FunctionName_OnInit   = "OnInit";
    public static final String FunctionName_OnLogin  = "OnLogin";
    public static final String FunctionName_OnLogout = "OnLogout";
    public static final String FunctionName_OnPay    = "OnPay";
    public static final String FunctionName_OnOther  = "OnOther";

    //Login相关参数
    public static final String FunctionName_Logout = "Logout";
    public static final String Login_ParameterName_Device = "Device";
    public static final String Login_ParameterName_AccountId = "AccountId";
    public static final String Login_ParameterName_loginPlatform = "loginPlatform";

    //Pay相关参数
    public static final String Pay_ParameterName_GoodsID     = "GoodsID";
    public static final String Pay_ParameterName_GoodsType   = "GoodsType";
    public static final String Pay_ParameterName_Count       = "Count";
    public static final String Pay_ParameterName_GoodsName   = "GoodsName";
    public static final String Pay_ParameterName_CallBackUrl = "CallBackUrl";
    public static final String Pay_ParameterName_CpOrderID   = "CpOrderID";//第三方支付ID
    public static final String Pay_ParameterName_OrderID     = "OrderID";  //我们自己的支付ID

    public static final String Pay_GoodsTypeEnum_ONCE_ONLY = "ONCE_ONLY";
    public static final String Pay_GoodsTypeEnum_NORMAL    = "NORMAL";
    public static final String Pay_GoodsTypeEnum_RIGHTS    = "RIGHTS";

    //AD相关参数

    //Log相关参数
    public static final String Log_FunctionName_Login    = "Login";
    public static final String Log_FunctionName_LoginOut = "LoginOut";
    public static final String Log_FunctionName_Event    = "Event";

    //Log Login相关
    public static final String Log_ParameterName_AccountId = "AccountId";

    //Log Event相关
    public static final String Log_ParameterName_EventID    = "EventID";
    public static final String Log_ParameterName_EventLabel = "EventLabel";
    public static final String Log_ParameterName_EventMap   = "EventMap";

    //Other相关参数
    public static final String Other_FunctionName_Exit = "Exit";

    //Other -> 剪贴板
    public static final String Other_ModuleName_Clipboard = "Clipboard";
    public static final String Other_FunctionName_CopyToClipboard = "CopyToClipboard";
    public static final String Other_FunctionName_CopyFromClipboard = "CopyFromClipboard";
    public static final String Other_ParameterName_Content = "Content";

    //Other -> 热更新安装包
    public static final String Other_FunctionName_DownloadAPK = "DownloadAPK";
    public static final String Other_FunctionName_GetAPKSize = "GetAPKSize";
    public static final String Other_ParameterName_DownloadURL = "DownloadURL";
    public static final String  Other_ParameterName_Progress = "Progress";
    public static final String  Other_ParameterName_TotalProgress = "TotalProgress";
    public static final String  Other_ParameterName_Size = "Size";
}
