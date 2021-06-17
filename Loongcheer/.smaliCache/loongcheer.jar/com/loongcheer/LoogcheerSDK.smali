.class public Lcom/loongcheer/LoogcheerSDK;
.super LsdkInterface/SDKBase;
.source "LoogcheerSDK.java"

# interfaces
.implements LsdkInterface/IPay;
.implements LsdkInterface/IAD;


# instance fields
.field Pangle_app_id:Ljava/lang/String;

.field Pangle_app_name:Ljava/lang/String;

.field ironSource_app_Key:Ljava/lang/String;

.field ironSource_placementname:Ljava/lang/String;

.field rewardVideoAdId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ClearPurchase(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 106
    return-void
.end method

.method public CloseAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 152
    return-void
.end method

.method public GetGoodsInfo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 101
    return-void
.end method

.method public Init(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 29
    const-string v0, "LoogcheerSDK Init"

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 32
    :try_start_5
    const-string v0, "com.google.android.gms.common.internal.zzp"

    invoke-static {v0}, LsdkInterface/tool/JavaUtils;->VerifyClass(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "rewardVideoAdId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "ironSource_app_key"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_app_Key:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "ironSource_placementname"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_placementname:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Pangle_app_id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_id:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Pangle_app_name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_name:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewardVideoAdId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ironSource_app_key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_app_Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ironSource_placementname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_placementname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pangle_app_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pangle_app_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 51
    invoke-static {}, LsdkInterface/SdkInterface;->IsDebug()Z

    move-result v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/config/GameConfig;->setDebug(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/config/GameConfig;->setActivity(Landroid/app/Activity;)V

    .line 55
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->admobInit()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 58
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_app_Key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInit(Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 59
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_placementname:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 62
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->TTadInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 64
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->setParallel(I)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_110} :catch_111

    .line 70
    goto :goto_128

    .line 68
    :catch_111
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoogcheerSDK Init error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/loongcheer/LoogcheerSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_128
    return-void
.end method

.method public IsLoaded(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 156
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->queryCashRewardVideoA(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsPrePay()Z
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public IsReSendPay()Z
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public LoadAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 111
    return-void
.end method

.method public OnPause()V
    .registers 3

    .line 80
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->onPause(Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method public OnResume()V
    .registers 3

    .line 75
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->onResume(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public Pay(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 86
    return-void
.end method

.method public PlayAD(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 115
    new-instance v0, Lcom/loongcheer/LoogcheerSDK$1;

    invoke-direct {v0, p0}, Lcom/loongcheer/LoogcheerSDK$1;-><init>(Lcom/loongcheer/LoogcheerSDK;)V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->showRewardedVideoAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    .line 148
    return-void
.end method
