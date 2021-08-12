.class public Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;


# instance fields
.field private a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

.field private b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

.field private c:Lcom/qq/e/ads/nativ/express2/AdEventListener;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    instance-of v0, p1, Lcom/qq/e/comm/adevent/ADEventListener;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/qq/e/comm/adevent/ADEventListener;

    new-instance v0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter$1;

    invoke-direct {v0, p0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter$1;-><init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;)V

    invoke-interface {p1, v0}, Lcom/qq/e/comm/adevent/ADEventListener;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_2a

    goto :goto_29

    :pswitch_c
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/AdEventListener;->onAdClosed()V

    goto :goto_29

    :pswitch_12
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/AdEventListener;->onRenderFail()V

    return-void

    :pswitch_18
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/AdEventListener;->onRenderSuccess()V

    return-void

    :pswitch_1e
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/AdEventListener;->onExposed()V

    return-void

    :pswitch_24
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/AdEventListener;->onClick()V

    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x65
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic b(Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;Lcom/qq/e/comm/adevent/ADEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result p1

    packed-switch p1, :pswitch_data_30

    goto :goto_2f

    :pswitch_c
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/MediaEventListener;->onVideoError()V

    goto :goto_2f

    :pswitch_12
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/MediaEventListener;->onVideoComplete()V

    return-void

    :pswitch_18
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/MediaEventListener;->onVideoPause()V

    return-void

    :pswitch_1e
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/MediaEventListener;->onVideoResume()V

    return-void

    :pswitch_24
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/MediaEventListener;->onVideoStart()V

    return-void

    :pswitch_2a
    iget-object p0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p0}, Lcom/qq/e/ads/nativ/express2/MediaEventListener;->onVideoCache()V

    :cond_2f
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0xc9
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->destroy()V

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->getAdView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDuration()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public isVideoAd()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->isVideoAd()Z

    move-result v0

    return v0
.end method

.method public render()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->render()V

    return-void
.end method

.method public setAdEventListener(Lcom/qq/e/ads/nativ/express2/AdEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->c:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    return-void
.end method

.method public setMediaListener(Lcom/qq/e/ads/nativ/express2/MediaEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/nativ/express2/NativeExpressADDataAdapter;->b:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    return-void
.end method
