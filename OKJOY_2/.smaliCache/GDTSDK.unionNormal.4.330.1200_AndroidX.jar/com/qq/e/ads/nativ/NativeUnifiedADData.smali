.class public interface abstract Lcom/qq/e/ads/nativ/NativeUnifiedADData;
.super Ljava/lang/Object;


# static fields
.field public static final AD_CLICKED:I = 0x2

.field public static final AD_ERROR:I = 0x3

.field public static final AD_EXPOSED:I = 0x1

.field public static final AD_STATUS_CHANGED:I = 0x4

.field public static final MEDIA_CLICKED:I = 0xf

.field public static final MEDIA_COMPLETED:I = 0xc

.field public static final MEDIA_ERROR:I = 0xd

.field public static final MEDIA_INIT:I = 0x5

.field public static final MEDIA_LOADED:I = 0x8

.field public static final MEDIA_LOADING:I = 0x6

.field public static final MEDIA_PAUSE:I = 0xa

.field public static final MEDIA_READY:I = 0x7

.field public static final MEDIA_RESUME:I = 0xb

.field public static final MEDIA_START:I = 0x9

.field public static final MEDIA_STOP:I = 0xe

.field public static final ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    sput-object v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->ext:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qq/e/ads/nativ/widget/NativeAdContainer;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qq/e/ads/nativ/widget/NativeAdContainer;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindCTAViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract equalsAdData(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Z
.end method

.method public abstract getAdPatternType()I
.end method

.method public abstract getAppPrice()D
.end method

.method public abstract getAppScore()I
.end method

.method public abstract getAppStatus()I
.end method

.method public abstract getCTAText()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDownloadCount()J
.end method

.method public abstract getECPM()I
.end method

.method public abstract getECPMLevel()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImgList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImgUrl()Ljava/lang/String;
.end method

.method public abstract getPictureHeight()I
.end method

.method public abstract getPictureWidth()I
.end method

.method public abstract getProgress()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVastContent()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVastTag()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoCurrentPosition()I
.end method

.method public abstract getVideoDuration()I
.end method

.method public abstract isAppAd()Z
.end method

.method public abstract isSkippable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract negativeFeedback()V
.end method

.method public abstract onVideoADExposured(Landroid/view/View;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract preloadVideo(Lcom/qq/e/ads/nativ/VideoPreloadListener;)V
.end method

.method public abstract reportVastEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resume()V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V
.end method

.method public abstract setVideoMute(Z)V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopVideo()V
.end method
