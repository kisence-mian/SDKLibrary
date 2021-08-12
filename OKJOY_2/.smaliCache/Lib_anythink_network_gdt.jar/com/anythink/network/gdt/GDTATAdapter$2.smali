.class final Lcom/anythink/network/gdt/GDTATAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/express2/NativeExpressAD2$AdLoadListener;


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

    .line 119
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;",
            ">;)V"
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;

    .line 125
    new-instance v2, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;

    invoke-direct {v2, v1}, Lcom/anythink/network/gdt/GDTATNativeExpressAd2;-><init>(Lcom/qq/e/ads/nativ/express2/NativeExpressADData2;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_11

    .line 128
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 130
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->g(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 131
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->h(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 133
    :cond_43
    return-void

    .line 134
    :cond_44
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATAdapter;->i(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 135
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATAdapter;->j(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "GDT Ad request success but no Ad return."

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_59
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->k(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 144
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$2;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->l(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

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

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_26
    return-void
.end method
