.class public Lcom/anythink/network/gdt/GDTATNativeExpressAd2;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field private a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

.field private b:Lcom/qq/e/ads/nativ/express2/AdEventListener;

.field private c:Lcom/qq/e/ads/nativ/express2/MediaEventListener;


# direct methods
.method protected constructor <init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    .line 35
    new-instance p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$1;-><init>(Lcom/anythink/network/gdt/GDTATNativeExpressAd2;)V

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->b:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    .line 60
    new-instance p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2$2;-><init>(Lcom/anythink/network/gdt/GDTATNativeExpressAd2;)V

    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->c:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    .line 92
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->b:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    invoke-interface {p1, v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->setAdEventListener(Lcom/qq/e/ads/nativ/express2/AdEventListener;)V

    .line 93
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->c:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    invoke-interface {p1, v0}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->setMediaListener(Lcom/qq/e/ads/nativ/express2/MediaEventListener;)V

    .line 95
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->render()V

    .line 97
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 115
    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->setMediaListener(Lcom/qq/e/ads/nativ/express2/MediaEventListener;)V

    .line 116
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->setAdEventListener(Lcom/qq/e/ads/nativ/express2/AdEventListener;)V

    .line 117
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    .line 120
    :cond_f
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->b:Lcom/qq/e/ads/nativ/express2/AdEventListener;

    .line 121
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->c:Lcom/qq/e/ads/nativ/express2/MediaEventListener;

    .line 125
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .registers 2

    .line 106
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;->a:Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    if-eqz p1, :cond_9

    .line 107
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;->getAdView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 109
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method
