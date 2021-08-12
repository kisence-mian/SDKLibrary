.class public Lcom/anythink/network/gdt/GDTATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

# interfaces
.implements Lcom/qq/e/ads/splash/SplashADListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATSplashAdapter;Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashAD;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c:Lcom/qq/e/ads/splash/SplashAD;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATSplashAdapter;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mFetchAdTimeout:I

    return p0
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Lcom/qq/e/ads/splash/SplashAD;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c:Lcom/qq/e/ads/splash/SplashAD;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c:Lcom/qq/e/ads/splash/SplashAD;

    .line 88
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b:Z

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    nop

    .line 41
    nop

    .line 43
    const-string p3, "app_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_15

    .line 44
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_16

    .line 43
    :cond_15
    move-object p3, v1

    .line 46
    :goto_16
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 47
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 46
    :cond_27
    move-object v0, v1

    .line 50
    :goto_28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_47

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_35

    goto :goto_47

    .line 58
    :cond_35
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Ljava/lang/String;

    .line 60
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b:Z

    .line 61
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATSplashAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/gdt/GDTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V

    .line 75
    return-void

    .line 51
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_52

    .line 52
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "GTD appid or unitId is empty."

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_52
    return-void
.end method

.method public onADClicked()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 123
    :cond_9
    return-void
.end method

.method public onADDismissed()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 105
    :cond_9
    return-void
.end method

.method public onADExposure()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 135
    :cond_9
    return-void
.end method

.method public onADLoaded(J)V
    .registers 3

    .line 139
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b:Z

    .line 140
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_f

    .line 141
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 143
    :cond_f
    return-void
.end method

.method public onADPresent()V
    .registers 1

    .line 116
    return-void
.end method

.method public onADTick(J)V
    .registers 3

    .line 128
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_1e

    .line 110
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1e
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    .line 80
    iget-boolean p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c:Lcom/qq/e/ads/splash/SplashAD;

    if-eqz p1, :cond_b

    .line 81
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/splash/SplashAD;->showAd(Landroid/view/ViewGroup;)V

    .line 83
    :cond_b
    return-void
.end method
