.class public Lcom/loongcheer/LoogcheerSDK;
.super LsdkInterface/SDKBase;
.source "LoogcheerSDK.java"

# interfaces
.implements LsdkInterface/IPay;
.implements LsdkInterface/IAD;
.implements LsdkInterface/ILog;


# instance fields
.field AppsFlyer_APP_KEY:Ljava/lang/String;

.field GooglePlay_Key:Ljava/lang/String;

.field Pangle_app_id:Ljava/lang/String;

.field Pangle_app_name:Ljava/lang/String;

.field PayIDKey:Ljava/lang/String;

.field goodsIDCache:Ljava/lang/String;

.field goodsIDCache_GoodsInfo:Ljava/lang/String;

.field ironSource_app_Key:Ljava/lang/String;

.field ironSource_placementname:Ljava/lang/String;

.field payIDDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field payInfo:LsdkInterface/module/PayInfo;

.field priceDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field priceDictByProductID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field productIDDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rewardVideoAdId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 53
    new-instance v0, LsdkInterface/module/PayInfo;

    invoke-direct {v0}, LsdkInterface/module/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->payInfo:LsdkInterface/module/PayInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/module/PayInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 39
    invoke-virtual/range {p0 .. p5}, Lcom/loongcheer/LoogcheerSDK;->CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/module/PayInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 39
    invoke-virtual/range {p0 .. p5}, Lcom/loongcheer/LoogcheerSDK;->CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/module/PayInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 39
    invoke-virtual/range {p0 .. p5}, Lcom/loongcheer/LoogcheerSDK;->CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/loongcheer/LoogcheerSDK;
    .param p1, "x1"    # LsdkInterface/define/ADType;
    .param p2, "x2"    # LsdkInterface/define/ADResult;
    .param p3, "x3"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/loongcheer/LoogcheerSDK;->CallBackADReward(LsdkInterface/define/ADType;LsdkInterface/define/ADResult;Ljava/lang/String;)V

    return-void
.end method

.method public static jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 458
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 460
    .local v1, "iterable":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_9

    .line 466
    :cond_1d
    return-object v0
.end method


# virtual methods
.method public AfPlayValidation(Lcom/android/billingclient/api/Purchase;)V
    .registers 12
    .param p1, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getsku"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v1

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK;->GooglePlay_Key:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/loongcheer/LoogcheerSDK;->payInfo:LsdkInterface/module/PayInfo;

    iget v7, v7, LsdkInterface/module/PayInfo;->price:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/loongcheer/LoogcheerSDK$2;

    invoke-direct {v9, p0}, Lcom/loongcheer/LoogcheerSDK$2;-><init>(Lcom/loongcheer/LoogcheerSDK;)V

    .line 206
    const-string v7, "USD"

    move-object v8, v0

    invoke-virtual/range {v1 .. v9}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->playValidation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/loongcheer/appsflyersdk/callback/PlayCallback;)V

    .line 224
    return-void
.end method

.method ClearGoodOrder()V
    .registers 2

    .line 228
    const-string v0, "ClearGoodOrder"

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/loongcheer/LoogcheerSDK$3;

    invoke-direct {v0, p0}, Lcom/loongcheer/LoogcheerSDK$3;-><init>(Lcom/loongcheer/LoogcheerSDK;)V

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->queryPurchasesList(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V

    .line 249
    return-void
.end method

.method public ClearPurchase(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 337
    return-void
.end method

.method public CloseAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 383
    return-void
.end method

.method ConsumptionGoods(Ljava/lang/String;)V
    .registers 5
    .param p1, "goodsToken"    # Ljava/lang/String;

    .line 253
    move-object v0, p1

    .line 254
    .local v0, "token":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumptionGoods goodsToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/loongcheer/LoogcheerSDK$4;

    invoke-direct {v1, p0, v0}, Lcom/loongcheer/LoogcheerSDK$4;-><init>(Lcom/loongcheer/LoogcheerSDK;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->consumption(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V

    .line 267
    return-void
.end method

.method public GetGoodsInfo(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 318
    :try_start_0
    const-string v0, "GoodsID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "goodsID":Ljava/lang/String;
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->priceDict:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 322
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->priceDict:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/loongcheer/LoogcheerSDK;->CallBackGoodsInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 326
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetGoodsInfo Error not find goodsID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendError(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    .line 331
    .end local v0    # "goodsID":Ljava/lang/String;
    :goto_30
    goto :goto_4c

    .line 329
    :catch_31
    move-exception v0

    .line 330
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetGoodsInfo error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/loongcheer/LoogcheerSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 332
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4c
    return-void
.end method

.method public Init(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 72
    const-string v0, "LoogcheerSDK Init"

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 74
    const-string v0, "com.unity3d.services.core.device.AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation"

    invoke-static {v0}, LsdkInterface/tool/JavaUtils;->VerifyClass(Ljava/lang/String;)V

    .line 77
    :try_start_a
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "rewardVideoAdId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "ironSource_app_key"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_app_Key:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "ironSource_placementname"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_placementname:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Pangle_app_id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_id:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Pangle_app_name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_name:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "AppsFlyer_APP_KEY"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->AppsFlyer_APP_KEY:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "PayIDKey"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->PayIDKey:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "GooglePlay_Key"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->GooglePlay_Key:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->PayIDKey:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Lcom/loongcheer/LoogcheerSDK;->GenerateHashMapBySqlitContent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->payIDDict:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->productIDDict:Ljava/util/HashMap;

    .line 93
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->payIDDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->productIDDict:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK;->payIDDict:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    nop

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_85

    .line 97
    :cond_9e
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

    .line 99
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

    .line 100
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

    .line 102
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

    .line 103
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

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppsFlyer_APP_KEY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->AppsFlyer_APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GooglePlay_Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->GooglePlay_Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 109
    invoke-static {}, LsdkInterface/SdkInterface;->IsDebug()Z

    move-result v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/config/GameConfig;->setDebug(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/config/GameConfig;->setActivity(Landroid/app/Activity;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoogcheerSDK getApplication "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->AppsFlyer_APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 118
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

    .line 121
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_app_Key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInit(Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 122
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->ironSource_placementname:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 125
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK;->Pangle_app_name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->TTadInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 126
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->setParallel(I)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 128
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->InitPriceInfo()V

    .line 130
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->ClearGoodOrder()V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1cd} :catch_1ce

    .line 134
    goto :goto_1e5

    .line 132
    :catch_1ce
    move-exception v0

    .line 133
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

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e5
    return-void
.end method

.method InitPriceInfo()V
    .registers 5

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->priceDict:Ljava/util/HashMap;

    .line 283
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->priceDictByProductID:Ljava/util/HashMap;

    .line 285
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->payIDDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK;->payIDDict:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_1d

    .line 289
    :cond_33
    new-instance v1, Lcom/loongcheer/LoogcheerSDK$5;

    invoke-direct {v1, p0}, Lcom/loongcheer/LoogcheerSDK$5;-><init>(Lcom/loongcheer/LoogcheerSDK;)V

    .line 312
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->INAPP:Ljava/lang/String;

    .line 289
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->querySkuDetails(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public IsLoaded(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 387
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->queryCashRewardVideoA(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public IsPrePay()Z
    .registers 2

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public IsReSendPay()Z
    .registers 2

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public LoadAD(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 342
    return-void
.end method

.method public LogError(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 453
    return-void
.end method

.method public LogPay(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 405
    return-void
.end method

.method public LogPaySuccess(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 410
    return-void
.end method

.method public Login(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loongcheer LogLogin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->ClearGoodOrder()V

    .line 395
    return-void
.end method

.method public LoginOut(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 400
    return-void
.end method

.method public OnApplicationCreate()V
    .registers 1

    .line 67
    invoke-super {p0}, LsdkInterface/SDKBase;->OnApplicationCreate()V

    .line 68
    return-void
.end method

.method public OnEvent(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 430
    const-string v0, "EventMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loongcheer OnEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 433
    :try_start_1c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "EventID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "eventID":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 438
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "mapString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, "mapJson":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/loongcheer/LoogcheerSDK;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    move-object v1, v4

    .line 444
    .end local v0    # "mapString":Ljava/lang/String;
    .end local v3    # "mapJson":Lorg/json/JSONObject;
    :cond_3b
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_46} :catch_47

    .line 447
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "eventID":Ljava/lang/String;
    goto :goto_62

    .line 445
    :catch_47
    move-exception v0

    .line 446
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loongcheer OnEvent error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/loongcheer/LoogcheerSDK;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 448
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_62
    return-void
.end method

.method public OnPause()V
    .registers 3

    .line 144
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->onPause(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method public OnResume()V
    .registers 3

    .line 139
    invoke-static {}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->onResume(Landroid/app/Activity;)V

    .line 140
    return-void
.end method

.method public Pay(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 150
    const-string v0, "Loongcheer Pay"

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, LsdkInterface/module/PayInfo;->FromJson(Lorg/json/JSONObject;)LsdkInterface/module/PayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->payInfo:LsdkInterface/module/PayInfo;

    .line 153
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->payIDDict:Ljava/util/HashMap;

    iget-object v0, v0, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->goodsIDCache:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loongcheer Pay goodsID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->goodsIDCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/loongcheer/LoogcheerSDK;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK;->goodsIDCache:Ljava/lang/String;

    sget-object v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->INAPP:Ljava/lang/String;

    new-instance v3, Lcom/loongcheer/LoogcheerSDK$1;

    invoke-direct {v3, p0}, Lcom/loongcheer/LoogcheerSDK$1;-><init>(Lcom/loongcheer/LoogcheerSDK;)V

    const-string v4, "accountid"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->googlePlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public PlayAD(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 346
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK;->rewardVideoAdId:Ljava/lang/String;

    new-instance v1, Lcom/loongcheer/LoogcheerSDK$6;

    invoke-direct {v1, p0}, Lcom/loongcheer/LoogcheerSDK$6;-><init>(Lcom/loongcheer/LoogcheerSDK;)V

    invoke-static {v0, v1}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->showRewardedVideoAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    .line 379
    return-void
.end method

.method public PurchaseVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 420
    return-void
.end method

.method public RewardVirtualCurrency(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 415
    return-void
.end method

.method public UseItem(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 425
    return-void
.end method
