.class Lcom/sigmob/windad/base/WindAdRequestController$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V
    .registers 16

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "600100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v2, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    move-object v0, v7

    :goto_37
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v5

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vlist"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v2, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_id"

    invoke-interface {v11, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "2"

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, v1, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v8

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v10

    move-object v9, p1

    invoke-virtual/range {v5 .. v11}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v1, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_73
    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "600103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    sget-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v2, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    move-object v0, v7

    goto :goto_37

    :cond_98
    sget-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_STRATEGY_EMPTY:Lcom/sigmob/windad/WindAdError;

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

    invoke-virtual {v7, v0}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v2, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    move-object v0, v7

    goto/16 :goto_37
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

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p1, v0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/base/WindAdRequestController;)V

    iget v0, p2, Lcom/sigmob/sdk/base/c/x;->a:I

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget v1, p2, Lcom/sigmob/sdk/base/c/x;->a:I

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;I)I

    :cond_1c
    iget v0, p2, Lcom/sigmob/sdk/base/c/x;->b:I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget v1, p2, Lcom/sigmob/sdk/base/c/x;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;J)J

    :cond_2a
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->c()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getReadyAdapter()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_FOUD_ADAPTER:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    :cond_47
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vlist"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-virtual {v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sigmob/sdk/base/common/Constants;->AD_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v2, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v2, v2, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "2"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController$3;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v3, v3, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    sget-object v4, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
