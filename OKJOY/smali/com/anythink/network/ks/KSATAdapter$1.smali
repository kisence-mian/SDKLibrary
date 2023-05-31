.class final Lcom/anythink/network/ks/KSATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/IAdRequestManager$DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATAdapter;->loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/ks/KSATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 75
    iput-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawAdLoad(Ljava/util/List;)V
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/export/i/KsDrawAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 86
    :cond_8
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_21

    .line 87
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "kuaishou no fill"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 100
    :cond_21
    :goto_21
    return-void

    .line 90
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/export/i/KsDrawAd;

    .line 92
    new-instance v3, Lcom/anythink/network/ks/KSATDrawAd;

    iget-object v4, p0, Lcom/anythink/network/ks/KSATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/anythink/network/ks/KSATDrawAd;-><init>(Landroid/content/Context;Lcom/kwad/sdk/export/i/KsDrawAd;)V

    .line 93
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 96
    :cond_42
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_21

    .line 97
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-interface {v0, v2, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    goto :goto_21
.end method

.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 78
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_19

    .line 79
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATAdapter$1;->b:Lcom/anythink/network/ks/KSATAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 81
    :cond_19
    return-void
.end method
