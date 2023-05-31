.class final Lcom/anythink/network/toutiao/TTATAdapter$2;
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

    .prologue
    .line 173
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_19

    .line 177
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 179
    :cond_19
    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 185
    new-instance v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATAdapter;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->b:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZ)V

    .line 186
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 189
    :cond_27
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_36

    .line 190
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->c:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATAdapter$2;->c:Lcom/anythink/network/toutiao/TTATAdapter;

    invoke-interface {v0, v1, v6}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    .line 192
    :cond_36
    return-void
.end method
