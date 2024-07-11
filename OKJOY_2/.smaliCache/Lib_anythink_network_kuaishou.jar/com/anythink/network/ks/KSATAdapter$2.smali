.class final Lcom/anythink/network/ks/KSATAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATAdapter;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)V
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

    .line 91
    iput-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawAdLoad(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsDrawAd;",
            ">;)V"
        }
    .end annotation

    .line 101
    if-eqz p1, :cond_47

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_47

    .line 106
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsDrawAd;

    .line 108
    new-instance v2, Lcom/anythink/network/ks/KSATDrawAd;

    iget-object v3, p0, Lcom/anythink/network/ks/KSATAdapter$2;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/anythink/network/ks/KSATDrawAd;-><init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsDrawAd;)V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_12

    .line 112
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 113
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 114
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->e(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 115
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->f(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    goto :goto_5d

    .line 102
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATAdapter;->c(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 103
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATAdapter;->d(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "kuaishou no fill"

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_5d
    :goto_5d
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->a(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$2;->b:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->b(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_15
    return-void
.end method
