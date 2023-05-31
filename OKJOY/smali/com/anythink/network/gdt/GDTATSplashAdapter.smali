.class public Lcom/anythink/network/gdt/GDTATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

# interfaces
.implements Lcom/qq/e/ads/splash/SplashADListener;


# instance fields
.field a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcom/anythink/network/gdt/GDTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, ""

    .line 29
    const-string v1, ""

    .line 31
    iput-object p6, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    .line 32
    const-string v2, "app_id"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 33
    const-string v0, "app_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_18
    const-string v2, "unit_id"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 36
    const-string v1, "unit_id"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 40
    :cond_36
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_49

    .line 41
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "GTD appid or unitId is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 54
    :cond_49
    :goto_49
    return-void

    .line 48
    :cond_4a
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/qq/e/ads/splash/SplashAD;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c:Ljava/lang/String;

    const/16 v5, 0x1388

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/qq/e/ads/splash/SplashAD;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_49
.end method

.method public onADClicked()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdClicked(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 93
    :cond_9
    return-void
.end method

.method public onADDismissed()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdDismiss(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 71
    :cond_9
    return-void
.end method

.method public onADExposure()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method

.method public onADLoaded(J)V
    .registers 3

    .prologue
    .line 107
    return-void
.end method

.method public onADPresent()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_e

    .line 83
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdLoaded(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdShow(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 86
    :cond_e
    return-void
.end method

.method public onADTick(J)V
    .registers 3

    .prologue
    .line 98
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_24

    .line 76
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    const-string v1, "4001"

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

    invoke-interface {v0, p0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 78
    :cond_24
    return-void
.end method
