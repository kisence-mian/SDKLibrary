.class public Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
.super Ljava/lang/Object;
.source "AdmobInit.java"


# static fields
.field private static admobInit:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;


# instance fields
.field private final CASHHANDLE:I

.field private MAXAD:I

.field private MAXPARALLEL:I

.field private final MAXTIME:I

.field private MINPARALLEL:I

.field private final TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;

.field private idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCash:Z

.field private isInterstitialAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRewardVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parallel:I

.field private rewardVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->MAXAD:I

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->MAXPARALLEL:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->MINPARALLEL:I

    .line 47
    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->parallel:I

    .line 48
    const-string v0, "loongcheer_ad_log"

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->TAG:Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isCash:Z

    .line 361
    const/16 v0, 0x112

    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->CASHHANDLE:I

    .line 362
    const v0, 0xea60

    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->MAXTIME:I

    .line 363
    new-instance v0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$2;

    invoke-direct {v0, p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$2;-><init>(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V
    .registers 1
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 40
    invoke-direct {p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->adColonyLog()V

    return-void
.end method

.method static synthetic access$100(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V
    .registers 1
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 40
    invoke-direct {p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->tapjoyLog()V

    return-void
.end method

.method static synthetic access$202(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isCash:Z

    return p1
.end method

.method static synthetic access$300(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 40
    invoke-direct {p0, p1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->cashAd(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 40
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private adColonyLog()V
    .registers 10

    .line 385
    new-instance v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;-><init>()V

    .line 386
    .local v0, "adapter":Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;
    invoke-virtual {v0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v1

    .line 387
    .local v1, "adapterVersion":Lcom/google/android/gms/ads/mediation/VersionInfo;
    invoke-virtual {v0}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v2

    .line 390
    .local v2, "sdkVersion":Lcom/google/android/gms/ads/mediation/VersionInfo;
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    .line 392
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMajorVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 393
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMinorVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 394
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMicroVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 390
    const-string v5, "Adapter version: %d.%d.%03d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 396
    new-array v3, v3, [Ljava/lang/Object;

    .line 398
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMajorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 399
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMinorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 400
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMicroVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 396
    const-string v4, "SDK version: %d.%d.%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method private cashAd(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 233
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    .line 236
    :cond_b
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    if-nez v0, :cond_16

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    .line 240
    :cond_16
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isAdRewardSupplier()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    .line 243
    :cond_1d
    const-string v0, "\u5b9a\u65f6\u4efb\u52a1\u6267\u884c\u7f13\u5b58admob\u6fc0\u52b1\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 244
    invoke-direct {p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->cashAdmobRewarded()V

    .line 247
    :goto_25
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->isAdInterstitialSupplier()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 248
    const-string v0, "\u5b9a\u65f6\u4efb\u52a1\u6267\u884c\u7f13\u5b58IS\u63d2\u9875\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 250
    invoke-direct {p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->cashIsInterstitialAd()V

    goto :goto_3c

    .line 253
    :cond_34
    const-string v0, "\u5b9a\u65f6\u4efb\u52a1\u6267\u884c\u7f13\u5b58Admob\u63d2\u9875\u5e7f\u544a"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 255
    invoke-direct {p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->cashAdmobInterstitialAd()V

    .line 287
    :goto_3c
    return-void
.end method

.method private cashAdmobInterstitialAd()V
    .registers 3

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 305
    iget v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->MAXAD:I

    if-ge v0, v1, :cond_1b

    .line 306
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->loadInterstitialAd(Ljava/lang/String;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private cashAdmobRewarded()V
    .registers 3

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 294
    iget v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->MAXAD:I

    if-ge v0, v1, :cond_1b

    .line 295
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private cashIsInterstitialAd()V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_17

    .line 317
    :cond_b
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;->loadInterstitialAd(Ljava/lang/String;)V

    .line 320
    :cond_17
    :goto_17
    return-void
.end method

.method public static getInstance()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 1

    .line 58
    sget-object v0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->admobInit:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    if-nez v0, :cond_b

    .line 59
    new-instance v0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    invoke-direct {v0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;-><init>()V

    sput-object v0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->admobInit:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    .line 61
    :cond_b
    sget-object v0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->admobInit:Lcom/loongcheer/admobsdk/admobInit/AdmobInit;

    return-object v0
.end method

.method private s()V
    .registers 4

    .line 427
    new-instance v0, Lcom/google/ads/mediation/tapjoy/TapjoyAdapter$TapjoyExtrasBundleBuilder;

    invoke-direct {v0}, Lcom/google/ads/mediation/tapjoy/TapjoyAdapter$TapjoyExtrasBundleBuilder;-><init>()V

    .line 428
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/tapjoy/TapjoyAdapter$TapjoyExtrasBundleBuilder;->setDebug(Z)Lcom/google/ads/mediation/tapjoy/TapjoyAdapter$TapjoyExtrasBundleBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/google/ads/mediation/tapjoy/TapjoyAdapter$TapjoyExtrasBundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 430
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-class v2, Lcom/google/ads/mediation/tapjoy/TapjoyAdapter;

    .line 431
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 433
    .local v1, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    return-void
.end method

.method private tapjoyLog()V
    .registers 10

    .line 406
    new-instance v0, Lcom/google/ads/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/tapjoy/TapjoyMediationAdapter;-><init>()V

    .line 407
    .local v0, "adapter":Lcom/google/ads/mediation/tapjoy/TapjoyMediationAdapter;
    invoke-virtual {v0}, Lcom/google/ads/mediation/tapjoy/TapjoyMediationAdapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v1

    .line 408
    .local v1, "adapterVersion":Lcom/google/android/gms/ads/mediation/VersionInfo;
    invoke-virtual {v0}, Lcom/google/ads/mediation/tapjoy/TapjoyMediationAdapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v2

    .line 409
    .local v2, "sdkVersion":Lcom/google/android/gms/ads/mediation/VersionInfo;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 411
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMajorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 412
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMinorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 413
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMicroVersion()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 414
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMicroVersion()I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 409
    const-string v4, "Adapter version: %d.%d.%d.%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 415
    new-array v3, v8, [Ljava/lang/Object;

    .line 417
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMajorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 418
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMinorVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 419
    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;->getMicroVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 415
    const-string v4, "SDK version: %d.%d.%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 420
    return-void
.end method


# virtual methods
.method public TTadInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "app_name"    # Ljava/lang/String;
    .param p3, "application"    # Landroid/app/Application;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob  \u7a7f\u5c71\u7532\u7684\u7528id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loongcheer_ad_log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 105
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->coppa(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setGDPR(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v0

    .line 103
    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 114
    return-object p0
.end method

.method public admobInit()Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 3

    .line 70
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;

    invoke-direct {v1, p0}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit$1;-><init>(Lcom/loongcheer/admobsdk/admobInit/AdmobInit;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 96
    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getInterstitialAdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    return-object v0
.end method

.method public getIsInterstitialAdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInterstitialAdList:Ljava/util/List;

    return-object v0
.end method

.method public getIsRewardVideoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoList:Ljava/util/List;

    return-object v0
.end method

.method public getParallel()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->parallel:I

    return v0
.end method

.method public getRewardVideoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    return-object v0
.end method

.method public varargs interstitialAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 6
    .param p1, "str"    # [Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    .line 181
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admob \u8bbe\u7f6e\u7684\u63d2\u9875\u5e7f\u544aid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->interstitialAdList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loongcheer_ad_log"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 187
    .end local v0    # "i":I
    :cond_53
    return-object p0
.end method

.method public isCash()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isCash:Z

    return v0
.end method

.method public isInit(Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 3
    .param p1, "app_key"    # Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoList:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInterstitialAdList:Ljava/util/List;

    .line 121
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->Init()V

    .line 122
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->getInstance()Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->ironSourcInit(Ljava/lang/String;)V

    .line 123
    return-object p0
.end method

.method public varargs isInterstitialAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 6
    .param p1, "str"    # [Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInterstitialAdList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInterstitialAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u8bbe\u7f6e\u7684\u63d2\u9875\u5e7f\u544aid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInterstitialAdList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isInterstitialAdList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loongcheer_ad_log"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 206
    .end local v0    # "i":I
    :cond_4d
    return-object p0
.end method

.method public varargs isRewardVideoAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 6
    .param p1, "str"    # [Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS \u8bbe\u7f6e\u7684\u6fc0\u52b1\u5e7f\u544aid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isRewardVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loongcheer_ad_log"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 169
    .end local v0    # "i":I
    :cond_4d
    return-object p0
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 355
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->handler:Landroid/os/Handler;

    const/16 v1, 0x112

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->setActivity(Landroid/app/Activity;)V

    .line 357
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->getInstance()Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->onPause()V

    .line 358
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 338
    iget-boolean v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->isCash:Z

    if-eqz v0, :cond_17

    .line 339
    invoke-virtual {p0, p1}, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->setActivity(Landroid/app/Activity;)V

    .line 340
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->handler:Landroid/os/Handler;

    const/16 v1, 0x112

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->handler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1c

    .line 344
    :cond_17
    const-string v0, "\u8df3\u8fc7\u52a0\u8f7d"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 346
    :goto_1c
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->getInstance()Lcom/loongcheer/ironsourcsdk/IronSourcInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loongcheer/ironsourcsdk/IronSourcInit;->onResume()V

    .line 349
    return-void
.end method

.method public varargs rewardVideoAdId([Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 6
    .param p1, "str"    # [Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    .line 146
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admob \u8bbe\u7f6e\u7684\u6fc0\u52b1\u5e7f\u544aid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->rewardVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loongcheer_ad_log"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 152
    .end local v0    # "i":I
    :cond_53
    return-object p0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 330
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->activity:Landroid/app/Activity;

    .line 331
    return-void
.end method

.method public setParallel(I)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 4
    .param p1, "parallel"    # I

    .line 221
    const/4 v0, 0x5

    if-le p1, v0, :cond_4

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    iput v0, p0, Lcom/loongcheer/admobsdk/admobInit/AdmobInit;->parallel:I

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u5e76\u884c\u6570\u91cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loongcheer_ad_log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object p0
.end method

.method public smaatoInit(Landroid/app/Application;Ljava/lang/String;)Lcom/loongcheer/admobsdk/admobInit/AdmobInit;
    .registers 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "app_id"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/loongcheer/smaatosdk/SmaatoInit;->getInstance()Lcom/loongcheer/smaatosdk/SmaatoInit;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/loongcheer/smaatosdk/SmaatoInit;->init(Ljava/lang/String;Landroid/app/Application;)V

    .line 128
    return-object p0
.end method
