.class public interface abstract Lcom/qq/e/comm/pi/UIADI;
.super Ljava/lang/Object;


# static fields
.field public static final ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qq/e/comm/pi/UIADI;->ext:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract destory()V
.end method

.method public abstract getAdNetWorkName()Ljava/lang/String;
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getECPM()I
.end method

.method public abstract getECPMLevel()Ljava/lang/String;
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadFullScreenAD()V
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

.method public abstract showFullScreenAD(Landroid/app/Activity;)V
.end method
