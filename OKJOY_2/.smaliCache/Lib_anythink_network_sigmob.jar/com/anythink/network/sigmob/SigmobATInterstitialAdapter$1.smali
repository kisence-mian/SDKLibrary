.class final Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 4

    .line 61
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 65
    :try_start_0
    invoke-static {}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getInstance()Lcom/anythink/network/sigmob/SigmobATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->b:Ljava/util/Map;

    new-instance v3, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1$1;-><init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/sigmob/SigmobATInitManager$a;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 82
    return-void

    .line 78
    :catchall_11
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->d(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 80
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->e(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_29
    return-void
.end method
