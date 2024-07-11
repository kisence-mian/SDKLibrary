.class final Lcom/anythink/network/ks/KSATAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


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

    .line 155
    iput-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATAdapter$4;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/ks/KSATAdapter$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->m(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 159
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->n(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_15
    return-void
.end method

.method public final onNativeAdLoad(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 165
    if-eqz p1, :cond_49

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_49

    .line 170
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 172
    new-instance v2, Lcom/anythink/network/ks/KSATNativeAd;

    iget-object v3, p0, Lcom/anythink/network/ks/KSATAdapter$4;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/anythink/network/ks/KSATAdapter$4;->b:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/anythink/network/ks/KSATNativeAd;-><init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsNativeAd;Z)V

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    goto :goto_12

    .line 176
    :cond_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 178
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->q(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 179
    iget-object v0, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATAdapter;->r(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    goto :goto_5f

    .line 166
    :cond_49
    :goto_49
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATAdapter;->o(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 167
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter$4;->c:Lcom/anythink/network/ks/KSATAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATAdapter;->p(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v0, ""

    const-string v1, "kuaishou no fill"

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_5f
    :goto_5f
    return-void
.end method
