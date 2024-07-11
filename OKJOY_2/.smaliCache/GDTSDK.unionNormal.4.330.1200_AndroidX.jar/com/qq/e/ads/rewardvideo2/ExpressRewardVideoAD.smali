.class public Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;
.super Lcom/qq/e/ads/LiteAbstractAD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/e/ads/LiteAbstractAD<",
        "Lcom/qq/e/comm/pi/RVADI2;",
        ">;"
    }
.end annotation


# static fields
.field public static final EVENT_AD_LOAD:I = 0x64

.field public static final EVENT_CLICK:I = 0x69

.field public static final EVENT_CLOSE:I = 0x6a

.field public static final EVENT_COMPLETE:I = 0x6c

.field public static final EVENT_ERROR:I = 0x6b

.field public static final EVENT_EXPOSE:I = 0x67

.field public static final EVENT_REWARD:I = 0x68

.field public static final EVENT_SHOW:I = 0x66

.field public static final EVENT_VIDEO_CACHED:I = 0x65


# instance fields
.field private a:Lcom/qq/e/comm/pi/RVADI2;

.field private b:Z

.field private c:Z

.field private d:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

.field private e:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/qq/e/ads/LiteAbstractAD;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->c:Z

    iput-object p3, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->e:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result p3

    if-eqz p3, :cond_22

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V
    .registers 6

    invoke-direct {p0}, Lcom/qq/e/ads/LiteAbstractAD;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->c:Z

    iput-object p4, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->e:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    new-instance v0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->e:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD$AdListenerAdapter;-><init>(Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;)V

    invoke-interface {p2, p1, p3, p4, v0}, Lcom/qq/e/comm/pi/POFactory;->getExpressRewardVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/RVADI2;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->e:Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAdListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    :cond_b
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/qq/e/comm/pi/RVADI2;

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->c:Z

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/RVADI2;->setVolumeOn(Z)V

    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->d:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    invoke-interface {p1, v0}, Lcom/qq/e/comm/pi/RVADI2;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    iget-boolean p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->b:Z

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    invoke-interface {p1}, Lcom/qq/e/comm/pi/RVADI2;->loadAD()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->b:Z

    :cond_1c
    return-void
.end method

.method public checkValidity()Lcom/qq/e/comm/util/VideoAdValidity;
    .registers 5

    invoke-virtual {p0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->hasShown()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->SHOWED:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->getExpireTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->OVERDUE:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->isVideoCached()Z

    move-result v0

    goto :goto_27

    :cond_21
    const-string v0, "don\'t call isVideoCached before loading AD success"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_27
    if-nez v0, :cond_2c

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->NONE_CACHE:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0

    :cond_2c
    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->VALID:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->destroy()V

    :cond_7
    return-void
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "don\'t call getECPMLevel before loading AD success"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpireTimestamp()J
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->getExpireTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-string v0, "don\'t call getExpireTimestamp before loading AD success"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoDuration()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->getVideoDuration()I

    move-result v0

    return v0

    :cond_9
    const-string v0, "don\'t call getVideoDuration before loading AD success"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public hasShown()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->hasShown()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "don\'t call hasShown before loading AD success"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAD()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI2;->loadAD()V

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->b:Z

    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI2;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    return-void

    :cond_8
    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->d:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    return-void
.end method

.method public setVolumeOn(Z)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI2;->setVolumeOn(Z)V

    return-void

    :cond_8
    iput-boolean p1, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->c:Z

    return-void
.end method

.method public showAD(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo2/ExpressRewardVideoAD;->a:Lcom/qq/e/comm/pi/RVADI2;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI2;->showAD(Landroid/app/Activity;)V

    return-void

    :cond_8
    const-string p1, "don\'t call showAD before loading AD success"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    return-void
.end method
