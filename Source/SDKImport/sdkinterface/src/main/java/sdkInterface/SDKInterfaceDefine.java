package sdkInterface;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKInterfaceDefine {
    public static final String ModuleName = "ModuleName";
    public static final String FunctionName = "FunctionName";
    public static final String ListenerName = "ListenerName";

    public static final String SDKName = "SDKName";
    public static final String SDKIndex = "SDKIndex";
    public static final String Tag = "Tag";

    public static final String ParameterName_IsSuccess = "IsSuccess";
    public static final String ParameterName_Error = "Error";
    public static final String ParameterName_Content = "Content";
    public static final String ParameterName_UserID = "UserID";

    public static final String ModuleName_Init = "Init";
    public static final String ModuleName_Dispose = "Dispose";
    public static final String ModuleName_Debug = "Debug";

    public static final String ModuleName_Login = "Login";
    public static final String ModuleName_Pay = "Pay";
    public static final String ModuleName_AD = "AD";
    public static final String ModuleName_Share = "Share";
    public static final String ModuleName_Other = "Other";
    public static final String ModuleName_Log = "Log";
    public static final String ModuleName_LifeCycle = "LifeCycle";
    public static final String ModuleName_RealName= "RealName";

    //回调方法
    public static final String FunctionName_OnError = "OnError";
    public static final String FunctionName_OnLog = "OnLog";

    public static final String FunctionName_OnInit = "OnInit";
    public static final String FunctionName_OnLogin = "OnLogin";
    public static final String FunctionName_OnLogout = "OnLogout";
    public static final String FunctionName_OnPay = "OnPay";
    public static final String Pay_FunctionName_GetGoodsInfo = "GetGoodsInfo";//获取商品信息回调
    public static final String Pay_FunctionName_ClearPurchase = "ClearPurchase";//擦除购买记录（已正常发货）
    public static final String FunctionName_OnOther = "OnOther";

    //LifeCycle 相关参数
    public static final String LifeCycle_FunctionName_OnApplicationQuit = "OnApplicationQuit";

    //Login相关参数
    public static final String Login_FunctionName_Login    = "Login";
    public static final String Login_FunctionName_LoginOut = "LoginOut";

    public static final String Login_ParameterName_Device = "Device";
    public static final String Login_ParameterName_AccountId = "AccountId";
    public static final String Login_ParameterName_loginPlatform = "loginPlatform";
    public static final String Login_ParameterName_NickName      = "NickName";
    public static final String Login_ParameterName_HeadPortrait  = "HeadPortrait";
    public static final String Login_ParameterName_AuthToken = "AuchToken";
    public static final String Login_ParameterName_TypeKey   = "TypeKey";

    //Pay相关参数
    public static final String Pay_ParameterName_GoodsID = "GoodsID";
    public static final String Pay_ParameterName_GoodsType = "GoodsType";
    public static final String Pay_ParameterName_Count = "Count";
    public static final String Pay_ParameterName_GoodsName = "GoodsName";
    public static final String Pay_ParameterName_GoodsDescription = "GoodsDescription";
    public static final String Pay_ParameterName_CallBackUrl = "CallBackUrl";
    public static final String Pay_ParameterName_InternalOrderID = "InternalOrderID";
    public static final String Pay_ParameterName_OrderID = "OrderID";
    public static final String Pay_ParameterName_PrepayID    = "PrepayID"; //预支付订单id
    public static final String Pay_ParameterName_Price = "Price";  //价格
    public static final String Pay_ParameterName_Currency = "Currency";  //货币
    public static final String Pay_ParameterName_Payment = "Payment";   //支付途径
    public static final String Pay_ParameterName_Receipt = "Receipt";   //支付回执
    public static final String Pay_ParameterName_LocalizedPriceString = "localizedPriceString";//本地货币类型与数目
    public static final String Pay_ParameterName_RegionID    = "RegionID";//大区ID

    public static final String Pay_GoodsTypeEnum_ONCE_ONLY = "ONCE_ONLY";
    public static final String Pay_GoodsTypeEnum_NORMAL = "NORMAL";
    public static final String Pay_GoodsTypeEnum_RIGHTS = "RIGHTS";

    //AD相关参数
    public static final String AD_FunctionName_LoadAD = "LoadAD";
    public static final String AD_FunctionName_PlayAD = "PlayAD";
    public static final String AD_FunctionName_CloseAD = "CloseAD";
    public static final String AD_FunctionName_ADIsLoaded = "ADIsLoaded";
    public static final String AD_FunctionName_OnAD = "OnAD";

    public static final String AD_ParameterName_ADType = "ADType";
    public static final String AD_ParameterName_ADResult = "ADResult";   //广告播放结果

    //ADType
    public  static final String AD_ADTypeEnum_Reward = "Reward";
    public  static final String AD_ADTypeEnum_Banner = "Banner";
    public  static final String AD_ADTypeEnum_Interstitial = "Interstitial";
    public  static final String AD_ADTypeEnum_Video = "Video";

    public  static final String AD_ParameterName_AdUnitID      = "AdUnitID";
    public  static final String AD_ParameterName_AdUnitIdKey   = "AdUnitIdKey";
    public  static final String AD_ParameterName_AdPlacementId = "AdPlacementId";

    //Share相关参数
    public static final String Share_FunctionName_Share = "Share";

    public static final String Share_ParameterName_Title       = "Title";
    public static final String Share_ParameterName_Description = "Description";
    public static final String Share_ParameterName_ThumbImage  = "ThumbImage"; //缩略图
    public static final String Share_ParameterName_Image       = "Image";

    //Log相关参数
    public static final String Log_FunctionName_Login = "LogLogin";
    public static final String Log_FunctionName_LoginOut = "LogLoginOut";
    public static final String Log_FunctionName_Event = "LogEvent";
    public static final String Log_FunctionName_LogPay = "LogPay";
    public static final String Log_FunctionName_LogError = "LogError";
    public static final String Log_FunctionName_LogPaySuccess = "LogPaySuccess";


    public static final String Log_FunctionName_RewardVirtualCurrency = "LogRewardVirtualCurrency"; //奖励虚拟币
    public static final String Log_FunctionName_PurchaseVirtualCurrency = "LogPurchaseVirtualCurrency";//消费虚拟币
    public static final String Log_FunctionName_UseItem = "LogUseItem";//使用虚拟物品（通过虚拟币购买的）

    //Log Login相关
    public static final String Log_ParameterName_AccountId = "AccountId";

    //Log VirtualCurrency相关
    public static final String Log_ParameterName_RewardReason = "RewardReason";

    //Log Event相关
    public static final String Log_ParameterName_EventID = "EventID";
    public static final String Log_ParameterName_EventLabel = "EventLabel";
    public static final String Log_ParameterName_EventMap = "EventMap";

    //Other相关参数
    public static final String Other_FunctionName_Exit = "Exit";

    //RealName 实名制相关
    public static final String RealName_FunctionName_OnLogin = "OnLogin";//登录
    public static final String RealName_FunctionName_OnLogout = "OnLogout";//登出
    public static final String RealName_FunctionName_RealNameCallBack="RealNameCallBack";//实名认证完成后的回调
    public static final String RealName_FunctionName_PayLimitCallBack = "PayLimitCallBack";//询问支付限制的回调
    public static final String RealName_FunctionName_RealNameLogout ="RealNameLogout";//实名系统 通知逻辑层退出登录
    public static final String RealName_FunctionName_GetRealNameType ="GetRealNameType";//获得实名认证状态
    public static final String RealName_FunctionName_IsAdult ="IsAdult";//是否成年
    public static final String RealName_FunctionName_LogPayAmount ="LogPayAmount";//上报支付金额
    public static final String RealName_FunctionName_CheckPayLimit="CheckPayLimit";//是否支付受限制
    public static final String RealName_FunctionName_GetTodayOnlineTime ="GetTodayOnlineTime";//获取今日在线时长
    public static final String RealName_FunctionName_StartRealNameAttestation = "StartRealNameAttestation";//开始实名认证
    public static final String RealName_ParameterName_RealNameStatus="RealNameStatus";//实名认证的状态
    public static final String RealName_ParameterName_IsAdult = "IsAdult";//是否是成年人
    public static final String RealName_ParameterName_PayAmount = "PayAmount";//支付金额
    public static final String RealName_ParameterName_IsPayLimit = "IsPayLimit";//是否被限制支付

    //Other -> 剪贴板
    public static final String Other_FunctionName_CopyToClipboard = "CopyToClipboard";
    public static final String Other_FunctionName_CopyFromClipboard = "CopyFromClipboard";
    public static final String Other_ParameterName_Content = "Content";

    //Other -> 热更新安装包
    public static final String Other_FunctionName_DownloadAPK = "DownloadAPK";
    public static final String Other_FunctionName_GetAPKSize = "GetAPKSize";
    public static final String Other_ParameterName_DownloadURL = "DownloadURL";
    public static final String Other_ParameterName_Progress = "Progress";
    public static final String Other_ParameterName_TotalProgress = "TotalProgress";
    public static final String Other_ParameterName_Size = "Size";

    //Other -> 打开游戏中心
    public static final String Other_FunctionName_OpenGameCenter="OpenGameCenter";

    //Other -> 存档
    public  static  final  String Other_FunctionName_UploadGameRecord="UploadGameRecord";
    public  static  final  String Other_ParameterName_RecordPath="RecordPath";//存档路径
    public  static  final  String Other_ParameterName_RecordName="RecordName";//文件名


    //Properties
    public static final String FileName_ChannelProperties = "Channel";
    public static final String FileName_ExtraProperties = "Extra";
    public static final String PropertiesKey_IsLog = "IsLog";                           //是否输出日志
    public static final String PropertiesKey_IsMultiDex = "IsMultiDex";                 //是否分包
    public static final String PropertiesKey_SelectNetworkPath = "SelectNetworkPath";  //选服配置下载地址
    public static final String PropertiesKey_UpdateDownLoadPath = "UpdateDownLoadPath"; //热更新下载地址(最后没有斜线)
    public static final String PropertiesKey_TestUpdateDownLoadPath = "TestUpdateDownLoadPath"; //热更新下载测试地址(最后没有斜线)
    public static final String PropertiesKey_ChannelName = "ChannelName";               //渠道名称
    public static final String PropertiesKey_StoreName = "StoreName";                 //商店名称
    public static final String PropertiesKey_LoginPlatform = "LoginPlatform";           //登录平台
    public static final String PropertiesKey_NetworkID = "NetworkID";                   //服务器选择
    public static final String PropertiesKey_QQGroup = "QQGroup";                     //玩家QQ群
    public static final String PropertiesKey_DirectlyLogin = "DirectlyLogin";           //是否直接登录，不选择登录模式
    public static final String PropertiesKey_OpenRealName = "OpenRealName";           //打开实名认证
    public static final String PropertiesKey_IsExamine = "IsExamine";                    //审核版本
    public static final String PropertiesKey_RedeemCode = "RedeemCode";                  //兑换码
    public static final String PropertiesKey_HideAllAD = "HideAllAD";                    //隐藏所有广告按钮
    public static final String PropertiesKey_CloseGuide = "CloseGuide";                  //关闭新手引导
}
