.class final Lcom/anythink/network/gdt/GDTATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


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

    .line 80
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADLoaded(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 86
    new-instance v1, Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget v5, v2, Lcom/anythink/network/gdt/GDTATAdapter;->e:I

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget v6, v2, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget v7, v2, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/anythink/network/gdt/GDTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/Object;III)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_11

    .line 90
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 92
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->a(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 93
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->b(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 95
    :cond_53
    return-void

    .line 96
    :cond_54
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATAdapter;->c(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 97
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {p1}, Lcom/anythink/network/gdt/GDTATAdapter;->d(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "Ad list is empty"

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_69
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->e(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 105
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->f(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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

    .line 107
    :cond_26
    return-void
.end method
