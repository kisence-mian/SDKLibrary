.class final Lcom/anythink/network/gdt/GDTATAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATAdapter;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/gdt/GDTATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 185
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 233
    if-eqz v0, :cond_f

    .line 234
    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdClicked()V

    .line 236
    :cond_f
    return-void
.end method

.method public final onADCloseOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .prologue
    .line 256
    return-void
.end method

.method public final onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/network/gdt/GDTATNativeAd;

    .line 241
    if-eqz v0, :cond_f

    .line 242
    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATNativeAd;->notifyAdDislikeClick()V

    .line 244
    :cond_f
    return-void
.end method

.method public final onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .prologue
    .line 228
    return-void
.end method

.method public final onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .prologue
    .line 248
    return-void
.end method

.method public final onADLoaded(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 202
    new-instance v3, Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v5, v5, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v6}, Lcom/anythink/network/gdt/GDTATAdapter;->a(Lcom/anythink/network/gdt/GDTATAdapter;)Ljava/util/Map;

    invoke-direct {v3, v4, v0, v5}, Lcom/anythink/network/gdt/GDTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v4, v4, Lcom/anythink/network/gdt/GDTATAdapter;->e:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 207
    :cond_36
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_45

    .line 208
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v0, v2, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    .line 212
    :cond_45
    return-void
.end method

.method public final onADOpenOverlay(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .prologue
    .line 252
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .prologue
    .line 189
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_2a

    .line 190
    const-string v0, "4001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, v1, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 193
    :cond_2a
    return-void
.end method

.method public final onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_19

    .line 217
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "onRenderFail"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, v1, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 220
    :cond_19
    return-void
.end method

.method public final onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .registers 2

    .prologue
    .line 224
    return-void
.end method
