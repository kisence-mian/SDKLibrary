.class final Lcom/anythink/network/gdt/GDTATAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATAdapter;->c(Landroid/content/Context;)V
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
    .line 267
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
    .registers 2

    .prologue
    .line 332
    return-void
.end method

.method public final onADError(Lcom/qq/e/ads/nativ/NativeMediaADData;Lcom/qq/e/comm/util/AdError;)V
    .registers 6

    .prologue
    .line 313
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_2a

    .line 314
    const-string v0, "4001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, v1, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 317
    :cond_2a
    return-void
.end method

.method public final onADExposure(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
    .registers 2

    .prologue
    .line 327
    return-void
.end method

.method public final onADLoaded(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/ads/nativ/NativeMediaADData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/nativ/NativeMediaADData;

    .line 276
    new-instance v3, Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v5, v5, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v6}, Lcom/anythink/network/gdt/GDTATAdapter;->a(Lcom/anythink/network/gdt/GDTATAdapter;)Ljava/util/Map;

    invoke-direct {v3, v4, v0, v5}, Lcom/anythink/network/gdt/GDTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V

    .line 277
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->getAdPatternType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 284
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeMediaADData;->preLoadVideo()V

    goto :goto_f

    .line 288
    :cond_39
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_48

    .line 289
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v0, v2, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    .line 292
    :cond_48
    return-void
.end method

.method public final onADStatusChanged(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
    .registers 2

    .prologue
    .line 309
    return-void
.end method

.method public final onADVideoLoaded(Lcom/qq/e/ads/nativ/NativeMediaADData;)V
    .registers 2

    .prologue
    .line 322
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_19

    .line 297
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, " no ad return "

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, v1, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 300
    :cond_19
    return-void
.end method
