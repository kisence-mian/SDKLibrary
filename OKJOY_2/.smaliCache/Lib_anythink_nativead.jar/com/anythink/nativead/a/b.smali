.class public final Lcom/anythink/nativead/a/b;
.super Lcom/anythink/core/common/f;


# instance fields
.field a:Lcom/anythink/nativead/api/ATNativeNetworkListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private a(Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_7

    .line 64
    invoke-interface {v0}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    .line 66
    :cond_7
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 2

    .line 48
    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/core/api/BaseAd;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 30
    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 32
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 34
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/BaseAd;

    .line 35
    instance-of v3, v2, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v3, :cond_2e

    .line 36
    check-cast v2, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 39
    :cond_2e
    goto :goto_19

    .line 42
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    .line 43
    monitor-exit p0

    return-void

    .line 29
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_7

    .line 71
    invoke-interface {v0, p1}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 73
    :cond_7
    return-void
.end method

.method public final b()V
    .registers 2

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 78
    return-void
.end method
