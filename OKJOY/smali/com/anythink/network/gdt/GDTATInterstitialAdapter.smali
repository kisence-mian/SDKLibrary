.class public Lcom/anythink/network/gdt/GDTATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field a:Lcom/qq/e/ads/interstitial/InterstitialAD;

.field b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:I

.field g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "GDTInterstitialAdapter"

    sput-object v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    .line 41
    iput v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:I

    return-void
.end method

.method private static a(ILandroid/content/Context;)I
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 322
    if-ne p0, v1, :cond_6

    move v0, v1

    .line 336
    :goto_5
    return v0

    .line 324
    :cond_6
    if-nez p0, :cond_27

    .line 326
    :try_start_8
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 327
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_21

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_5

    :cond_1f
    move v0, v2

    goto :goto_5

    .line 331
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    :cond_25
    const/4 v0, 0x0

    goto :goto_5

    .line 333
    :cond_27
    if-ne p0, v2, :cond_25

    move v0, v2

    .line 334
    goto :goto_5
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-nez v0, :cond_6

    .line 319
    :goto_5
    return-void

    .line 298
    :cond_6
    const-string v3, ""

    .line 299
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 300
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 302
    :goto_1e
    const-string v2, "video_autoplay"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 303
    const-string v2, "video_autoplay"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 305
    :goto_34
    const-string v4, "video_duration"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 306
    const-string v3, "video_duration"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    :cond_46
    new-instance v4, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v4}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-ne v0, v1, :cond_7b

    .line 310
    :goto_4d
    invoke-virtual {v4, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 314
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 315
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    .line 318
    :cond_6d
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption;->getAutoPlayPolicy()I

    move-result v0

    invoke-static {v0, p1}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoPlayPolicy(I)V

    goto :goto_5

    .line 309
    :cond_7b
    const/4 v1, 0x0

    goto :goto_4d

    :cond_7d
    move v2, v1

    goto :goto_34

    :cond_7f
    move v0, v1

    goto :goto_1e
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic q(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic r(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic s(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic t(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    invoke-static {}, Lcom/anythink/network/gdt/GDTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    return v0
.end method

.method public loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 47
    const-string v1, ""

    .line 48
    const-string v0, ""

    .line 50
    const-string v3, "app_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 51
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_18
    const-string v3, "unit_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 55
    const-string v1, "unit_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_2a
    const-string v3, "unit_version"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 59
    const-string v3, "unit_version"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:I

    .line 62
    :cond_42
    iput-object p4, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 64
    :cond_50
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_63

    .line 65
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "GTD appid or unitId is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 226
    :cond_63
    :goto_63
    return-void

    .line 72
    :cond_64
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_7c

    .line 73
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_63

    .line 74
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "context must be activity."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_63

    .line 80
    :cond_7c
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Ljava/lang/String;

    .line 82
    iput-boolean v4, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    .line 85
    iget v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a4

    .line 86
    new-instance v0, Lcom/qq/e/ads/interstitial/InterstitialAD;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/qq/e/ads/interstitial/InterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    .line 88
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    new-instance v1, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial/InterstitialAD;->setADListener(Lcom/qq/e/ads/interstitial/InterstitialADListener;)V

    .line 140
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->loadAD()V

    goto :goto_63

    .line 143
    :cond_a4
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->g:Ljava/lang/String;

    .line 144
    const-string v0, "is_fullscreen"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 145
    const-string v0, "is_fullscreen"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->g:Ljava/lang/String;

    .line 148
    :cond_ba
    new-instance v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Ljava/lang/String;

    new-instance v6, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;

    invoke-direct {v6, p0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)V

    invoke-direct {v1, v0, v3, v5, v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 1292
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_145

    .line 1298
    const-string v3, ""

    .line 1299
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 1300
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1302
    :goto_e9
    const-string v1, "video_autoplay"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    .line 1303
    const-string v1, "video_autoplay"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1305
    :goto_ff
    const-string v5, "video_duration"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    .line 1306
    const-string v3, "video_duration"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1309
    :cond_111
    new-instance v5, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-ne v0, v2, :cond_156

    .line 1310
    :goto_118
    invoke-virtual {v5, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 1311
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    .line 1313
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 1314
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_138

    .line 1315
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    .line 1318
    :cond_138
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption;->getAutoPlayPolicy()I

    move-result v0

    invoke-static {v0, p1}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoPlayPolicy(I)V

    .line 219
    :cond_145
    const-string v0, "1"

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 220
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V

    goto/16 :goto_63

    :cond_156
    move v2, v4

    .line 1309
    goto :goto_118

    .line 222
    :cond_158
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    goto/16 :goto_63

    :cond_15f
    move v1, v2

    goto :goto_ff

    :cond_161
    move v0, v2

    goto :goto_e9
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 276
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 271
    return-void
.end method

.method public onVideoComplete()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 371
    :cond_9
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .registers 6

    .prologue
    .line 375
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_24

    .line 376
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    sget-object v1, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 378
    :cond_24
    return-void
.end method

.method public onVideoInit()V
    .registers 1

    .prologue
    .line 343
    return-void
.end method

.method public onVideoLoading()V
    .registers 1

    .prologue
    .line 348
    return-void
.end method

.method public onVideoPageClose()V
    .registers 1

    .prologue
    .line 388
    return-void
.end method

.method public onVideoPageOpen()V
    .registers 1

    .prologue
    .line 383
    return-void
.end method

.method public onVideoPause()V
    .registers 1

    .prologue
    .line 364
    return-void
.end method

.method public onVideoReady(J)V
    .registers 3

    .prologue
    .line 352
    return-void
.end method

.method public onVideoStart()V
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 359
    :cond_9
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    if-eqz v0, :cond_10

    .line 236
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2f

    .line 237
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->show(Landroid/app/Activity;)V

    .line 243
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_2e

    .line 245
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    .line 247
    const-string v0, "1"

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 248
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_35

    .line 249
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->showFullScreenAD(Landroid/app/Activity;)V

    .line 262
    :cond_2e
    :goto_2e
    return-void

    .line 239
    :cond_2f
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->show()V

    goto :goto_10

    .line 251
    :cond_35
    sget-object v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Gdt (Full Screen) show fail: context need be Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 254
    :cond_3d
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4e

    .line 255
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show(Landroid/app/Activity;)V

    .line 259
    :goto_48
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    goto :goto_2e

    .line 257
    :cond_4e
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    goto :goto_48
.end method
