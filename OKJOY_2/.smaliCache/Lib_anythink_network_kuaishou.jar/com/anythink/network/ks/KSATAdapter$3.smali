.class final Lcom/anythink/network/ks/KSATAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;


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

.field final synthetic b:Z

.field final synthetic c:Lcom/anythink/network/ks/KSATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V
    .registers 4

    .line 125
    iput-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/ks/KSATAdapter$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->g(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 129
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->h(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_15
    return-void
.end method

.method public final onFeedAdLoad(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 135
    if-eqz p1, :cond_49

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 140
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsFeedAd;

    .line 142
    new-instance v2, Lcom/anythink/network/ks/KSATFeedAd;

    iget-object v3, p0, Lcom/anythink/network/ks/KSATAdapter$3;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/anythink/network/ks/KSATAdapter$3;->b:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/anythink/network/ks/KSATFeedAd;-><init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsFeedAd;Z)V

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_12

    .line 146
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 148
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->k(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 149
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->l(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    goto :goto_5f

    .line 136
    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATAdapter;->i(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 137
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$3;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATAdapter;->j(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "kuaishou no fill"

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_5f
    :goto_5f
    return-void
.end method
