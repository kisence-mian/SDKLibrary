.class Lcom/sigmob/windad/Splash/WindSplashAD$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

.field final synthetic d:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/windad/Splash/WindSplashAdRequest;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    iput-object p2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V
    .registers 15

    const/4 v5, 0x0

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "600100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-object v6, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_33
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v4

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vlist"

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "2"

    const/4 v7, 0x2

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void

    :cond_76
    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "600103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v6, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_33

    :cond_a2
    sget-object v6, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ code ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->d(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_33
.end method

.method public onSuccess(Ljava/util/List;Lcom/sigmob/sdk/base/c/x;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/ADStrategy;",
            ">;",
            "Lcom/sigmob/sdk/base/c/x;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vlist"

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v2}, Lcom/sigmob/windad/Splash/WindSplashAD;->c(Lcom/sigmob/windad/Splash/WindSplashAD;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "2"

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v4}, Lcom/sigmob/windad/Splash/WindSplashAD;->b(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->d:Lcom/sigmob/windad/Splash/WindSplashAD;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getFetchDelay()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/Splash/WindSplashAD$2;->c:Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/app/Activity;Landroid/view/ViewGroup;ILcom/sigmob/windad/Splash/WindSplashAdRequest;Ljava/util/List;)V

    return-void
.end method
