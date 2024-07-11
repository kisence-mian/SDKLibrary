.class public abstract Lcom/qq/e/mediation/interfaces/BaseNativeExpressAd;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_PRIORITY:I = -0x1

.field public static final EVENT_TYPE_ON_AD_CLICKED:I = 0x6

.field public static final EVENT_TYPE_ON_AD_EXPOSURE:I = 0x5

.field public static final EVENT_TYPE_ON_AD_LOADED:I = 0x2

.field public static final EVENT_TYPE_ON_NO_AD:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterPriority()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getECPM()I
.end method

.method public abstract loadAD(I)V
.end method

.method public abstract loadAD(ILcom/qq/e/comm/constants/LoadAdParams;)V
.end method

.method public abstract setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V
.end method

.method public abstract setMaxVideoDuration(I)V
.end method

.method public abstract setMinVideoDuration(I)V
.end method

.method public abstract setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V
.end method

.method public abstract setVideoPlayPolicy(I)V
.end method
