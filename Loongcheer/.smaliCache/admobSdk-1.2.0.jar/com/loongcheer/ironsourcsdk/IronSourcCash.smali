.class public Lcom/loongcheer/ironsourcsdk/IronSourcCash;
.super Ljava/lang/Object;
.source "IronSourcCash.java"


# static fields
.field private static final INIT:I = 0x10

.field private static final LOADINTERSTITIAL:I = 0x14

.field private static final SHOWINTERSTITIAL:I = 0x13

.field private static final SHOWREWD:I = 0x11

.field private static adInterstitialCallBacks:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

.field private static adIsCallBack:Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;

.field private static adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

.field private static callBackMoney:Z

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->callBackMoney:Z

    .line 35
    new-instance v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init()V
    .registers 2

    .line 247
    sget-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->handler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    return-void
.end method

.method static synthetic access$000()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;
    .registers 1

    .line 26
    sget-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    return-object v0
.end method

.method static synthetic access$100()Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;
    .registers 1

    .line 26
    sget-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adIsCallBack:Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;

    return-object v0
.end method

.method static synthetic access$200()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    .registers 1

    .line 26
    sget-object v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adInterstitialCallBacks:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 26
    sget-boolean v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->callBackMoney:Z

    return v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    .line 26
    invoke-static {p0}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->appsflyerAdValue(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    return-void
.end method

.method private static appsflyerAdValue(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .registers 6
    .param p0, "impressionData"    # Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    .line 286
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->callBackMoney:Z

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAuctionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auctionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdUnit()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adUnit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->netWorkAdpterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Network"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "instanceName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "instanceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getPlacement()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getRevenue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "valueMicros"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getPrecision()Ljava/lang/String;

    move-result-object v1

    const-string v2, "precision"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ab"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "segmentName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getLifetimeRevenue()Ljava/lang/Double;

    move-result-object v1

    const-string v2, "lifetimeRevenue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getEncryptedCPM()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encryptedCPM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "ad_type"

    const-string v2, "IS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u5f53\u524d\u5e7f\u544a\u4ef7\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::::=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 305
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 306
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IS ARM \u6570\u636e key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 307
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_d3

    .line 309
    :cond_10a
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdUnit()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewarded_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 310
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v1

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "admob_rwd_pingback"

    invoke-virtual {v1, v2, v0, v3}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_131

    .line 312
    :cond_124
    invoke-static {}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->getInstance()Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;

    move-result-object v1

    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "admob_intl_pingback"

    invoke-virtual {v1, v2, v0, v3}, Lcom/loongcheer/appsflyersdk/init/AppsflyerInit;->event(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 319
    :goto_131
    return-void
.end method

.method public static loadInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;)V
    .registers 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "adIsCallBacks"    # Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u8f7dIS \u63d2\u9875\u5e7f\u544a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 252
    sput-object p1, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adIsCallBack:Lcom/loongcheer/admobsdk/callBack/AdIsCallBack;

    .line 253
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 254
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 255
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    sget-object v1, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method

.method private static netWorkAdpterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 324
    const-string v0, "unity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 325
    const-string v0, "Unity"

    return-object v0

    .line 327
    :cond_b
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 328
    const-string v0, "Facebook"

    return-object v0

    .line 329
    :cond_16
    const-string v0, "applovin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 330
    const-string v0, "Applovin"

    return-object v0

    .line 331
    :cond_21
    const-string v0, "ironsource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 333
    const-string v0, "IronSource"

    return-object v0

    .line 335
    :cond_2c
    const-string v0, "pangle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 336
    const-string v0, "Pangle"

    return-object v0

    .line 337
    :cond_37
    const-string v0, "vungle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 338
    const-string v0, "Vungle"

    return-object v0

    .line 340
    :cond_42
    const-string v0, "admob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 341
    const-string v0, "Admob"

    return-object v0

    .line 343
    :cond_4d
    const-string v0, "tapjoy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 344
    const-string v0, "Tapjoy"

    return-object v0

    .line 345
    :cond_58
    const-string v0, "adcolony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 346
    const-string v0, "AdColony"

    return-object v0

    .line 348
    :cond_63
    return-object p0
.end method

.method public static queryCashInterstitialAd()Z
    .registers 1

    .line 281
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v0

    return v0
.end method

.method public static queryCashRewardVideoAd()Z
    .registers 1

    .line 275
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public static showInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 4
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c55\u793aIS \u63d2\u9875\u5e7f\u544a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->callBackMoney:Z

    .line 264
    sput-object p1, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adInterstitialCallBacks:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 265
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 266
    .local v0, "message":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 268
    sget-object v1, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method public static showRewdAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 4
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c55\u793aIS \u6fc0\u52b1\u5e7f\u544a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->callBackMoney:Z

    .line 238
    sput-object p1, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 239
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 240
    .local v0, "message":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    sget-object v1, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method
