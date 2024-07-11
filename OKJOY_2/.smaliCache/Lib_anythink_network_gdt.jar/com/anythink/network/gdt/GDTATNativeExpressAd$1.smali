.class final Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATNativeExpressAd;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .line 80
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    invoke-virtual {p1}, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->notifyAdClicked()V

    .line 81
    return-void
.end method

.method public final onADCloseOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .line 98
    return-void
.end method

.method public final onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .line 85
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    invoke-virtual {p1}, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->notifyAdDislikeClick()V

    .line 86
    return-void
.end method

.method public final onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .line 75
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    invoke-virtual {p1}, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->notifyAdImpression()V

    .line 76
    return-void
.end method

.method public final onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .line 90
    return-void
.end method

.method public final onADLoaded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 44
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 45
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->render()V

    .line 46
    return-void

    .line 47
    :cond_11
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    if-eqz p1, :cond_22

    .line 48
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    const-string v0, ""

    const-string v1, "GDT Ad request success but no Ad return."

    invoke-interface {p1, v0, v1}, Lcom/anythink/network/gdt/a;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_22
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 54
    return-void
.end method

.method public final onADOpenOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .line 94
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    if-eqz v0, :cond_22

    .line 36
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/network/gdt/a;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_22
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 39
    return-void
.end method

.method public final onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 4

    .line 58
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    if-eqz p1, :cond_11

    .line 59
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    const-string v0, ""

    const-string v1, "GDT onRenderFail"

    invoke-interface {p1, v0, v1}, Lcom/anythink/network/gdt/a;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_11
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 62
    return-void
.end method

.method public final onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 5

    .line 66
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iput-object p1, v0, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->b:Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 67
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    if-eqz p1, :cond_19

    .line 68
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    iget-object p1, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/anythink/network/gdt/a;->notifyLoaded([Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 70
    :cond_19
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATNativeExpressAd$1;->a:Lcom/anythink/network/gdt/GDTATNativeExpressAd;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/network/gdt/GDTATNativeExpressAd;->c:Lcom/anythink/network/gdt/a;

    .line 71
    return-void
.end method
