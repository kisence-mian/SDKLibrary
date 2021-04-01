.class public abstract Lcom/qq/e/mediation/interfaces/BaseInterstitialAd;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_PRIORITY:I = -0x1


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract destory()V
.end method

.method public abstract getAdPatternType()I
.end method

.method public getAdapterPriority()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getECPM()I
.end method

.method public abstract getECPMLevel()Ljava/lang/String;
.end method

.method public abstract loadAd()V
.end method

.method public abstract setAdListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V
.end method

.method public abstract setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
.end method

.method public abstract setMaxVideoDuration(I)V
.end method

.method public abstract setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V
.end method

.method public abstract setMinVideoDuration(I)V
.end method

.method public abstract setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V
.end method

.method public abstract setVideoPlayPolicy(I)V
.end method

.method public abstract show()V
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method

.method public abstract showAsPopupWindow()V
.end method

.method public abstract showAsPopupWindow(Landroid/app/Activity;)V
.end method
