.class final Lcom/anythink/network/toutiao/TTATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V
    .registers 4

    .line 104
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->a:Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter$2;)V

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 131
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->i(Lcom/anythink/network/toutiao/TTATSplashAdapter;)I

    move-result v3

    .line 109
    invoke-interface {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 136
    return-void

    .line 132
    :catch_17
    move-exception v0

    .line 133
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->j(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 134
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->k(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_2f
    return-void
.end method
