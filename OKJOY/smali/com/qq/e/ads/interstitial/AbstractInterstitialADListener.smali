.class public abstract Lcom/qq/e/ads/interstitial/AbstractInterstitialADListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/interstitial/InterstitialADListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .registers 2

    const-string v0, "ON InterstitialAD Clicked"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADClosed()V
    .registers 2

    const-string v0, "ON InterstitialAD Closed"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADExposure()V
    .registers 2

    const-string v0, "ON InterstitialAD Exposure"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADLeftApplication()V
    .registers 2

    const-string v0, "ON InterstitialAD LeftApplication"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADOpened()V
    .registers 2

    const-string v0, "ON InterstitialAD Opened"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method
