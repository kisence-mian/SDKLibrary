.class public abstract Lcom/qq/e/mediation/interfaces/BaseRewardAd;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_PRIORITY:I = -0x1

.field public static final EVENT_TYPE_ON_AD_CLICK:I = 0x6

.field public static final EVENT_TYPE_ON_AD_CLOSE:I = 0x8

.field public static final EVENT_TYPE_ON_AD_EXPOSE:I = 0x4

.field public static final EVENT_TYPE_ON_AD_LOADED:I = 0x1

.field public static final EVENT_TYPE_ON_AD_SHOW:I = 0x3

.field public static final EVENT_TYPE_ON_ERROR:I = 0x9

.field public static final EVENT_TYPE_ON_REWARD:I = 0x5

.field public static final EVENT_TYPE_ON_VIDEO_CACHED:I = 0x2

.field public static final EVENT_TYPE_ON_VIDEO_COMPLETE:I = 0x7


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
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

.method public abstract getECPMLevel()Ljava/lang/String;
.end method

.method public abstract getExpireTimestamp()J
.end method

.method public abstract hasShown()Z
.end method

.method public abstract loadAD()V
.end method

.method public abstract setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V
.end method

.method public abstract setVolumOn(Z)V
.end method

.method public abstract showAD()V
.end method

.method public showAD(Landroid/app/Activity;)V
    .registers 2

    .prologue
    invoke-virtual {p0}, Lcom/qq/e/mediation/interfaces/BaseRewardAd;->showAD()V

    return-void
.end method
