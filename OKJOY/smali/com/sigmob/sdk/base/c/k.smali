.class public Lcom/sigmob/sdk/base/c/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/n;)V
    .registers 11

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-nez v0, :cond_13

    if-eqz p4, :cond_12

    new-instance v0, Ljava/lang/Error;

    const-string v1, "600100"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2, p1, v0}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    :try_start_13
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/v;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    if-eqz p4, :cond_12

    new-instance v0, Ljava/lang/Error;

    const-string v1, "600100"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2, p1, v0}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2e} :catch_2f

    goto :goto_12

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p4, :cond_12

    new-instance v0, Ljava/lang/Error;

    const-string v1, "600100"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p2, p1, v0}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V

    goto :goto_12

    :cond_40
    :try_start_40
    new-instance v0, Lcom/sigmob/sdk/base/c/y;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/c/y;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/n;)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_51} :catch_2f

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/c/m;)V
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/base/c/c;

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getLogUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/sigmob/sdk/base/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/m;)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->g()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    if-nez v1, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->g()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    goto :goto_13
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            "Lcom/sigmob/sdk/base/c/l;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v0

    if-nez v0, :cond_11

    if-eqz p4, :cond_10

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/base/models/SigmobError;

    const-string v1, "request queue is null"

    invoke-interface {p4, v0, v1, v6, p3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    :try_start_11
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/v;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p4, :cond_10

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/base/models/SigmobError;

    const-string v1, "network is disconnection"

    const/4 v2, 0x0

    invoke-interface {p4, v0, v1, v2, p3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2a} :catch_2b

    goto :goto_10

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p4, :cond_10

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0, v6, p3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_10

    :cond_3b
    :try_start_3b
    new-instance v0, Lcom/sigmob/sdk/base/c/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/c/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_4c} :catch_2b

    goto :goto_10
.end method
