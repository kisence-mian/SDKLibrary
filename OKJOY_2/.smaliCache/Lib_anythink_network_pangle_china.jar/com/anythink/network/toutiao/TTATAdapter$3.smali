.class final Lcom/anythink/network/toutiao/TTATAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/Map;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Z)V
    .registers 4

    .line 213
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATAdapter;->c(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 217
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATAdapter;->d(Lcom/anythink/network/toutiao/TTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_15
    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 225
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v4, v2, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->b:Z

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZ)V

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    goto :goto_9

    .line 229
    :cond_29
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$3;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-static {p1, v0}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Ljava/util/List;)V

    .line 230
    return-void
.end method
