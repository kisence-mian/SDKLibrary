.class final Lcom/anythink/network/ks/KSATAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/IAdRequestManager$NativeAdListener;


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

.field final synthetic b:Z

.field final synthetic c:Lcom/anythink/network/ks/KSATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 135
    iput-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/ks/KSATAdapter$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_19

    .line 139
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 141
    :cond_19
    return-void
.end method

.method public final onNativeAdLoad(Ljava/util/List;)V
    .registers 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/export/i/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_21

    .line 147
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "kuaishou no fill"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 160
    :cond_21
    :goto_21
    return-void

    .line 150
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/export/i/KsNativeAd;

    .line 152
    new-instance v3, Lcom/anythink/network/ks/KSATNativeAd;

    iget-object v4, p0, Lcom/anythink/network/ks/KSATAdapter$3;->a:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/anythink/network/ks/KSATAdapter$3;->b:Z

    invoke-direct {v3, v4, v0, v5}, Lcom/anythink/network/ks/KSATNativeAd;-><init>(Landroid/content/Context;Lcom/kwad/sdk/export/i/KsNativeAd;Z)V

    .line 153
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 156
    :cond_44
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_21

    .line 157
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iget-object v0, v0, Lcom/anythink/network/ks/KSATAdapter;->b:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-interface {v0, v2, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    goto :goto_21
.end method
