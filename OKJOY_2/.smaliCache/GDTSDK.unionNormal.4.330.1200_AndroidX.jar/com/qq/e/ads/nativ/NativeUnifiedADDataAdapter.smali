.class public Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeUnifiedADData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field private b:Lcom/qq/e/ads/nativ/NativeADEventListener;

.field private c:Lcom/qq/e/ads/nativ/NativeADMediaListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    instance-of v0, p1, Lcom/qq/e/comm/adevent/ADEventListener;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/qq/e/comm/adevent/ADEventListener;

    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter$UnifiedAdListener;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;B)V

    invoke-interface {p1, v0}, Lcom/qq/e/comm/adevent/ADEventListener;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    :cond_14
    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b:Lcom/qq/e/ads/nativ/NativeADEventListener;

    if-eqz v0, :cond_70

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_72

    goto :goto_70

    :pswitch_e
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b:Lcom/qq/e/ads/nativ/NativeADEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADEventListener;->onADStatusChanged()V

    goto :goto_70

    :pswitch_14
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_70

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_70

    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b:Lcom/qq/e/ads/nativ/NativeADEventListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeADEventListener;->onADError(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :pswitch_3b
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_70

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_70

    :try_start_4c
    sget-object v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->ext:Ljava/util/Map;

    const-string v1, "clickUrl"

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5b} :catch_5c

    goto :goto_65

    :catch_5c
    move-exception p1

    const-string v0, "native 2.0 set click url error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_65
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b:Lcom/qq/e/ads/nativ/NativeADEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADEventListener;->onADClicked()V

    return-void

    :pswitch_6b
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b:Lcom/qq/e/ads/nativ/NativeADEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADEventListener;->onADExposed()V

    :cond_70
    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_3b
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic b(Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    if-eqz v0, :cond_8f

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8f

    :pswitch_f
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoClicked()V

    goto/16 :goto_8f

    :pswitch_16
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoStop()V

    return-void

    :pswitch_1c
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_8f

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8f

    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoError(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :pswitch_43
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoCompleted()V

    return-void

    :pswitch_49
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoResume()V

    return-void

    :pswitch_4f
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoPause()V

    return-void

    :pswitch_55
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoStart()V

    return-void

    :pswitch_5b
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_8f

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8f

    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getParas()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoLoaded(I)V

    return-void

    :pswitch_7e
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoReady()V

    return-void

    :pswitch_84
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoLoading()V

    return-void

    :pswitch_8a
    iget-object p0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/NativeADMediaListener;->onVideoInit()V

    :cond_8f
    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x5
        :pswitch_8a
        :pswitch_84
        :pswitch_7e
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_1c
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V
    .registers 6
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

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    return-void
.end method

.method public bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V
    .registers 12
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

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bindCTAViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindCTAViews(Ljava/util/List;)V

    return-void
.end method

.method public bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V
    .registers 5

    iput-object p3, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->c:Lcom/qq/e/ads/nativ/NativeADMediaListener;

    iget-object p3, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    return-void
.end method

.method public equalsAdData(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Z
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->equalsAdData(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Z

    move-result p1

    return p1
.end method

.method public getAdData()Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    return-object v0
.end method

.method public getAdPatternType()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    return v0
.end method

.method public getAppPrice()D
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAppScore()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result v0

    return v0
.end method

.method public getAppStatus()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v0

    return v0
.end method

.method public getCTAText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getCTAText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCount()J
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDownloadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getECPM()I

    move-result v0

    return v0
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureHeight()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    move-result v0

    return v0
.end method

.method public getPictureWidth()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVastContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVastContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVastTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVastTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCurrentPosition()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getVideoDuration()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public isAppAd()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v0

    return v0
.end method

.method public isSkippable()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isSkippable()Z

    move-result v0

    return v0
.end method

.method public negativeFeedback()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->negativeFeedback()V

    return-void
.end method

.method public onVideoADExposured(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->onVideoADExposured(Landroid/view/View;)V

    return-void
.end method

.method public pauseVideo()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    return-void
.end method

.method public preloadVideo(Lcom/qq/e/ads/nativ/VideoPreloadListener;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->preloadVideo(Lcom/qq/e/ads/nativ/VideoPreloadListener;)V

    return-void
.end method

.method public reportVastEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 2

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resume()V

    return-void
.end method

.method public resumeVideo()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resumeVideo()V

    return-void
.end method

.method public setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->b:Lcom/qq/e/ads/nativ/NativeADEventListener;

    return-void
.end method

.method public setVideoMute(Z)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setVideoMute(Z)V

    return-void
.end method

.method public startVideo()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->startVideo()V

    return-void
.end method

.method public stopVideo()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/NativeUnifiedADDataAdapter;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->stopVideo()V

    return-void
.end method
