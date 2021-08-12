.class final Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 4

    .line 52
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 56
    :try_start_0
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->b:Ljava/util/Map;

    new-instance v3, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1$1;-><init>(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 67
    return-void

    .line 63
    :catchall_15
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->d(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 65
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;->e(Lcom/anythink/network/sigmob/SigmobATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2d
    return-void
.end method
