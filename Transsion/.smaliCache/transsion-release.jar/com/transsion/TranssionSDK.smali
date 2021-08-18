.class public Lcom/transsion/TranssionSDK;
.super LsdkInterface/SDKBase;
.source "TranssionSDK.java"

# interfaces
.implements LsdkInterface/ILogin;
.implements LsdkInterface/IPay;
.implements LsdkInterface/IAD;


# instance fields
.field m_PayInfo:LsdkInterface/module/PayInfo;

.field m_Result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/gamepay/core/bean/ProductConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/transsion/TranssionSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/transsion/TranssionSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/transsion/TranssionSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/TranssionSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/transsion/TranssionSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/TranssionSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ClearPurchase(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 277
    return-void
.end method

.method public CloseAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 352
    return-void
.end method

.method GetConfig(Ljava/lang/String;)Lcom/transsion/gamepay/core/bean/ProductConfig;
    .registers 4
    .param p1, "productName"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 193
    iget-object v1, p0, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/gamepay/core/bean/ProductConfig;

    iget-object v1, v1, Lcom/transsion/gamepay/core/bean/ProductConfig;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 195
    iget-object v1, p0, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/gamepay/core/bean/ProductConfig;

    return-object v1

    .line 191
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetGoodsInfo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 272
    return-void
.end method

.method GetProductConfig()V
    .registers 2

    .line 180
    new-instance v0, Lcom/transsion/TranssionSDK$2;

    invoke-direct {v0, p0}, Lcom/transsion/TranssionSDK$2;-><init>(Lcom/transsion/TranssionSDK;)V

    invoke-static {v0}, Lcom/transsion/gamepay/core/PayHelper;->getProductConfig(Lcom/transsion/gamepay/core/ConfigCallback;)V

    .line 187
    return-void
.end method

.method public Init(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 164
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->Init(Lorg/json/JSONObject;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transsion Inited , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public IsLoaded(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 356
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsPrePay()Z
    .registers 2

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public IsReSendPay()Z
    .registers 2

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public LoadAD(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 281
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transsion/TranssionSDK$4;

    invoke-direct {v1, p0}, Lcom/transsion/TranssionSDK$4;-><init>(Lcom/transsion/TranssionSDK;)V

    new-instance v2, Lcom/transsion/TranssionSDK$5;

    invoke-direct {v2, p0}, Lcom/transsion/TranssionSDK$5;-><init>(Lcom/transsion/TranssionSDK;)V

    invoke-static {v0, v1, v2}, Lcom/transsion/gamead/AdHelper;->loadReward(Landroid/app/Activity;Lcom/transsion/gamead/GameRewardedAdLoadCallback;Lcom/transsion/gamead/GameRewardedAdCallback;)V

    .line 313
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transsion Login , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transsion LoginOut , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public OnCreate()V
    .registers 7

    .line 43
    invoke-super {p0}, LsdkInterface/SDKBase;->OnCreate()V

    .line 47
    :try_start_3
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "AppKey"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "DebugAble"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 50
    .local v1, "debuggable":Z
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "TestMccMnc"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "testMccMnc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v4, "RewardUnitId"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "RewardUnitId":Ljava/lang/String;
    new-instance v4, Lcom/transsion/gamepay/core/PayInitializer$Builder;

    .line 56
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/transsion/gamepay/core/PayInitializer$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v1}, Lcom/transsion/gamepay/core/PayInitializer$Builder;->setDebuggable(Z)Lcom/transsion/gamepay/core/PayInitializer$Builder;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v2}, Lcom/transsion/gamepay/core/PayInitializer$Builder;->setTestMccMnc(Ljava/lang/String;)Lcom/transsion/gamepay/core/PayInitializer$Builder;

    move-result-object v4

    new-instance v5, Lcom/transsion/TranssionSDK$1;

    invoke-direct {v5, p0}, Lcom/transsion/TranssionSDK$1;-><init>(Lcom/transsion/TranssionSDK;)V

    .line 69
    invoke-virtual {v4, v5}, Lcom/transsion/gamepay/core/PayInitializer$Builder;->setSupplementCallback(Lcom/transsion/gamepay/core/SupplementCallback;)Lcom/transsion/gamepay/core/PayInitializer$Builder;

    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/transsion/gamepay/core/PayInitializer;->init(Lcom/transsion/gamepay/core/PayInitializer$Builder;)V

    .line 95
    new-instance v4, Lcom/transsion/gamead/AdInitializer$Builder;

    .line 97
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/transsion/gamead/AdInitializer$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4, v3}, Lcom/transsion/gamead/AdInitializer$Builder;->setRewardUnitId(Ljava/lang/String;)Lcom/transsion/gamead/AdInitializer$Builder;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v1}, Lcom/transsion/gamead/AdInitializer$Builder;->setDebuggable(Z)Lcom/transsion/gamead/AdInitializer$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 117
    invoke-virtual {v4, v5}, Lcom/transsion/gamead/AdInitializer$Builder;->setTotalSwitch(Z)Lcom/transsion/gamead/AdInitializer$Builder;

    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/transsion/gamead/AdInitializer;->init(Lcom/transsion/gamead/AdInitializer$Builder;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6d} :catch_6e

    .line 122
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "debuggable":Z
    .end local v2    # "testMccMnc":Ljava/lang/String;
    .end local v3    # "RewardUnitId":Ljava/lang/String;
    goto :goto_74

    .line 120
    :catch_6e
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Transsion Init Error"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/TranssionSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :goto_74
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetProductConfig()V

    .line 126
    const-string v0, "Transsion onCreate Complete"

    invoke-virtual {p0, v0}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public Pay(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 203
    iget-object v0, p0, Lcom/transsion/TranssionSDK;->m_Result:Ljava/util/List;

    if-nez v0, :cond_15

    .line 204
    const-string v0, "TranssionSDK m_Result Need init"

    .line 205
    .local v0, "e":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/TranssionSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 206
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v1, v2, v0}, Lcom/transsion/TranssionSDK;->SendPayCallBack(ZLjava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 210
    .end local v0    # "e":Ljava/lang/String;
    :cond_15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 213
    .local v0, "map":Lorg/json/JSONArray;
    :try_start_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v1, "productID":Lorg/json/JSONObject;
    const-string v2, "productId"

    iget-object v3, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v3, v3, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 221
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v2, "userID":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    iget-object v4, v4, LsdkInterface/module/PayInfo;->userID:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_3c} :catch_3e

    .line 227
    nop

    .end local v1    # "productID":Lorg/json/JSONObject;
    .end local v2    # "userID":Lorg/json/JSONObject;
    goto :goto_44

    .line 225
    :catch_3e
    move-exception v1

    .line 226
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "Pay Error "

    invoke-virtual {p0, v2, v1}, Lcom/transsion/TranssionSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_44
    invoke-static {p1}, LsdkInterface/module/PayInfo;->FromJson(Lorg/json/JSONObject;)LsdkInterface/module/PayInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    .line 231
    iget-object v1, v1, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/TranssionSDK;->GetConfig(Ljava/lang/String;)Lcom/transsion/gamepay/core/bean/ProductConfig;

    move-result-object v1

    .line 232
    .local v1, "currentProduct":Lcom/transsion/gamepay/core/bean/ProductConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transsion Pay , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/transsion/gamepay/core/PayParams$Builder;

    iget-object v4, v1, Lcom/transsion/gamepay/core/bean/ProductConfig;->id:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/transsion/gamepay/core/PayParams$Builder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/gamepay/core/PayParams$Builder;->setExtra(Ljava/lang/String;)Lcom/transsion/gamepay/core/PayParams$Builder;

    move-result-object v3

    new-instance v4, Lcom/transsion/TranssionSDK$3;

    invoke-direct {v4, p0}, Lcom/transsion/TranssionSDK$3;-><init>(Lcom/transsion/TranssionSDK;)V

    .line 233
    invoke-static {v2, v3, v4}, Lcom/transsion/gamepay/core/PayHelper;->pay(Landroid/app/Activity;Lcom/transsion/gamepay/core/PayParams$Builder;Lcom/transsion/gamepay/core/PayCallback;)V

    .line 255
    return-void
.end method

.method public PlayAD(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 320
    invoke-virtual {p0}, Lcom/transsion/TranssionSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transsion/TranssionSDK$6;

    invoke-direct {v1, p0}, Lcom/transsion/TranssionSDK$6;-><init>(Lcom/transsion/TranssionSDK;)V

    invoke-static {v0, v1}, Lcom/transsion/gamead/AdHelper;->showReward(Landroid/app/Activity;Lcom/transsion/gamead/GameAdDisplayCallback;)V

    .line 347
    return-void
.end method

.method SendPayCallBack(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "success"    # Z
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v0, "jo":Lorg/json/JSONObject;
    const-string v1, ""

    .line 134
    .local v1, "goodsID":Ljava/lang/String;
    iget-object v2, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    if-eqz v2, :cond_e

    .line 136
    iget-object v2, v2, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    move-object v1, v2

    .line 139
    :cond_e
    const-string v2, "ModuleName"

    const-string v3, "Pay"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "GoodsID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "IsSuccess"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 142
    const-string v2, "OrderID"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "Error"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "Payment"

    sget-object v3, LsdkInterface/define/StoreName;->OKJOY:LsdkInterface/define/StoreName;

    invoke-virtual {v3}, LsdkInterface/define/StoreName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "Receipt"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayInfo is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jo is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    if-nez v2, :cond_6c

    .line 150
    new-instance v2, LsdkInterface/module/PayInfo;

    invoke-direct {v2}, LsdkInterface/module/PayInfo;-><init>()V

    iput-object v2, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    .line 152
    :cond_6c
    iget-object v2, p0, Lcom/transsion/TranssionSDK;->m_PayInfo:LsdkInterface/module/PayInfo;

    invoke-virtual {v2, v0}, LsdkInterface/module/PayInfo;->ToJson(Lorg/json/JSONObject;)V

    .line 154
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 159
    .end local v0    # "jo":Lorg/json/JSONObject;
    .end local v1    # "goodsID":Ljava/lang/String;
    goto :goto_93

    .line 157
    :catch_7c
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendPayCallBack Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/TranssionSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 160
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_93
    return-void
.end method
