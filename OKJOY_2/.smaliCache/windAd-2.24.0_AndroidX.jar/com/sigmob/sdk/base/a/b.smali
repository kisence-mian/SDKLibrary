.class public Lcom/sigmob/sdk/base/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/a/b$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/sigmob/sdk/base/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            "Lcom/sigmob/sdk/base/a/b$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    if-eqz p4, :cond_14

    sget-object p0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p0

    const-string p1, "request queue is null"

    invoke-interface {p4, p0, p1, v1, p3}, Lcom/sigmob/sdk/base/a/b$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :cond_14
    return-void

    :cond_15
    :try_start_15
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    if-eqz p4, :cond_31

    sget-object p0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p0

    const-string p1, "network is disconnection"

    invoke-interface {p4, p0, p1, v1, p3}, Lcom/sigmob/sdk/base/a/b$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :cond_31
    return-void

    :cond_32
    new-instance v0, Lcom/sigmob/sdk/base/a/a;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/sdk/base/a/a;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_45

    goto :goto_5c

    :catchall_45
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_5c

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0, v1, p3}, Lcom/sigmob/sdk/base/a/b$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :cond_5c
    :goto_5c
    return-void
.end method
